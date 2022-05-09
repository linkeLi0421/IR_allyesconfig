; ModuleID = '/llk/IR_all_yes/drivers/input/keyboard/gpio_keys_polled.c_pt.bc'
source_filename = "../drivers/input/keyboard/gpio_keys_polled.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.gpio_keys_platform_data = type { ptr, i32, i32, i8, ptr, ptr, ptr }
%struct.gpio_keys_button = type { i32, i32, i32, ptr, i32, i32, i32, i32, i8, i32, i32 }
%struct.input_dev = type { ptr, ptr, ptr, %struct.input_id, [1 x i32], [1 x i32], [24 x i32], [1 x i32], [2 x i32], [1 x i32], [1 x i32], [1 x i32], [4 x i32], [1 x i32], i32, i32, i32, ptr, ptr, ptr, ptr, ptr, i32, %struct.timer_list, [2 x i32], ptr, ptr, [24 x i32], [1 x i32], [1 x i32], [1 x i32], ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.mutex, i32, i8, %struct.device, %struct.list_head, %struct.list_head, i32, i32, ptr, i8, [3 x i64], i8 }
%struct.input_id = type { i16, i16, i16, i16 }
%struct.gpio_keys_polled_dev = type { ptr, ptr, ptr, [1 x i32], [2 x i32], [0 x %struct.gpio_keys_button_data] }
%struct.gpio_keys_button_data = type { ptr, i32, i32, i32 }

@__initcall__kmod_gpio_keys_polled__223_386_gpio_keys_polled_driver_init6 = internal global ptr @gpio_keys_polled_driver_init, section ".initcall6.init", align 4
@gpio_keys_polled_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @gpio_keys_polled_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @gpio_keys_polled_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_gpio_keys_polled_driver_exit = internal global ptr @gpio_keys_polled_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file224 = internal constant [62 x i8] c"gpio_keys_polled.file=drivers/input/keyboard/gpio_keys_polled\00", section ".modinfo", align 1
@__UNIQUE_ID_license225 = internal constant [32 x i8] c"gpio_keys_polled.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author226 = internal constant [57 x i8] c"gpio_keys_polled.author=Gabor Juhos <juhosg@openwrt.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description227 = internal constant [56 x i8] c"gpio_keys_polled.description=Polled GPIO Buttons driver\00", section ".modinfo", align 1
@__UNIQUE_ID_alias228 = internal constant [49 x i8] c"gpio_keys_polled.alias=platform:gpio-keys-polled\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gpio-keys-polled\00", [47 x i8] zeroinitializer }, align 32
@gpio_keys_polled_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"gpio-keys-polled\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@gpio_keys_polled_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 245, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"missing poll_interval value\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"gpio_keys_polled_probe\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/input/keyboard/gpio_keys_polled.c\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gpio_keys_polled_probe._entry_ptr = internal global ptr @gpio_keys_polled_probe._entry, section ".printk_index", align 4
@gpio_keys_polled_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 252, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"no memory for private data\0A\00", [36 x i8] zeroinitializer }, align 32
@gpio_keys_polled_probe._entry_ptr.8 = internal global ptr @gpio_keys_polled_probe._entry.6, section ".printk_index", align 4
@gpio_keys_polled_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 258, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"no memory for input device\0A\00", [36 x i8] zeroinitializer }, align 32
@gpio_keys_polled_probe._entry_ptr.11 = internal global ptr @gpio_keys_polled_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"gpio-keys-polled/input0\00", [40 x i8] zeroinitializer }, align 32
@gpio_keys_polled_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 285, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"gpio-keys-polled does not support wakeup\0A\00", [54 x i8] zeroinitializer }, align 32
@gpio_keys_polled_probe._entry_ptr.15 = internal global ptr @gpio_keys_polled_probe._entry.13, section ".printk_index", align 4
@gpio_keys_polled_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 294, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"missing child device node\0A\00", [37 x i8] zeroinitializer }, align 32
@gpio_keys_polled_probe._entry_ptr.18 = internal global ptr @gpio_keys_polled_probe._entry.16, section ".printk_index", align 4
@gpio_keys_polled_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 306, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to get gpio: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@gpio_keys_polled_probe._entry_ptr.21 = internal global ptr @gpio_keys_polled_probe._entry.19, section ".printk_index", align 4
@gpio_keys_polled_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 325, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"unable to claim gpio %u, err=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@gpio_keys_polled_probe._entry_ptr.24 = internal global ptr @gpio_keys_polled_probe._entry.22, section ".printk_index", align 4
@gpio_keys_polled_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.2, ptr @.str.3, i32 333, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"unable to convert gpio %u to descriptor\0A\00", [55 x i8] zeroinitializer }, align 32
@gpio_keys_polled_probe._entry_ptr.27 = internal global ptr @gpio_keys_polled_probe._entry.25, section ".printk_index", align 4
@gpio_keys_polled_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.2, ptr @.str.3, i32 356, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"unable to set up polling, err=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@gpio_keys_polled_probe._entry_ptr.30 = internal global ptr @gpio_keys_polled_probe._entry.28, section ".printk_index", align 4
@gpio_keys_polled_probe._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.2, ptr @.str.3, i32 365, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"unable to register polled device, err=%d\0A\00", [54 x i8] zeroinitializer }, align 32
@gpio_keys_polled_probe._entry_ptr.33 = internal global ptr @gpio_keys_polled_probe._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"autorepeat\00", [21 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"poll-interval\00", [18 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"linux,code\00", [21 x i8] zeroinitializer }, align 32
@gpio_keys_polled_get_devtree_pdata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.3, i32 172, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"button without keycode\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"gpio_keys_polled_get_devtree_pdata\00", [61 x i8] zeroinitializer }, align 32
@gpio_keys_polled_get_devtree_pdata._entry_ptr = internal global ptr @gpio_keys_polled_get_devtree_pdata._entry, section ".printk_index", align 4
@.str.40 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"linux,input-type\00", [47 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"linux,input-value\00", [46 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wakeup-source\00", [18 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gpio-key,wakeup\00", [16 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"debounce-interval\00", [46 x i8] zeroinitializer }, align 32
@gpio_keys_polled_check_state._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.3, i32 76, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to get gpio state: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"gpio_keys_polled_check_state\00", [35 x i8] zeroinitializer }, align 32
@gpio_keys_polled_check_state._entry_ptr = internal global ptr @gpio_keys_polled_check_state._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 3]
@___asan_gen_.47 = private unnamed_addr constant [24 x i8] c"gpio_keys_polled_driver\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 379, i32 31 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 382, i32 11 }
@___asan_gen_.53 = private unnamed_addr constant [26 x i8] c"gpio_keys_polled_of_match\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 222, i32 34 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 245, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 252, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 258, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 265, i32 16 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 285, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 294, i32 5 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 304, i32 6 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 323, i32 5 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 331, i32 5 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 356, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 364, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 164, i32 44 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 165, i32 32 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 167, i32 35 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 170, i32 39 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 172, i32 4 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 179, i32 39 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 183, i32 39 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 188, i32 37 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 190, i32 37 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 192, i32 39 }
@___asan_gen_.167 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.173 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.174 = private constant [45 x i8] c"../drivers/input/keyboard/gpio_keys_polled.c\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.174, i32 75, i32 3 }
@llvm.compiler.used = appending global [63 x ptr] [ptr @__UNIQUE_ID_alias228, ptr @__UNIQUE_ID_author226, ptr @__UNIQUE_ID_description227, ptr @__UNIQUE_ID_file224, ptr @__UNIQUE_ID_license225, ptr @__exitcall_gpio_keys_polled_driver_exit, ptr @__initcall__kmod_gpio_keys_polled__223_386_gpio_keys_polled_driver_init6, ptr @gpio_keys_polled_check_state._entry, ptr @gpio_keys_polled_check_state._entry_ptr, ptr @gpio_keys_polled_driver_exit, ptr @gpio_keys_polled_get_devtree_pdata._entry, ptr @gpio_keys_polled_get_devtree_pdata._entry_ptr, ptr @gpio_keys_polled_probe._entry, ptr @gpio_keys_polled_probe._entry.13, ptr @gpio_keys_polled_probe._entry.16, ptr @gpio_keys_polled_probe._entry.19, ptr @gpio_keys_polled_probe._entry.22, ptr @gpio_keys_polled_probe._entry.25, ptr @gpio_keys_polled_probe._entry.28, ptr @gpio_keys_polled_probe._entry.31, ptr @gpio_keys_polled_probe._entry.6, ptr @gpio_keys_polled_probe._entry.9, ptr @gpio_keys_polled_probe._entry_ptr, ptr @gpio_keys_polled_probe._entry_ptr.11, ptr @gpio_keys_polled_probe._entry_ptr.15, ptr @gpio_keys_polled_probe._entry_ptr.18, ptr @gpio_keys_polled_probe._entry_ptr.21, ptr @gpio_keys_polled_probe._entry_ptr.24, ptr @gpio_keys_polled_probe._entry_ptr.27, ptr @gpio_keys_polled_probe._entry_ptr.30, ptr @gpio_keys_polled_probe._entry_ptr.33, ptr @gpio_keys_polled_probe._entry_ptr.8, ptr @gpio_keys_polled_driver, ptr @.str, ptr @gpio_keys_polled_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_keys_polled_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_keys_polled_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_keys_polled_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_keys_polled_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_keys_polled_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_keys_polled_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_keys_polled_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_keys_polled_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_keys_polled_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_keys_polled_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_keys_polled_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_keys_polled_probe._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_keys_polled_get_devtree_pdata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_keys_polled_check_state._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_keys_polled_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @gpio_keys_polled_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gpio_keys_polled_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @gpio_keys_polled_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_keys_polled_probe(ptr noundef %pdev) #2 align 64 {
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
  %call7.i = tail call zeroext i1 @device_property_present(ptr noundef %dev1, ptr noundef nonnull @.str.34) #5
  %rep.i = getelementptr inbounds %struct.gpio_keys_platform_data, ptr %call.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %rep.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i = load i8, ptr %rep.i, align 4
  %bf.shl.i = select i1 %call7.i, i8 -128, i8 0
  %bf.clear.i = and i8 %bf.load.i, 127
  %bf.set.i = or i8 %bf.clear.i, %bf.shl.i
  store i8 %bf.set.i, ptr %rep.i, align 4
  %poll_interval.i = getelementptr inbounds %struct.gpio_keys_platform_data, ptr %call.i.i, i32 0, i32 2
  %call.i76.i = tail call i32 @device_property_read_u32_array(ptr noundef %dev1, ptr noundef nonnull @.str.35, ptr noundef %poll_interval.i, i32 noundef 1) #5
  %name.i = getelementptr inbounds %struct.gpio_keys_platform_data, ptr %call.i.i, i32 0, i32 6
  %call9.i = tail call i32 @device_property_read_string(ptr noundef %dev1, ptr noundef nonnull @.str.36, ptr noundef %name.i) #5
  %call10.i = tail call ptr @device_get_next_child_node(ptr noundef %dev1, ptr noundef null) #5
  %tobool11.not84.i = icmp eq ptr %call10.i, null
  br i1 %tobool11.not84.i, label %if.end5.i.gpio_keys_polled_get_devtree_pdata.exit_crit_edge, label %if.end5.i.for.body.i_crit_edge

if.end5.i.for.body.i_crit_edge:                   ; preds = %if.end5.i
  br label %for.body.i

if.end5.i.gpio_keys_polled_get_devtree_pdata.exit_crit_edge: ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gpio_keys_polled_get_devtree_pdata.exit

for.body.i:                                       ; preds = %if.end36.i.for.body.i_crit_edge, %if.end5.i.for.body.i_crit_edge
  %child.086.i = phi ptr [ %call37.i, %if.end36.i.for.body.i_crit_edge ], [ %call10.i, %if.end5.i.for.body.i_crit_edge ]
  %button.085.i = phi ptr [ %incdec.ptr.i, %if.end36.i.for.body.i_crit_edge ], [ %add.ptr.i, %if.end5.i.for.body.i_crit_edge ]
  %call.i77.i = tail call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %child.086.i, ptr noundef nonnull @.str.37, ptr noundef %button.085.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77.i)
  %tobool13.not.i = icmp eq i32 %call.i77.i, 0
  br i1 %tobool13.not.i, label %if.end16.i, label %do.end.i

do.end.i:                                         ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.38) #8
  tail call void @fwnode_handle_put(ptr noundef nonnull %child.086.i) #5
  br label %if.then4

