; ModuleID = '/llk/IR_all_yes/drivers/input/keyboard/gpio_keys.c_pt.bc'
source_filename = "../drivers/input/keyboard/gpio_keys.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
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
%struct.gpio_keys_platform_data = type { ptr, i32, i32, i8, ptr, ptr, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.gpio_keys_button = type { i32, i32, i32, ptr, i32, i32, i32, i32, i8, i32, i32 }
%struct.gpio_keys_drvdata = type { ptr, ptr, %struct.mutex, ptr, [0 x %struct.gpio_button_data] }
%struct.gpio_button_data = type { ptr, ptr, ptr, ptr, %struct.hrtimer, i32, %struct.delayed_work, %struct.hrtimer, i32, i32, i32, %struct.spinlock, i8, i8, i8, i8 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@gpio_keys_device_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @gpio_keys_probe, ptr null, ptr @gpio_keys_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @gpio_keys_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gpio_keys_groups, ptr @gpio_keys_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__initcall__kmod_gpio_keys__227_1069_gpio_keys_init7 = internal global ptr @gpio_keys_init, section ".initcall7.init", align 4
@__exitcall_gpio_keys_exit = internal global ptr @gpio_keys_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file228 = internal constant [48 x i8] c"gpio_keys.file=drivers/input/keyboard/gpio_keys\00", section ".modinfo", align 1
@__UNIQUE_ID_license229 = internal constant [22 x i8] c"gpio_keys.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author230 = internal constant [50 x i8] c"gpio_keys.author=Phil Blundell <pb@handhelds.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description231 = internal constant [48 x i8] c"gpio_keys.description=Keyboard driver for GPIOs\00", section ".modinfo", align 1
@__UNIQUE_ID_alias232 = internal constant [35 x i8] c"gpio_keys.alias=platform:gpio-keys\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpio-keys\00", [22 x i8] zeroinitializer }, align 32
@gpio_keys_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"gpio-keys\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@gpio_keys_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @gpio_keys_group, ptr null], [24 x i8] zeroinitializer }, align 32
@gpio_keys_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @gpio_keys_suspend, ptr @gpio_keys_resume, ptr @gpio_keys_suspend, ptr @gpio_keys_resume, ptr @gpio_keys_suspend, ptr @gpio_keys_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@gpio_keys_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 819, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to allocate state\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gpio_keys_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/input/keyboard/gpio_keys.c\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gpio_keys_probe._entry_ptr = internal global ptr @gpio_keys_probe._entry, section ".printk_index", align 4
@gpio_keys_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 831, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to allocate input device\0A\00", [63 x i8] zeroinitializer }, align 32
@gpio_keys_probe._entry_ptr.8 = internal global ptr @gpio_keys_probe._entry.6, section ".printk_index", align 4
@gpio_keys_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"&ddata->disable_lock\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gpio-keys/input0\00", [47 x i8] zeroinitializer }, align 32
@gpio_keys_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 869, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"missing child device node for entry %d\0A\00", [56 x i8] zeroinitializer }, align 32
@gpio_keys_probe._entry_ptr.13 = internal global ptr @gpio_keys_probe._entry.11, section ".printk_index", align 4
@gpio_keys_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 890, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Unable to register input device, error: %d\0A\00", [52 x i8] zeroinitializer }, align 32
@gpio_keys_probe._entry_ptr.16 = internal global ptr @gpio_keys_probe._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"autorepeat\00", [21 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"linux,code\00", [21 x i8] zeroinitializer }, align 32
@gpio_keys_get_devtree_pdata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 762, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Button without keycode\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"gpio_keys_get_devtree_pdata\00", [36 x i8] zeroinitializer }, align 32
@gpio_keys_get_devtree_pdata._entry_ptr = internal global ptr @gpio_keys_get_devtree_pdata._entry, section ".printk_index", align 4
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"linux,input-type\00", [47 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wakeup-source\00", [18 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gpio-key,wakeup\00", [16 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"wakeup-event-action\00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"linux,can-disable\00", [46 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"debounce-interval\00", [46 x i8] zeroinitializer }, align 32
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@gpio_keys_gpio_report_event._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 378, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get gpio state: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"gpio_keys_gpio_report_event\00", [36 x i8] zeroinitializer }, align 32
@gpio_keys_gpio_report_event._entry_ptr = internal global ptr @gpio_keys_gpio_report_event._entry, section ".printk_index", align 4
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpio_keys\00", [22 x i8] zeroinitializer }, align 32
@gpio_keys_setup_key.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&bdata->lock\00", [19 x i8] zeroinitializer }, align 32
@gpio_keys_setup_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 535, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to get gpio: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gpio_keys_setup_key\00", [44 x i8] zeroinitializer }, align 32
@gpio_keys_setup_key._entry_ptr = internal global ptr @gpio_keys_setup_key._entry, section ".printk_index", align 4
@gpio_keys_setup_key._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.3, i32 552, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Failed to request GPIO %d, error %d\0A\00", [59 x i8] zeroinitializer }, align 32
@gpio_keys_setup_key._entry_ptr.36 = internal global ptr @gpio_keys_setup_key._entry.34, section ".printk_index", align 4
@gpio_keys_setup_key._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.33, ptr @.str.3, i32 589, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Unable to get irq number for GPIO %d, error %d\0A\00", [48 x i8] zeroinitializer }, align 32
@gpio_keys_setup_key._entry_ptr.39 = internal global ptr @gpio_keys_setup_key._entry.37, section ".printk_index", align 4
@gpio_keys_setup_key.__key.40 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.41 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"(work_completion)(&(&bdata->work)->work)\00", [55 x i8] zeroinitializer }, align 32
@gpio_keys_setup_key.__key.42 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.43 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&(&bdata->work)->timer\00", [41 x i8] zeroinitializer }, align 32
@gpio_keys_setup_key._entry.44 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.33, ptr @.str.3, i32 623, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Found button without gpio or irq\0A\00", [62 x i8] zeroinitializer }, align 32
@gpio_keys_setup_key._entry_ptr.46 = internal global ptr @gpio_keys_setup_key._entry.44, section ".printk_index", align 4
@gpio_keys_setup_key._entry.47 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.33, ptr @.str.3, i32 630, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Only EV_KEY allowed for IRQ buttons.\0A\00", [58 x i8] zeroinitializer }, align 32
@gpio_keys_setup_key._entry_ptr.49 = internal global ptr @gpio_keys_setup_key._entry.47, section ".printk_index", align 4
@gpio_keys_setup_key._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.33, ptr @.str.3, i32 659, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"failed to register quiesce action, error: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@gpio_keys_setup_key._entry_ptr.52 = internal global ptr @gpio_keys_setup_key._entry.50, section ".printk_index", align 4
@gpio_keys_setup_key._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.33, ptr @.str.3, i32 674, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Unable to claim irq %d; error %d\0A\00", [62 x i8] zeroinitializer }, align 32
@gpio_keys_setup_key._entry_ptr.55 = internal global ptr @gpio_keys_setup_key._entry.53, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@gpio_keys_shutdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.3, i32 1045, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"failed to shutdown\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gpio_keys_shutdown\00", [45 x i8] zeroinitializer }, align 32
@gpio_keys_shutdown._entry_ptr = internal global ptr @gpio_keys_shutdown._entry, section ".printk_index", align 4
@gpio_keys_button_enable_wakeup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.3, i32 908, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"failed to configure IRQ %d as wakeup source: %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"gpio_keys_button_enable_wakeup\00", [33 x i8] zeroinitializer }, align 32
@gpio_keys_button_enable_wakeup._entry_ptr = internal global ptr @gpio_keys_button_enable_wakeup._entry, section ".printk_index", align 4
@gpio_keys_button_enable_wakeup._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.3, i32 918, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"failed to set wakeup trigger %08x for IRQ %d: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@gpio_keys_button_enable_wakeup._entry_ptr.62 = internal global ptr @gpio_keys_button_enable_wakeup._entry.60, section ".printk_index", align 4
@gpio_keys_button_disable_wakeup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.64, ptr @.str.3, i32 941, ptr @.str.65, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"failed to restore interrupt trigger for IRQ %d: %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"gpio_keys_button_disable_wakeup\00", [32 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@gpio_keys_button_disable_wakeup._entry_ptr = internal global ptr @gpio_keys_button_disable_wakeup._entry, section ".printk_index", align 4
@gpio_keys_button_disable_wakeup._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.64, ptr @.str.3, i32 948, ptr @.str.65, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"failed to disable IRQ %d as wake source: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@gpio_keys_button_disable_wakeup._entry_ptr.68 = internal global ptr @gpio_keys_button_disable_wakeup._entry.66, section ".printk_index", align 4
@gpio_keys_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @gpio_keys_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@gpio_keys_attrs = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @dev_attr_keys, ptr @dev_attr_switches, ptr @dev_attr_disabled_keys, ptr @dev_attr_disabled_switches, ptr null], [44 x i8] zeroinitializer }, align 32
@dev_attr_keys = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.69, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @gpio_keys_show_keys, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_switches = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.71, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @gpio_keys_show_switches, ptr null }, [36 x i8] zeroinitializer }, align 32
@dev_attr_disabled_keys = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.72, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @gpio_keys_show_disabled_keys, ptr @gpio_keys_store_disabled_keys }, [36 x i8] zeroinitializer }, align 32
@dev_attr_disabled_switches = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.73, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @gpio_keys_show_disabled_switches, ptr @gpio_keys_store_disabled_switches }, [36 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"keys\00", [27 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%*pbl\00", [26 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"switches\00", [23 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"disabled_keys\00", [18 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"disabled_switches\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294966779, i64 4294967294]
@__sancov_gen_cov_switch_values.74 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.75 = private unnamed_addr constant [24 x i8] c"gpio_keys_device_driver\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 1048, i32 31 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 1052, i32 11 }
@___asan_gen_.81 = private unnamed_addr constant [19 x i8] c"gpio_keys_of_match\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 794, i32 34 }
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"gpio_keys_groups\00", align 1
@___asan_gen_.87 = private unnamed_addr constant [17 x i8] c"gpio_keys_pm_ops\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 1037, i32 8 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 819, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 831, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 837, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 843, i32 16 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 867, i32 5 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 889, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 751, i32 46 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 753, i32 35 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 760, i32 39 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 762, i32 4 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 769, i32 39 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 774, i32 37 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 776, i32 37 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 778, i32 35 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 782, i32 37 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 784, i32 39 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 377, i32 3 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 509, i32 51 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 519, i32 2 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 534, i32 6 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 551, i32 4 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 587, i32 5 }
@___asan_gen_.216 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 595, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 623, i32 4 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 630, i32 4 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 658, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 673, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 1045, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 906, i32 3 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 916, i32 4 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 939, i32 4 }
@___asan_gen_.282 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 946, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant [16 x i8] c"gpio_keys_group\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 364, i32 1 }
@___asan_gen_.291 = private unnamed_addr constant [16 x i8] c"gpio_keys_attrs\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 357, i32 26 }
@___asan_gen_.294 = private unnamed_addr constant [14 x i8] c"dev_attr_keys\00", align 1
@___asan_gen_.297 = private unnamed_addr constant [18 x i8] c"dev_attr_switches\00", align 1
@___asan_gen_.300 = private unnamed_addr constant [23 x i8] c"dev_attr_disabled_keys\00", align 1
@___asan_gen_.303 = private unnamed_addr constant [27 x i8] c"dev_attr_disabled_switches\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 321, i32 8 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 222, i32 38 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 322, i32 8 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 350, i32 8 }
@___asan_gen_.318 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.319 = private constant [38 x i8] c"../drivers/input/keyboard/gpio_keys.c\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.319, i32 353, i32 8 }
@llvm.compiler.used = appending global [108 x ptr] [ptr @__UNIQUE_ID_alias232, ptr @__UNIQUE_ID_author230, ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_file228, ptr @__UNIQUE_ID_license229, ptr @__exitcall_gpio_keys_exit, ptr @__initcall__kmod_gpio_keys__227_1069_gpio_keys_init7, ptr @gpio_keys_button_disable_wakeup._entry, ptr @gpio_keys_button_disable_wakeup._entry.66, ptr @gpio_keys_button_disable_wakeup._entry_ptr, ptr @gpio_keys_button_disable_wakeup._entry_ptr.68, ptr @gpio_keys_button_enable_wakeup._entry, ptr @gpio_keys_button_enable_wakeup._entry.60, ptr @gpio_keys_button_enable_wakeup._entry_ptr, ptr @gpio_keys_button_enable_wakeup._entry_ptr.62, ptr @gpio_keys_exit, ptr @gpio_keys_get_devtree_pdata._entry, ptr @gpio_keys_get_devtree_pdata._entry_ptr, ptr @gpio_keys_gpio_report_event._entry, ptr @gpio_keys_gpio_report_event._entry_ptr, ptr @gpio_keys_probe._entry, ptr @gpio_keys_probe._entry.11, ptr @gpio_keys_probe._entry.14, ptr @gpio_keys_probe._entry.6, ptr @gpio_keys_probe._entry_ptr, ptr @gpio_keys_probe._entry_ptr.13, ptr @gpio_keys_probe._entry_ptr.16, ptr @gpio_keys_probe._entry_ptr.8, ptr @gpio_keys_setup_key._entry, ptr @gpio_keys_setup_key._entry.34, ptr @gpio_keys_setup_key._entry.37, ptr @gpio_keys_setup_key._entry.44, ptr @gpio_keys_setup_key._entry.47, ptr @gpio_keys_setup_key._entry.50, ptr @gpio_keys_setup_key._entry.53, ptr @gpio_keys_setup_key._entry_ptr, ptr @gpio_keys_setup_key._entry_ptr.36, ptr @gpio_keys_setup_key._entry_ptr.39, ptr @gpio_keys_setup_key._entry_ptr.46, ptr @gpio_keys_setup_key._entry_ptr.49, ptr @gpio_keys_setup_key._entry_ptr.52, ptr @gpio_keys_setup_key._entry_ptr.55, ptr @gpio_keys_shutdown._entry, ptr @gpio_keys_shutdown._entry_ptr, ptr @gpio_keys_device_driver, ptr @.str, ptr @gpio_keys_of_match, ptr @gpio_keys_groups, ptr @gpio_keys_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @gpio_keys_probe.__key, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @gpio_keys_setup_key.__key, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.38, ptr @gpio_keys_setup_key.__key.40, ptr @.str.41, ptr @gpio_keys_setup_key.__key.42, ptr @.str.43, ptr @.str.45, ptr @.str.48, ptr @.str.51, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.67, ptr @gpio_keys_group, ptr @gpio_keys_attrs, ptr @dev_attr_keys, ptr @dev_attr_switches, ptr @dev_attr_disabled_keys, ptr @dev_attr_disabled_switches, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73], section "llvm.metadata"
@0 = internal global [82 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_keys_device_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_keys_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_keys_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_keys_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_keys_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_keys_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_keys_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_keys_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_keys_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_keys_get_devtree_pdata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_keys_gpio_report_event._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_keys_setup_key.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_keys_setup_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_keys_setup_key._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_keys_setup_key._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_keys_setup_key.__key.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_keys_setup_key.__key.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_keys_setup_key._entry.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_keys_setup_key._entry.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_keys_setup_key._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_keys_setup_key._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_keys_shutdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_keys_button_enable_wakeup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_keys_button_enable_wakeup._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_keys_button_disable_wakeup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_keys_button_disable_wakeup._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_keys_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_keys_attrs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_keys to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_switches to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_disabled_keys to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_disabled_switches to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gpio_keys_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @gpio_keys_device_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_keys_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @gpio_keys_device_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_keys_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then:                                          ; preds = %entry
  %call.i = tail call i32 @device_get_child_node_count(ptr noundef %dev1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.then.if.then4_crit_edge, label %if.end.i

if.then.if.then4_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4

if.end.i:                                         ; preds = %if.then
  %mul.i = mul i32 %call.i, 44
  %add.i = add i32 %mul.i, 28
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %add.i, i32 noundef 3520) #5
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end.i.if.then4_crit_edge, label %if.end5.i

if.end.i.if.then4_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4

if.end5.i:                                        ; preds = %if.end.i
  %add.ptr.i = getelementptr %struct.gpio_keys_platform_data, ptr %call.i.i, i32 1
  %2 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %add.ptr.i, ptr %call.i.i, align 4
  %nbuttons6.i = getelementptr inbounds %struct.gpio_keys_platform_data, ptr %call.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %nbuttons6.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call.i, ptr %nbuttons6.i, align 4
  %call.i83.i = tail call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.17) #5
  %rep.i = getelementptr inbounds %struct.gpio_keys_platform_data, ptr %call.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %rep.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i = load i8, ptr %rep.i, align 4
  %bf.shl.i = select i1 %call.i83.i, i8 -128, i8 0
  %bf.clear.i = and i8 %bf.load.i, 127
  %bf.set.i = or i8 %bf.clear.i, %bf.shl.i
  store i8 %bf.set.i, ptr %rep.i, align 4
  %name.i = getelementptr inbounds %struct.gpio_keys_platform_data, ptr %call.i.i, i32 0, i32 6
  %call8.i = tail call i32 @device_property_read_string(ptr noundef %dev1, ptr noundef nonnull @.str.18, ptr noundef %name.i) #5
  %call9.i = tail call ptr @device_get_next_child_node(ptr noundef %dev1, ptr noundef null) #5
  %tobool10.not99.i = icmp eq ptr %call9.i, null
  br i1 %tobool10.not99.i, label %if.end5.i.gpio_keys_get_devtree_pdata.exit_crit_edge, label %if.end5.i.for.body.i_crit_edge