if.end16.i:                                       ; preds = %for.body.i
  %desc.i = getelementptr inbounds %struct.gpio_keys_button, ptr %button.085.i, i32 0, i32 3
  %call17.i = tail call i32 @fwnode_property_read_string(ptr noundef nonnull %child.086.i, ptr noundef nonnull @.str.36, ptr noundef %desc.i) #5
  %type.i = getelementptr inbounds %struct.gpio_keys_button, ptr %button.085.i, i32 0, i32 4
  %call.i78.i = tail call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %child.086.i, ptr noundef nonnull @.str.40, ptr noundef %type.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78.i)
  %tobool19.not.i = icmp eq i32 %call.i78.i, 0
  br i1 %tobool19.not.i, label %if.end16.i.if.end22.i_crit_edge, label %if.then20.i

if.end16.i.if.end22.i_crit_edge:                  ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22.i

if.then20.i:                                      ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %type.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %type.i, align 4
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then20.i, %if.end16.i.if.end22.i_crit_edge
  %value.i = getelementptr inbounds %struct.gpio_keys_button, ptr %button.085.i, i32 0, i32 9
  %call.i79.i = tail call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %child.086.i, ptr noundef nonnull @.str.41, ptr noundef %value.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i79.i)
  %tobool24.not.i = icmp eq i32 %call.i79.i, 0
  br i1 %tobool24.not.i, label %if.end22.i.if.end27.i_crit_edge, label %if.then25.i

if.end22.i.if.end27.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27.i

if.then25.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %value.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %value.i, align 4
  br label %if.end27.i

if.end27.i:                                       ; preds = %if.then25.i, %if.end22.i.if.end27.i_crit_edge
  %call.i80.i = tail call zeroext i1 @fwnode_property_present(ptr noundef nonnull %child.086.i, ptr noundef nonnull @.str.42) #5
  br i1 %call.i80.i, label %if.end27.i.lor.end.i_crit_edge, label %lor.rhs.i

if.end27.i.lor.end.i_crit_edge:                   ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.end.i

lor.rhs.i:                                        ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #7
  %call.i81.i = tail call zeroext i1 @fwnode_property_present(ptr noundef nonnull %child.086.i, ptr noundef nonnull @.str.43) #5
  br label %lor.end.i

lor.end.i:                                        ; preds = %lor.rhs.i, %if.end27.i.lor.end.i_crit_edge
  %7 = phi i1 [ true, %if.end27.i.lor.end.i_crit_edge ], [ %call.i81.i, %lor.rhs.i ]
  %lor.ext.i = zext i1 %7 to i32
  %wakeup.i = getelementptr inbounds %struct.gpio_keys_button, ptr %button.085.i, i32 0, i32 5
  %8 = ptrtoint ptr %wakeup.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %lor.ext.i, ptr %wakeup.i, align 4
  %debounce_interval.i = getelementptr inbounds %struct.gpio_keys_button, ptr %button.085.i, i32 0, i32 7
  %call.i82.i = tail call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %child.086.i, ptr noundef nonnull @.str.44, ptr noundef %debounce_interval.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82.i)
  %tobool33.not.i = icmp eq i32 %call.i82.i, 0
  br i1 %tobool33.not.i, label %lor.end.i.if.end36.i_crit_edge, label %if.then34.i

lor.end.i.if.end36.i_crit_edge:                   ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36.i

if.then34.i:                                      ; preds = %lor.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %debounce_interval.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 5, ptr %debounce_interval.i, align 4
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then34.i, %lor.end.i.if.end36.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.gpio_keys_button, ptr %button.085.i, i32 1
  %call37.i = tail call ptr @device_get_next_child_node(ptr noundef %dev1, ptr noundef nonnull %child.086.i) #5
  %tobool11.not.i = icmp eq ptr %call37.i, null
  br i1 %tobool11.not.i, label %if.end36.i.gpio_keys_polled_get_devtree_pdata.exit_crit_edge, label %if.end36.i.for.body.i_crit_edge

if.end36.i.for.body.i_crit_edge:                  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

if.end36.i.gpio_keys_polled_get_devtree_pdata.exit_crit_edge: ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gpio_keys_polled_get_devtree_pdata.exit

gpio_keys_polled_get_devtree_pdata.exit:          ; preds = %if.end36.i.gpio_keys_polled_get_devtree_pdata.exit_crit_edge, %if.end5.i.gpio_keys_polled_get_devtree_pdata.exit_crit_edge
  %cmp.i259 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i259, label %gpio_keys_polled_get_devtree_pdata.exit.if.then4_crit_edge, label %gpio_keys_polled_get_devtree_pdata.exit.if.end6_crit_edge

gpio_keys_polled_get_devtree_pdata.exit.if.end6_crit_edge: ; preds = %gpio_keys_polled_get_devtree_pdata.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

gpio_keys_polled_get_devtree_pdata.exit.if.then4_crit_edge: ; preds = %gpio_keys_polled_get_devtree_pdata.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then4

if.then4:                                         ; preds = %gpio_keys_polled_get_devtree_pdata.exit.if.then4_crit_edge, %do.end.i, %if.end.i.if.then4_crit_edge, %if.then.if.then4_crit_edge
  %retval.0.i275 = phi ptr [ %call.i.i, %gpio_keys_polled_get_devtree_pdata.exit.if.then4_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i.if.then4_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.then.if.then4_crit_edge ], [ inttoptr (i32 -22 to ptr), %do.end.i ]
  %10 = ptrtoint ptr %retval.0.i275 to i32
  br label %cleanup146

if.end6:                                          ; preds = %gpio_keys_polled_get_devtree_pdata.exit.if.end6_crit_edge, %entry.if.end6_crit_edge
  %pdata.0 = phi ptr [ %1, %entry.if.end6_crit_edge ], [ %call.i.i, %gpio_keys_polled_get_devtree_pdata.exit.if.end6_crit_edge ]
  %poll_interval = getelementptr inbounds %struct.gpio_keys_platform_data, ptr %pdata.0, i32 0, i32 2
  %11 = ptrtoint ptr %poll_interval to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %poll_interval, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool7.not = icmp eq i32 %12, 0
  br i1 %tobool7.not, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #8
  br label %cleanup146

if.end9:                                          ; preds = %if.end6
  %nbuttons = getelementptr inbounds %struct.gpio_keys_platform_data, ptr %pdata.0, i32 0, i32 1
  %13 = ptrtoint ptr %nbuttons to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nbuttons, align 4
  %15 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %14, i32 16) #5
  %16 = extractvalue { i32, i1 } %15, 1
  %17 = extractvalue { i32, i1 } %15, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %17, i32 24) #5
  %retval.0.i260 = select i1 %16, i32 -1, i32 %spec.select.i
  %call.i261 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef %retval.0.i260, i32 noundef 3520) #5
  %tobool12.not = icmp eq ptr %call.i261, null
  br i1 %tobool12.not, label %do.end16, label %if.end17

do.end16:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #8
  br label %cleanup146

if.end17:                                         ; preds = %if.end9
  %call18 = tail call ptr @devm_input_allocate_device(ptr noundef %dev1) #5
  %tobool19.not = icmp eq ptr %call18, null
  br i1 %tobool19.not, label %do.end23, label %if.end24

do.end23:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #8
  br label %cleanup146

if.end24:                                         ; preds = %if.end17
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %call18, i32 0, i32 40, i32 8
  %18 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i261, ptr %driver_data.i.i, align 4
  %name = getelementptr inbounds %struct.gpio_keys_platform_data, ptr %pdata.0, i32 0, i32 6
  %19 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %name, align 4
  %tobool25.not = icmp eq ptr %20, null
  br i1 %tobool25.not, label %cond.false, label %if.end24.cond.end_crit_edge

if.end24.cond.end_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.end

cond.false:                                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end24.cond.end_crit_edge
  %cond = phi ptr [ %22, %cond.false ], [ %20, %if.end24.cond.end_crit_edge ]
  %23 = ptrtoint ptr %call18 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %cond, ptr %call18, align 8
  %phys = getelementptr inbounds %struct.input_dev, ptr %call18, i32 0, i32 1
  %24 = ptrtoint ptr %phys to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @.str.12, ptr %phys, align 4
  %id = getelementptr inbounds %struct.input_dev, ptr %call18, i32 0, i32 3
  %25 = ptrtoint ptr %id to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 25, ptr %id, align 4
  %vendor = getelementptr inbounds %struct.input_dev, ptr %call18, i32 0, i32 3, i32 1
  %26 = ptrtoint ptr %vendor to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 1, ptr %vendor, align 2
  %product = getelementptr inbounds %struct.input_dev, ptr %call18, i32 0, i32 3, i32 2
  %27 = ptrtoint ptr %product to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 1, ptr %product, align 4
  %version = getelementptr inbounds %struct.input_dev, ptr %call18, i32 0, i32 3, i32 3
  %28 = ptrtoint ptr %version to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 256, ptr %version, align 2
  %open = getelementptr inbounds %struct.input_dev, ptr %call18, i32 0, i32 31
  %29 = ptrtoint ptr %open to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @gpio_keys_polled_open, ptr %open, align 8
  %close = getelementptr inbounds %struct.input_dev, ptr %call18, i32 0, i32 32
  %30 = ptrtoint ptr %close to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @gpio_keys_polled_close, ptr %close, align 4
  %evbit = getelementptr inbounds %struct.input_dev, ptr %call18, i32 0, i32 5
  %31 = ptrtoint ptr %evbit to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %evbit, align 4
  %or.i = or i32 %32, 2
  store i32 %or.i, ptr %evbit, align 4
  %rep = getelementptr inbounds %struct.gpio_keys_platform_data, ptr %pdata.0, i32 0, i32 3
  %33 = ptrtoint ptr %rep to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load = load i8, ptr %rep, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool31.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool31.not, label %cond.end.if.end35_crit_edge, label %if.then32