if.end5.i.for.body.i_crit_edge:                   ; preds = %if.end5.i
  br label %for.body.i

if.end5.i.gpio_keys_get_devtree_pdata.exit_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gpio_keys_get_devtree_pdata.exit

for.body.i:                                       ; preds = %if.end40.i.for.body.i_crit_edge, %if.end5.i.for.body.i_crit_edge
  %button.0101.i = phi ptr [ %incdec.ptr.i, %if.end40.i.for.body.i_crit_edge ], [ %add.ptr.i, %if.end5.i.for.body.i_crit_edge ]
  %child.0100.i = phi ptr [ %call41.i, %if.end40.i.for.body.i_crit_edge ], [ %call9.i, %if.end5.i.for.body.i_crit_edge ]
  %cmp.i.i.i = icmp ugt ptr %child.0100.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %for.body.i.if.end18.i_crit_edge, label %is_of_node.exit.i

for.body.i.if.end18.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18.i

is_of_node.exit.i:                                ; preds = %for.body.i
  %ops.i.i = getelementptr inbounds %struct.fwnode_handle, ptr %child.0100.i, i32 0, i32 1
  %5 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops.i.i, align 4
  %cmp.i.i = icmp eq ptr %6, @of_fwnode_ops
  br i1 %cmp.i.i, label %is_of_node.exit90.i, label %is_of_node.exit.i.if.end18.i_crit_edge

is_of_node.exit.i.if.end18.i_crit_edge:           ; preds = %is_of_node.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18.i

is_of_node.exit90.i:                              ; preds = %is_of_node.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %add.ptr16.i = getelementptr i8, ptr %child.0100.i, i32 -12
  %call17.i = tail call i32 @irq_of_parse_and_map(ptr noundef %add.ptr16.i, i32 noundef 0) #5
  %irq.i = getelementptr inbounds %struct.gpio_keys_button, ptr %button.0101.i, i32 0, i32 10
  %7 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %call17.i, ptr %irq.i, align 4
  br label %if.end18.i

if.end18.i:                                       ; preds = %is_of_node.exit90.i, %is_of_node.exit.i.if.end18.i_crit_edge, %for.body.i.if.end18.i_crit_edge
  %call.i91.i = tail call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %child.0100.i, ptr noundef nonnull @.str.19, ptr noundef %button.0101.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91.i)
  %tobool20.not.i = icmp eq i32 %call.i91.i, 0
  br i1 %tobool20.not.i, label %if.end23.i, label %do.end.i

do.end.i:                                         ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20) #8
  tail call void @fwnode_handle_put(ptr noundef nonnull %child.0100.i) #5
  br label %if.then4

if.end23.i:                                       ; preds = %if.end18.i
  %desc.i = getelementptr inbounds %struct.gpio_keys_button, ptr %button.0101.i, i32 0, i32 3
  %call24.i = tail call i32 @fwnode_property_read_string(ptr noundef nonnull %child.0100.i, ptr noundef nonnull @.str.18, ptr noundef %desc.i) #5
  %type.i = getelementptr inbounds %struct.gpio_keys_button, ptr %button.0101.i, i32 0, i32 4
  %call.i92.i = tail call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %child.0100.i, ptr noundef nonnull @.str.22, ptr noundef %type.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92.i)
  %tobool26.not.i = icmp eq i32 %call.i92.i, 0
  br i1 %tobool26.not.i, label %if.end23.i.if.end29.i_crit_edge, label %if.then27.i

if.end23.i.if.end29.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29.i

if.then27.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %type.i, align 4
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then27.i, %if.end23.i.if.end29.i_crit_edge
  %call.i93.i = tail call zeroext i1 @fwnode_property_present(ptr noundef nonnull %child.0100.i, ptr noundef nonnull @.str.23) #5
  br i1 %call.i93.i, label %if.end29.i.lor.end.i_crit_edge, label %lor.rhs.i

if.end29.i.lor.end.i_crit_edge:                   ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.end.i

lor.rhs.i:                                        ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i94.i = tail call zeroext i1 @fwnode_property_present(ptr noundef nonnull %child.0100.i, ptr noundef nonnull @.str.24) #5
  br label %lor.end.i

lor.end.i:                                        ; preds = %lor.rhs.i, %if.end29.i.lor.end.i_crit_edge
  %9 = phi i1 [ true, %if.end29.i.lor.end.i_crit_edge ], [ %call.i94.i, %lor.rhs.i ]
  %lor.ext.i = zext i1 %9 to i32
  %wakeup.i = getelementptr inbounds %struct.gpio_keys_button, ptr %button.0101.i, i32 0, i32 5
  %10 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %lor.ext.i, ptr %wakeup.i, align 4
  %wakeup_event_action.i = getelementptr inbounds %struct.gpio_keys_button, ptr %button.0101.i, i32 0, i32 6
  %call.i95.i = tail call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %child.0100.i, ptr noundef nonnull @.str.25, ptr noundef %wakeup_event_action.i, i32 noundef 1) #5
  %call.i96.i = tail call zeroext i1 @fwnode_property_present(ptr noundef nonnull %child.0100.i, ptr noundef nonnull @.str.26) #5
  %can_disable.i = getelementptr inbounds %struct.gpio_keys_button, ptr %button.0101.i, i32 0, i32 8
  %frombool.i = zext i1 %call.i96.i to i8
  %11 = ptrtoint ptr %can_disable.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %frombool.i, ptr %can_disable.i, align 4
  %debounce_interval.i = getelementptr inbounds %struct.gpio_keys_button, ptr %button.0101.i, i32 0, i32 7
  %call.i97.i = tail call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %child.0100.i, ptr noundef nonnull @.str.27, ptr noundef %debounce_interval.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97.i)
  %tobool37.not.i = icmp eq i32 %call.i97.i, 0
  br i1 %tobool37.not.i, label %lor.end.i.if.end40.i_crit_edge, label %if.then38.i

lor.end.i.if.end40.i_crit_edge:                   ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40.i

if.then38.i:                                      ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %debounce_interval.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 5, ptr %debounce_interval.i, align 4
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then38.i, %lor.end.i.if.end40.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.gpio_keys_button, ptr %button.0101.i, i32 1
  %call41.i = tail call ptr @device_get_next_child_node(ptr noundef %dev1, ptr noundef nonnull %child.0100.i) #5
  %tobool10.not.i = icmp eq ptr %call41.i, null
  br i1 %tobool10.not.i, label %if.end40.i.gpio_keys_get_devtree_pdata.exit_crit_edge, label %if.end40.i.for.body.i_crit_edge

if.end40.i.for.body.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

if.end40.i.gpio_keys_get_devtree_pdata.exit_crit_edge: ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gpio_keys_get_devtree_pdata.exit

gpio_keys_get_devtree_pdata.exit:                 ; preds = %if.end40.i.gpio_keys_get_devtree_pdata.exit_crit_edge, %if.end5.i.gpio_keys_get_devtree_pdata.exit_crit_edge
  %cmp.i144 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i144, label %gpio_keys_get_devtree_pdata.exit.if.then4_crit_edge, label %gpio_keys_get_devtree_pdata.exit.if.end6_crit_edge

gpio_keys_get_devtree_pdata.exit.if.end6_crit_edge: ; preds = %gpio_keys_get_devtree_pdata.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

gpio_keys_get_devtree_pdata.exit.if.then4_crit_edge: ; preds = %gpio_keys_get_devtree_pdata.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4

if.then4:                                         ; preds = %gpio_keys_get_devtree_pdata.exit.if.then4_crit_edge, %do.end.i, %if.end.i.if.then4_crit_edge, %if.then.if.then4_crit_edge
  %retval.0.i160 = phi ptr [ %call.i.i, %gpio_keys_get_devtree_pdata.exit.if.then4_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i.if.then4_crit_edge ], [ inttoptr (i32 -19 to ptr), %if.then.if.then4_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.end.i ]
  %13 = ptrtoint ptr %retval.0.i160 to i32
  br label %cleanup71

if.end6:                                          ; preds = %gpio_keys_get_devtree_pdata.exit.if.end6_crit_edge, %entry.if.end6_crit_edge
  %pdata.0 = phi ptr [ %1, %entry.if.end6_crit_edge ], [ %call.i.i, %gpio_keys_get_devtree_pdata.exit.if.end6_crit_edge ]
  %nbuttons = getelementptr inbounds %struct.gpio_keys_platform_data, ptr %pdata.0, i32 0, i32 1
  %14 = ptrtoint ptr %nbuttons to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nbuttons, align 4
  %16 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %15, i32 280) #5
  %17 = extractvalue { i32, i1 } %16, 1
  %18 = extractvalue { i32, i1 } %16, 0
  %19 = add nuw i32 %18, 104
  %retval.0.i145 = select i1 %17, i32 -1, i32 %19
  %call.i146 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %retval.0.i145, i32 noundef 3520) #5
  %tobool9.not = icmp eq ptr %call.i146, null
  br i1 %tobool9.not, label %do.end, label %if.end11

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #8
  br label %cleanup71

if.end11:                                         ; preds = %if.end6
  %20 = ptrtoint ptr %nbuttons to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nbuttons, align 4
  %22 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %21, i32 2) #5
  %23 = extractvalue { i32, i1 } %22, 1
  br i1 %23, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !165

devm_kcalloc.exit.thread:                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %keymap162 = getelementptr inbounds %struct.gpio_keys_drvdata, ptr %call.i146, i32 0, i32 3
  %24 = ptrtoint ptr %keymap162 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %keymap162, align 4
  br label %cleanup71

devm_kcalloc.exit:                                ; preds = %if.end11
  %25 = extractvalue { i32, i1 } %22, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %25, i32 noundef 3520) #5
  %keymap = getelementptr inbounds %struct.gpio_keys_drvdata, ptr %call.i146, i32 0, i32 3
  %26 = ptrtoint ptr %keymap to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call5.i.i, ptr %keymap, align 4
  %tobool15.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool15.not, label %devm_kcalloc.exit.cleanup71_crit_edge, label %if.end17

devm_kcalloc.exit.cleanup71_crit_edge:            ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup71

if.end17:                                         ; preds = %devm_kcalloc.exit
  %call18 = tail call ptr @devm_input_allocate_device(ptr noundef %dev1) #5
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %do.end23, label %if.end24

do.end23:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #8
  br label %cleanup71

if.end24:                                         ; preds = %if.end17
  %27 = ptrtoint ptr %call.i146 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %pdata.0, ptr %call.i146, align 8
  %input26 = getelementptr inbounds %struct.gpio_keys_drvdata, ptr %call.i146, i32 0, i32 1
  %28 = ptrtoint ptr %input26 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call18, ptr %input26, align 4
  %disable_lock = getelementptr inbounds %struct.gpio_keys_drvdata, ptr %call.i146, i32 0, i32 2
  tail call void @__mutex_init(ptr noundef %disable_lock, ptr noundef nonnull @.str.9, ptr noundef nonnull @gpio_keys_probe.__key) #5
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %29 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i146, ptr %driver_data.i.i, align 4
  %driver_data.i.i147 = getelementptr inbounds %struct.input_dev, ptr %call18, i32 0, i32 40, i32 8
  %30 = ptrtoint ptr %driver_data.i.i147 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i146, ptr %driver_data.i.i147, align 4
  %name = getelementptr inbounds %struct.gpio_keys_platform_data, ptr %pdata.0, i32 0, i32 6
  %31 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %name, align 4
  %tobool30.not = icmp eq ptr %32, null
  br i1 %tobool30.not, label %cond.false, label %if.end24.cond.end_crit_edge

if.end24.cond.end_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.false:                                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  %33 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pdev, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end24.cond.end_crit_edge
  %cond = phi ptr [ %34, %cond.false ], [ %32, %if.end24.cond.end_crit_edge ]
  %35 = ptrtoint ptr %call18 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %cond, ptr %call18, align 8
  %phys = getelementptr inbounds %struct.input_dev, ptr %call18, i32 0, i32 1
  %36 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @.str.10, ptr %phys, align 4
  %parent = getelementptr inbounds %struct.input_dev, ptr %call18, i32 0, i32 40, i32 1
  %37 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %dev1, ptr %parent, align 8
  %open = getelementptr inbounds %struct.input_dev, ptr %call18, i32 0, i32 31
  %38 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @gpio_keys_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call18, i32 0, i32 32
  %39 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @gpio_keys_close, ptr %close, align 4
  %id = getelementptr inbounds %struct.input_dev, ptr %call18, i32 0, i32 3
  %40 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 25, ptr %id, align 4
  %vendor = getelementptr inbounds %struct.input_dev, ptr %call18, i32 0, i32 3, i32 1
  %41 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 1, ptr %vendor, align 2
  %product = getelementptr inbounds %struct.input_dev, ptr %call18, i32 0, i32 3, i32 2
  %42 = ptrtoint ptr %product to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 1, ptr %product, align 4
  %version = getelementptr inbounds %struct.input_dev, ptr %call18, i32 0, i32 3, i32 3
  %43 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 256, ptr %version, align 2
  %44 = ptrtoint ptr %keymap to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %keymap, align 4
  %keycode = getelementptr inbounds %struct.input_dev, ptr %call18, i32 0, i32 17
  %46 = ptrtoint ptr %keycode to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %45, ptr %keycode, align 4
  %keycodesize = getelementptr inbounds %struct.input_dev, ptr %call18, i32 0, i32 16
  %47 = ptrtoint ptr %keycodesize to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 2, ptr %keycodesize, align 8
  %48 = ptrtoint ptr %nbuttons to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %nbuttons, align 4
  %keycodemax = getelementptr inbounds %struct.input_dev, ptr %call18, i32 0, i32 15
  %50 = ptrtoint ptr %keycodemax to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %keycodemax, align 4
  %rep = getelementptr inbounds %struct.gpio_keys_platform_data, ptr %pdata.0, i32 0, i32 3
  %51 = ptrtoint ptr %rep to i32
  call void @__asan_load1_noabort(i32 %51)
  %bf.load = load i8, ptr %rep, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool39.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool39.not, label %cond.end.if.end41_crit_edge, label %if.then40

cond.end.if.end41_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41

if.then40:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call18, i32 0, i32 5
  %52 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %evbit, align 4
  %or.i = or i32 %53, 1048576
  store i32 %or.i, ptr %evbit, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then40, %cond.end.if.end41_crit_edge
  %54 = ptrtoint ptr %nbuttons to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %nbuttons, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp221 = icmp sgt i32 %55, 0
  br i1 %cmp221, label %if.end41.for.body_crit_edge, label %if.end41.for.end_crit_edge

if.end41.for.end_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end41.for.body_crit_edge:                      ; preds = %if.end41
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end41.for.body_crit_edge
  %wakeup.0226 = phi i32 [ %spec.select, %for.inc.for.body_crit_edge ], [ 0, %if.end41.for.body_crit_edge ]
  %i.0223 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end41.for.body_crit_edge ]
  %child.0222 = phi ptr [ %child.1, %for.inc.for.body_crit_edge ], [ null, %if.end41.for.body_crit_edge ]
  %56 = ptrtoint ptr %pdata.0 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pdata.0, align 4
  %arrayidx = getelementptr %struct.gpio_keys_button, ptr %57, i32 %i.0223
  %58 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %platform_data.i, align 8
  %tobool44.not = icmp eq ptr %59, null
  br i1 %tobool44.not, label %if.then45, label %for.body.if.end53_crit_edge

for.body.if.end53_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53

if.then45:                                        ; preds = %for.body
  %call46 = tail call ptr @device_get_next_child_node(ptr noundef %dev1, ptr noundef %child.0222) #5
  %tobool47.not = icmp eq ptr %call46, null
  br i1 %tobool47.not, label %do.end51, label %if.then45.if.end53_crit_edge

if.then45.if.end53_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end53

do.end51:                                         ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12, i32 noundef %i.0223) #8
  br label %cleanup71

if.end53:                                         ; preds = %if.then45.if.end53_crit_edge, %for.body.if.end53_crit_edge
  %child.1 = phi ptr [ %child.0222, %for.body.if.end53_crit_edge ], [ %call46, %if.then45.if.end53_crit_edge ]
  %desc1.i = getelementptr %struct.gpio_keys_button, ptr %57, i32 %i.0223, i32 3
  %60 = ptrtoint ptr %desc1.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %desc1.i, align 4
  %tobool.not.i149 = icmp eq ptr %61, null
  %spec.select.i150 = select i1 %tobool.not.i149, ptr @.str.30, ptr %61
  %arrayidx.i = getelementptr %struct.gpio_keys_drvdata, ptr %call.i146, i32 0, i32 4, i32 %i.0223
  %input4.i = getelementptr %struct.gpio_keys_drvdata, ptr %call.i146, i32 0, i32 4, i32 %i.0223, i32 1
  %62 = ptrtoint ptr %input4.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call18, ptr %input4.i, align 4
  %63 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %arrayidx, ptr %arrayidx.i, align 8
  %lock.i = getelementptr %struct.gpio_keys_drvdata, ptr %call.i146, i32 0, i32 4, i32 %i.0223, i32 11
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.31, ptr noundef nonnull @gpio_keys_setup_key.__key, i16 noundef signext 3) #5
  %tobool6.not.i = icmp eq ptr %child.1, null
  br i1 %tobool6.not.i, label %if.else22.i, label %if.then.i

if.then.i:                                        ; preds = %if.end53
  %call.i.i151 = tail call ptr @devm_fwnode_gpiod_get_index(ptr noundef %dev1, ptr noundef nonnull %child.1, ptr noundef null, i32 noundef 0, i32 noundef 1, ptr noundef %spec.select.i150) #5
  %gpiod.i = getelementptr %struct.gpio_keys_drvdata, ptr %call.i146, i32 0, i32 4, i32 %i.0223, i32 2
  %64 = ptrtoint ptr %gpiod.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call.i.i151, ptr %gpiod.i, align 8
  %cmp.i.i152 = icmp ugt ptr %call.i.i151, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i152, label %if.then10.i, label %if.then.i.if.end45.i_crit_edge

if.then.i.if.end45.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45.i

if.then10.i:                                      ; preds = %if.then.i
  %65 = ptrtoint ptr %call.i.i151 to i32
  %66 = zext i32 %65 to i64
  call void @__sanitizer_cov_trace_switch(i64 %66, ptr @__sancov_gen_cov_switch_values)
  switch i32 %65, label %gpio_keys_setup_key.exit [
    i32 -2, label %if.then13.i
    i32 -517, label %if.then56.loopexit.split.loop.exit394
  ]

if.then13.i:                                      ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #7
  %67 = ptrtoint ptr %gpiod.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %gpiod.i, align 8
  br label %if.end45.i

if.else22.i:                                      ; preds = %if.end53
  %gpio.i = getelementptr %struct.gpio_keys_button, ptr %57, i32 %i.0223, i32 1
  %68 = ptrtoint ptr %gpio.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %gpio.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %69)
  %70 = icmp ult i32 %69, 2048
  br i1 %70, label %if.then24.i, label %if.else22.i.if.end45.i_crit_edge

if.else22.i.if.end45.i_crit_edge:                 ; preds = %if.else22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45.i

if.then24.i:                                      ; preds = %if.else22.i
  %active_low.i = getelementptr %struct.gpio_keys_button, ptr %57, i32 %i.0223, i32 2
  %71 = ptrtoint ptr %active_low.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %active_low.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %tobool25.not.i = icmp eq i32 %72, 0
  %spec.select281.i = select i1 %tobool25.not.i, i32 1, i32 5
  %call29.i = tail call i32 @devm_gpio_request_one(ptr noundef %dev1, i32 noundef %69, i32 noundef %spec.select281.i, ptr noundef nonnull %spec.select.i150) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %cmp30.i = icmp slt i32 %call29.i, 0
  %73 = ptrtoint ptr %gpio.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %gpio.i, align 4
  br i1 %cmp30.i, label %cleanup.thread.i, label %cleanup.i

cleanup.thread.i:                                 ; preds = %if.then24.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.35, i32 noundef %74, i32 noundef %call29.i) #8
  br label %if.then56

cleanup.i:                                        ; preds = %if.then24.i
  %call38.i = tail call ptr @gpio_to_desc(i32 noundef %74) #5
  %gpiod39.i = getelementptr %struct.gpio_keys_drvdata, ptr %call.i146, i32 0, i32 4, i32 %i.0223, i32 2
  %75 = ptrtoint ptr %gpiod39.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call38.i, ptr %gpiod39.i, align 8
  %tobool41.not.not.i = icmp eq ptr %call38.i, null
  br i1 %tobool41.not.not.i, label %cleanup.i.if.then56_crit_edge, label %cleanup.i.if.end45.i_crit_edge

cleanup.i.if.end45.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end45.i

cleanup.i.if.then56_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then56

if.end45.i:                                       ; preds = %cleanup.i.if.end45.i_crit_edge, %if.else22.i.if.end45.i_crit_edge, %if.then13.i, %if.then.i.if.end45.i_crit_edge
  %gpiod46.i = getelementptr %struct.gpio_keys_drvdata, ptr %call.i146, i32 0, i32 4, i32 %i.0223, i32 2
  %76 = ptrtoint ptr %gpiod46.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %gpiod46.i, align 8
  %tobool47.not.i = icmp eq ptr %77, null
  br i1 %tobool47.not.i, label %if.else116.i, label %if.then48.i

if.then48.i:                                      ; preds = %if.end45.i
  %call51.i = tail call i32 @gpiod_is_active_low(ptr noundef nonnull %77) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51.i)
  %tobool52.not.i = icmp eq i32 %call51.i, 0
  %debounce_interval.i153 = getelementptr %struct.gpio_keys_button, ptr %57, i32 %i.0223, i32 7
  %78 = ptrtoint ptr %debounce_interval.i153 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %debounce_interval.i153, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %79)
  %tobool53.not.i = icmp eq i32 %79, 0
  br i1 %tobool53.not.i, label %if.then48.i.if.end66.i_crit_edge, label %if.then54.i

if.then48.i.if.end66.i_crit_edge:                 ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end66.i

if.then54.i:                                      ; preds = %if.then48.i
  %80 = ptrtoint ptr %gpiod46.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %gpiod46.i, align 8
  %mul.i154 = mul i32 %79, 1000
  %call57.i = tail call i32 @gpiod_set_debounce(ptr noundef %81, i32 noundef %mul.i154) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57.i)
  %cmp58.i = icmp slt i32 %call57.i, 0
  br i1 %cmp58.i, label %if.then59.i, label %if.then54.i.if.end61.i_crit_edge

if.then54.i.if.end61.i_crit_edge:                 ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end61.i

if.then59.i:                                      ; preds = %if.then54.i
  call void @__sanitizer_cov_trace_pc() #7
  %82 = ptrtoint ptr %debounce_interval.i153 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %debounce_interval.i153, align 4
  %software_debounce.i = getelementptr %struct.gpio_keys_drvdata, ptr %call.i146, i32 0, i32 4, i32 %i.0223, i32 8
  %84 = ptrtoint ptr %software_debounce.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %83, ptr %software_debounce.i, align 8
  br label %if.end61.i

if.end61.i:                                       ; preds = %if.then59.i, %if.then54.i.if.end61.i_crit_edge
  %85 = ptrtoint ptr %gpiod46.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %gpiod46.i, align 8
  %call63.i = tail call i32 @gpiod_cansleep(ptr noundef %86) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63.i)
  %tobool64.not.i = icmp eq i32 %call63.i, 0
  %debounce_use_hrtimer.i = getelementptr %struct.gpio_keys_drvdata, ptr %call.i146, i32 0, i32 4, i32 %i.0223, i32 15
  %frombool65.i = zext i1 %tobool64.not.i to i8
  %87 = ptrtoint ptr %debounce_use_hrtimer.i to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 %frombool65.i, ptr %debounce_use_hrtimer.i, align 1
  br label %if.end66.i

if.end66.i:                                       ; preds = %if.end61.i, %if.then48.i.if.end66.i_crit_edge
  %irq67.i = getelementptr %struct.gpio_keys_button, ptr %57, i32 %i.0223, i32 10
  %88 = ptrtoint ptr %irq67.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %irq67.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool68.not.i = icmp eq i32 %89, 0
  br i1 %tobool68.not.i, label %if.else72.i, label %if.end66.i.do.body85.i_crit_edge

if.end66.i.do.body85.i_crit_edge:                 ; preds = %if.end66.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body85.i

if.else72.i:                                      ; preds = %if.end66.i
  %90 = ptrtoint ptr %gpiod46.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %gpiod46.i, align 8
  %call74.i = tail call i32 @gpiod_to_irq(ptr noundef %91) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74.i)
  %cmp75.i = icmp slt i32 %call74.i, 0
  br i1 %cmp75.i, label %cleanup113.i, label %if.else72.i.do.body85.i_crit_edge

if.else72.i.do.body85.i_crit_edge:                ; preds = %if.else72.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body85.i

do.body85.i:                                      ; preds = %if.else72.i.do.body85.i_crit_edge, %if.end66.i.do.body85.i_crit_edge
  %call74.sink.i = phi i32 [ %89, %if.end66.i.do.body85.i_crit_edge ], [ %call74.i, %if.else72.i.do.body85.i_crit_edge ]
  %irq82.i = getelementptr %struct.gpio_keys_drvdata, ptr %call.i146, i32 0, i32 4, i32 %i.0223, i32 9
  %92 = ptrtoint ptr %irq82.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %call74.sink.i, ptr %irq82.i, align 4
  %work.i = getelementptr %struct.gpio_keys_drvdata, ptr %call.i146, i32 0, i32 4, i32 %i.0223, i32 6
  tail call void @__init_work(ptr noundef %work.i, i32 noundef 0) #5
  %93 = ptrtoint ptr %work.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 -64, ptr %work.i, align 4
  %lockdep_map.i = getelementptr inbounds %struct.work_struct, ptr %work.i, i32 0, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.41, ptr noundef nonnull @gpio_keys_setup_key.__key.40, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry94.i = getelementptr inbounds %struct.work_struct, ptr %work.i, i32 0, i32 1
  %94 = ptrtoint ptr %entry94.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile ptr %entry94.i, ptr %entry94.i, align 4
  %prev.i.i = getelementptr inbounds %struct.work_struct, ptr %work.i, i32 0, i32 1, i32 1
  %95 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %entry94.i, ptr %prev.i.i, align 4
  %func.i = getelementptr inbounds %struct.work_struct, ptr %work.i, i32 0, i32 2
  %96 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr @gpio_keys_gpio_work_func, ptr %func.i, align 4
  %timer.i = getelementptr %struct.gpio_keys_drvdata, ptr %call.i146, i32 0, i32 4, i32 %i.0223, i32 6, i32 1
  tail call void @init_timer_key(ptr noundef %timer.i, ptr noundef nonnull @delayed_work_timer_fn, i32 noundef 2097152, ptr noundef nonnull @.str.43, ptr noundef nonnull @gpio_keys_setup_key.__key.42) #5
  %debounce_timer.i = getelementptr %struct.gpio_keys_drvdata, ptr %call.i146, i32 0, i32 4, i32 %i.0223, i32 7
  tail call void @hrtimer_init(ptr noundef %debounce_timer.i, i32 noundef 0, i32 noundef 1) #5
  %function.i = getelementptr %struct.gpio_keys_drvdata, ptr %call.i146, i32 0, i32 4, i32 %i.0223, i32 7, i32 2
  %97 = ptrtoint ptr %function.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @gpio_keys_debounce_timer, ptr %function.i, align 8
  %wakeup_event_action.i155 = getelementptr %struct.gpio_keys_button, ptr %57, i32 %i.0223, i32 6
  %98 = ptrtoint ptr %wakeup_event_action.i155 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %wakeup_event_action.i155, align 4
  %100 = zext i32 %99 to i64
  call void @__sanitizer_cov_trace_switch(i64 %100, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %99, label %do.body85.i.if.end137.i_crit_edge [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb108.i
  ]

do.body85.i.if.end137.i_crit_edge:                ; preds = %do.body85.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end137.i

sw.bb.i:                                          ; preds = %do.body85.i
  call void @__sanitizer_cov_trace_pc() #7
  %cond107.i = select i1 %tobool52.not.i, i32 1, i32 2
  %wakeup_trigger_type.i = getelementptr %struct.gpio_keys_drvdata, ptr %call.i146, i32 0, i32 4, i32 %i.0223, i32 10
  %101 = ptrtoint ptr %wakeup_trigger_type.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %cond107.i, ptr %wakeup_trigger_type.i, align 8
  br label %if.end137.i

sw.bb108.i:                                       ; preds = %do.body85.i
  call void @__sanitizer_cov_trace_pc() #7
  %cond110.i = select i1 %tobool52.not.i, i32 2, i32 1
  %wakeup_trigger_type111.i = getelementptr %struct.gpio_keys_drvdata, ptr %call.i146, i32 0, i32 4, i32 %i.0223, i32 10
  %102 = ptrtoint ptr %wakeup_trigger_type111.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %cond110.i, ptr %wakeup_trigger_type111.i, align 8
  br label %if.end137.i

cleanup113.i:                                     ; preds = %if.else72.i
  call void @__sanitizer_cov_trace_pc() #7
  %gpio80.i = getelementptr %struct.gpio_keys_button, ptr %57, i32 %i.0223, i32 1
  %103 = ptrtoint ptr %gpio80.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %gpio80.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.38, i32 noundef %104, i32 noundef %call74.i) #8
  br label %if.then56

if.else116.i:                                     ; preds = %if.end45.i
  %irq117.i = getelementptr %struct.gpio_keys_button, ptr %57, i32 %i.0223, i32 10
  %105 = ptrtoint ptr %irq117.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %irq117.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool118.not.i = icmp eq i32 %106, 0
  br i1 %tobool118.not.i, label %do.end122.i, label %if.end123.i

do.end122.i:                                      ; preds = %if.else116.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.45) #8
  br label %if.then56

if.end123.i:                                      ; preds = %if.else116.i
  %irq125.i = getelementptr %struct.gpio_keys_drvdata, ptr %call.i146, i32 0, i32 4, i32 %i.0223, i32 9
  %107 = ptrtoint ptr %irq125.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %irq125.i, align 4
  %type.i156 = getelementptr %struct.gpio_keys_button, ptr %57, i32 %i.0223, i32 4
  %108 = ptrtoint ptr %type.i156 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %type.i156, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %109)
  %switch.i = icmp ult i32 %109, 2
  br i1 %switch.i, label %if.end133.i, label %do.end132.i

do.end132.i:                                      ; preds = %if.end123.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.48) #8
  br label %if.then56

if.end133.i:                                      ; preds = %if.end123.i
  call void @__sanitizer_cov_trace_pc() #7
  %debounce_interval134.i = getelementptr %struct.gpio_keys_button, ptr %57, i32 %i.0223, i32 7
  %110 = ptrtoint ptr %debounce_interval134.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %debounce_interval134.i, align 4
  %release_delay.i = getelementptr %struct.gpio_keys_drvdata, ptr %call.i146, i32 0, i32 4, i32 %i.0223, i32 5
  %112 = ptrtoint ptr %release_delay.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %release_delay.i, align 8
  %release_timer.i = getelementptr %struct.gpio_keys_drvdata, ptr %call.i146, i32 0, i32 4, i32 %i.0223, i32 4
  tail call void @hrtimer_init(ptr noundef %release_timer.i, i32 noundef 0, i32 noundef 9) #5
  %function136.i = getelementptr %struct.gpio_keys_drvdata, ptr %call.i146, i32 0, i32 4, i32 %i.0223, i32 4, i32 2
  %113 = ptrtoint ptr %function136.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr @gpio_keys_irq_timer, ptr %function136.i, align 8
  br label %if.end137.i