cond.end.if.end35_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end35

if.then32:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #7
  %or.i258 = or i32 %32, 1048578
  %34 = ptrtoint ptr %evbit to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %or.i258, ptr %evbit, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then32, %cond.end.if.end35_crit_edge
  %35 = ptrtoint ptr %nbuttons to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %nbuttons, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp290 = icmp sgt i32 %36, 0
  br i1 %cmp290, label %if.end35.for.body_crit_edge, label %if.end35.for.end_crit_edge

if.end35.for.end_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end35.for.body_crit_edge:                      ; preds = %if.end35
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end35.for.body_crit_edge
  %i.0292 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end35.for.body_crit_edge ]
  %child.0291 = phi ptr [ %child.1, %for.inc.for.body_crit_edge ], [ null, %if.end35.for.body_crit_edge ]
  %37 = ptrtoint ptr %pdata.0 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pdata.0, align 4
  %arrayidx = getelementptr %struct.gpio_keys_button, ptr %38, i32 %i.0292
  %arrayidx37 = getelementptr %struct.gpio_keys_polled_dev, ptr %call.i261, i32 0, i32 5, i32 %i.0292
  %type38 = getelementptr %struct.gpio_keys_button, ptr %38, i32 %i.0292, i32 4
  %39 = ptrtoint ptr %type38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %type38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool39.not = icmp eq i32 %40, 0
  %. = select i1 %tobool39.not, i32 1, i32 %40
  %wakeup = getelementptr %struct.gpio_keys_button, ptr %38, i32 %i.0292, i32 5
  %41 = ptrtoint ptr %wakeup to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %wakeup, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool44.not = icmp eq i32 %42, 0
  br i1 %tobool44.not, label %if.end49, label %do.end48

do.end48:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.14) #8
  tail call void @fwnode_handle_put(ptr noundef %child.0291) #5
  br label %cleanup146

if.end49:                                         ; preds = %for.body
  %43 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %platform_data.i, align 8
  %tobool51.not = icmp eq ptr %44, null
  br i1 %tobool51.not, label %if.then52, label %if.else

if.then52:                                        ; preds = %if.end49
  %call53 = tail call ptr @device_get_next_child_node(ptr noundef %dev1, ptr noundef %child.0291) #5
  %tobool54.not = icmp eq ptr %call53, null
  br i1 %tobool54.not, label %do.end58, label %if.end59

do.end58:                                         ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.17) #8
  br label %cleanup146

if.end59:                                         ; preds = %if.then52
  %desc = getelementptr %struct.gpio_keys_button, ptr %38, i32 %i.0292, i32 3
  %45 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %desc, align 4
  %call.i263 = tail call ptr @devm_fwnode_gpiod_get_index(ptr noundef %dev1, ptr noundef nonnull %call53, ptr noundef null, i32 noundef 0, i32 noundef 1, ptr noundef %46) #5
  %47 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call.i263, ptr %arrayidx37, align 4
  %cmp.i264 = icmp ugt ptr %call.i263, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i264, label %if.then63, label %if.end59.if.end105_crit_edge

if.end59.if.end105_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end105

if.then63:                                        ; preds = %if.end59
  %48 = ptrtoint ptr %call.i263 to i32
  %cmp66.not = icmp eq ptr %call.i263, inttoptr (i32 -517 to ptr)
  br i1 %cmp66.not, label %if.then63.if.end71_crit_edge, label %do.end70

if.then63.if.end71_crit_edge:                     ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end71

do.end70:                                         ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.20, i32 noundef %48) #8
  br label %if.end71

if.end71:                                         ; preds = %do.end70, %if.then63.if.end71_crit_edge
  tail call void @fwnode_handle_put(ptr noundef nonnull %call53) #5
  br label %cleanup146

if.else:                                          ; preds = %if.end49
  %gpio = getelementptr %struct.gpio_keys_button, ptr %38, i32 %i.0292, i32 1
  %49 = ptrtoint ptr %gpio to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %gpio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2048, i32 %50)
  %51 = icmp ult i32 %50, 2048
  br i1 %51, label %if.then74, label %if.else.if.end105_crit_edge

if.else.if.end105_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end105

if.then74:                                        ; preds = %if.else
  %active_low = getelementptr %struct.gpio_keys_button, ptr %38, i32 %i.0292, i32 2
  %52 = ptrtoint ptr %active_low to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %active_low, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool75.not = icmp eq i32 %53, 0
  %spec.select = select i1 %tobool75.not, i32 1, i32 5
  %desc79 = getelementptr %struct.gpio_keys_button, ptr %38, i32 %i.0292, i32 3
  %54 = ptrtoint ptr %desc79 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %desc79, align 4
  %tobool80.not = icmp eq ptr %55, null
  %..str = select i1 %tobool80.not, ptr @.str, ptr %55
  %call85 = tail call i32 @devm_gpio_request_one(ptr noundef %dev1, i32 noundef %50, i32 noundef %spec.select, ptr noundef %..str) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  %56 = ptrtoint ptr %gpio to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %gpio, align 4
  br i1 %tobool86.not, label %if.end92, label %do.end90

do.end90:                                         ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.23, i32 noundef %57, i32 noundef %call85) #8
  br label %cleanup146

if.end92:                                         ; preds = %if.then74
  %call94 = tail call ptr @gpio_to_desc(i32 noundef %57) #5
  %58 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call94, ptr %arrayidx37, align 4
  %tobool97.not = icmp eq ptr %call94, null
  br i1 %tobool97.not, label %do.end101, label %if.end92.if.end105_crit_edge

if.end92.if.end105_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end105

do.end101:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #7
  %59 = ptrtoint ptr %gpio to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %gpio, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.26, i32 noundef %60) #8
  br label %cleanup146

if.end105:                                        ; preds = %if.end92.if.end105_crit_edge, %if.else.if.end105_crit_edge, %if.end59.if.end105_crit_edge
  %child.1 = phi ptr [ %child.0291, %if.else.if.end105_crit_edge ], [ %call53, %if.end59.if.end105_crit_edge ], [ %child.0291, %if.end92.if.end105_crit_edge ]
  %last_state = getelementptr %struct.gpio_keys_polled_dev, ptr %call.i261, i32 0, i32 5, i32 %i.0292, i32 1
  %61 = ptrtoint ptr %last_state to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 -1, ptr %last_state, align 4
  %debounce_interval = getelementptr %struct.gpio_keys_button, ptr %38, i32 %i.0292, i32 7
  %62 = ptrtoint ptr %debounce_interval to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %debounce_interval, align 4
  %64 = ptrtoint ptr %poll_interval to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %poll_interval, align 4
  %add = add i32 %63, -1
  %sub = add i32 %add, %65
  %div = udiv i32 %sub, %65
  %threshold = getelementptr %struct.gpio_keys_polled_dev, ptr %call.i261, i32 0, i32 5, i32 %i.0292, i32 3
  %66 = ptrtoint ptr %threshold to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %div, ptr %threshold, align 4
  %67 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx, align 4
  tail call void @input_set_capability(ptr noundef nonnull %call18, i32 noundef %., i32 noundef %68) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.)
  %cmp108 = icmp eq i32 %., 3
  br i1 %cmp108, label %if.then109, label %if.end105.for.inc_crit_edge