if.end137.i:                                      ; preds = %if.end133.i, %sw.bb108.i, %sw.bb.i, %do.body85.i.if.end137.i_crit_edge
  %isr.1.i = phi ptr [ @gpio_keys_irq_isr, %if.end133.i ], [ @gpio_keys_gpio_isr, %do.body85.i.if.end137.i_crit_edge ], [ @gpio_keys_gpio_isr, %sw.bb108.i ], [ @gpio_keys_gpio_isr, %sw.bb.i ]
  %irqflags.1.i = phi i32 [ 0, %if.end133.i ], [ 3, %do.body85.i.if.end137.i_crit_edge ], [ 3, %sw.bb108.i ], [ 3, %sw.bb.i ]
  %114 = ptrtoint ptr %keymap to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %keymap, align 4
  %arrayidx138.i = getelementptr i16, ptr %115, i32 %i.0223
  %code.i = getelementptr %struct.gpio_keys_drvdata, ptr %call.i146, i32 0, i32 4, i32 %i.0223, i32 3
  %116 = ptrtoint ptr %code.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %arrayidx138.i, ptr %code.i, align 4
  %117 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %arrayidx, align 4
  %conv.i = trunc i32 %118 to i16
  %119 = ptrtoint ptr %arrayidx138.i to i32
  call void @__asan_store2_noabort(i32 %119)
  store i16 %conv.i, ptr %arrayidx138.i, align 2
  %type141.i = getelementptr %struct.gpio_keys_button, ptr %57, i32 %i.0223, i32 4
  %120 = ptrtoint ptr %type141.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %type141.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %tobool142.not.i = icmp eq i32 %121, 0
  %..i = select i1 %tobool142.not.i, i32 1, i32 %121
  %122 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %code.i, align 4
  %124 = ptrtoint ptr %123 to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %123, align 2
  %conv148.i = zext i16 %125 to i32
  tail call void @input_set_capability(ptr noundef nonnull %call18, i32 noundef %..i, i32 noundef %conv148.i) #5
  %call149.i = tail call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @gpio_keys_quiesce_key, ptr noundef %arrayidx.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call149.i)
  %tobool150.not.i = icmp eq i32 %call149.i, 0
  br i1 %tobool150.not.i, label %if.end155.i, label %do.end154.i

do.end154.i:                                      ; preds = %if.end137.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.51, i32 noundef %call149.i) #8
  br label %if.then56

if.end155.i:                                      ; preds = %if.end137.i
  %can_disable.i157 = getelementptr %struct.gpio_keys_button, ptr %57, i32 %i.0223, i32 8
  %126 = ptrtoint ptr %can_disable.i157 to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %can_disable.i157, align 4, !range !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %127)
  %tobool156.not.i = icmp eq i8 %127, 0
  %or158.i = or i32 %irqflags.1.i, 128
  %spec.select284.i = select i1 %tobool156.not.i, i32 %or158.i, i32 %irqflags.1.i
  %irq160.i = getelementptr %struct.gpio_keys_drvdata, ptr %call.i146, i32 0, i32 4, i32 %i.0223, i32 9
  %128 = ptrtoint ptr %irq160.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %irq160.i, align 4
  %call161.i = tail call i32 @devm_request_any_context_irq(ptr noundef %dev1, i32 noundef %129, ptr noundef nonnull %isr.1.i, i32 noundef %spec.select284.i, ptr noundef nonnull %spec.select.i150, ptr noundef %arrayidx.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call161.i)
  %cmp162.i = icmp slt i32 %call161.i, 0
  br i1 %cmp162.i, label %do.end167.i, label %for.inc

do.end167.i:                                      ; preds = %if.end155.i
  call void @__sanitizer_cov_trace_pc() #7
  %130 = ptrtoint ptr %irq160.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %irq160.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.54, i32 noundef %131, i32 noundef %call161.i) #8
  br label %if.then56

gpio_keys_setup_key.exit:                         ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #7
  %132 = ptrtoint ptr %call.i.i151 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.32, i32 noundef %132) #8
  br label %if.then56

if.then56.loopexit.split.loop.exit394:            ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #7
  %133 = ptrtoint ptr %call.i.i151 to i32
  br label %if.then56

if.then56:                                        ; preds = %if.then56.loopexit.split.loop.exit394, %gpio_keys_setup_key.exit, %do.end167.i, %do.end154.i, %do.end132.i, %do.end122.i, %cleanup113.i, %cleanup.i.if.then56_crit_edge, %cleanup.thread.i
  %retval.3.i166 = phi i32 [ %132, %gpio_keys_setup_key.exit ], [ %call29.i, %cleanup.thread.i ], [ -22, %do.end122.i ], [ -22, %do.end132.i ], [ %call74.i, %cleanup113.i ], [ %call161.i, %do.end167.i ], [ %call149.i, %do.end154.i ], [ %133, %if.then56.loopexit.split.loop.exit394 ], [ -22, %cleanup.i.if.then56_crit_edge ]
  tail call void @fwnode_handle_put(ptr noundef %child.1) #5
  br label %cleanup71

for.inc:                                          ; preds = %if.end155.i
  %wakeup58 = getelementptr %struct.gpio_keys_button, ptr %57, i32 %i.0223, i32 5
  %134 = ptrtoint ptr %wakeup58 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %wakeup58, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %tobool59.not = icmp eq i32 %135, 0
  %spec.select = select i1 %tobool59.not, i32 %wakeup.0226, i32 1
  %inc = add nuw nsw i32 %i.0223, 1
  %136 = ptrtoint ptr %nbuttons to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %nbuttons, align 4
  %cmp = icmp slt i32 %inc, %137
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end41.for.end_crit_edge
  %child.0.lcssa = phi ptr [ null, %if.end41.for.end_crit_edge ], [ %child.1, %for.inc.for.end_crit_edge ]
  %wakeup.0.lcssa = phi i32 [ 0, %if.end41.for.end_crit_edge ], [ %spec.select, %for.inc.for.end_crit_edge ]
  tail call void @fwnode_handle_put(ptr noundef %child.0.lcssa) #5
  %call62 = tail call i32 @input_register_device(ptr noundef nonnull %call18) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.end68, label %do.end67

do.end67:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15, i32 noundef %call62) #8
  br label %cleanup71

if.end68:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %wakeup.0.lcssa)
  %tobool69 = icmp ne i32 %wakeup.0.lcssa, 0
  %call70 = tail call i32 @device_init_wakeup(ptr noundef %dev1, i1 noundef zeroext %tobool69) #5
  br label %cleanup71