if.end105.for.inc_crit_edge:                      ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then109:                                       ; preds = %if.end105
  %69 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx, align 4
  %71 = ptrtoint ptr %nbuttons to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %nbuttons, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp25.i = icmp sgt i32 %72, 0
  br i1 %cmp25.i, label %for.body.lr.ph.i, label %if.then109.gpio_keys_polled_set_abs_params.exit_crit_edge

if.then109.gpio_keys_polled_set_abs_params.exit_crit_edge: ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #7
  br label %gpio_keys_polled_set_abs_params.exit

for.body.lr.ph.i:                                 ; preds = %if.then109
  %73 = ptrtoint ptr %pdata.0 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %pdata.0, align 4
  br label %for.body.i266

for.body.i266:                                    ; preds = %cleanup.i.for.body.i266_crit_edge, %for.body.lr.ph.i
  %max.029.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %max.2.i, %cleanup.i.for.body.i266_crit_edge ]
  %min.028.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %min.2.i, %cleanup.i.for.body.i266_crit_edge ]
  %i.026.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %cleanup.i.for.body.i266_crit_edge ]
  %type.i265 = getelementptr %struct.gpio_keys_button, ptr %74, i32 %i.026.i, i32 4
  %75 = ptrtoint ptr %type.i265 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %type.i265, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %76)
  %cmp1.not.i = icmp eq i32 %76, 3
  br i1 %cmp1.not.i, label %lor.lhs.false.i, label %for.body.i266.cleanup.i_crit_edge

for.body.i266.cleanup.i_crit_edge:                ; preds = %for.body.i266
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i

lor.lhs.false.i:                                  ; preds = %for.body.i266
  %arrayidx.i = getelementptr %struct.gpio_keys_button, ptr %74, i32 %i.026.i
  %77 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %70)
  %cmp3.not.i = icmp eq i32 %78, %70
  br i1 %cmp3.not.i, label %if.end.i268, label %lor.lhs.false.i.cleanup.i_crit_edge

lor.lhs.false.i.cleanup.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i

if.end.i268:                                      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  %value.i267 = getelementptr %struct.gpio_keys_button, ptr %74, i32 %i.026.i, i32 9
  %79 = ptrtoint ptr %value.i267 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %value.i267, align 4
  %81 = tail call i32 @llvm.smin.i32(i32 %80, i32 %min.028.i) #5
  %82 = tail call i32 @llvm.smax.i32(i32 %80, i32 %max.029.i) #5
  br label %cleanup.i

cleanup.i:                                        ; preds = %if.end.i268, %lor.lhs.false.i.cleanup.i_crit_edge, %for.body.i266.cleanup.i_crit_edge
  %min.2.i = phi i32 [ %81, %if.end.i268 ], [ %min.028.i, %lor.lhs.false.i.cleanup.i_crit_edge ], [ %min.028.i, %for.body.i266.cleanup.i_crit_edge ]
  %max.2.i = phi i32 [ %82, %if.end.i268 ], [ %max.029.i, %lor.lhs.false.i.cleanup.i_crit_edge ], [ %max.029.i, %for.body.i266.cleanup.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.026.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %72
  br i1 %exitcond.not.i, label %cleanup.i.gpio_keys_polled_set_abs_params.exit_crit_edge, label %cleanup.i.for.body.i266_crit_edge

cleanup.i.for.body.i266_crit_edge:                ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i266

cleanup.i.gpio_keys_polled_set_abs_params.exit_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gpio_keys_polled_set_abs_params.exit

gpio_keys_polled_set_abs_params.exit:             ; preds = %cleanup.i.gpio_keys_polled_set_abs_params.exit_crit_edge, %if.then109.gpio_keys_polled_set_abs_params.exit_crit_edge
  %min.0.lcssa.i = phi i32 [ 0, %if.then109.gpio_keys_polled_set_abs_params.exit_crit_edge ], [ %min.2.i, %cleanup.i.gpio_keys_polled_set_abs_params.exit_crit_edge ]
  %max.0.lcssa.i = phi i32 [ 0, %if.then109.gpio_keys_polled_set_abs_params.exit_crit_edge ], [ %max.2.i, %cleanup.i.gpio_keys_polled_set_abs_params.exit_crit_edge ]
  tail call void @input_set_abs_params(ptr noundef nonnull %call18, i32 noundef %70, i32 noundef %min.0.lcssa.i, i32 noundef %max.0.lcssa.i, i32 noundef 0, i32 noundef 0) #5
  br label %for.inc

for.inc:                                          ; preds = %gpio_keys_polled_set_abs_params.exit, %if.end105.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0292, 1
  %83 = ptrtoint ptr %nbuttons to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %nbuttons, align 4
  %cmp = icmp slt i32 %inc, %84
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end35.for.end_crit_edge
  %child.0.lcssa = phi ptr [ null, %if.end35.for.end_crit_edge ], [ %child.1, %for.inc.for.end_crit_edge ]
  tail call void @fwnode_handle_put(ptr noundef %child.0.lcssa) #5
  %85 = ptrtoint ptr %call.i261 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %call18, ptr %call.i261, align 4
  %dev118 = getelementptr inbounds %struct.gpio_keys_polled_dev, ptr %call.i261, i32 0, i32 1
  %86 = ptrtoint ptr %dev118 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %dev1, ptr %dev118, align 4
  %pdata119 = getelementptr inbounds %struct.gpio_keys_polled_dev, ptr %call.i261, i32 0, i32 2
  %87 = ptrtoint ptr %pdata119 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %pdata.0, ptr %pdata119, align 4
  %call120 = tail call i32 @input_setup_polling(ptr noundef nonnull %call18, ptr noundef nonnull @gpio_keys_polled_poll) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call120)
  %tobool121.not = icmp eq i32 %call120, 0
  br i1 %tobool121.not, label %if.end126, label %do.end125

do.end125:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.29, i32 noundef %call120) #8
  br label %cleanup146

if.end126:                                        ; preds = %for.end
  %88 = ptrtoint ptr %poll_interval to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %poll_interval, align 4
  tail call void @input_set_poll_interval(ptr noundef nonnull %call18, i32 noundef %89) #5
  %call128 = tail call i32 @input_register_device(ptr noundef nonnull %call18) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call128)
  %tobool129.not = icmp eq i32 %call128, 0
  br i1 %tobool129.not, label %for.cond135.preheader, label %do.end133

for.cond135.preheader:                            ; preds = %if.end126
  %90 = ptrtoint ptr %nbuttons to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %nbuttons, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp137294 = icmp sgt i32 %91, 0
  br i1 %cmp137294, label %for.body138.lr.ph, label %for.cond135.preheader.for.end145_crit_edge

for.cond135.preheader.for.end145_crit_edge:       ; preds = %for.cond135.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end145

for.body138.lr.ph:                                ; preds = %for.cond135.preheader
  %parent.i = getelementptr inbounds %struct.input_dev, ptr %call18, i32 0, i32 40, i32 1
  br label %for.body138

do.end133:                                        ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.32, i32 noundef %call128) #8
  br label %cleanup146

for.body138:                                      ; preds = %gpio_keys_polled_check_state.exit.for.body138_crit_edge, %for.body138.lr.ph
  %i.1295 = phi i32 [ 0, %for.body138.lr.ph ], [ %inc144, %gpio_keys_polled_check_state.exit.for.body138_crit_edge ]
  %92 = ptrtoint ptr %pdata.0 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pdata.0, align 4
  %arrayidx142 = getelementptr %struct.gpio_keys_polled_dev, ptr %call.i261, i32 0, i32 5, i32 %i.1295
  %94 = ptrtoint ptr %arrayidx142 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx142, align 4
  %call.i269 = tail call i32 @gpiod_get_value_cansleep(ptr noundef %95) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i269)
  %cmp.i270 = icmp slt i32 %call.i269, 0
  br i1 %cmp.i270, label %do.end.i271, label %if.else.i

do.end.i271:                                      ; preds = %for.body138
  call void @__sanitizer_cov_trace_pc() #7
  %96 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %parent.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %97, ptr noundef nonnull @.str.45, i32 noundef %call.i269) #8
  br label %gpio_keys_polled_check_state.exit

if.else.i:                                        ; preds = %for.body138
  %arrayidx140 = getelementptr %struct.gpio_keys_button, ptr %93, i32 %i.1295
  tail call fastcc void @gpio_keys_button_event(ptr noundef nonnull %call18, ptr noundef %arrayidx140, i32 noundef %call.i269) #5
  %last_state.i = getelementptr %struct.gpio_keys_polled_dev, ptr %call.i261, i32 0, i32 5, i32 %i.1295, i32 1
  %98 = ptrtoint ptr %last_state.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %last_state.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i269, i32 %99)
  %cmp1.not.i272 = icmp eq i32 %call.i269, %99
  br i1 %cmp1.not.i272, label %if.else.i.gpio_keys_polled_check_state.exit_crit_edge, label %if.then2.i

if.else.i.gpio_keys_polled_check_state.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %gpio_keys_polled_check_state.exit

if.then2.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %count.i = getelementptr %struct.gpio_keys_polled_dev, ptr %call.i261, i32 0, i32 5, i32 %i.1295, i32 2
  %100 = ptrtoint ptr %count.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 0, ptr %count.i, align 4
  %101 = ptrtoint ptr %last_state.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %call.i269, ptr %last_state.i, align 4
  br label %gpio_keys_polled_check_state.exit

gpio_keys_polled_check_state.exit:                ; preds = %if.then2.i, %if.else.i.gpio_keys_polled_check_state.exit_crit_edge, %do.end.i271
  %inc144 = add nuw nsw i32 %i.1295, 1
  %102 = ptrtoint ptr %nbuttons to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %nbuttons, align 4
  %cmp137 = icmp slt i32 %inc144, %103
  br i1 %cmp137, label %gpio_keys_polled_check_state.exit.for.body138_crit_edge, label %gpio_keys_polled_check_state.exit.for.end145_crit_edge

gpio_keys_polled_check_state.exit.for.end145_crit_edge: ; preds = %gpio_keys_polled_check_state.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end145

gpio_keys_polled_check_state.exit.for.body138_crit_edge: ; preds = %gpio_keys_polled_check_state.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body138