cleanup71:                                        ; preds = %if.end68, %do.end67, %if.then56, %do.end51, %do.end23, %devm_kcalloc.exit.cleanup71_crit_edge, %devm_kcalloc.exit.thread, %do.end, %if.then4
  %retval.2 = phi i32 [ %call62, %do.end67 ], [ 0, %if.end68 ], [ -12, %do.end23 ], [ -12, %do.end ], [ %13, %if.then4 ], [ -12, %devm_kcalloc.exit.cleanup71_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ -22, %do.end51 ], [ %retval.3.i166, %if.then56 ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gpio_keys_shutdown(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call i32 @gpio_keys_suspend(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.56) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_keys_open(ptr nocapture noundef readonly %input) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %enable = getelementptr inbounds %struct.gpio_keys_platform_data, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %enable, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then:                                          ; preds = %entry
  %parent = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 40, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 8
  %call3 = tail call i32 %5(ptr noundef %7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then.if.end6_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %input1.i = getelementptr inbounds %struct.gpio_keys_drvdata, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %input1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %input1.i, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 8
  %nbuttons7.i = getelementptr inbounds %struct.gpio_keys_platform_data, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %nbuttons7.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nbuttons7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp8.i = icmp sgt i32 %13, 0
  br i1 %cmp8.i, label %if.end6.for.body.i_crit_edge, label %if.end6.gpio_keys_report_state.exit_crit_edge

if.end6.gpio_keys_report_state.exit_crit_edge:    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %gpio_keys_report_state.exit

if.end6.for.body.i_crit_edge:                     ; preds = %if.end6
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %if.end6.for.body.i_crit_edge
  %i.09.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %if.end6.for.body.i_crit_edge ]
  %gpiod.i = getelementptr %struct.gpio_keys_drvdata, ptr %1, i32 0, i32 4, i32 %i.09.i, i32 2
  %14 = ptrtoint ptr %gpiod.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %gpiod.i, align 8
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i = getelementptr %struct.gpio_keys_drvdata, ptr %1, i32 0, i32 4, i32 %i.09.i
  tail call fastcc void @gpio_keys_gpio_report_event(ptr noundef %arrayidx.i) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  %nbuttons.i = getelementptr inbounds %struct.gpio_keys_platform_data, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %nbuttons.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nbuttons.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %19
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.gpio_keys_report_state.exit_crit_edge

if.end.i.gpio_keys_report_state.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gpio_keys_report_state.exit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

gpio_keys_report_state.exit:                      ; preds = %if.end.i.gpio_keys_report_state.exit_crit_edge, %if.end6.gpio_keys_report_state.exit_crit_edge
  tail call void @input_event(ptr noundef %9, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %gpio_keys_report_state.exit, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %gpio_keys_report_state.exit ], [ %call3, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gpio_keys_close(ptr nocapture noundef readonly %input) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %disable = getelementptr inbounds %struct.gpio_keys_platform_data, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %disable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %disable, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %parent = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 40, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 8
  tail call void %5(ptr noundef %7) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_next_child_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_init_wakeup(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_get_child_node_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @fwnode_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gpio_keys_gpio_report_event(ptr nocapture noundef readonly %bdata) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %bdata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bdata, align 8
  %input2 = getelementptr inbounds %struct.gpio_button_data, ptr %bdata, i32 0, i32 1
  %2 = ptrtoint ptr %input2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input2, align 4
  %type3 = getelementptr inbounds %struct.gpio_keys_button, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %type3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %. = select i1 %tobool.not, i32 1, i32 %5
  %debounce_use_hrtimer = getelementptr inbounds %struct.gpio_button_data, ptr %bdata, i32 0, i32 15
  %6 = ptrtoint ptr %debounce_use_hrtimer to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %debounce_use_hrtimer, align 1, !range !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool4.not = icmp eq i8 %7, 0
  %gpiod7 = getelementptr inbounds %struct.gpio_button_data, ptr %bdata, i32 0, i32 2
  %8 = ptrtoint ptr %gpiod7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %gpiod7, align 8
  br i1 %tobool4.not, label %cond.false6, label %cond.true5

cond.true5:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @gpiod_get_value(ptr noundef %9) #5
  br label %cond.end9

cond.false6:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call8 = tail call i32 @gpiod_get_value_cansleep(ptr noundef %9) #5
  br label %cond.end9

cond.end9:                                        ; preds = %cond.false6, %cond.true5
  %cond10 = phi i32 [ %call, %cond.true5 ], [ %call8, %cond.false6 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond10)
  %cmp = icmp slt i32 %cond10, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %cond.end9
  call void @__sanitizer_cov_trace_pc() #7
  %parent = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 40, i32 1
  %10 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %parent, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.28, i32 noundef %cond10) #8
  br label %cleanup

if.end:                                           ; preds = %cond.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.)
  %cmp11 = icmp eq i32 %., 3
  br i1 %cmp11, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond10)
  %tobool13.not = icmp eq i32 %cond10, 0
  br i1 %tobool13.not, label %if.then12.cleanup_crit_edge, label %if.then14

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then14:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %1, align 4
  %value = getelementptr inbounds %struct.gpio_keys_button, ptr %1, i32 0, i32 9
  %14 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %value, align 4
  tail call void @input_event(ptr noundef %3, i32 noundef 3, i32 noundef %13, i32 noundef %15) #5
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %code16 = getelementptr inbounds %struct.gpio_button_data, ptr %bdata, i32 0, i32 3
  %16 = ptrtoint ptr %code16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %code16, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %17, align 2
  %conv = zext i16 %19 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef %., i32 noundef %conv, i32 noundef %cond10) #5
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then14, %if.then12.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpio_request_one(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_is_active_low(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_set_debounce(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gpio_keys_gpio_work_func(ptr nocapture noundef readonly %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -68
  tail call fastcc void @gpio_keys_gpio_report_event(ptr noundef %add.ptr) #5
  %input.i = getelementptr i8, ptr %work, i32 -64
  %0 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %input.i, align 4
  tail call void @input_event(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %wakeup.i = getelementptr inbounds %struct.gpio_keys_button, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %entry.gpio_keys_debounce_event.exit_crit_edge, label %if.then.i

entry.gpio_keys_debounce_event.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %gpio_keys_debounce_event.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %input.i, align 4
  %parent.i = getelementptr inbounds %struct.input_dev, ptr %7, i32 0, i32 40, i32 1
  %8 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent.i, align 8
  tail call void @pm_relax(ptr noundef %9) #5
  br label %gpio_keys_debounce_event.exit

gpio_keys_debounce_event.exit:                    ; preds = %if.then.i, %entry.gpio_keys_debounce_event.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @delayed_work_timer_fn(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_keys_debounce_timer(ptr nocapture noundef readonly %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -168
  tail call fastcc void @gpio_keys_gpio_report_event(ptr noundef %add.ptr) #5
  %input.i = getelementptr i8, ptr %t, i32 -164
  %0 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %input.i, align 4
  tail call void @input_event(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr, align 8
  %wakeup.i = getelementptr inbounds %struct.gpio_keys_button, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %entry.gpio_keys_debounce_event.exit_crit_edge, label %if.then.i

entry.gpio_keys_debounce_event.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %gpio_keys_debounce_event.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %input.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %input.i, align 4
  %parent.i = getelementptr inbounds %struct.input_dev, ptr %7, i32 0, i32 40, i32 1
  %8 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent.i, align 8
  tail call void @pm_relax(ptr noundef %9) #5
  br label %gpio_keys_debounce_event.exit

gpio_keys_debounce_event.exit:                    ; preds = %if.then.i, %entry.gpio_keys_debounce_event.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_keys_gpio_isr(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %irq1 = getelementptr inbounds %struct.gpio_button_data, ptr %dev_id, i32 0, i32 9
  %0 = ptrtoint ptr %irq1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %irq)
  %cmp.not = icmp eq i32 %1, %irq
  br i1 %cmp.not, label %do.end8, label %do.body3, !prof !167

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/input/keyboard/gpio_keys.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 421, 0\0A.popsection", ""() #5, !srcloc !168
  unreachable

do.end8:                                          ; preds = %entry
  %2 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev_id, align 8
  %wakeup = getelementptr inbounds %struct.gpio_keys_button, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %wakeup to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wakeup, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool9.not = icmp eq i32 %5, 0
  br i1 %tobool9.not, label %do.end8.if.end20_crit_edge, label %if.then10

do.end8.if.end20_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.then10:                                        ; preds = %do.end8
  %input = getelementptr inbounds %struct.gpio_button_data, ptr %dev_id, i32 0, i32 1
  %6 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %input, align 4
  %parent = getelementptr inbounds %struct.input_dev, ptr %7, i32 0, i32 40, i32 1
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent, align 8
  tail call void @pm_stay_awake(ptr noundef %9) #5
  %suspended = getelementptr inbounds %struct.gpio_button_data, ptr %dev_id, i32 0, i32 14
  %10 = ptrtoint ptr %suspended to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %suspended, align 2, !range !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool13.not = icmp eq i8 %11, 0
  br i1 %tobool13.not, label %if.then10.if.end20_crit_edge, label %land.lhs.true

if.then10.if.end20_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

land.lhs.true:                                    ; preds = %if.then10
  %type = getelementptr inbounds %struct.gpio_keys_button, ptr %3, i32 0, i32 4
  %12 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %switch = icmp ult i32 %13, 2
  br i1 %switch, label %if.then17, label %land.lhs.true.if.end20_crit_edge

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %input, align 4
  %16 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %3, align 4
  tail call void @input_event(ptr noundef %15, i32 noundef 1, i32 noundef %17, i32 noundef 1) #5
  br label %if.end20

if.end20:                                         ; preds = %if.then17, %land.lhs.true.if.end20_crit_edge, %if.then10.if.end20_crit_edge, %do.end8.if.end20_crit_edge
  %debounce_use_hrtimer = getelementptr inbounds %struct.gpio_button_data, ptr %dev_id, i32 0, i32 15
  %18 = ptrtoint ptr %debounce_use_hrtimer to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %debounce_use_hrtimer, align 1, !range !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool21.not = icmp eq i8 %19, 0
  br i1 %tobool21.not, label %if.else, label %if.then22

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  %debounce_timer = getelementptr inbounds %struct.gpio_button_data, ptr %dev_id, i32 0, i32 7
  %software_debounce = getelementptr inbounds %struct.gpio_button_data, ptr %dev_id, i32 0, i32 8
  %20 = ptrtoint ptr %software_debounce to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %software_debounce, align 8
  %conv = zext i32 %21 to i64
  %mul.i = mul nuw nsw i64 %conv, 1000000
  tail call void @hrtimer_start_range_ns(ptr noundef %debounce_timer, i64 noundef %mul.i, i64 noundef 0, i32 noundef 1) #5
  br label %if.end26

if.else:                                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %22 = load ptr, ptr @system_wq, align 4
  %work = getelementptr inbounds %struct.gpio_button_data, ptr %dev_id, i32 0, i32 6
  %software_debounce23 = getelementptr inbounds %struct.gpio_button_data, ptr %dev_id, i32 0, i32 8
  %23 = ptrtoint ptr %software_debounce23 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %software_debounce23, align 8
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %24) #5
  %call.i = tail call zeroext i1 @mod_delayed_work_on(i32 noundef 4, ptr noundef %22, ptr noundef %work, i32 noundef %call2.i) #5
  br label %if.end26

if.end26:                                         ; preds = %if.else, %if.then22
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_keys_irq_timer(ptr nocapture noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %key_pressed = getelementptr i8, ptr %t, i32 257
  %0 = ptrtoint ptr %key_pressed to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %key_pressed, align 1, !range !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %input1 = getelementptr i8, ptr %t, i32 -12
  %2 = ptrtoint ptr %input1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input1, align 4
  %code = getelementptr i8, ptr %t, i32 -4
  %4 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %code, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %5, align 2
  %conv = zext i16 %7 to i32
  tail call void @input_event(ptr noundef %3, i32 noundef 1, i32 noundef %conv, i32 noundef 0) #5
  tail call void @input_event(ptr noundef %3, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  %8 = ptrtoint ptr %key_pressed to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %key_pressed, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_keys_irq_isr(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %input1 = getelementptr inbounds %struct.gpio_button_data, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %input1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %input1, align 4
  %irq2 = getelementptr inbounds %struct.gpio_button_data, ptr %dev_id, i32 0, i32 9
  %2 = ptrtoint ptr %irq2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %irq)
  %cmp.not = icmp eq i32 %3, %irq
  br i1 %cmp.not, label %do.body11, label %do.body4, !prof !167

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/input/keyboard/gpio_keys.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 473, 0\0A.popsection", ""() #5, !srcloc !169
  unreachable

do.body11:                                        ; preds = %entry
  %lock = getelementptr inbounds %struct.gpio_button_data, ptr %dev_id, i32 0, i32 11
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #5
  %key_pressed = getelementptr inbounds %struct.gpio_button_data, ptr %dev_id, i32 0, i32 13
  %4 = ptrtoint ptr %key_pressed to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %key_pressed, align 1, !range !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool18.not = icmp eq i8 %5, 0
  br i1 %tobool18.not, label %if.then19, label %do.body11.if.end31_crit_edge

do.body11.if.end31_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31

if.then19:                                        ; preds = %do.body11
  %6 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev_id, align 8
  %wakeup = getelementptr inbounds %struct.gpio_keys_button, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %wakeup to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %wakeup, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool20.not = icmp eq i32 %9, 0
  br i1 %tobool20.not, label %if.then19.if.end23_crit_edge, label %if.then21

if.then19.if.end23_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end23

if.then21:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %input1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %input1, align 4
  %parent = getelementptr inbounds %struct.input_dev, ptr %11, i32 0, i32 40, i32 1
  %12 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent, align 8
  tail call void @pm_wakeup_dev_event(ptr noundef %13, i32 noundef 0, i1 noundef zeroext false) #5
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.then19.if.end23_crit_edge
  %code = getelementptr inbounds %struct.gpio_button_data, ptr %dev_id, i32 0, i32 3
  %14 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %code, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %15, align 2
  %conv24 = zext i16 %17 to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef %conv24, i32 noundef 1) #5
  tail call void @input_event(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  %release_delay = getelementptr inbounds %struct.gpio_button_data, ptr %dev_id, i32 0, i32 5
  %18 = ptrtoint ptr %release_delay to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %release_delay, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool25.not = icmp eq i32 %19, 0
  br i1 %tobool25.not, label %if.then26, label %if.end29

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %20 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %code, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %21, align 2
  %conv28 = zext i16 %23 to i32
  tail call void @input_event(ptr noundef %1, i32 noundef 1, i32 noundef %conv28, i32 noundef 0) #5
  tail call void @input_event(ptr noundef %1, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  br label %out

if.end29:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  %24 = ptrtoint ptr %key_pressed to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 1, ptr %key_pressed, align 1
  br label %if.end31

if.end31:                                         ; preds = %if.end29, %do.body11.if.end31_crit_edge
  %release_delay32 = getelementptr inbounds %struct.gpio_button_data, ptr %dev_id, i32 0, i32 5
  %25 = ptrtoint ptr %release_delay32 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %release_delay32, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool33.not = icmp eq i32 %26, 0
  br i1 %tobool33.not, label %if.end31.out_crit_edge, label %if.then34

if.end31.out_crit_edge:                           ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then34:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  %release_timer = getelementptr inbounds %struct.gpio_button_data, ptr %dev_id, i32 0, i32 4
  %conv36 = zext i32 %26 to i64
  %mul.i = mul nuw nsw i64 %conv36, 1000000
  tail call void @hrtimer_start_range_ns(ptr noundef %release_timer, i64 noundef %mul.i, i64 noundef 0, i32 noundef 9) #5
  br label %out

out:                                              ; preds = %if.then34, %if.end31.out_crit_edge, %if.then26
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call13) #5
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gpio_keys_quiesce_key(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %gpiod = getelementptr inbounds %struct.gpio_button_data, ptr %data, i32 0, i32 2
  %0 = ptrtoint ptr %gpiod to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %gpiod, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %release_timer = getelementptr inbounds %struct.gpio_button_data, ptr %data, i32 0, i32 4
  %call = tail call i32 @hrtimer_cancel(ptr noundef %release_timer) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %debounce_use_hrtimer = getelementptr inbounds %struct.gpio_button_data, ptr %data, i32 0, i32 15
  %2 = ptrtoint ptr %debounce_use_hrtimer to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %debounce_use_hrtimer, align 1, !range !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool1.not = icmp eq i8 %3, 0
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %debounce_timer = getelementptr inbounds %struct.gpio_button_data, ptr %data, i32 0, i32 7
  %call3 = tail call i32 @hrtimer_cancel(ptr noundef %debounce_timer) #5
  br label %if.end5

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %work = getelementptr inbounds %struct.gpio_button_data, ptr %data, i32 0, i32 6
  %call4 = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work) #5
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_any_context_irq(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_fwnode_gpiod_get_index(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_relax(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_stay_awake(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @mod_delayed_work_on(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_wakeup_dev_event(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_delayed_work_sync(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_keys_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %input1 = getelementptr inbounds %struct.gpio_keys_drvdata, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %input1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input1, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.else_crit_edge, label %device_may_wakeup.exit

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %6, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.else_crit_edge, label %if.then

device_may_wakeup.exit.if.else_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then:                                          ; preds = %device_may_wakeup.exit
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 8
  %nbuttons46.i = getelementptr inbounds %struct.gpio_keys_platform_data, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %nbuttons46.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nbuttons46.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp47.i = icmp sgt i32 %10, 0
  br i1 %cmp47.i, label %if.then.for.body.i_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

for.body.i:                                       ; preds = %if.end3.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %i.048.i = phi i32 [ %inc.i, %if.end3.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.gpio_keys_drvdata, ptr %1, i32 0, i32 4, i32 %i.048.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 8
  %wakeup.i18 = getelementptr inbounds %struct.gpio_keys_button, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %wakeup.i18 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %wakeup.i18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i19 = icmp eq i32 %14, 0
  br i1 %tobool.not.i19, label %for.body.i.if.end3.i_crit_edge, label %if.then.i

for.body.i.if.end3.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3.i

if.then.i:                                        ; preds = %for.body.i
  %irq.i.i = getelementptr %struct.gpio_keys_drvdata, ptr %1, i32 0, i32 4, i32 %i.048.i, i32 9
  %15 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq.i.i, align 4
  %call.i.i.i = tail call i32 @irq_set_irq_wake(i32 noundef %16, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %do.end.i.i

do.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %input.i.i = getelementptr %struct.gpio_keys_drvdata, ptr %1, i32 0, i32 4, i32 %i.048.i, i32 1
  %17 = ptrtoint ptr %input.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %input.i.i, align 4
  %parent.i.i = getelementptr inbounds %struct.input_dev, ptr %18, i32 0, i32 40, i32 1
  %19 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %parent.i.i, align 8
  %21 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %irq.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.58, i32 noundef %22, i32 noundef %call.i.i.i) #8
  br label %gpio_keys_button_enable_wakeup.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  %wakeup_trigger_type.i.i = getelementptr %struct.gpio_keys_drvdata, ptr %1, i32 0, i32 4, i32 %i.048.i, i32 10
  %23 = ptrtoint ptr %wakeup_trigger_type.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %wakeup_trigger_type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool2.not.i.i = icmp eq i32 %24, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end3.i_crit_edge, label %if.then3.i.i

if.end.i.i.if.end3.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3.i

if.then3.i.i:                                     ; preds = %if.end.i.i
  %25 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %irq.i.i, align 4
  %call6.i.i = tail call i32 @irq_set_irq_type(i32 noundef %26, i32 noundef %24) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %tobool7.not.i.i = icmp eq i32 %call6.i.i, 0
  br i1 %tobool7.not.i.i, label %if.then3.i.i.if.end3.i_crit_edge, label %do.end11.i.i

if.then3.i.i.if.end3.i_crit_edge:                 ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3.i

do.end11.i.i:                                     ; preds = %if.then3.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %input12.i.i = getelementptr %struct.gpio_keys_drvdata, ptr %1, i32 0, i32 4, i32 %i.048.i, i32 1
  %27 = ptrtoint ptr %input12.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %input12.i.i, align 4
  %parent14.i.i = getelementptr inbounds %struct.input_dev, ptr %28, i32 0, i32 40, i32 1
  %29 = ptrtoint ptr %parent14.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %parent14.i.i, align 8
  %31 = ptrtoint ptr %wakeup_trigger_type.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %wakeup_trigger_type.i.i, align 8
  %33 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %irq.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.61, i32 noundef %32, i32 noundef %34, i32 noundef %call6.i.i) #8
  %35 = ptrtoint ptr %irq.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %irq.i.i, align 4
  %call.i35.i.i = tail call i32 @irq_set_irq_wake(i32 noundef %36, i32 noundef 0) #5
  br label %gpio_keys_button_enable_wakeup.exit.i

gpio_keys_button_enable_wakeup.exit.i:            ; preds = %do.end11.i.i, %do.end.i.i
  %retval.0.i.i = phi i32 [ %call.i.i.i, %do.end.i.i ], [ %call6.i.i, %do.end11.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.048.i)
  %tobool4.not51.i = icmp eq i32 %i.048.i, 0
  br i1 %tobool4.not51.i, label %gpio_keys_button_enable_wakeup.exit.i.cleanup_crit_edge, label %gpio_keys_button_enable_wakeup.exit.i.while.body.i_crit_edge

gpio_keys_button_enable_wakeup.exit.i.while.body.i_crit_edge: ; preds = %gpio_keys_button_enable_wakeup.exit.i
  br label %while.body.i

gpio_keys_button_enable_wakeup.exit.i.cleanup_crit_edge: ; preds = %gpio_keys_button_enable_wakeup.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3.i:                                        ; preds = %if.then3.i.i.if.end3.i_crit_edge, %if.end.i.i.if.end3.i_crit_edge, %for.body.i.if.end3.i_crit_edge
  %suspended.i = getelementptr %struct.gpio_keys_drvdata, ptr %1, i32 0, i32 4, i32 %i.048.i, i32 14
  %37 = ptrtoint ptr %suspended.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %suspended.i, align 2
  %inc.i = add nuw nsw i32 %i.048.i, 1
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 8
  %nbuttons.i = getelementptr inbounds %struct.gpio_keys_platform_data, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %nbuttons.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nbuttons.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %41
  br i1 %cmp.i, label %if.end3.i.for.body.i_crit_edge, label %if.end3.i.cleanup_crit_edge

if.end3.i.cleanup_crit_edge:                      ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end3.i.for.body.i_crit_edge:                   ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

while.body.i:                                     ; preds = %if.end11.i.while.body.i_crit_edge, %gpio_keys_button_enable_wakeup.exit.i.while.body.i_crit_edge
  %dec52.in.i = phi i32 [ %dec52.i, %if.end11.i.while.body.i_crit_edge ], [ %i.048.i, %gpio_keys_button_enable_wakeup.exit.i.while.body.i_crit_edge ]
  %dec52.i = add nsw i32 %dec52.in.i, -1
  %arrayidx6.i = getelementptr %struct.gpio_keys_drvdata, ptr %1, i32 0, i32 4, i32 %dec52.i
  %42 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx6.i, align 8
  %wakeup8.i = getelementptr inbounds %struct.gpio_keys_button, ptr %43, i32 0, i32 5
  %44 = ptrtoint ptr %wakeup8.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %wakeup8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool9.not.i = icmp eq i32 %45, 0
  br i1 %tobool9.not.i, label %while.body.i.if.end11.i_crit_edge, label %if.then10.i

while.body.i.if.end11.i_crit_edge:                ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11.i

if.then10.i:                                      ; preds = %while.body.i
  %wakeup_trigger_type.i27.i = getelementptr %struct.gpio_keys_drvdata, ptr %1, i32 0, i32 4, i32 %dec52.i, i32 10
  %46 = ptrtoint ptr %wakeup_trigger_type.i27.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %wakeup_trigger_type.i27.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool.not.i28.i = icmp eq i32 %47, 0
  br i1 %tobool.not.i28.i, label %if.then10.i.if.end4.i.i_crit_edge, label %if.then.i.i

if.then10.i.if.end4.i.i_crit_edge:                ; preds = %if.then10.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i.i

if.then.i.i:                                      ; preds = %if.then10.i
  %irq.i29.i = getelementptr %struct.gpio_keys_drvdata, ptr %1, i32 0, i32 4, i32 %dec52.i, i32 9
  %48 = ptrtoint ptr %irq.i29.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %irq.i29.i, align 4
  %call.i.i = tail call i32 @irq_set_irq_type(i32 noundef %49, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %if.then.i.i.if.end4.i.i_crit_edge, label %do.end.i32.i

if.then.i.i.if.end4.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i.i

do.end.i32.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %input.i30.i = getelementptr %struct.gpio_keys_drvdata, ptr %1, i32 0, i32 4, i32 %dec52.i, i32 1
  %50 = ptrtoint ptr %input.i30.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %input.i30.i, align 4
  %parent.i31.i = getelementptr inbounds %struct.input_dev, ptr %51, i32 0, i32 40, i32 1
  %52 = ptrtoint ptr %parent.i31.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %parent.i31.i, align 8
  %54 = ptrtoint ptr %irq.i29.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %irq.i29.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %53, ptr noundef nonnull @.str.63, i32 noundef %55, i32 noundef %call.i.i) #8
  br label %if.end4.i.i

if.end4.i.i:                                      ; preds = %do.end.i32.i, %if.then.i.i.if.end4.i.i_crit_edge, %if.then10.i.if.end4.i.i_crit_edge
  %irq5.i.i = getelementptr %struct.gpio_keys_drvdata, ptr %1, i32 0, i32 4, i32 %dec52.i, i32 9
  %56 = ptrtoint ptr %irq5.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %irq5.i.i, align 4
  %call.i.i33.i = tail call i32 @irq_set_irq_wake(i32 noundef %57, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i33.i)
  %tobool7.not.i34.i = icmp eq i32 %call.i.i33.i, 0
  br i1 %tobool7.not.i34.i, label %if.end4.i.i.if.end11.i_crit_edge, label %do.end11.i37.i

if.end4.i.i.if.end11.i_crit_edge:                 ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11.i

do.end11.i37.i:                                   ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %input12.i35.i = getelementptr %struct.gpio_keys_drvdata, ptr %1, i32 0, i32 4, i32 %dec52.i, i32 1
  %58 = ptrtoint ptr %input12.i35.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %input12.i35.i, align 4
  %parent14.i36.i = getelementptr inbounds %struct.input_dev, ptr %59, i32 0, i32 40, i32 1
  %60 = ptrtoint ptr %parent14.i36.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %parent14.i36.i, align 8
  %62 = ptrtoint ptr %irq5.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %irq5.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %61, ptr noundef nonnull @.str.67, i32 noundef %63, i32 noundef %call.i.i33.i) #8
  br label %if.end11.i

if.end11.i:                                       ; preds = %do.end11.i37.i, %if.end4.i.i.if.end11.i_crit_edge, %while.body.i.if.end11.i_crit_edge
  %suspended12.i = getelementptr %struct.gpio_keys_drvdata, ptr %1, i32 0, i32 4, i32 %dec52.i, i32 14
  %64 = ptrtoint ptr %suspended12.i to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %suspended12.i, align 2
  %tobool4.not.i = icmp eq i32 %dec52.i, 0
  br i1 %tobool4.not.i, label %if.end11.i.cleanup_crit_edge, label %if.end11.i.while.body.i_crit_edge

if.end11.i.while.body.i_crit_edge:                ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body.i

if.end11.i.cleanup_crit_edge:                     ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.else:                                          ; preds = %device_may_wakeup.exit.if.else_crit_edge, %entry.if.else_crit_edge
  %mutex = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 37
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %call5 = tail call zeroext i1 @input_device_enabled(ptr noundef %3) #5
  br i1 %call5, label %if.then6, label %if.else.if.end7_crit_edge

if.else.if.end7_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then6:                                         ; preds = %if.else
  %driver_data.i.i.i = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 40, i32 8
  %65 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %driver_data.i.i.i, align 4
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %66, align 8
  %disable.i = getelementptr inbounds %struct.gpio_keys_platform_data, ptr %68, i32 0, i32 5
  %69 = ptrtoint ptr %disable.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %disable.i, align 4
  %tobool.not.i20 = icmp eq ptr %70, null
  br i1 %tobool.not.i20, label %if.then6.if.end7_crit_edge, label %if.then.i21

if.then6.if.end7_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then.i21:                                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  %parent.i = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 40, i32 1
  %71 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %parent.i, align 8
  tail call void %70(ptr noundef %72) #5
  br label %if.end7

if.end7:                                          ; preds = %if.then.i21, %if.then6.if.end7_crit_edge, %if.else.if.end7_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end11.i.cleanup_crit_edge, %if.end3.i.cleanup_crit_edge, %gpio_keys_button_enable_wakeup.exit.i.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i.i, %gpio_keys_button_enable_wakeup.exit.i.cleanup_crit_edge ], [ 0, %if.then.cleanup_crit_edge ], [ 0, %if.end7 ], [ %retval.0.i.i, %if.end11.i.cleanup_crit_edge ], [ 0, %if.end3.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @input_device_enabled(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_type(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_keys_show_keys(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1.i = tail call ptr @bitmap_zalloc(i32 noundef 768, i32 noundef 3264) #5
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %entry.gpio_keys_attr_show_helper.exit_crit_edge, label %for.cond.preheader.i

entry.gpio_keys_attr_show_helper.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %gpio_keys_attr_show_helper.exit

for.cond.preheader.i:                             ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %nbuttons32.i = getelementptr inbounds %struct.gpio_keys_platform_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %nbuttons32.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nbuttons32.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp33.i = icmp sgt i32 %5, 0
  br i1 %cmp33.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.034.i = phi i32 [ %inc.i, %cleanup.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.gpio_keys_drvdata, ptr %1, i32 0, i32 4, i32 %i.034.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 8
  %type2.i = getelementptr inbounds %struct.gpio_keys_button, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %type2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp3.not.i = icmp eq i32 %9, 1
  br i1 %cmp3.not.i, label %if.end5.i, label %for.body.i.cleanup.i_crit_edge

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i

if.end5.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %code.i = getelementptr %struct.gpio_keys_drvdata, ptr %1, i32 0, i32 4, i32 %i.034.i, i32 3
  %10 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %code.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %11, align 2
  %conv.i = zext i16 %13 to i32
  %rem.i.i = and i32 %conv.i, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %conv.i, 5
  %add.ptr.i.i = getelementptr i32, ptr %call1.i, i32 %div2.i.i
  %14 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %shl.i.i, %15
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end5.i, %for.body.i.cleanup.i_crit_edge
  %inc.i = add nuw nsw i32 %i.034.i, 1
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  %nbuttons.i = getelementptr inbounds %struct.gpio_keys_platform_data, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %nbuttons.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nbuttons.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %19
  br i1 %cmp.i, label %cleanup.i.for.body.i_crit_edge, label %cleanup.i.for.end.i_crit_edge

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %call10.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4095, ptr noundef nonnull @.str.70, i32 noundef 768, ptr noundef nonnull %call1.i) #5
  %inc11.i = add i32 %call10.i, 1
  %arrayidx12.i = getelementptr i8, ptr %buf, i32 %call10.i
  %20 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 10, ptr %arrayidx12.i, align 1
  %arrayidx13.i = getelementptr i8, ptr %buf, i32 %inc11.i
  %21 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %arrayidx13.i, align 1
  tail call void @bitmap_free(ptr noundef nonnull %call1.i) #5
  br label %gpio_keys_attr_show_helper.exit

gpio_keys_attr_show_helper.exit:                  ; preds = %for.end.i, %entry.gpio_keys_attr_show_helper.exit_crit_edge
  %retval.0.i = phi i32 [ %inc11.i, %for.end.i ], [ -12, %entry.gpio_keys_attr_show_helper.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gpio_keys_attr_show_helper(ptr nocapture noundef readonly %ddata, ptr noundef %buf, i32 noundef %type, i1 noundef zeroext %only_disabled) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %type, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %.not.i = icmp eq i32 %0, 1
  br i1 %.not.i, label %get_n_events_by_type.exit, label %do.body3.i, !prof !167

do.body3.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/input/keyboard/gpio_keys.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 107, 0\0A.popsection", ""() #5, !srcloc !170
  unreachable

get_n_events_by_type.exit:                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp7.i = icmp eq i32 %type, 1
  %cond.i = select i1 %cmp7.i, i32 768, i32 17
  %call1 = tail call ptr @bitmap_zalloc(i32 noundef %cond.i, i32 noundef 3264) #5
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %get_n_events_by_type.exit.cleanup14_crit_edge, label %for.cond.preheader

get_n_events_by_type.exit.cleanup14_crit_edge:    ; preds = %get_n_events_by_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup14

for.cond.preheader:                               ; preds = %get_n_events_by_type.exit
  %1 = ptrtoint ptr %ddata to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %ddata, align 8
  %nbuttons32 = getelementptr inbounds %struct.gpio_keys_platform_data, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %nbuttons32 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nbuttons32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp33 = icmp sgt i32 %4, 0
  br i1 %cmp33, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.034 = phi i32 [ %inc, %cleanup.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.gpio_keys_drvdata, ptr %ddata, i32 0, i32 4, i32 %i.034
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 8
  %type2 = getelementptr inbounds %struct.gpio_keys_button, ptr %6, i32 0, i32 4
  %7 = ptrtoint ptr %type2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %type2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %type)
  %cmp3.not = icmp eq i32 %8, %type
  br i1 %cmp3.not, label %if.end5, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %for.body
  br i1 %only_disabled, label %land.lhs.true, label %if.end5.if.end9_crit_edge

if.end5.if.end9_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

land.lhs.true:                                    ; preds = %if.end5
  %disabled = getelementptr %struct.gpio_keys_drvdata, ptr %ddata, i32 0, i32 4, i32 %i.034, i32 12
  %9 = ptrtoint ptr %disabled to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %disabled, align 8, !range !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool7.not = icmp eq i8 %10, 0
  br i1 %tobool7.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %land.lhs.true.if.end9_crit_edge, %if.end5.if.end9_crit_edge
  %code = getelementptr %struct.gpio_keys_drvdata, ptr %ddata, i32 0, i32 4, i32 %i.034, i32 3
  %11 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %code, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %12, align 2
  %conv = zext i16 %14 to i32
  %rem.i = and i32 %conv, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %conv, 5
  %add.ptr.i = getelementptr i32, ptr %call1, i32 %div2.i
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %shl.i, %16
  store i32 %or.i, ptr %add.ptr.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %land.lhs.true.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.034, 1
  %17 = ptrtoint ptr %ddata to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ddata, align 8
  %nbuttons = getelementptr inbounds %struct.gpio_keys_platform_data, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %nbuttons to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nbuttons, align 4
  %cmp = icmp slt i32 %inc, %20
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call10 = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4095, ptr noundef nonnull @.str.70, i32 noundef %cond.i, ptr noundef nonnull %call1) #5
  %inc11 = add i32 %call10, 1
  %arrayidx12 = getelementptr i8, ptr %buf, i32 %call10
  %21 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 10, ptr %arrayidx12, align 1
  %arrayidx13 = getelementptr i8, ptr %buf, i32 %inc11
  %22 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %arrayidx13, align 1
  tail call void @bitmap_free(ptr noundef nonnull %call1) #5
  br label %cleanup14

cleanup14:                                        ; preds = %for.end, %get_n_events_by_type.exit.cleanup14_crit_edge
  %retval.0 = phi i32 [ %inc11, %for.end ], [ -12, %get_n_events_by_type.exit.cleanup14_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_zalloc(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @scnprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_keys_show_switches(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1.i = tail call ptr @bitmap_zalloc(i32 noundef 17, i32 noundef 3264) #5
  %tobool.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool.not.i, label %entry.gpio_keys_attr_show_helper.exit_crit_edge, label %for.cond.preheader.i

entry.gpio_keys_attr_show_helper.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %gpio_keys_attr_show_helper.exit

for.cond.preheader.i:                             ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %nbuttons32.i = getelementptr inbounds %struct.gpio_keys_platform_data, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %nbuttons32.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nbuttons32.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp33.i = icmp sgt i32 %5, 0
  br i1 %cmp33.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %cleanup.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.034.i = phi i32 [ %inc.i, %cleanup.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.gpio_keys_drvdata, ptr %1, i32 0, i32 4, i32 %i.034.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 8
  %type2.i = getelementptr inbounds %struct.gpio_keys_button, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %type2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %type2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %9)
  %cmp3.not.i = icmp eq i32 %9, 5
  br i1 %cmp3.not.i, label %if.end5.i, label %for.body.i.cleanup.i_crit_edge

for.body.i.cleanup.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i

if.end5.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %code.i = getelementptr %struct.gpio_keys_drvdata, ptr %1, i32 0, i32 4, i32 %i.034.i, i32 3
  %10 = ptrtoint ptr %code.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %code.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %11, align 2
  %conv.i = zext i16 %13 to i32
  %rem.i.i = and i32 %conv.i, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %conv.i, 5
  %add.ptr.i.i = getelementptr i32, ptr %call1.i, i32 %div2.i.i
  %14 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %shl.i.i, %15
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end5.i, %for.body.i.cleanup.i_crit_edge
  %inc.i = add nuw nsw i32 %i.034.i, 1
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 8
  %nbuttons.i = getelementptr inbounds %struct.gpio_keys_platform_data, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %nbuttons.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nbuttons.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %19
  br i1 %cmp.i, label %cleanup.i.for.body.i_crit_edge, label %cleanup.i.for.end.i_crit_edge

cleanup.i.for.end.i_crit_edge:                    ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end.i

cleanup.i.for.body.i_crit_edge:                   ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.end.i:                                        ; preds = %cleanup.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %call10.i = tail call i32 (ptr, i32, ptr, ...) @scnprintf(ptr noundef %buf, i32 noundef 4095, ptr noundef nonnull @.str.70, i32 noundef 17, ptr noundef nonnull %call1.i) #5
  %inc11.i = add i32 %call10.i, 1
  %arrayidx12.i = getelementptr i8, ptr %buf, i32 %call10.i
  %20 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 10, ptr %arrayidx12.i, align 1
  %arrayidx13.i = getelementptr i8, ptr %buf, i32 %inc11.i
  %21 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %arrayidx13.i, align 1
  tail call void @bitmap_free(ptr noundef nonnull %call1.i) #5
  br label %gpio_keys_attr_show_helper.exit

gpio_keys_attr_show_helper.exit:                  ; preds = %for.end.i, %entry.gpio_keys_attr_show_helper.exit_crit_edge
  %retval.0.i = phi i32 [ %inc11.i, %for.end.i ], [ -12, %entry.gpio_keys_attr_show_helper.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_keys_show_disabled_keys(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call fastcc i32 @gpio_keys_attr_show_helper(ptr noundef %1, ptr noundef %buf, i32 noundef 1, i1 noundef zeroext true)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_keys_store_disabled_keys(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call fastcc i32 @gpio_keys_attr_store_helper(ptr noundef %1, ptr noundef %buf, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  %count.call1 = select i1 %tobool.not, i32 %count, i32 %call1
  ret i32 %count.call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gpio_keys_attr_store_helper(ptr noundef %ddata, ptr noundef %buf, i32 noundef %type) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i32 %type, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %.not.i = icmp eq i32 %0, 1
  br i1 %.not.i, label %get_bm_events_by_type.exit, label %do.body3.i, !prof !167

do.body3.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/input/keyboard/gpio_keys.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 107, 0\0A.popsection", ""() #5, !srcloc !170
  unreachable

get_bm_events_by_type.exit:                       ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %type)
  %cmp7.i = icmp eq i32 %type, 1
  %cond.i = select i1 %cmp7.i, i32 768, i32 17
  %input = getelementptr inbounds %struct.gpio_keys_drvdata, ptr %ddata, i32 0, i32 1
  %1 = ptrtoint ptr %input to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %input, align 4
  %keybit.i = getelementptr inbounds %struct.input_dev, ptr %2, i32 0, i32 6
  %swbit.i = getelementptr inbounds %struct.input_dev, ptr %2, i32 0, i32 13
  %cond.i89 = select i1 %cmp7.i, ptr %keybit.i, ptr %swbit.i
  %call2 = tail call ptr @bitmap_alloc(i32 noundef %cond.i, i32 noundef 3264) #5
  %tobool.not = icmp eq ptr %call2, null
  br i1 %tobool.not, label %get_bm_events_by_type.exit.cleanup49_crit_edge, label %if.end

get_bm_events_by_type.exit.cleanup49_crit_edge:   ; preds = %get_bm_events_by_type.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup49

if.end:                                           ; preds = %get_bm_events_by_type.exit
  %call3 = tail call i32 @bitmap_parselist(ptr noundef %buf, ptr noundef nonnull %call2, i32 noundef %cond.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.else.i, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.else.i:                                        ; preds = %if.end
  %call.i = tail call i32 @__bitmap_subset(ptr noundef nonnull %call2, ptr noundef %cond.i89, i32 noundef %cond.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not = icmp eq i32 %call.i, 0
  br i1 %tobool8.not, label %if.else.i.out_crit_edge, label %for.cond.preheader

if.else.i.out_crit_edge:                          ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

for.cond.preheader:                               ; preds = %if.else.i
  %3 = ptrtoint ptr %ddata to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ddata, align 8
  %nbuttons = getelementptr inbounds %struct.gpio_keys_platform_data, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %nbuttons to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nbuttons, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp101 = icmp sgt i32 %6, 0
  br i1 %cmp101, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0102 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.gpio_keys_drvdata, ptr %ddata, i32 0, i32 4, i32 %i.0102
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 8
  %type11 = getelementptr inbounds %struct.gpio_keys_button, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %type11 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %type11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %type)
  %cmp12.not = icmp eq i32 %10, %type
  br i1 %cmp12.not, label %if.end14, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end14:                                         ; preds = %for.body
  %code = getelementptr %struct.gpio_keys_drvdata, ptr %ddata, i32 0, i32 4, i32 %i.0102, i32 3
  %11 = ptrtoint ptr %code to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %code, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %12, align 2
  %conv = zext i16 %14 to i32
  %div3.i = lshr i32 %conv, 5
  %arrayidx.i = getelementptr i32, ptr %call2, i32 %div3.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %conv, 31
  %17 = shl nuw i32 1, %and.i
  %18 = and i32 %17, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool16.not = icmp eq i32 %18, 0
  br i1 %tobool16.not, label %if.end14.for.inc_crit_edge, label %land.lhs.true

if.end14.for.inc_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true:                                    ; preds = %if.end14
  %can_disable = getelementptr inbounds %struct.gpio_keys_button, ptr %8, i32 0, i32 8
  %19 = ptrtoint ptr %can_disable to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %can_disable, align 4, !range !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool18.not = icmp eq i8 %20, 0
  br i1 %tobool18.not, label %land.lhs.true.out_crit_edge, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

for.inc:                                          ; preds = %land.lhs.true.for.inc_crit_edge, %if.end14.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0102, 1
  %exitcond.not = icmp eq i32 %inc, %6
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %disable_lock = getelementptr inbounds %struct.gpio_keys_drvdata, ptr %ddata, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %disable_lock, i32 noundef 0) #5
  %21 = ptrtoint ptr %ddata to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ddata, align 8
  %nbuttons23104 = getelementptr inbounds %struct.gpio_keys_platform_data, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %nbuttons23104 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nbuttons23104, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp24105 = icmp sgt i32 %24, 0
  br i1 %cmp24105, label %for.end.for.body26_crit_edge, label %for.end.for.end47_crit_edge

for.end.for.end47_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end47

for.end.for.body26_crit_edge:                     ; preds = %for.end
  br label %for.body26

for.body26:                                       ; preds = %cleanup42.for.body26_crit_edge, %for.end.for.body26_crit_edge
  %i.1106 = phi i32 [ %inc46, %cleanup42.for.body26_crit_edge ], [ 0, %for.end.for.body26_crit_edge ]
  %arrayidx29 = getelementptr %struct.gpio_keys_drvdata, ptr %ddata, i32 0, i32 4, i32 %i.1106
  %25 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx29, align 8
  %type31 = getelementptr inbounds %struct.gpio_keys_button, ptr %26, i32 0, i32 4
  %27 = ptrtoint ptr %type31 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %type31, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %type)
  %cmp32.not = icmp eq i32 %28, %type
  br i1 %cmp32.not, label %if.end35, label %for.body26.cleanup42_crit_edge

for.body26.cleanup42_crit_edge:                   ; preds = %for.body26
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup42

if.end35:                                         ; preds = %for.body26
  %code36 = getelementptr %struct.gpio_keys_drvdata, ptr %ddata, i32 0, i32 4, i32 %i.1106, i32 3
  %29 = ptrtoint ptr %code36 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %code36, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %30, align 2
  %conv37 = zext i16 %32 to i32
  %div3.i81 = lshr i32 %conv37, 5
  %arrayidx.i82 = getelementptr i32, ptr %call2, i32 %div3.i81
  %33 = ptrtoint ptr %arrayidx.i82 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %arrayidx.i82, align 4
  %and.i83 = and i32 %conv37, 31
  %35 = shl nuw i32 1, %and.i83
  %36 = and i32 %35, %34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool39.not = icmp eq i32 %36, 0
  %disabled.i94 = getelementptr %struct.gpio_keys_drvdata, ptr %ddata, i32 0, i32 4, i32 %i.1106, i32 12
  %37 = ptrtoint ptr %disabled.i94 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %disabled.i94, align 8, !range !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i95 = icmp eq i8 %38, 0
  br i1 %tobool39.not, label %if.else, label %if.then40

if.then40:                                        ; preds = %if.end35
  br i1 %tobool.not.i95, label %if.then.i93, label %if.then40.cleanup42_crit_edge

if.then40.cleanup42_crit_edge:                    ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup42

if.then.i93:                                      ; preds = %if.then40
  %irq.i = getelementptr %struct.gpio_keys_drvdata, ptr %ddata, i32 0, i32 4, i32 %i.1106, i32 9
  %39 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %irq.i, align 4
  tail call void @disable_irq(i32 noundef %40) #5
  %gpiod.i.i = getelementptr %struct.gpio_keys_drvdata, ptr %ddata, i32 0, i32 4, i32 %i.1106, i32 2
  %41 = ptrtoint ptr %gpiod.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %gpiod.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %42, null
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then.i93.if.end.i.i_crit_edge

if.then.i93.if.end.i.i_crit_edge:                 ; preds = %if.then.i93
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %if.then.i93
  call void @__sanitizer_cov_trace_pc() #7
  %release_timer.i.i = getelementptr %struct.gpio_keys_drvdata, ptr %ddata, i32 0, i32 4, i32 %i.1106, i32 4
  %call.i.i = tail call i32 @hrtimer_cancel(ptr noundef %release_timer.i.i) #5
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %if.then.i93.if.end.i.i_crit_edge
  %debounce_use_hrtimer.i.i = getelementptr %struct.gpio_keys_drvdata, ptr %ddata, i32 0, i32 4, i32 %i.1106, i32 15
  %43 = ptrtoint ptr %debounce_use_hrtimer.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %debounce_use_hrtimer.i.i, align 1, !range !166
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %44)
  %tobool1.not.i.i = icmp eq i8 %44, 0
  br i1 %tobool1.not.i.i, label %if.else.i.i, label %if.then2.i.i

if.then2.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %debounce_timer.i.i = getelementptr %struct.gpio_keys_drvdata, ptr %ddata, i32 0, i32 4, i32 %i.1106, i32 7
  %call3.i.i = tail call i32 @hrtimer_cancel(ptr noundef %debounce_timer.i.i) #5
  br label %cleanup42.sink.split

if.else.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %work.i.i = getelementptr %struct.gpio_keys_drvdata, ptr %ddata, i32 0, i32 4, i32 %i.1106, i32 6
  %call4.i.i = tail call zeroext i1 @cancel_delayed_work_sync(ptr noundef %work.i.i) #5
  br label %cleanup42.sink.split

if.else:                                          ; preds = %if.end35
  br i1 %tobool.not.i95, label %if.else.cleanup42_crit_edge, label %if.then.i97

if.else.cleanup42_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup42

if.then.i97:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %irq.i96 = getelementptr %struct.gpio_keys_drvdata, ptr %ddata, i32 0, i32 4, i32 %i.1106, i32 9
  %45 = ptrtoint ptr %irq.i96 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %irq.i96, align 4
  tail call void @enable_irq(i32 noundef %46) #5
  br label %cleanup42.sink.split

cleanup42.sink.split:                             ; preds = %if.then.i97, %if.else.i.i, %if.then2.i.i
  %.sink = phi i8 [ 0, %if.then.i97 ], [ 1, %if.else.i.i ], [ 1, %if.then2.i.i ]
  %47 = ptrtoint ptr %disabled.i94 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %.sink, ptr %disabled.i94, align 8
  br label %cleanup42

cleanup42:                                        ; preds = %cleanup42.sink.split, %if.else.cleanup42_crit_edge, %if.then40.cleanup42_crit_edge, %for.body26.cleanup42_crit_edge
  %inc46 = add nuw nsw i32 %i.1106, 1
  %48 = ptrtoint ptr %ddata to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %ddata, align 8
  %nbuttons23 = getelementptr inbounds %struct.gpio_keys_platform_data, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %nbuttons23 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %nbuttons23, align 4
  %cmp24 = icmp slt i32 %inc46, %51
  br i1 %cmp24, label %cleanup42.for.body26_crit_edge, label %cleanup42.for.end47_crit_edge

cleanup42.for.end47_crit_edge:                    ; preds = %cleanup42
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end47

cleanup42.for.body26_crit_edge:                   ; preds = %cleanup42
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body26

for.end47:                                        ; preds = %cleanup42.for.end47_crit_edge, %for.end.for.end47_crit_edge
  tail call void @mutex_unlock(ptr noundef %disable_lock) #5
  br label %out

out:                                              ; preds = %for.end47, %land.lhs.true.out_crit_edge, %if.else.i.out_crit_edge, %if.end.out_crit_edge
  %error.2 = phi i32 [ %call3, %if.end.out_crit_edge ], [ 0, %for.end47 ], [ -22, %if.else.i.out_crit_edge ], [ -22, %land.lhs.true.out_crit_edge ]
  tail call void @bitmap_free(ptr noundef nonnull %call2) #5
  br label %cleanup49

cleanup49:                                        ; preds = %out, %get_bm_events_by_type.exit.cleanup49_crit_edge
  %retval.0 = phi i32 [ %error.2, %out ], [ -12, %get_bm_events_by_type.exit.cleanup49_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_alloc(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_parselist(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_subset(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_keys_show_disabled_switches(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call fastcc i32 @gpio_keys_attr_show_helper(ptr noundef %1, ptr noundef %buf, i32 noundef 5, i1 noundef zeroext true)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_keys_store_disabled_switches(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buf, i32 noundef %count) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr i8, ptr %dev, i32 164
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call fastcc i32 @gpio_keys_attr_store_helper(ptr noundef %1, ptr noundef %buf, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  %count.call1 = select i1 %tobool.not, i32 %count, i32 %call1
  ret i32 %count.call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_keys_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %input1 = getelementptr inbounds %struct.gpio_keys_drvdata, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %input1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %input1, align 4
  %can_wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 1
  %4 = ptrtoint ptr %can_wakeup.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %bf.load.i = load i16, ptr %can_wakeup.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %bf.load.i)
  %tobool.not.i = icmp sgt i16 %bf.load.i, -1
  br i1 %tobool.not.i, label %entry.if.else_crit_edge, label %device_may_wakeup.exit

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

device_may_wakeup.exit:                           ; preds = %entry
  %wakeup.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 6
  %5 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %wakeup.i, align 8
  %tobool2.i.not = icmp eq ptr %6, null
  br i1 %tobool2.i.not, label %device_may_wakeup.exit.if.else_crit_edge, label %if.then

device_may_wakeup.exit.if.else_crit_edge:         ; preds = %device_may_wakeup.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then:                                          ; preds = %device_may_wakeup.exit
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 8
  %nbuttons7.i = getelementptr inbounds %struct.gpio_keys_platform_data, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %nbuttons7.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nbuttons7.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp8.i = icmp sgt i32 %10, 0
  br i1 %cmp8.i, label %if.then.for.body.i_crit_edge, label %if.then.if.end9_crit_edge

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %i.09.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  %suspended.i = getelementptr %struct.gpio_keys_drvdata, ptr %1, i32 0, i32 4, i32 %i.09.i, i32 14
  %11 = ptrtoint ptr %suspended.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %suspended.i, align 2
  %irq.i = getelementptr %struct.gpio_keys_drvdata, ptr %1, i32 0, i32 4, i32 %i.09.i, i32 9
  %12 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq.i, align 4
  %call.i = tail call ptr @irq_get_irq_data(i32 noundef %13) #5
  %common.i.i = getelementptr inbounds %struct.irq_data, ptr %call.i, i32 0, i32 3
  %14 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %common.i.i, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %and.i.i = and i32 %17, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.then.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  %wakeup_trigger_type.i.i = getelementptr %struct.gpio_keys_drvdata, ptr %1, i32 0, i32 4, i32 %i.09.i, i32 10
  %18 = ptrtoint ptr %wakeup_trigger_type.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %wakeup_trigger_type.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i.i = icmp eq i32 %19, 0
  br i1 %tobool.not.i.i, label %if.then.i.if.end4.i.i_crit_edge, label %if.then.i.i

if.then.i.if.end4.i.i_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i.i

if.then.i.i:                                      ; preds = %if.then.i
  %20 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irq.i, align 4
  %call.i.i = tail call i32 @irq_set_irq_type(i32 noundef %21, i32 noundef 3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool1.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool1.not.i.i, label %if.then.i.i.if.end4.i.i_crit_edge, label %do.end.i.i

if.then.i.i.if.end4.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4.i.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %input.i.i = getelementptr %struct.gpio_keys_drvdata, ptr %1, i32 0, i32 4, i32 %i.09.i, i32 1
  %22 = ptrtoint ptr %input.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %input.i.i, align 4
  %parent.i.i = getelementptr inbounds %struct.input_dev, ptr %23, i32 0, i32 40, i32 1
  %24 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %parent.i.i, align 8
  %26 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %irq.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %25, ptr noundef nonnull @.str.63, i32 noundef %27, i32 noundef %call.i.i) #8
  br label %if.end4.i.i

if.end4.i.i:                                      ; preds = %do.end.i.i, %if.then.i.i.if.end4.i.i_crit_edge, %if.then.i.if.end4.i.i_crit_edge
  %28 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irq.i, align 4
  %call.i.i.i = tail call i32 @irq_set_irq_wake(i32 noundef %29, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool7.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool7.not.i.i, label %if.end4.i.i.for.inc.i_crit_edge, label %do.end11.i.i

if.end4.i.i.for.inc.i_crit_edge:                  ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc.i

do.end11.i.i:                                     ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %input12.i.i = getelementptr %struct.gpio_keys_drvdata, ptr %1, i32 0, i32 4, i32 %i.09.i, i32 1
  %30 = ptrtoint ptr %input12.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %input12.i.i, align 4
  %parent14.i.i = getelementptr inbounds %struct.input_dev, ptr %31, i32 0, i32 40, i32 1
  %32 = ptrtoint ptr %parent14.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %parent14.i.i, align 8
  %34 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %irq.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %33, ptr noundef nonnull @.str.67, i32 noundef %35, i32 noundef %call.i.i.i) #8
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end11.i.i, %if.end4.i.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 8
  %nbuttons.i = getelementptr inbounds %struct.gpio_keys_platform_data, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %nbuttons.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %nbuttons.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %39
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end9_crit_edge

for.inc.i.if.end9_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

if.else:                                          ; preds = %device_may_wakeup.exit.if.else_crit_edge, %entry.if.else_crit_edge
  %mutex = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 37
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %call3 = tail call zeroext i1 @input_device_enabled(ptr noundef %3) #5
  br i1 %call3, label %if.then4, label %if.else.if.end7.thread35_crit_edge

if.else.if.end7.thread35_crit_edge:               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.thread35

if.then4:                                         ; preds = %if.else
  %driver_data.i.i.i = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 40, i32 8
  %40 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %driver_data.i.i.i, align 4
  %42 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %41, align 8
  %enable.i = getelementptr inbounds %struct.gpio_keys_platform_data, ptr %43, i32 0, i32 4
  %44 = ptrtoint ptr %enable.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %enable.i, align 4
  %tobool.not.i19 = icmp eq ptr %45, null
  br i1 %tobool.not.i19, label %if.then4.if.end6.i_crit_edge, label %if.then.i20

if.then4.if.end6.i_crit_edge:                     ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i

if.then.i20:                                      ; preds = %if.then4
  %parent.i = getelementptr inbounds %struct.input_dev, ptr %3, i32 0, i32 40, i32 1
  %46 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %parent.i, align 8
  %call3.i = tail call i32 %45(ptr noundef %47) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %if.then.i20.if.end6.i_crit_edge, label %if.end7

if.then.i20.if.end6.i_crit_edge:                  ; preds = %if.then.i20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then.i20.if.end6.i_crit_edge, %if.then4.if.end6.i_crit_edge
  %input1.i.i = getelementptr inbounds %struct.gpio_keys_drvdata, ptr %41, i32 0, i32 1
  %48 = ptrtoint ptr %input1.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %input1.i.i, align 4
  %50 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %41, align 8
  %nbuttons7.i.i = getelementptr inbounds %struct.gpio_keys_platform_data, ptr %51, i32 0, i32 1
  %52 = ptrtoint ptr %nbuttons7.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %nbuttons7.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp8.i.i = icmp sgt i32 %53, 0
  br i1 %cmp8.i.i, label %if.end6.i.for.body.i.i_crit_edge, label %if.end6.i.gpio_keys_report_state.exit.i_crit_edge

if.end6.i.gpio_keys_report_state.exit.i_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gpio_keys_report_state.exit.i

if.end6.i.for.body.i.i_crit_edge:                 ; preds = %if.end6.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %if.end6.i.for.body.i.i_crit_edge
  %i.09.i.i = phi i32 [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ], [ 0, %if.end6.i.for.body.i.i_crit_edge ]
  %gpiod.i.i = getelementptr %struct.gpio_keys_drvdata, ptr %41, i32 0, i32 4, i32 %i.09.i.i, i32 2
  %54 = ptrtoint ptr %gpiod.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %gpiod.i.i, align 8
  %tobool.not.i.i21 = icmp eq ptr %55, null
  br i1 %tobool.not.i.i21, label %for.body.i.i.if.end.i.i_crit_edge, label %if.then.i.i22

for.body.i.i.if.end.i.i_crit_edge:                ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i

if.then.i.i22:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i.i = getelementptr %struct.gpio_keys_drvdata, ptr %41, i32 0, i32 4, i32 %i.09.i.i
  tail call fastcc void @gpio_keys_gpio_report_event(ptr noundef %arrayidx.i.i) #5
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i22, %for.body.i.i.if.end.i.i_crit_edge
  %inc.i.i = add nuw nsw i32 %i.09.i.i, 1
  %56 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %41, align 8
  %nbuttons.i.i = getelementptr inbounds %struct.gpio_keys_platform_data, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %nbuttons.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %nbuttons.i.i, align 4
  %cmp.i.i = icmp slt i32 %inc.i.i, %59
  br i1 %cmp.i.i, label %if.end.i.i.for.body.i.i_crit_edge, label %if.end.i.i.gpio_keys_report_state.exit.i_crit_edge

if.end.i.i.gpio_keys_report_state.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gpio_keys_report_state.exit.i

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i

gpio_keys_report_state.exit.i:                    ; preds = %if.end.i.i.gpio_keys_report_state.exit.i_crit_edge, %if.end6.i.gpio_keys_report_state.exit.i_crit_edge
  tail call void @input_event(ptr noundef %49, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  br label %if.end7.thread35

if.end7.thread35:                                 ; preds = %gpio_keys_report_state.exit.i, %if.else.if.end7.thread35_crit_edge
  tail call void @mutex_unlock(ptr noundef %mutex) #5
  br label %if.end9

if.end7:                                          ; preds = %if.then.i20
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @mutex_unlock(ptr noundef %mutex) #5
  br label %cleanup

if.end9:                                          ; preds = %if.end7.thread35, %for.inc.i.if.end9_crit_edge, %if.then.if.end9_crit_edge
  %60 = ptrtoint ptr %input1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %input1, align 4
  %62 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %1, align 8
  %nbuttons7.i23 = getelementptr inbounds %struct.gpio_keys_platform_data, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %nbuttons7.i23 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %nbuttons7.i23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp8.i24 = icmp sgt i32 %65, 0
  br i1 %cmp8.i24, label %if.end9.for.body.i27_crit_edge, label %if.end9.gpio_keys_report_state.exit_crit_edge

if.end9.gpio_keys_report_state.exit_crit_edge:    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %gpio_keys_report_state.exit

if.end9.for.body.i27_crit_edge:                   ; preds = %if.end9
  br label %for.body.i27

for.body.i27:                                     ; preds = %if.end.i.for.body.i27_crit_edge, %if.end9.for.body.i27_crit_edge
  %i.09.i25 = phi i32 [ %inc.i29, %if.end.i.for.body.i27_crit_edge ], [ 0, %if.end9.for.body.i27_crit_edge ]
  %gpiod.i = getelementptr %struct.gpio_keys_drvdata, ptr %1, i32 0, i32 4, i32 %i.09.i25, i32 2
  %66 = ptrtoint ptr %gpiod.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %gpiod.i, align 8
  %tobool.not.i26 = icmp eq ptr %67, null
  br i1 %tobool.not.i26, label %for.body.i27.if.end.i_crit_edge, label %if.then.i28

for.body.i27.if.end.i_crit_edge:                  ; preds = %for.body.i27
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i28:                                      ; preds = %for.body.i27
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.i = getelementptr %struct.gpio_keys_drvdata, ptr %1, i32 0, i32 4, i32 %i.09.i25
  tail call fastcc void @gpio_keys_gpio_report_event(ptr noundef %arrayidx.i) #5
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i28, %for.body.i27.if.end.i_crit_edge
  %inc.i29 = add nuw nsw i32 %i.09.i25, 1
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %1, align 8
  %nbuttons.i30 = getelementptr inbounds %struct.gpio_keys_platform_data, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %nbuttons.i30 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %nbuttons.i30, align 4
  %cmp.i31 = icmp slt i32 %inc.i29, %71
  br i1 %cmp.i31, label %if.end.i.for.body.i27_crit_edge, label %if.end.i.gpio_keys_report_state.exit_crit_edge

if.end.i.gpio_keys_report_state.exit_crit_edge:   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gpio_keys_report_state.exit

if.end.i.for.body.i27_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i27

gpio_keys_report_state.exit:                      ; preds = %if.end.i.gpio_keys_report_state.exit_crit_edge, %if.end9.gpio_keys_report_state.exit_crit_edge
  tail call void @input_event(ptr noundef %61, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %gpio_keys_report_state.exit, %if.end7
  %retval.0 = phi i32 [ 0, %gpio_keys_report_state.exit ], [ %call3.i, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !34, !36, !37, !38, !40, !41, !42, !44, !46, !48, !50, !51, !52, !53, !55, !57, !59, !61, !63, !65, !67, !68, !69, !70, !72, !74, !75, !77, !78, !79, !80, !82, !83, !84, !86, !87, !88, !90, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !114, !116, !117, !118, !119, !121, !122, !123, !125, !126, !127, !128, !129, !131, !132, !133, !135, !137, !138, !140, !142, !143, !145, !147, !148, !150, !151, !153, !154}
!llvm.module.flags = !{!156, !157, !158, !159, !160, !161, !162, !163}
!llvm.ident = !{!164}

!0 = !{ptr @__initcall__kmod_gpio_keys__227_1069_gpio_keys_init7, !1, !"__initcall__kmod_gpio_keys__227_1069_gpio_keys_init7", i1 false, i1 false}
!1 = !{!"../drivers/input/keyboard/gpio_keys.c", i32 1069, i32 1}
!2 = !{ptr @__exitcall_gpio_keys_exit, !3, !"__exitcall_gpio_keys_exit", i1 false, i1 false}
!3 = !{!"../drivers/input/keyboard/gpio_keys.c", i32 1070, i32 1}
!4 = !{ptr @__UNIQUE_ID_file228, !5, !"__UNIQUE_ID_file228", i1 false, i1 false}
!5 = !{!"../drivers/input/keyboard/gpio_keys.c", i32 1072, i32 1}
!6 = !{ptr @__UNIQUE_ID_license229, !5, !"__UNIQUE_ID_license229", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author230, !8, !"__UNIQUE_ID_author230", i1 false, i1 false}
!8 = !{!"../drivers/input/keyboard/gpio_keys.c", i32 1073, i32 1}
!9 = !{ptr @__UNIQUE_ID_description231, !10, !"__UNIQUE_ID_description231", i1 false, i1 false}
!10 = !{!"../drivers/input/keyboard/gpio_keys.c", i32 1074, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias232, !12, !"__UNIQUE_ID_alias232", i1 false, i1 false}
!12 = !{!"../drivers/input/keyboard/gpio_keys.c", i32 1075, i32 1}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/input/keyboard/gpio_keys.c", i32 1052, i32 11}
!15 = !{ptr @gpio_keys_device_driver, !16, !"gpio_keys_device_driver", i1 false, i1 false}
!16 = !{!"../drivers/input/keyboard/gpio_keys.c", i32 1048, i32 31}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/input/keyboard/gpio_keys.c", i32 819, i32 3}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @gpio_keys_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @gpio_keys_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/input/keyboard/gpio_keys.c", i32 831, i32 3}
!27 = !{ptr @gpio_keys_probe._entry.6, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @gpio_keys_probe._entry_ptr.8, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @gpio_keys_probe.__key, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/input/keyboard/gpio_keys.c", i32 837, i32 2}
!31 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/input/keyboard/gpio_keys.c", i32 843, i32 16}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/input/keyboard/gpio_keys.c", i32 867, i32 5}
!36 = !{ptr @gpio_keys_probe._entry.11, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @gpio_keys_probe._entry_ptr.13, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/input/keyboard/gpio_keys.c", i32 889, i32 3}
!40 = !{ptr @gpio_keys_probe._entry.14, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @gpio_keys_probe._entry_ptr.16, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/input/keyboard/gpio_keys.c", i32 751, i32 46}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/input/keyboard/gpio_keys.c", i32 753, i32 35}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/input/keyboard/gpio_keys.c", i32 760, i32 39}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/input/keyboard/gpio_keys.c", i32 762, i32 4}
!50 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @gpio_keys_get_devtree_pdata._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @gpio_keys_get_devtree_pdata._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/input/keyboard/gpio_keys.c", i32 769, i32 39}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/input/keyboard/gpio_keys.c", i32 774, i32 37}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/input/keyboard/gpio_keys.c", i32 776, i32 37}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/input/keyboard/gpio_keys.c", i32 778, i32 35}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/input/keyboard/gpio_keys.c", i32 782, i32 37}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/input/keyboard/gpio_keys.c", i32 784, i32 39}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/input/keyboard/gpio_keys.c", i32 377, i32 3}
!67 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @gpio_keys_gpio_report_event._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @gpio_keys_gpio_report_event._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/input/keyboard/gpio_keys.c", i32 509, i32 51}
!72 = !{ptr @gpio_keys_setup_key.__key, !73, !"__key", i1 false, i1 false}
!73 = !{!"../drivers/input/keyboard/gpio_keys.c", i32 519, i32 2}
!74 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/input/keyboard/gpio_keys.c", i32 534, i32 6}
!77 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @gpio_keys_setup_key._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @gpio_keys_setup_key._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.35, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/input/keyboard/gpio_keys.c", i32 551, i32 4}
!82 = !{ptr @gpio_keys_setup_key._entry.34, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @gpio_keys_setup_key._entry_ptr.36, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.38, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/input/keyboard/gpio_keys.c", i32 587, i32 5}
!86 = !{ptr @gpio_keys_setup_key._entry.37, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @gpio_keys_setup_key._entry_ptr.39, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @gpio_keys_setup_key.__key.40, !89, !"__key", i1 false, i1 false}
!89 = !{!"../drivers/input/keyboard/gpio_keys.c", i32 595, i32 3}
!90 = !{ptr @.str.41, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @gpio_keys_setup_key.__key.42, !89, !"__key", i1 false, i1 false}
!92 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @.str.45, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/input/keyboard/gpio_keys.c", i32 623, i32 4}
!95 = !{ptr @gpio_keys_setup_key._entry.44, !94, !"_entry", i1 false, i1 false}
!96 = !{ptr @gpio_keys_setup_key._entry_ptr.46, !94, !"_entry_ptr", i1 false, i1 false}
!97 = !{ptr @.str.48, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/input/keyboard/gpio_keys.c", i32 630, i32 4}
!99 = !{ptr @gpio_keys_setup_key._entry.47, !98, !"_entry", i1 false, i1 false}
!100 = !{ptr @gpio_keys_setup_key._entry_ptr.49, !98, !"_entry_ptr", i1 false, i1 false}
!101 = !{ptr @.str.51, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/input/keyboard/gpio_keys.c", i32 658, i32 3}
!103 = !{ptr @gpio_keys_setup_key._entry.50, !102, !"_entry", i1 false, i1 false}
!104 = !{ptr @gpio_keys_setup_key._entry_ptr.52, !102, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.54, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/input/keyboard/gpio_keys.c", i32 673, i32 3}
!107 = !{ptr @gpio_keys_setup_key._entry.53, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @gpio_keys_setup_key._entry_ptr.55, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.56, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/input/keyboard/gpio_keys.c", i32 1045, i32 3}
!111 = !{ptr @.str.57, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @gpio_keys_shutdown._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @gpio_keys_shutdown._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.58, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/input/keyboard/gpio_keys.c", i32 906, i32 3}
!116 = !{ptr @.str.59, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @gpio_keys_button_enable_wakeup._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @gpio_keys_button_enable_wakeup._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.61, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/input/keyboard/gpio_keys.c", i32 916, i32 4}
!121 = !{ptr @gpio_keys_button_enable_wakeup._entry.60, !120, !"_entry", i1 false, i1 false}
!122 = !{ptr @gpio_keys_button_enable_wakeup._entry_ptr.62, !120, !"_entry_ptr", i1 false, i1 false}
!123 = !{ptr @.str.63, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/input/keyboard/gpio_keys.c", i32 939, i32 4}
!125 = !{ptr @.str.64, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @.str.65, !124, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @gpio_keys_button_disable_wakeup._entry, !124, !"_entry", i1 false, i1 false}
!128 = !{ptr @gpio_keys_button_disable_wakeup._entry_ptr, !124, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.67, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/input/keyboard/gpio_keys.c", i32 946, i32 3}
!131 = !{ptr @gpio_keys_button_disable_wakeup._entry.66, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @gpio_keys_button_disable_wakeup._entry_ptr.68, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @gpio_keys_of_match, !134, !"gpio_keys_of_match", i1 false, i1 false}
!134 = !{!"../drivers/input/keyboard/gpio_keys.c", i32 794, i32 34}
!135 = !{ptr @gpio_keys_groups, !136, !"gpio_keys_groups", i1 false, i1 false}
!136 = !{!"../drivers/input/keyboard/gpio_keys.c", i32 364, i32 1}
!137 = !{ptr @gpio_keys_group, !136, !"gpio_keys_group", i1 false, i1 false}
!138 = !{ptr @gpio_keys_attrs, !139, !"gpio_keys_attrs", i1 false, i1 false}
!139 = !{!"../drivers/input/keyboard/gpio_keys.c", i32 357, i32 26}
!140 = !{ptr @.str.69, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/input/keyboard/gpio_keys.c", i32 321, i32 8}
!142 = !{ptr @dev_attr_keys, !141, !"dev_attr_keys", i1 false, i1 false}
!143 = !{ptr @.str.70, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/input/keyboard/gpio_keys.c", i32 222, i32 38}
!145 = !{ptr @.str.71, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/input/keyboard/gpio_keys.c", i32 322, i32 8}
!147 = !{ptr @dev_attr_switches, !146, !"dev_attr_switches", i1 false, i1 false}
!148 = !{ptr @.str.72, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/input/keyboard/gpio_keys.c", i32 350, i32 8}
!150 = !{ptr @dev_attr_disabled_keys, !149, !"dev_attr_disabled_keys", i1 false, i1 false}
!151 = !{ptr @.str.73, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/input/keyboard/gpio_keys.c", i32 353, i32 8}
!153 = !{ptr @dev_attr_disabled_switches, !152, !"dev_attr_disabled_switches", i1 false, i1 false}
!154 = !{ptr @gpio_keys_pm_ops, !155, !"gpio_keys_pm_ops", i1 false, i1 false}
!155 = !{!"../drivers/input/keyboard/gpio_keys.c", i32 1037, i32 8}
!156 = !{i32 1, !"wchar_size", i32 2}
!157 = !{i32 1, !"min_enum_size", i32 4}
!158 = !{i32 8, !"branch-target-enforcement", i32 0}
!159 = !{i32 8, !"sign-return-address", i32 0}
!160 = !{i32 8, !"sign-return-address-all", i32 0}
!161 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!162 = !{i32 7, !"uwtable", i32 1}
!163 = !{i32 7, !"frame-pointer", i32 2}
!164 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!165 = !{!"branch_weights", i32 1, i32 2000}
!166 = !{i8 0, i8 2}
!167 = !{!"branch_weights", i32 2000, i32 1}
!168 = !{i64 2154110729, i64 2154111228, i64 2154110766, i64 2154110822, i64 2154110856, i64 2154110880, i64 2154110921, i64 2154110942, i64 2154110970, i64 2154111004}
!169 = !{i64 2154113624, i64 2154114123, i64 2154113661, i64 2154113717, i64 2154113751, i64 2154113775, i64 2154113816, i64 2154113837, i64 2154113865, i64 2154113899}
!170 = !{i64 2154079882, i64 2154080381, i64 2154079919, i64 2154079975, i64 2154080009, i64 2154080033, i64 2154080074, i64 2154080095, i64 2154080123, i64 2154080157}