for.end145:                                       ; preds = %gpio_keys_polled_check_state.exit.for.end145_crit_edge, %for.cond135.preheader.for.end145_crit_edge
  tail call void @input_event(ptr noundef nonnull %call18, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  br label %cleanup146

cleanup146:                                       ; preds = %for.end145, %do.end133, %do.end125, %do.end101, %do.end90, %if.end71, %do.end58, %do.end48, %do.end23, %do.end16, %do.end, %if.then4
  %retval.4 = phi i32 [ %call120, %do.end125 ], [ %call128, %do.end133 ], [ 0, %for.end145 ], [ -12, %do.end23 ], [ -12, %do.end16 ], [ -22, %do.end ], [ %10, %if.then4 ], [ -22, %do.end58 ], [ %48, %if.end71 ], [ -22, %do.end48 ], [ -22, %do.end101 ], [ %call85, %do.end90 ]
  ret i32 %retval.4
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_input_allocate_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_keys_polled_open(ptr nocapture noundef readonly %input) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pdata1 = getelementptr inbounds %struct.gpio_keys_polled_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata1, align 4
  %enable = getelementptr inbounds %struct.gpio_keys_platform_data, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %enable, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.gpio_keys_polled_dev, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %call3 = tail call i32 %5(ptr noundef %7) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gpio_keys_polled_close(ptr nocapture noundef readonly %input) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pdata1 = getelementptr inbounds %struct.gpio_keys_polled_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata1, align 4
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
  %dev = getelementptr inbounds %struct.gpio_keys_polled_dev, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void %5(ptr noundef %7) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @device_get_next_child_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpio_request_one(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_capability(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_setup_polling(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gpio_keys_polled_poll(ptr noundef %input) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pdata1 = getelementptr inbounds %struct.gpio_keys_polled_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pdata1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdata1, align 4
  %rel_axis_seen = getelementptr inbounds %struct.gpio_keys_polled_dev, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %rel_axis_seen to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %rel_axis_seen, align 4
  %abs_axis_seen = getelementptr inbounds %struct.gpio_keys_polled_dev, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %abs_axis_seen to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 0, ptr %abs_axis_seen, align 4
  %nbuttons = getelementptr inbounds %struct.gpio_keys_platform_data, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %nbuttons to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nbuttons, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp78 = icmp sgt i32 %7, 0
  br i1 %cmp78, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %parent.i = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 40, i32 1
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %i.079 = phi i32 [ 0, %for.body.lr.ph ], [ %inc8, %if.end.for.body_crit_edge ]
  %count = getelementptr %struct.gpio_keys_polled_dev, ptr %1, i32 0, i32 5, i32 %i.079, i32 2
  %8 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %count, align 4
  %threshold = getelementptr %struct.gpio_keys_polled_dev, ptr %1, i32 0, i32 5, i32 %i.079, i32 3
  %10 = ptrtoint ptr %threshold to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %threshold, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp3 = icmp slt i32 %9, %11
  br i1 %cmp3, label %if.then, label %if.else

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %inc = add nsw i32 %9, 1
  %12 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %inc, ptr %count, align 4
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 4
  %arrayidx5 = getelementptr %struct.gpio_keys_button, ptr %14, i32 %i.079
  %last_state = getelementptr %struct.gpio_keys_polled_dev, ptr %1, i32 0, i32 5, i32 %i.079, i32 1
  %15 = ptrtoint ptr %last_state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %last_state, align 4
  tail call fastcc void @gpio_keys_button_event(ptr noundef %input, ptr noundef %arrayidx5, i32 noundef %16)
  br label %if.end

if.else:                                          ; preds = %for.body
  %arrayidx = getelementptr %struct.gpio_keys_polled_dev, ptr %1, i32 0, i32 5, i32 %i.079
  %17 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %3, align 4
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx, align 4
  %call.i = tail call i32 @gpiod_get_value_cansleep(ptr noundef %20) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.end.i, label %if.else.i

do.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %parent.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.45, i32 noundef %call.i) #8
  br label %if.end

if.else.i:                                        ; preds = %if.else
  %arrayidx7 = getelementptr %struct.gpio_keys_button, ptr %18, i32 %i.079
  tail call fastcc void @gpio_keys_button_event(ptr noundef %input, ptr noundef %arrayidx7, i32 noundef %call.i) #5
  %last_state.i = getelementptr %struct.gpio_keys_polled_dev, ptr %1, i32 0, i32 5, i32 %i.079, i32 1
  %23 = ptrtoint ptr %last_state.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %last_state.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %24)
  %cmp1.not.i = icmp eq i32 %call.i, %24
  br i1 %cmp1.not.i, label %if.else.i.if.end_crit_edge, label %if.then2.i

if.else.i.if.end_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then2.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %25 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %count, align 4
  %26 = ptrtoint ptr %last_state.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call.i, ptr %last_state.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then2.i, %if.else.i.if.end_crit_edge, %do.end.i, %if.then
  %inc8 = add nuw nsw i32 %i.079, 1
  %27 = ptrtoint ptr %nbuttons to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %nbuttons, align 4
  %cmp = icmp slt i32 %inc8, %28
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  %relbit = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 7
  %call10 = tail call i32 @_find_next_bit_be(ptr noundef %relbit, i32 noundef 16, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call10)
  %cmp1281 = icmp slt i32 %call10, 16
  br i1 %cmp1281, label %for.end.for.body13_crit_edge, label %for.end.for.end23_crit_edge

for.end.for.end23_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end23

for.end.for.body13_crit_edge:                     ; preds = %for.end
  br label %for.body13

for.body13:                                       ; preds = %for.inc19.for.body13_crit_edge, %for.end.for.body13_crit_edge
  %i.182 = phi i32 [ %call22, %for.inc19.for.body13_crit_edge ], [ %call10, %for.end.for.body13_crit_edge ]
  %div3.i = lshr i32 %i.182, 5
  %arrayidx.i = getelementptr i32, ptr %rel_axis_seen, i32 %div3.i
  %29 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %i.182, 31
  %31 = shl nuw i32 1, %and.i
  %32 = and i32 %30, %31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool.not = icmp eq i32 %32, 0
  br i1 %tobool.not, label %if.then17, label %for.body13.for.inc19_crit_edge

for.body13.for.inc19_crit_edge:                   ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc19

if.then17:                                        ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @input_event(ptr noundef %input, i32 noundef 2, i32 noundef %i.182, i32 noundef 0) #5
  br label %for.inc19

for.inc19:                                        ; preds = %if.then17, %for.body13.for.inc19_crit_edge
  %add = add nsw i32 %i.182, 1
  %call22 = tail call i32 @_find_next_bit_be(ptr noundef %relbit, i32 noundef 16, i32 noundef %add) #5
  %cmp12 = icmp slt i32 %call22, 16
  br i1 %cmp12, label %for.inc19.for.body13_crit_edge, label %for.inc19.for.end23_crit_edge

for.inc19.for.end23_crit_edge:                    ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end23

for.inc19.for.body13_crit_edge:                   ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body13

for.end23:                                        ; preds = %for.inc19.for.end23_crit_edge, %for.end.for.end23_crit_edge
  %absbit = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 8
  %call25 = tail call i32 @_find_next_bit_be(ptr noundef %absbit, i32 noundef 64, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %call25)
  %cmp2783 = icmp slt i32 %call25, 64
  br i1 %cmp2783, label %for.end23.for.body28_crit_edge, label %for.end23.for.end40_crit_edge

for.end23.for.end40_crit_edge:                    ; preds = %for.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end40

for.end23.for.body28_crit_edge:                   ; preds = %for.end23
  br label %for.body28

for.body28:                                       ; preds = %for.inc35.for.body28_crit_edge, %for.end23.for.body28_crit_edge
  %i.284 = phi i32 [ %call39, %for.inc35.for.body28_crit_edge ], [ %call25, %for.end23.for.body28_crit_edge ]
  %div3.i73 = lshr i32 %i.284, 5
  %arrayidx.i74 = getelementptr i32, ptr %abs_axis_seen, i32 %div3.i73
  %33 = ptrtoint ptr %arrayidx.i74 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %arrayidx.i74, align 4
  %and.i75 = and i32 %i.284, 31
  %35 = shl nuw i32 1, %and.i75
  %36 = and i32 %34, %35
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %tobool32.not = icmp eq i32 %36, 0
  br i1 %tobool32.not, label %if.then33, label %for.body28.for.inc35_crit_edge

for.body28.for.inc35_crit_edge:                   ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc35

if.then33:                                        ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @input_event(ptr noundef %input, i32 noundef 3, i32 noundef %i.284, i32 noundef 0) #5
  br label %for.inc35

for.inc35:                                        ; preds = %if.then33, %for.body28.for.inc35_crit_edge
  %add38 = add nsw i32 %i.284, 1
  %call39 = tail call i32 @_find_next_bit_be(ptr noundef %absbit, i32 noundef 64, i32 noundef %add38) #5
  %cmp27 = icmp slt i32 %call39, 64
  br i1 %cmp27, label %for.inc35.for.body28_crit_edge, label %for.inc35.for.end40_crit_edge

for.inc35.for.end40_crit_edge:                    ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end40

for.inc35.for.body28_crit_edge:                   ; preds = %for.inc35
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body28

for.end40:                                        ; preds = %for.inc35.for.end40_crit_edge, %for.end23.for.end40_crit_edge
  tail call void @input_event(ptr noundef %input, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_poll_interval(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_get_child_node_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @device_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @fwnode_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_fwnode_gpiod_get_index(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_set_abs_params(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gpio_keys_button_event(ptr noundef %input, ptr nocapture noundef readonly %button, i32 noundef %state) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.input_dev, ptr %input, i32 0, i32 40, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %type1 = getelementptr inbounds %struct.gpio_keys_button, ptr %button, i32 0, i32 4
  %2 = ptrtoint ptr %type1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %type1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %. = select i1 %tobool.not, i32 1, i32 %3
  %4 = zext i32 %. to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %., label %if.else14 [
    i32 2, label %if.then
    i32 3, label %if.then6
  ]

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool2.not = icmp eq i32 %state, 0
  br i1 %tobool2.not, label %if.then.if.end17_crit_edge, label %if.then3

if.then.if.end17_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %button to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %button, align 4
  %value = getelementptr inbounds %struct.gpio_keys_button, ptr %button, i32 0, i32 9
  %7 = ptrtoint ptr %value to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %value, align 4
  tail call void @input_event(ptr noundef %input, i32 noundef 2, i32 noundef %6, i32 noundef %8) #5
  %9 = ptrtoint ptr %button to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %button, align 4
  %rel_axis_seen = getelementptr inbounds %struct.gpio_keys_polled_dev, ptr %1, i32 0, i32 3
  %rem.i = and i32 %10, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %10, 5
  %add.ptr.i = getelementptr i32, ptr %rel_axis_seen, i32 %div2.i
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %shl.i, %12
  store i32 %or.i, ptr %add.ptr.i, align 4
  br label %if.end17

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %state)
  %tobool7.not = icmp eq i32 %state, 0
  br i1 %tobool7.not, label %if.then6.if.end17_crit_edge, label %if.then8

if.then6.if.end17_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end17

if.then8:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %button to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %button, align 4
  %value10 = getelementptr inbounds %struct.gpio_keys_button, ptr %button, i32 0, i32 9
  %15 = ptrtoint ptr %value10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %value10, align 4
  tail call void @input_event(ptr noundef %input, i32 noundef 3, i32 noundef %14, i32 noundef %16) #5
  %17 = ptrtoint ptr %button to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %button, align 4
  %abs_axis_seen = getelementptr inbounds %struct.gpio_keys_polled_dev, ptr %1, i32 0, i32 4
  %rem.i36 = and i32 %18, 31
  %shl.i37 = shl nuw i32 1, %rem.i36
  %div2.i38 = lshr i32 %18, 5
  %add.ptr.i39 = getelementptr i32, ptr %abs_axis_seen, i32 %div2.i38
  %19 = ptrtoint ptr %add.ptr.i39 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr.i39, align 4
  %or.i40 = or i32 %shl.i37, %20
  store i32 %or.i40, ptr %add.ptr.i39, align 4
  br label %if.end17

if.else14:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %21 = ptrtoint ptr %button to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %button, align 4
  tail call void @input_event(ptr noundef %input, i32 noundef %., i32 noundef %22, i32 noundef %state) #5
  tail call void @input_event(ptr noundef %input, i32 noundef 0, i32 noundef 0, i32 noundef 0) #5
  br label %if.end17

if.end17:                                         ; preds = %if.else14, %if.then8, %if.then6.if.end17_crit_edge, %if.then3, %if.then.if.end17_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_value_cansleep(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !36, !37, !38, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !66, !68, !70, !72, !73, !74, !75, !77, !79, !81, !83, !85, !87, !88, !89, !90}
!llvm.module.flags = !{!92, !93, !94, !95, !96, !97, !98, !99}
!llvm.ident = !{!100}

!0 = !{ptr @__initcall__kmod_gpio_keys_polled__223_386_gpio_keys_polled_driver_init6, !1, !"__initcall__kmod_gpio_keys_polled__223_386_gpio_keys_polled_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/input/keyboard/gpio_keys_polled.c", i32 386, i32 1}
!2 = !{ptr @__exitcall_gpio_keys_polled_driver_exit, !1, !"__exitcall_gpio_keys_polled_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file224, !4, !"__UNIQUE_ID_file224", i1 false, i1 false}
!4 = !{!"../drivers/input/keyboard/gpio_keys_polled.c", i32 388, i32 1}
!5 = !{ptr @__UNIQUE_ID_license225, !4, !"__UNIQUE_ID_license225", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author226, !7, !"__UNIQUE_ID_author226", i1 false, i1 false}
!7 = !{!"../drivers/input/keyboard/gpio_keys_polled.c", i32 389, i32 1}
!8 = !{ptr @__UNIQUE_ID_description227, !9, !"__UNIQUE_ID_description227", i1 false, i1 false}
!9 = !{!"../drivers/input/keyboard/gpio_keys_polled.c", i32 390, i32 1}
!10 = !{ptr @__UNIQUE_ID_alias228, !11, !"__UNIQUE_ID_alias228", i1 false, i1 false}
!11 = !{!"../drivers/input/keyboard/gpio_keys_polled.c", i32 391, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/input/keyboard/gpio_keys_polled.c", i32 382, i32 11}
!14 = !{ptr @gpio_keys_polled_driver, !15, !"gpio_keys_polled_driver", i1 false, i1 false}
!15 = !{!"../drivers/input/keyboard/gpio_keys_polled.c", i32 379, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/input/keyboard/gpio_keys_polled.c", i32 245, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @gpio_keys_polled_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @gpio_keys_polled_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/input/keyboard/gpio_keys_polled.c", i32 252, i32 3}
!26 = !{ptr @gpio_keys_polled_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @gpio_keys_polled_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/input/keyboard/gpio_keys_polled.c", i32 258, i32 3}
!30 = !{ptr @gpio_keys_polled_probe._entry.9, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @gpio_keys_polled_probe._entry_ptr.11, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/input/keyboard/gpio_keys_polled.c", i32 265, i32 16}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/input/keyboard/gpio_keys_polled.c", i32 285, i32 4}
!36 = !{ptr @gpio_keys_polled_probe._entry.13, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @gpio_keys_polled_probe._entry_ptr.15, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/input/keyboard/gpio_keys_polled.c", i32 294, i32 5}
!40 = !{ptr @gpio_keys_polled_probe._entry.16, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @gpio_keys_polled_probe._entry_ptr.18, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/input/keyboard/gpio_keys_polled.c", i32 304, i32 6}
!44 = !{ptr @gpio_keys_polled_probe._entry.19, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @gpio_keys_polled_probe._entry_ptr.21, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/input/keyboard/gpio_keys_polled.c", i32 323, i32 5}
!48 = !{ptr @gpio_keys_polled_probe._entry.22, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @gpio_keys_polled_probe._entry_ptr.24, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/input/keyboard/gpio_keys_polled.c", i32 331, i32 5}
!52 = !{ptr @gpio_keys_polled_probe._entry.25, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @gpio_keys_polled_probe._entry_ptr.27, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.29, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/input/keyboard/gpio_keys_polled.c", i32 356, i32 3}
!56 = !{ptr @gpio_keys_polled_probe._entry.28, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @gpio_keys_polled_probe._entry_ptr.30, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.32, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/input/keyboard/gpio_keys_polled.c", i32 364, i32 3}
!60 = !{ptr @gpio_keys_polled_probe._entry.31, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @gpio_keys_polled_probe._entry_ptr.33, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.34, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/input/keyboard/gpio_keys_polled.c", i32 164, i32 44}
!64 = !{ptr @.str.35, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/input/keyboard/gpio_keys_polled.c", i32 165, i32 32}
!66 = !{ptr @.str.36, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/input/keyboard/gpio_keys_polled.c", i32 167, i32 35}
!68 = !{ptr @.str.37, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/input/keyboard/gpio_keys_polled.c", i32 170, i32 39}
!70 = !{ptr @.str.38, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/input/keyboard/gpio_keys_polled.c", i32 172, i32 4}
!72 = !{ptr @.str.39, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @gpio_keys_polled_get_devtree_pdata._entry, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @gpio_keys_polled_get_devtree_pdata._entry_ptr, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.40, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/input/keyboard/gpio_keys_polled.c", i32 179, i32 39}
!77 = !{ptr @.str.41, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/input/keyboard/gpio_keys_polled.c", i32 183, i32 39}
!79 = !{ptr @.str.42, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/input/keyboard/gpio_keys_polled.c", i32 188, i32 37}
!81 = !{ptr @.str.43, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/input/keyboard/gpio_keys_polled.c", i32 190, i32 37}
!83 = !{ptr @.str.44, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/input/keyboard/gpio_keys_polled.c", i32 192, i32 39}
!85 = !{ptr @.str.45, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/input/keyboard/gpio_keys_polled.c", i32 75, i32 3}
!87 = !{ptr @.str.46, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @gpio_keys_polled_check_state._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @gpio_keys_polled_check_state._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @gpio_keys_polled_of_match, !91, !"gpio_keys_polled_of_match", i1 false, i1 false}
!91 = !{!"../drivers/input/keyboard/gpio_keys_polled.c", i32 222, i32 34}
!92 = !{i32 1, !"wchar_size", i32 2}
!93 = !{i32 1, !"min_enum_size", i32 4}
!94 = !{i32 8, !"branch-target-enforcement", i32 0}
!95 = !{i32 8, !"sign-return-address", i32 0}
!96 = !{i32 8, !"sign-return-address-all", i32 0}
!97 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!98 = !{i32 7, !"uwtable", i32 1}
!99 = !{i32 7, !"frame-pointer", i32 2}
!100 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
