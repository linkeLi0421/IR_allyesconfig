; ModuleID = '/llk/IR_all_yes/drivers/leds/flash/leds-max77693.c_pt.bc'
source_filename = "../drivers/leds/flash/leds-max77693.c"
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
%struct.led_flash_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.v4l2_flash_ops = type { ptr, ptr, ptr }
%struct.v4l2_flash_config = type { [32 x i8], %struct.led_flash_setting, i32, i8 }
%struct.led_flash_setting = type { i32, i32, i32, i32 }
%struct.max77693_led_config_data = type { [2 x ptr], [2 x i32], [2 x i32], [2 x i32], i32, i32, i32, i32 }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.max77693_led_device = type { ptr, ptr, %struct.mutex, [2 x %struct.max77693_sub_led], [2 x i32], [2 x i32], i32, i8, i32, i32, i8, i8, i8 }
%struct.max77693_sub_led = type { i32, %struct.led_classdev_flash, ptr, i32, i32, i32 }
%struct.led_classdev_flash = type { %struct.led_classdev, ptr, %struct.led_flash_setting, %struct.led_flash_setting, [5 x ptr] }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.max77693_dev = type { ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.i2c_client = type { i16, i16, [20 x i8], ptr, %struct.device, i32, i32, %struct.list_head, ptr, ptr }
%struct.i2c_adapter = type { ptr, i32, ptr, ptr, ptr, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i32, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, ptr, ptr, ptr, ptr }
%struct.rt_mutex = type { %struct.rt_mutex_base, %struct.lockdep_map }
%struct.rt_mutex_base = type { %struct.raw_spinlock, %struct.rb_root_cached, ptr }
%struct.rb_root_cached = type { %struct.rb_root, ptr }
%struct.rb_root = type { ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }

@__initcall__kmod_leds_max77693__305_1054_max77693_led_driver_init6 = internal global ptr @max77693_led_driver_init, section ".initcall6.init", align 4
@max77693_led_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @max77693_led_probe, ptr @max77693_led_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @max77693_led_dt_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_max77693_led_driver_exit = internal global ptr @max77693_led_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author306 = internal constant [65 x i8] c"leds_max77693.author=Jacek Anaszewski <j.anaszewski@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author307 = internal constant [57 x i8] c"leds_max77693.author=Andrzej Hajda <a.hajda@samsung.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description308 = internal constant [58 x i8] c"leds_max77693.description=Maxim MAX77693 led flash driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file309 = internal constant [52 x i8] c"leds_max77693.file=drivers/leds/flash/leds-max77693\00", section ".modinfo", align 1
@__UNIQUE_ID_license310 = internal constant [29 x i8] c"leds_max77693.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"max77693-led\00", [19 x i8] zeroinitializer }, align 32
@max77693_led_dt_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"maxim,max77693-led\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@max77693_led_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&led->lock\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"maxim,boost-mode\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"maxim,boost-mvout\00", [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"maxim,mvsys-min\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"led-sources\00", [20 x i8] zeroinitializer }, align 32
@max77693_led_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.8, i32 624, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"led-sources DT property missing\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"max77693_led_parse_dt\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/leds/flash/leds-max77693.c\00", [61 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@max77693_led_parse_dt._entry_ptr = internal global ptr @max77693_led_parse_dt._entry, section ".printk_index", align 4
@max77693_led_parse_dt._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.7, ptr @.str.8, i32 640, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Wrong led-sources DT property value.\0A\00", [58 x i8] zeroinitializer }, align 32
@max77693_led_parse_dt._entry_ptr.13 = internal global ptr @max77693_led_parse_dt._entry.11, section ".printk_index", align 4
@max77693_led_parse_dt._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.7, ptr @.str.8, i32 647, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Conflicting \22led-sources\22 DT properties\0A\00", [55 x i8] zeroinitializer }, align 32
@max77693_led_parse_dt._entry_ptr.16 = internal global ptr @max77693_led_parse_dt._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"led-max-microamp\00", [47 x i8] zeroinitializer }, align 32
@max77693_led_parse_dt._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.7, ptr @.str.8, i32 663, ptr @.str.21, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"led-max-microamp DT property missing\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@max77693_led_parse_dt._entry_ptr.22 = internal global ptr @max77693_led_parse_dt._entry.19, section ".printk_index", align 4
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"flash-max-microamp\00", [45 x i8] zeroinitializer }, align 32
@max77693_led_parse_dt._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.7, ptr @.str.8, i32 671, ptr @.str.21, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"flash-max-microamp DT property missing\0A\00", [56 x i8] zeroinitializer }, align 32
@max77693_led_parse_dt._entry_ptr.26 = internal global ptr @max77693_led_parse_dt._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"flash-max-timeout-us\00", [43 x i8] zeroinitializer }, align 32
@max77693_led_parse_dt._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.7, ptr @.str.8, i32 679, ptr @.str.21, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"flash-max-timeout-us DT property missing\0A\00", [54 x i8] zeroinitializer }, align 32
@max77693_led_parse_dt._entry_ptr.30 = internal global ptr @max77693_led_parse_dt._entry.28, section ".printk_index", align 4
@max77693_led_parse_dt._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.7, ptr @.str.8, i32 691, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"No DT child node found for connected LED(s).\0A\00", [50 x i8] zeroinitializer }, align 32
@max77693_led_parse_dt._entry_ptr.33 = internal global ptr @max77693_led_parse_dt._entry.31, section ".printk_index", align 4
@flash_ops = internal constant { %struct.led_flash_ops, [40 x i8] } { %struct.led_flash_ops { ptr @max77693_led_flash_brightness_set, ptr null, ptr @max77693_led_flash_strobe_set, ptr @max77693_led_flash_strobe_get, ptr @max77693_led_flash_timeout_set, ptr @max77693_led_flash_fault_get }, [40 x i8] zeroinitializer }, align 32
@max77693_led_brightness_set.__UNIQUE_ID_ddebug294 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.35, ptr @.str.8, ptr @.str.36, i8 0, i8 119, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"leds_max77693\00", [18 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"max77693_led_brightness_set\00", [36 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to clear torch mode (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@max77693_led_brightness_set.__UNIQUE_ID_ddebug295 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.35, ptr @.str.8, ptr @.str.37, i8 0, i8 121, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to set torch current (%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@max77693_led_brightness_set.__UNIQUE_ID_ddebug296 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.34, ptr @.str.35, ptr @.str.8, ptr @.str.38, i8 0, i8 123, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Failed to set torch mode (%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@v4l2_flash_ops = internal constant { %struct.v4l2_flash_ops, [20 x i8] } { %struct.v4l2_flash_ops { ptr @max77693_led_external_strobe_set, ptr null, ptr null }, [20 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s %d-%04x\00", [21 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.40 = private unnamed_addr constant [20 x i8] c"max77693_led_driver\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1045, i32 31 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1049, i32 11 }
@___asan_gen_.46 = private unnamed_addr constant [22 x i8] c"max77693_led_dt_match\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 1039, i32 34 }
@___asan_gen_.49 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 973, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 607, i32 29 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 608, i32 29 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 609, i32 29 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 612, i32 39 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 623, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 639, i32 4 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 646, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 656, i32 32 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 659, i32 42 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 663, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 666, i32 42 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 670, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 674, i32 42 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 678, i32 4 }
@___asan_gen_.130 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 691, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant [10 x i8] c"flash_ops\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 784, i32 35 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 474, i32 4 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 482, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 490, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant [15 x i8] c"v4l2_flash_ops\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 870, i32 36 }
@___asan_gen_.157 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.158 = private constant [38 x i8] c"../drivers/leds/flash/leds-max77693.c\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 853, i32 4 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @__UNIQUE_ID_author306, ptr @__UNIQUE_ID_author307, ptr @__UNIQUE_ID_description308, ptr @__UNIQUE_ID_file309, ptr @__UNIQUE_ID_license310, ptr @__exitcall_max77693_led_driver_exit, ptr @__initcall__kmod_leds_max77693__305_1054_max77693_led_driver_init6, ptr @max77693_led_driver_exit, ptr @max77693_led_parse_dt._entry, ptr @max77693_led_parse_dt._entry.11, ptr @max77693_led_parse_dt._entry.14, ptr @max77693_led_parse_dt._entry.19, ptr @max77693_led_parse_dt._entry.24, ptr @max77693_led_parse_dt._entry.28, ptr @max77693_led_parse_dt._entry.31, ptr @max77693_led_parse_dt._entry_ptr, ptr @max77693_led_parse_dt._entry_ptr.13, ptr @max77693_led_parse_dt._entry_ptr.16, ptr @max77693_led_parse_dt._entry_ptr.22, ptr @max77693_led_parse_dt._entry_ptr.26, ptr @max77693_led_parse_dt._entry_ptr.30, ptr @max77693_led_parse_dt._entry_ptr.33, ptr @max77693_led_driver, ptr @.str, ptr @max77693_led_dt_match, ptr @max77693_led_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.25, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @flash_ops, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @v4l2_flash_ops, ptr @.str.39], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_led_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_led_dt_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_led_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_led_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_led_parse_dt._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_led_parse_dt._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_led_parse_dt._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_led_parse_dt._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_led_parse_dt._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max77693_led_parse_dt._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flash_ops to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v4l2_flash_ops to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @max77693_led_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @max77693_led_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @max77693_led_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @max77693_led_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77693_led_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %v4l2_sd_cfg.i = alloca %struct.v4l2_flash_config, align 4
  %max_flash_curr.i = alloca [2 x i32], align 4
  %led_sources.i.i = alloca [2 x i32], align 4
  %sub_nodes = alloca [2 x ptr], align 8
  %led_cfg = alloca %struct.max77693_led_config_data, align 4
  %init_fled_cdev = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sub_nodes) #8
  %4 = ptrtoint ptr %sub_nodes to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 0, ptr %sub_nodes, align 8
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %led_cfg) #8
  %5 = call ptr @memset(ptr %led_cfg, i32 0, i32 48)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %init_fled_cdev) #8
  %6 = ptrtoint ptr %init_fled_cdev to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %init_fled_cdev, align 4, !annotation !96
  %7 = getelementptr inbounds [2 x i32], ptr %init_fled_cdev, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4, !annotation !96
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 1088, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdev3 = getelementptr inbounds %struct.max77693_led_device, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %pdev3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %pdev, ptr %pdev3, align 4
  %regmap = getelementptr inbounds %struct.max77693_dev, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regmap, align 4
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %call.i, align 4
  %allowed_modes = getelementptr inbounds %struct.max77693_led_device, ptr %call.i, i32 0, i32 11
  %13 = ptrtoint ptr %allowed_modes to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 51, ptr %allowed_modes, align 1
  %sub_leds5 = getelementptr inbounds %struct.max77693_led_device, ptr %call.i, i32 0, i32 3
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %14 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %of_node.i.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %15 = ptrtoint ptr %of_node.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %of_node.i.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %led_sources.i.i) #8
  %17 = ptrtoint ptr %led_sources.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %led_sources.i.i, align 4, !annotation !96
  %18 = getelementptr inbounds [2 x i32], ptr %led_sources.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %18, align 4, !annotation !96
  %boost_mode.i.i = getelementptr inbounds %struct.max77693_led_config_data, ptr %led_cfg, i32 0, i32 5
  %call.i.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %16, ptr noundef nonnull @.str.2, ptr noundef %boost_mode.i.i, i32 noundef 1, i32 noundef 0) #8
  %boost_vout.i.i = getelementptr inbounds %struct.max77693_led_config_data, ptr %led_cfg, i32 0, i32 6
  %call.i.i171.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %16, ptr noundef nonnull @.str.3, ptr noundef %boost_vout.i.i, i32 noundef 1, i32 noundef 0) #8
  %low_vsys.i.i = getelementptr inbounds %struct.max77693_led_config_data, ptr %led_cfg, i32 0, i32 7
  %call.i.i172.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %16, ptr noundef nonnull @.str.4, ptr noundef %low_vsys.i.i, i32 noundef 1, i32 noundef 0) #8
  %call6.i.i = call ptr @of_get_next_available_child(ptr noundef %16, ptr noundef null) #8
  %cmp.not188.i.i = icmp eq ptr %call6.i.i, null
  br i1 %cmp.not188.i.i, label %if.end.for.end96.i.i_crit_edge, label %for.body.lr.ph.i.i

if.end.for.end96.i.i_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end96.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end
  %fled_mask.i.i = getelementptr inbounds %struct.max77693_led_device, ptr %call.i, i32 0, i32 10
  %num_leds.i.i = getelementptr inbounds %struct.max77693_led_config_data, ptr %led_cfg, i32 0, i32 4
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.inc94.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %child_node.0189.i.i = phi ptr [ %call6.i.i, %for.body.lr.ph.i.i ], [ %call95.i.i, %for.inc94.i.i.for.body.i.i_crit_edge ]
  %call7.i.i = call ptr @of_find_property(ptr noundef nonnull %child_node.0189.i.i, ptr noundef nonnull @.str.5, ptr noundef null) #8
  %tobool.not.i.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i.i, label %do.end.i.i, label %for.body10.preheader.i.i

for.body10.preheader.i.i:                         ; preds = %for.body.i.i
  %call11.i.i = call ptr @of_prop_next_u32(ptr noundef nonnull %call7.i.i, ptr noundef null, ptr noundef nonnull %led_sources.i.i) #8
  %tobool12.not.i.i = icmp eq ptr %call11.i.i, null
  br i1 %tobool12.not.i.i, label %for.body10.preheader.i.i.if.else17.i.i_crit_edge, label %for.inc.i.i

for.body10.preheader.i.i.if.else17.i.i_crit_edge: ; preds = %for.body10.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else17.i.i

for.inc.i.i:                                      ; preds = %for.body10.preheader.i.i
  %call11.1.i.i = call ptr @of_prop_next_u32(ptr noundef nonnull %call7.i.i, ptr noundef nonnull %call11.i.i, ptr noundef %18) #8
  %tobool12.not.1.i.i = icmp eq ptr %call11.1.i.i, null
  br i1 %tobool12.not.1.i.i, label %for.inc.i.i.if.else17.i.i_crit_edge, label %for.inc.i.i.if.end38.i.i_crit_edge

for.inc.i.i.if.end38.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38.i.i

for.inc.i.i.if.else17.i.i_crit_edge:              ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else17.i.i

do.end.i.i:                                       ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.6) #11
  call void @of_node_put(ptr noundef nonnull %child_node.0189.i.i) #8
  br label %max77693_led_get_configuration.exit.thread

if.else17.i.i:                                    ; preds = %for.inc.i.i.if.else17.i.i_crit_edge, %for.body10.preheader.i.i.if.else17.i.i_crit_edge
  %20 = ptrtoint ptr %led_sources.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %led_sources.i.i, align 4
  %22 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values)
  switch i32 %21, label %do.end35.i.i [
    i32 0, label %if.else17.i.i.if.end38.sink.split.i.i_crit_edge
    i32 1, label %if.then27.i.i
  ]

if.else17.i.i.if.end38.sink.split.i.i_crit_edge:  ; preds = %if.else17.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38.sink.split.i.i

if.then27.i.i:                                    ; preds = %if.else17.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38.sink.split.i.i

do.end35.i.i:                                     ; preds = %if.else17.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #11
  call void @of_node_put(ptr noundef nonnull %child_node.0189.i.i) #8
  br label %max77693_led_get_configuration.exit.thread

if.end38.sink.split.i.i:                          ; preds = %if.then27.i.i, %if.else17.i.i.if.end38.sink.split.i.i_crit_edge
  %.sink199.i.i = phi i8 [ 2, %if.then27.i.i ], [ 1, %if.else17.i.i.if.end38.sink.split.i.i_crit_edge ]
  %23 = ptrtoint ptr %fled_mask.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %fled_mask.i.i, align 4
  %25 = or i8 %24, %.sink199.i.i
  br label %if.end38.i.i

if.end38.i.i:                                     ; preds = %if.end38.sink.split.i.i, %for.inc.i.i.if.end38.i.i_crit_edge
  %.sink.i.i = phi i8 [ 3, %for.inc.i.i.if.end38.i.i_crit_edge ], [ %25, %if.end38.sink.split.i.i ]
  %fled_id.0.i.i = phi i32 [ 0, %for.inc.i.i.if.end38.i.i_crit_edge ], [ %21, %if.end38.sink.split.i.i ]
  %26 = ptrtoint ptr %fled_mask.i.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %.sink.i.i, ptr %fled_mask.i.i, align 4
  %arrayidx39.i.i = getelementptr ptr, ptr %sub_nodes, i32 %fled_id.0.i.i
  %27 = ptrtoint ptr %arrayidx39.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx39.i.i, align 4
  %tobool40.not.i.i = icmp eq ptr %28, null
  br i1 %tobool40.not.i.i, label %if.end45.i.i, label %do.end44.i.i

do.end44.i.i:                                     ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15) #11
  call void @of_node_put(ptr noundef nonnull %child_node.0189.i.i) #8
  br label %max77693_led_get_configuration.exit.thread

if.end45.i.i:                                     ; preds = %if.end38.i.i
  %29 = ptrtoint ptr %arrayidx39.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %child_node.0189.i.i, ptr %arrayidx39.i.i, align 4
  %arrayidx47.i.i = getelementptr %struct.max77693_sub_led, ptr %sub_leds5, i32 %fled_id.0.i.i
  %30 = ptrtoint ptr %arrayidx47.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %fled_id.0.i.i, ptr %arrayidx47.i.i, align 4
  %call49.i.i = call ptr @of_get_property(ptr noundef nonnull %child_node.0189.i.i, ptr noundef nonnull @.str.17, ptr noundef null) #8
  %tobool50.not.i.i = icmp eq ptr %call49.i.i, null
  br i1 %tobool50.not.i.i, label %cond.false.i.i, label %if.end45.i.i.cond.end.i.i_crit_edge

if.end45.i.i.cond.end.i.i_crit_edge:              ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end.i.i

cond.false.i.i:                                   ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %child_node.0189.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %child_node.0189.i.i, align 4
  br label %cond.end.i.i

cond.end.i.i:                                     ; preds = %cond.false.i.i, %if.end45.i.i.cond.end.i.i_crit_edge
  %cond.i.i = phi ptr [ %32, %cond.false.i.i ], [ %call49.i.i, %if.end45.i.i.cond.end.i.i_crit_edge ]
  %arrayidx51.i.i = getelementptr [2 x ptr], ptr %led_cfg, i32 0, i32 %fled_id.0.i.i
  %33 = ptrtoint ptr %arrayidx51.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %cond.i.i, ptr %arrayidx51.i.i, align 4
  %arrayidx52.i.i = getelementptr %struct.max77693_led_config_data, ptr %led_cfg, i32 0, i32 1, i32 %fled_id.0.i.i
  %call.i.i173.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child_node.0189.i.i, ptr noundef nonnull @.str.18, ptr noundef %arrayidx52.i.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i173.i.i)
  %cmp54.i.i = icmp slt i32 %call.i.i173.i.i, 0
  br i1 %cmp54.i.i, label %if.then56.i.i, label %cond.end.i.i.if.end62.i.i_crit_edge

cond.end.i.i.if.end62.i.i_crit_edge:              ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62.i.i

if.then56.i.i:                                    ; preds = %cond.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %arrayidx52.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 15625, ptr %arrayidx52.i.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.20) #11
  br label %if.end62.i.i

if.end62.i.i:                                     ; preds = %if.then56.i.i, %cond.end.i.i.if.end62.i.i_crit_edge
  %arrayidx63.i.i = getelementptr %struct.max77693_led_config_data, ptr %led_cfg, i32 0, i32 2, i32 %fled_id.0.i.i
  %call.i.i174.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child_node.0189.i.i, ptr noundef nonnull @.str.23, ptr noundef %arrayidx63.i.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i174.i.i)
  %cmp65.i.i = icmp slt i32 %call.i.i174.i.i, 0
  br i1 %cmp65.i.i, label %if.then67.i.i, label %if.end62.i.i.if.end73.i.i_crit_edge

if.end62.i.i.if.end73.i.i_crit_edge:              ; preds = %if.end62.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end73.i.i

if.then67.i.i:                                    ; preds = %if.end62.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %35 = ptrtoint ptr %arrayidx63.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 15625, ptr %arrayidx63.i.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.25) #11
  br label %if.end73.i.i

if.end73.i.i:                                     ; preds = %if.then67.i.i, %if.end62.i.i.if.end73.i.i_crit_edge
  %arrayidx74.i.i = getelementptr %struct.max77693_led_config_data, ptr %led_cfg, i32 0, i32 3, i32 %fled_id.0.i.i
  %call.i.i175.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child_node.0189.i.i, ptr noundef nonnull @.str.27, ptr noundef %arrayidx74.i.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i175.i.i)
  %cmp76.i.i = icmp slt i32 %call.i.i175.i.i, 0
  br i1 %cmp76.i.i, label %if.then78.i.i, label %if.end73.i.i.if.end84.i.i_crit_edge

if.end73.i.i.if.end84.i.i_crit_edge:              ; preds = %if.end73.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end84.i.i

if.then78.i.i:                                    ; preds = %if.end73.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %arrayidx74.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 62500, ptr %arrayidx74.i.i, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.29) #11
  br label %if.end84.i.i

if.end84.i.i:                                     ; preds = %if.then78.i.i, %if.end73.i.i.if.end84.i.i_crit_edge
  %37 = ptrtoint ptr %num_leds.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %num_leds.i.i, align 4
  %inc85.i.i = add i32 %38, 1
  store i32 %inc85.i.i, ptr %num_leds.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %inc85.i.i)
  %cmp86.i.i = icmp eq i32 %inc85.i.i, 2
  br i1 %cmp86.i.i, label %if.end84.i.i.if.then92.i.i_crit_edge, label %lor.lhs.false.i.i

if.end84.i.i.if.then92.i.i_crit_edge:             ; preds = %if.end84.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then92.i.i

lor.lhs.false.i.i:                                ; preds = %if.end84.i.i
  %39 = ptrtoint ptr %fled_mask.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %fled_mask.i.i, align 4
  %41 = and i8 %40, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %41)
  %42 = icmp eq i8 %41, 3
  br i1 %42, label %lor.lhs.false.i.i.if.then92.i.i_crit_edge, label %for.inc94.i.i

lor.lhs.false.i.i.if.then92.i.i_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then92.i.i

if.then92.i.i:                                    ; preds = %lor.lhs.false.i.i.if.then92.i.i_crit_edge, %if.end84.i.i.if.then92.i.i_crit_edge
  call void @of_node_put(ptr noundef nonnull %child_node.0189.i.i) #8
  br label %for.end96.i.i

for.inc94.i.i:                                    ; preds = %lor.lhs.false.i.i
  %call95.i.i = call ptr @of_get_next_available_child(ptr noundef %16, ptr noundef nonnull %child_node.0189.i.i) #8
  %cmp.not.i.i = icmp eq ptr %call95.i.i, null
  br i1 %cmp.not.i.i, label %for.inc94.i.i.for.end96.i.i_crit_edge, label %for.inc94.i.i.for.body.i.i_crit_edge

for.inc94.i.i.for.body.i.i_crit_edge:             ; preds = %for.inc94.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.inc94.i.i.for.end96.i.i_crit_edge:            ; preds = %for.inc94.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end96.i.i

for.end96.i.i:                                    ; preds = %for.inc94.i.i.for.end96.i.i_crit_edge, %if.then92.i.i, %if.end.for.end96.i.i_crit_edge
  %num_leds97.i.i = getelementptr inbounds %struct.max77693_led_config_data, ptr %led_cfg, i32 0, i32 4
  %43 = ptrtoint ptr %num_leds97.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %num_leds97.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp98.i.i = icmp eq i32 %44, 0
  br i1 %cmp98.i.i, label %do.end103.i.i, label %if.end.i

do.end103.i.i:                                    ; preds = %for.end96.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.32) #11
  br label %max77693_led_get_configuration.exit.thread

max77693_led_get_configuration.exit.thread:       ; preds = %do.end103.i.i, %do.end44.i.i, %do.end35.i.i, %do.end.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %led_sources.i.i) #8
  br label %cleanup

if.end.i:                                         ; preds = %for.end96.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %led_sources.i.i) #8
  %45 = ptrtoint ptr %boost_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %boost_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool.not.i14.i = icmp eq i32 %46, 0
  %cond.i15.i = select i1 %tobool.not.i14.i, i32 1000000, i32 625000
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %44)
  %cmp.i.i = icmp eq i32 %44, 1
  br i1 %cmp.i.i, label %land.lhs.true.i.i, label %if.end.i.if.end.i.i_crit_edge

if.end.i.if.end.i.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

land.lhs.true.i.i:                                ; preds = %if.end.i
  %fled_mask.i.i.i = getelementptr inbounds %struct.max77693_led_device, ptr %call.i, i32 0, i32 10
  %47 = ptrtoint ptr %fled_mask.i.i.i to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %fled_mask.i.i.i, align 4
  %49 = and i8 %48, 3
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %49)
  %50 = icmp eq i8 %49, 3
  br i1 %50, label %if.then.i.i, label %land.lhs.true.i.i.if.end.i.i_crit_edge

land.lhs.true.i.i.if.end.i.i_crit_edge:           ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i

if.then.i.i:                                      ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %iout_joint.i.i = getelementptr inbounds %struct.max77693_led_device, ptr %call.i, i32 0, i32 12
  %51 = ptrtoint ptr %iout_joint.i.i to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %iout_joint.i.i, align 2
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %land.lhs.true.i.i.if.end.i.i_crit_edge, %if.end.i.if.end.i.i_crit_edge
  %52 = call i32 @llvm.umin.i32(i32 %46, i32 2) #8
  %53 = ptrtoint ptr %boost_mode.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %boost_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %cmp14.i.i = icmp eq i32 %52, 0
  br i1 %cmp14.i.i, label %land.lhs.true15.i.i, label %if.end.i.i.if.end20.i.i_crit_edge

if.end.i.i.if.end20.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i.i

land.lhs.true15.i.i:                              ; preds = %if.end.i.i
  %iout_joint16.i.i = getelementptr inbounds %struct.max77693_led_device, ptr %call.i, i32 0, i32 12
  %54 = ptrtoint ptr %iout_joint16.i.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %iout_joint16.i.i, align 2, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool17.not.i.i = icmp eq i8 %55, 0
  br i1 %tobool17.not.i.i, label %land.lhs.true15.i.i.if.end20.i.i_crit_edge, label %if.then18.i.i

land.lhs.true15.i.i.if.end20.i.i_crit_edge:       ; preds = %land.lhs.true15.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end20.i.i

if.then18.i.i:                                    ; preds = %land.lhs.true15.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %boost_mode.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 2, ptr %boost_mode.i.i, align 4
  br label %if.end20.i.i

if.end20.i.i:                                     ; preds = %if.then18.i.i, %land.lhs.true15.i.i.if.end20.i.i_crit_edge, %if.end.i.i.if.end20.i.i_crit_edge
  %iout_torch_max.i.i = getelementptr inbounds %struct.max77693_led_config_data, ptr %led_cfg, i32 0, i32 1
  %iout_joint.i.i.i = getelementptr inbounds %struct.max77693_led_device, ptr %call.i, i32 0, i32 12
  %57 = ptrtoint ptr %iout_joint.i.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %iout_joint.i.i.i, align 2, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool.not.i.i.i = icmp eq i8 %58, 0
  br i1 %tobool.not.i.i.i, label %if.end20.i.i.if.end7.i.i.i_crit_edge, label %if.then.i.i.i

if.end20.i.i.if.end7.i.i.i_crit_edge:             ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i.i.i

if.then.i.i.i:                                    ; preds = %if.end20.i.i
  %59 = ptrtoint ptr %iout_torch_max.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %iout_torch_max.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15625, i32 %60)
  %cmp.i.i.i = icmp ugt i32 %60, 15625
  br i1 %cmp.i.i.i, label %if.then1.i.i.i, label %max77693_align_iout_current.exit.i.i.thread

if.then1.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %div1.i.i.i = lshr i32 %60, 1
  %61 = ptrtoint ptr %iout_torch_max.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %div1.i.i.i, ptr %iout_torch_max.i.i, align 4
  %arrayidx4.i.i.i = getelementptr inbounds %struct.max77693_led_config_data, ptr %led_cfg, i32 0, i32 1, i32 1
  %62 = ptrtoint ptr %arrayidx4.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %div1.i.i.i, ptr %arrayidx4.i.i.i, align 4
  br label %if.end7.i.i.i

max77693_align_iout_current.exit.i.i.thread:      ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %iout_torch_max.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 15625, ptr %iout_torch_max.i.i, align 4
  %arrayidx6.i.i.i = getelementptr inbounds %struct.max77693_led_config_data, ptr %led_cfg, i32 0, i32 1, i32 1
  %64 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 0, ptr %arrayidx6.i.i.i, align 4
  %iout_flash_max.i.i109 = getelementptr inbounds %struct.max77693_led_config_data, ptr %led_cfg, i32 0, i32 2
  br label %if.then.i56.i.i

if.end7.i.i.i:                                    ; preds = %if.then1.i.i.i, %if.end20.i.i.if.end7.i.i.i_crit_edge
  %fled_mask.i.i.i.i = getelementptr inbounds %struct.max77693_led_device, ptr %call.i, i32 0, i32 10
  %65 = ptrtoint ptr %fled_mask.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %fled_mask.i.i.i.i, align 4
  %67 = and i8 %66, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool.i.not.i.i.i = icmp eq i8 %67, 0
  br i1 %tobool.i.not.i.i.i, label %if.end7.i.i.i.for.inc.i.i.i_crit_edge, label %if.then9.i.i.i

if.end7.i.i.i.for.inc.i.i.i_crit_edge:            ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i.i

if.then9.i.i.i:                                   ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %68 = ptrtoint ptr %iout_torch_max.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %iout_torch_max.i.i, align 4
  %70 = call i32 @llvm.umax.i32(i32 %69, i32 15625) #8
  %71 = call i32 @llvm.umin.i32(i32 %70, i32 250000) #8
  %sub.i.i.i.i = add nsw i32 %71, -15625
  %72 = urem i32 %sub.i.i.i.i, 15625
  %73 = sub nuw nsw i32 %71, %72
  br label %for.inc.i.i.i

for.inc.i.i.i:                                    ; preds = %if.then9.i.i.i, %if.end7.i.i.i.for.inc.i.i.i_crit_edge
  %storemerge.i.i.i = phi i32 [ %73, %if.then9.i.i.i ], [ 0, %if.end7.i.i.i.for.inc.i.i.i_crit_edge ]
  %74 = ptrtoint ptr %iout_torch_max.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %storemerge.i.i.i, ptr %iout_torch_max.i.i, align 4
  %75 = and i8 %66, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool.i.not.1.i.i.i = icmp eq i8 %75, 0
  %arrayidx12.1.i.i.i = getelementptr inbounds %struct.max77693_led_config_data, ptr %led_cfg, i32 0, i32 1, i32 1
  br i1 %tobool.i.not.1.i.i.i, label %for.inc.i.i.i.max77693_align_iout_current.exit.i.i_crit_edge, label %if.then9.1.i.i.i

for.inc.i.i.i.max77693_align_iout_current.exit.i.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max77693_align_iout_current.exit.i.i

if.then9.1.i.i.i:                                 ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %76 = ptrtoint ptr %arrayidx12.1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx12.1.i.i.i, align 4
  %78 = call i32 @llvm.umax.i32(i32 %77, i32 15625) #8
  %79 = call i32 @llvm.umin.i32(i32 %78, i32 250000) #8
  %sub.i.1.i.i.i = add nsw i32 %79, -15625
  %80 = urem i32 %sub.i.1.i.i.i, 15625
  %81 = sub nuw nsw i32 %79, %80
  br label %max77693_align_iout_current.exit.i.i

max77693_align_iout_current.exit.i.i:             ; preds = %if.then9.1.i.i.i, %for.inc.i.i.i.max77693_align_iout_current.exit.i.i_crit_edge
  %storemerge = phi i32 [ %81, %if.then9.1.i.i.i ], [ 0, %for.inc.i.i.i.max77693_align_iout_current.exit.i.i_crit_edge ]
  %82 = ptrtoint ptr %arrayidx12.1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %storemerge, ptr %arrayidx12.1.i.i.i, align 4
  %iout_flash_max.i.i = getelementptr inbounds %struct.max77693_led_config_data, ptr %led_cfg, i32 0, i32 2
  br i1 %tobool.not.i.i.i, label %max77693_align_iout_current.exit.i.i.if.end7.i64.i.i_crit_edge, label %max77693_align_iout_current.exit.i.i.if.then.i56.i.i_crit_edge

max77693_align_iout_current.exit.i.i.if.then.i56.i.i_crit_edge: ; preds = %max77693_align_iout_current.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i56.i.i

max77693_align_iout_current.exit.i.i.if.end7.i64.i.i_crit_edge: ; preds = %max77693_align_iout_current.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i64.i.i

if.then.i56.i.i:                                  ; preds = %max77693_align_iout_current.exit.i.i.if.then.i56.i.i_crit_edge, %max77693_align_iout_current.exit.i.i.thread
  %iout_flash_max.i.i110 = phi ptr [ %iout_flash_max.i.i109, %max77693_align_iout_current.exit.i.i.thread ], [ %iout_flash_max.i.i, %max77693_align_iout_current.exit.i.i.if.then.i56.i.i_crit_edge ]
  %83 = ptrtoint ptr %iout_flash_max.i.i110 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %iout_flash_max.i.i110, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 15625, i32 %84)
  %cmp.i55.i.i = icmp ugt i32 %84, 15625
  br i1 %cmp.i55.i.i, label %if.then1.i59.i.i, label %if.else.i61.i.i

if.then1.i59.i.i:                                 ; preds = %if.then.i56.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %div1.i57.i.i = lshr i32 %84, 1
  %85 = ptrtoint ptr %iout_flash_max.i.i110 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %div1.i57.i.i, ptr %iout_flash_max.i.i110, align 4
  %arrayidx4.i58.i.i = getelementptr inbounds %struct.max77693_led_config_data, ptr %led_cfg, i32 0, i32 2, i32 1
  %86 = ptrtoint ptr %arrayidx4.i58.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %div1.i57.i.i, ptr %arrayidx4.i58.i.i, align 4
  br label %if.end7.i64.i.i

if.else.i61.i.i:                                  ; preds = %if.then.i56.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %87 = ptrtoint ptr %iout_flash_max.i.i110 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 15625, ptr %iout_flash_max.i.i110, align 4
  %arrayidx6.i60.i.i = getelementptr inbounds %struct.max77693_led_config_data, ptr %led_cfg, i32 0, i32 2, i32 1
  %88 = ptrtoint ptr %arrayidx6.i60.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %arrayidx6.i60.i.i, align 4
  br label %max77693_align_iout_current.exit74.i.i

if.end7.i64.i.i:                                  ; preds = %if.then1.i59.i.i, %max77693_align_iout_current.exit.i.i.if.end7.i64.i.i_crit_edge
  %iout_flash_max.i.i112 = phi ptr [ %iout_flash_max.i.i110, %if.then1.i59.i.i ], [ %iout_flash_max.i.i, %max77693_align_iout_current.exit.i.i.if.end7.i64.i.i_crit_edge ]
  %fled_mask.i.i62.i.i = getelementptr inbounds %struct.max77693_led_device, ptr %call.i, i32 0, i32 10
  %89 = ptrtoint ptr %fled_mask.i.i62.i.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %fled_mask.i.i62.i.i, align 4
  %91 = and i8 %90, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool.i.not.i63.i.i = icmp eq i8 %91, 0
  br i1 %tobool.i.not.i63.i.i, label %if.end7.i64.i.i.for.inc.i70.i.i_crit_edge, label %if.then9.i66.i.i

if.end7.i64.i.i.for.inc.i70.i.i_crit_edge:        ; preds = %if.end7.i64.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i70.i.i

if.then9.i66.i.i:                                 ; preds = %if.end7.i64.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %92 = ptrtoint ptr %iout_flash_max.i.i112 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %iout_flash_max.i.i112, align 4
  %94 = call i32 @llvm.umax.i32(i32 %93, i32 15625) #8
  %95 = call i32 @llvm.umin.i32(i32 %94, i32 %cond.i15.i) #8
  %sub.i.i65.i.i = add nsw i32 %95, -15625
  %96 = urem i32 %sub.i.i65.i.i, 15625
  %97 = sub nuw nsw i32 %95, %96
  br label %for.inc.i70.i.i

for.inc.i70.i.i:                                  ; preds = %if.then9.i66.i.i, %if.end7.i64.i.i.for.inc.i70.i.i_crit_edge
  %storemerge.i67.i.i = phi i32 [ %97, %if.then9.i66.i.i ], [ 0, %if.end7.i64.i.i.for.inc.i70.i.i_crit_edge ]
  %98 = ptrtoint ptr %iout_flash_max.i.i112 to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %storemerge.i67.i.i, ptr %iout_flash_max.i.i112, align 4
  %99 = and i8 %90, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool.i.not.1.i68.i.i = icmp eq i8 %99, 0
  %arrayidx12.1.i69.i.i = getelementptr inbounds %struct.max77693_led_config_data, ptr %led_cfg, i32 0, i32 2, i32 1
  br i1 %tobool.i.not.1.i68.i.i, label %if.else11.1.i73.i.i, label %if.then9.1.i72.i.i

if.then9.1.i72.i.i:                               ; preds = %for.inc.i70.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %100 = ptrtoint ptr %arrayidx12.1.i69.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %arrayidx12.1.i69.i.i, align 4
  %102 = call i32 @llvm.umax.i32(i32 %101, i32 15625) #8
  %103 = call i32 @llvm.umin.i32(i32 %102, i32 %cond.i15.i) #8
  %sub.i.1.i71.i.i = add nsw i32 %103, -15625
  %104 = urem i32 %sub.i.1.i71.i.i, 15625
  %105 = sub nuw nsw i32 %103, %104
  %106 = ptrtoint ptr %arrayidx12.1.i69.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %arrayidx12.1.i69.i.i, align 4
  br label %max77693_align_iout_current.exit74.i.i

if.else11.1.i73.i.i:                              ; preds = %for.inc.i70.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %107 = ptrtoint ptr %arrayidx12.1.i69.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %arrayidx12.1.i69.i.i, align 4
  br label %max77693_align_iout_current.exit74.i.i

max77693_align_iout_current.exit74.i.i:           ; preds = %if.else11.1.i73.i.i, %if.then9.1.i72.i.i, %if.else.i61.i.i
  %iout_flash_max.i.i111 = phi ptr [ %iout_flash_max.i.i112, %if.else11.1.i73.i.i ], [ %iout_flash_max.i.i112, %if.then9.1.i72.i.i ], [ %iout_flash_max.i.i110, %if.else.i61.i.i ]
  %arrayidx.i.i = getelementptr inbounds %struct.max77693_led_config_data, ptr %led_cfg, i32 0, i32 3, i32 0
  %108 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx.i.i, align 4
  %110 = call i32 @llvm.umax.i32(i32 %109, i32 62500) #8
  %111 = call i32 @llvm.umin.i32(i32 %110, i32 1000000) #8
  %sub.i.i.i = add nsw i32 %111, -62500
  %112 = urem i32 %sub.i.i.i, 62500
  %113 = sub nuw nsw i32 %111, %112
  %114 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %113, ptr %arrayidx.i.i, align 4
  %arrayidx.1.i.i = getelementptr inbounds %struct.max77693_led_config_data, ptr %led_cfg, i32 0, i32 3, i32 1
  %115 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %arrayidx.1.i.i, align 4
  %117 = call i32 @llvm.umax.i32(i32 %116, i32 62500) #8
  %118 = call i32 @llvm.umin.i32(i32 %117, i32 1000000) #8
  %sub.i.1.i.i = add nsw i32 %118, -62500
  %119 = urem i32 %sub.i.1.i.i, 62500
  %120 = sub nuw nsw i32 %118, %119
  %121 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %120, ptr %arrayidx.1.i.i, align 4
  %122 = ptrtoint ptr %boost_vout.i.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %boost_vout.i.i, align 4
  %124 = call i32 @llvm.umax.i32(i32 %123, i32 3300) #8
  %125 = call i32 @llvm.umin.i32(i32 %124, i32 5500) #8
  %sub.i75.i.i = add nsw i32 %125, -3300
  %.lhs.trunc.i.i = trunc i32 %sub.i75.i.i to i16
  %126 = urem i16 %.lhs.trunc.i.i, 25
  %narrow.i.i = sub nuw nsw i16 3300, %126
  %mul.i76.i.i = zext i16 %narrow.i.i to i32
  %add.i77.i.i = add nuw nsw i32 %sub.i75.i.i, %mul.i76.i.i
  %127 = ptrtoint ptr %boost_vout.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %add.i77.i.i, ptr %boost_vout.i.i, align 4
  %128 = ptrtoint ptr %low_vsys.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %low_vsys.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %129)
  %tobool23.not.i.i = icmp eq i32 %129, 0
  br i1 %tobool23.not.i.i, label %max77693_align_iout_current.exit74.i.i.if.end9_crit_edge, label %if.then24.i.i

max77693_align_iout_current.exit74.i.i.if.end9_crit_edge: ; preds = %max77693_align_iout_current.exit74.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then24.i.i:                                    ; preds = %max77693_align_iout_current.exit74.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %130 = call i32 @llvm.umax.i32(i32 %129, i32 2400) #8
  %131 = call i32 @llvm.umin.i32(i32 %130, i32 3400) #8
  %sub.i78.i.i = add nsw i32 %131, -2400
  %.lhs.trunc81.i.i = trunc i32 %sub.i78.i.i to i16
  %132 = urem i16 %.lhs.trunc81.i.i, 33
  %narrow83.i.i = sub nuw nsw i16 2400, %132
  %mul.i79.i.i = zext i16 %narrow83.i.i to i32
  %add.i80.i.i = add nuw nsw i32 %sub.i78.i.i, %mul.i79.i.i
  %133 = ptrtoint ptr %low_vsys.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %add.i80.i.i, ptr %low_vsys.i.i, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then24.i.i, %max77693_align_iout_current.exit74.i.i.if.end9_crit_edge
  %iout_torch_max.i = getelementptr inbounds %struct.max77693_led_device, ptr %call.i, i32 0, i32 4
  %134 = ptrtoint ptr %iout_torch_max.i.i to i32
  call void @__asan_loadN_noabort(i32 %134, i32 8)
  %135 = load i64, ptr %iout_torch_max.i.i, align 4
  %136 = ptrtoint ptr %iout_torch_max.i to i32
  call void @__asan_storeN_noabort(i32 %136, i32 8)
  store i64 %135, ptr %iout_torch_max.i, align 4
  %iout_flash_max.i = getelementptr inbounds %struct.max77693_led_device, ptr %call.i, i32 0, i32 5
  %137 = ptrtoint ptr %iout_flash_max.i.i111 to i32
  call void @__asan_loadN_noabort(i32 %137, i32 8)
  %138 = load i64, ptr %iout_flash_max.i.i111, align 4
  %139 = ptrtoint ptr %iout_flash_max.i to i32
  call void @__asan_storeN_noabort(i32 %139, i32 8)
  store i64 %138, ptr %iout_flash_max.i, align 4
  %140 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %call.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %max_flash_curr.i) #8
  %142 = getelementptr inbounds [2 x i32], ptr %max_flash_curr.i, i32 0, i32 1
  %143 = ptrtoint ptr %142 to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 -1, ptr %142, align 4, !annotation !96
  %144 = ptrtoint ptr %iout_joint.i.i.i to i32
  call void @__asan_load1_noabort(i32 %144)
  %145 = load i8, ptr %iout_joint.i.i.i, align 2, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %145)
  %tobool.not.i = icmp eq i8 %145, 0
  br i1 %tobool.not.i, label %if.end.i82, label %if.end.thread.i

if.end.thread.i:                                  ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %iout_flash_max.i80 = getelementptr inbounds %struct.max77693_led_config_data, ptr %led_cfg, i32 0, i32 2
  %146 = ptrtoint ptr %iout_flash_max.i80 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %iout_flash_max.i80, align 4
  %arrayidx2.i = getelementptr inbounds %struct.max77693_led_config_data, ptr %led_cfg, i32 0, i32 2, i32 1
  %148 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %arrayidx2.i, align 4
  %add.i = add i32 %149, %147
  %150 = ptrtoint ptr %max_flash_curr.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %add.i, ptr %max_flash_curr.i, align 4
  br label %for.body.preheader.i

if.end.i82:                                       ; preds = %if.end9
  %fled_mask.i.i81 = getelementptr inbounds %struct.max77693_led_device, ptr %call.i, i32 0, i32 10
  %151 = ptrtoint ptr %fled_mask.i.i81 to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %fled_mask.i.i81, align 4
  %conv1.i.i = zext i8 %152 to i32
  %and.i.i = and i32 %conv1.i.i, 1
  %153 = xor i32 %and.i.i, 1
  %and.i121.i = lshr i32 %conv1.i.i, 1
  %and.i121.lobit.i = and i32 %and.i121.i, 1
  %iout_flash_max6.i = getelementptr inbounds %struct.max77693_led_config_data, ptr %led_cfg, i32 0, i32 2
  %154 = ptrtoint ptr %iout_flash_max6.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %iout_flash_max6.i, align 4
  %156 = ptrtoint ptr %max_flash_curr.i to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %155, ptr %max_flash_curr.i, align 4
  %arrayidx10.i = getelementptr inbounds %struct.max77693_led_config_data, ptr %led_cfg, i32 0, i32 2, i32 1
  %157 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %arrayidx10.i, align 4
  %159 = ptrtoint ptr %142 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %158, ptr %142, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %153, i32 %and.i121.lobit.i)
  %cmp.not134.i = icmp ugt i32 %153, %and.i121.lobit.i
  br i1 %cmp.not134.i, label %if.end.i82.for.end.i_crit_edge, label %if.end.i82.for.body.preheader.i_crit_edge

if.end.i82.for.body.preheader.i_crit_edge:        ; preds = %if.end.i82
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.preheader.i

if.end.i82.for.end.i_crit_edge:                   ; preds = %if.end.i82
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.preheader.i:                             ; preds = %if.end.i82.for.body.preheader.i_crit_edge, %if.end.thread.i
  %last_led.0141.i = phi i32 [ 0, %if.end.thread.i ], [ %and.i121.lobit.i, %if.end.i82.for.body.preheader.i_crit_edge ]
  %first_led.0140.i = phi i32 [ 0, %if.end.thread.i ], [ %153, %if.end.i82.for.body.preheader.i_crit_edge ]
  br label %for.body.i

for.cond.i:                                       ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.0135.i, 1
  %exitcond.i = icmp eq i32 %i.0135.i, %last_led.0141.i
  br i1 %exitcond.i, label %for.cond.i.for.end.i_crit_edge, label %for.cond.i.for.body.i_crit_edge

for.cond.i.for.body.i_crit_edge:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.cond.i.for.end.i_crit_edge:                   ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i:                                       ; preds = %for.cond.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.0135.i = phi i32 [ %inc.i, %for.cond.i.for.body.i_crit_edge ], [ %first_led.0140.i, %for.body.preheader.i ]
  %arrayidx12.i = getelementptr [2 x i32], ptr %max_flash_curr.i, i32 0, i32 %i.0135.i
  %160 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %arrayidx12.i, align 4
  %call13.i = call fastcc i32 @max77693_set_flash_current(ptr noundef %call.i, i32 noundef %i.0135.i, i32 noundef %161) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %cmp14.i = icmp slt i32 %call13.i, 0
  br i1 %cmp14.i, label %for.body.i.max77693_setup.exit.thread_crit_edge, label %for.cond.i

for.body.i.max77693_setup.exit.thread_crit_edge:  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max77693_setup.exit.thread

for.end.i:                                        ; preds = %for.cond.i.for.end.i_crit_edge, %if.end.i82.for.end.i_crit_edge
  %call17.i = call i32 @regmap_write(ptr noundef %141, i32 noundef 3, i32 noundef 65) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %cmp18.i = icmp slt i32 %call17.i, 0
  br i1 %cmp18.i, label %for.end.i.max77693_setup.exit.thread_crit_edge, label %if.end21.i

for.end.i.max77693_setup.exit.thread_crit_edge:   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max77693_setup.exit.thread

if.end21.i:                                       ; preds = %for.end.i
  %162 = ptrtoint ptr %low_vsys.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %low_vsys.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %163)
  %cmp22.not.i = icmp eq i32 %163, 0
  %sub.i.i = add i32 %163, -2400
  %div.i.i = udiv i32 %sub.i.i, 33
  %conv.i.i = shl nuw nsw i32 %div.i.i, 2
  %164 = and i32 %conv.i.i, 124
  %or.i = or i32 %164, 128
  %v.0.i = select i1 %cmp22.not.i, i32 0, i32 %or.i
  %call32.i = call i32 @regmap_write(ptr noundef %141, i32 noundef 6, i32 noundef %v.0.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32.i)
  %cmp33.i = icmp slt i32 %call32.i, 0
  br i1 %cmp33.i, label %if.end21.i.max77693_setup.exit.thread_crit_edge, label %if.end36.i

if.end21.i.max77693_setup.exit.thread_crit_edge:  ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max77693_setup.exit.thread

if.end36.i:                                       ; preds = %if.end21.i
  %call37.i = call i32 @regmap_write(ptr noundef %141, i32 noundef 7, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37.i)
  %cmp38.i = icmp slt i32 %call37.i, 0
  br i1 %cmp38.i, label %if.end36.i.max77693_setup.exit.thread_crit_edge, label %if.end41.i

if.end36.i.max77693_setup.exit.thread_crit_edge:  ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max77693_setup.exit.thread

if.end41.i:                                       ; preds = %if.end36.i
  %165 = ptrtoint ptr %boost_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %boost_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %166)
  %cmp42.i = icmp eq i32 %166, 2
  %shl.i = shl i32 %166, 1
  %or48.i = or i32 %shl.i, %166
  %conv49.i = trunc i32 %or48.i to i8
  %v.1.i = select i1 %cmp42.i, i8 4, i8 %conv49.i
  %fled_mask.i123.i = getelementptr inbounds %struct.max77693_led_device, ptr %call.i, i32 0, i32 10
  %167 = ptrtoint ptr %fled_mask.i123.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %fled_mask.i123.i, align 4
  %169 = and i8 %168, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %169)
  %tobool.i126.not.i = icmp eq i8 %169, 0
  %and.i129.i = shl i8 %168, 6
  %170 = and i8 %and.i129.i, -128
  %171 = select i1 %tobool.i126.not.i, i8 0, i8 %170
  %v.2.i = or i8 %v.1.i, %171
  %conv60.i = zext i8 %v.2.i to i32
  %call61.i = call i32 @regmap_write(ptr noundef %141, i32 noundef 10, i32 noundef %conv60.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61.i)
  %cmp62.i = icmp slt i32 %call61.i, 0
  br i1 %cmp62.i, label %if.end41.i.max77693_setup.exit.thread_crit_edge, label %if.end65.i

if.end41.i.max77693_setup.exit.thread_crit_edge:  ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max77693_setup.exit.thread

if.end65.i:                                       ; preds = %if.end41.i
  %172 = ptrtoint ptr %boost_vout.i.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %boost_vout.i.i, align 4
  %sub.i131.i = add i32 %173, -3300
  %div.i132.i = udiv i32 %sub.i131.i, 25
  %conv.i133.i = add nuw nsw i32 %div.i132.i, 12
  %conv67.i = and i32 %conv.i133.i, 255
  %call68.i = call i32 @regmap_write(ptr noundef %141, i32 noundef 11, i32 noundef %conv67.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68.i)
  %cmp69.i = icmp slt i32 %call68.i, 0
  br i1 %cmp69.i, label %if.end65.i.max77693_setup.exit.thread_crit_edge, label %max77693_setup.exit

if.end65.i.max77693_setup.exit.thread_crit_edge:  ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max77693_setup.exit.thread

max77693_setup.exit.thread:                       ; preds = %if.end65.i.max77693_setup.exit.thread_crit_edge, %if.end41.i.max77693_setup.exit.thread_crit_edge, %if.end36.i.max77693_setup.exit.thread_crit_edge, %if.end21.i.max77693_setup.exit.thread_crit_edge, %for.end.i.max77693_setup.exit.thread_crit_edge, %for.body.i.max77693_setup.exit.thread_crit_edge
  %retval.0.i83.ph = phi i32 [ %call68.i, %if.end65.i.max77693_setup.exit.thread_crit_edge ], [ %call61.i, %if.end41.i.max77693_setup.exit.thread_crit_edge ], [ %call37.i, %if.end36.i.max77693_setup.exit.thread_crit_edge ], [ %call32.i, %if.end21.i.max77693_setup.exit.thread_crit_edge ], [ %call17.i, %for.end.i.max77693_setup.exit.thread_crit_edge ], [ %call13.i, %for.body.i.max77693_setup.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %max_flash_curr.i) #8
  br label %cleanup

max77693_setup.exit:                              ; preds = %if.end65.i
  %174 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %call.i, align 4
  %call36.i.i = call i32 @regmap_write(ptr noundef %175, i32 noundef 5, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %max_flash_curr.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i.i)
  %cmp11 = icmp slt i32 %call36.i.i, 0
  br i1 %cmp11, label %max77693_setup.exit.cleanup_crit_edge, label %do.body

max77693_setup.exit.cleanup_crit_edge:            ; preds = %max77693_setup.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %max77693_setup.exit
  %lock = getelementptr inbounds %struct.max77693_led_device, ptr %call.i, i32 0, i32 2
  call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @max77693_led_probe.__key) #8
  %176 = ptrtoint ptr %iout_joint.i.i.i to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %iout_joint.i.i.i, align 2, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %177)
  %tobool14.not = icmp eq i8 %177, 0
  br i1 %tobool14.not, label %land.rhs, label %lor.end

lor.end:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %178 = ptrtoint ptr %init_fled_cdev to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 1, ptr %init_fled_cdev, align 4
  br label %land.end

land.rhs:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %179 = ptrtoint ptr %fled_mask.i123.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %fled_mask.i123.i, align 4
  %181 = and i8 %180, 1
  %182 = zext i8 %181 to i32
  %183 = ptrtoint ptr %init_fled_cdev to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %182, ptr %init_fled_cdev, align 4
  %184 = lshr i8 %180, 1
  %.lobit = and i8 %184, 1
  %185 = zext i8 %.lobit to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %lor.end
  %186 = phi i32 [ 1, %lor.end ], [ %182, %land.rhs ]
  %187 = phi i32 [ 0, %lor.end ], [ %185, %land.rhs ]
  %188 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %187, ptr %7, align 4
  %arrayidx6.i = getelementptr inbounds %struct.max77693_led_config_data, ptr %led_cfg, i32 0, i32 1, i32 1
  %iout_flash_max.i.i94 = getelementptr inbounds %struct.max77693_led_config_data, ptr %led_cfg, i32 0, i32 2
  %arrayidx4.i.i = getelementptr inbounds %struct.max77693_led_config_data, ptr %led_cfg, i32 0, i32 2, i32 1
  %intensity.i.i = getelementptr inbounds %struct.v4l2_flash_config, ptr %v4l2_sd_cfg.i, i32 0, i32 1
  %max.i.i102 = getelementptr inbounds %struct.v4l2_flash_config, ptr %v4l2_sd_cfg.i, i32 0, i32 1, i32 1
  %step.i.i103 = getelementptr inbounds %struct.v4l2_flash_config, ptr %v4l2_sd_cfg.i, i32 0, i32 1, i32 2
  %val.i.i104 = getelementptr inbounds %struct.v4l2_flash_config, ptr %v4l2_sd_cfg.i, i32 0, i32 1, i32 3
  %flash_faults.i.i = getelementptr inbounds %struct.v4l2_flash_config, ptr %v4l2_sd_cfg.i, i32 0, i32 2
  %has_external_strobe.i.i = getelementptr inbounds %struct.v4l2_flash_config, ptr %v4l2_sd_cfg.i, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %land.end
  %cmp20 = phi i1 [ true, %land.end ], [ false, %for.inc.for.body_crit_edge ]
  %i.0132 = phi i32 [ 0, %land.end ], [ 1, %for.inc.for.body_crit_edge ]
  %arrayidx21 = getelementptr [2 x i32], ptr %init_fled_cdev, i32 0, i32 %i.0132
  %189 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %arrayidx21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %190)
  %tobool22.not = icmp eq i32 %190, 0
  br i1 %tobool22.not, label %for.body.for.inc_crit_edge, label %if.end24

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end24:                                         ; preds = %for.body
  %arrayidx25 = getelementptr %struct.max77693_sub_led, ptr %sub_leds5, i32 %i.0132
  %191 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %arrayidx25, align 4
  %.neg.i.i = mul i32 %192, -476
  %idx.neg.i.i = add i32 %.neg.i.i, -100
  %add.ptr.i.i = getelementptr i8, ptr %arrayidx25, i32 %idx.neg.i.i
  %fled_cdev2.i = getelementptr %struct.max77693_sub_led, ptr %sub_leds5, i32 %i.0132, i32 1
  %ops.i = getelementptr %struct.max77693_sub_led, ptr %sub_leds5, i32 %i.0132, i32 1, i32 1
  %193 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %193)
  store ptr @flash_ops, ptr %ops.i, align 4
  %arrayidx.i = getelementptr [2 x ptr], ptr %led_cfg, i32 0, i32 %192
  %194 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %arrayidx.i, align 4
  %196 = ptrtoint ptr %fled_cdev2.i to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr %195, ptr %fled_cdev2.i, align 4
  %brightness_set_blocking.i = getelementptr %struct.max77693_sub_led, ptr %sub_leds5, i32 %i.0132, i32 1, i32 0, i32 6
  %197 = ptrtoint ptr %brightness_set_blocking.i to i32
  call void @__asan_store4_noabort(i32 %197)
  store ptr @max77693_led_brightness_set, ptr %brightness_set_blocking.i, align 4
  %iout_joint.i88 = getelementptr inbounds %struct.max77693_led_device, ptr %add.ptr.i.i, i32 0, i32 12
  %198 = ptrtoint ptr %iout_joint.i88 to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %iout_joint.i88, align 2, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %199)
  %tobool.not.i89 = icmp eq i8 %199, 0
  br i1 %tobool.not.i89, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %200 = ptrtoint ptr %iout_torch_max.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %iout_torch_max.i.i, align 4
  %202 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %arrayidx6.i, align 4
  %add.i91 = add i32 %203, %201
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx8.i = getelementptr %struct.max77693_led_config_data, ptr %led_cfg, i32 0, i32 1, i32 %192
  %204 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %arrayidx8.i, align 4
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %add.i91, %cond.true.i ], [ %205, %cond.false.i ]
  %div.i = udiv i32 %cond.i, 15625
  %max_brightness.i = getelementptr %struct.max77693_sub_led, ptr %sub_leds5, i32 %i.0132, i32 1, i32 0, i32 2
  %206 = ptrtoint ptr %max_brightness.i to i32
  call void @__asan_store4_noabort(i32 %206)
  store i32 %div.i, ptr %max_brightness.i, align 4
  %flags.i = getelementptr %struct.max77693_sub_led, ptr %sub_leds5, i32 %i.0132, i32 1, i32 0, i32 3
  %207 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %flags.i, align 4
  %or.i92 = or i32 %208, 262144
  store i32 %or.i92, ptr %flags.i, align 4
  %brightness.i.i = getelementptr %struct.max77693_sub_led, ptr %sub_leds5, i32 %i.0132, i32 1, i32 2
  %209 = ptrtoint ptr %brightness.i.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 15625, ptr %brightness.i.i, align 4
  %210 = ptrtoint ptr %iout_joint.i88 to i32
  call void @__asan_load1_noabort(i32 %210)
  %211 = load i8, ptr %iout_joint.i88, align 2, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %211)
  %tobool.not.i.i93 = icmp eq i8 %211, 0
  br i1 %tobool.not.i.i93, label %cond.false.i.i95, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %212 = ptrtoint ptr %iout_flash_max.i.i94 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %iout_flash_max.i.i94, align 4
  %214 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %arrayidx4.i.i, align 4
  %add.i.i = add i32 %215, %213
  br label %max77693_init_fled_cdev.exit

cond.false.i.i95:                                 ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx6.i.i = getelementptr %struct.max77693_led_config_data, ptr %led_cfg, i32 0, i32 2, i32 %192
  %216 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %arrayidx6.i.i, align 4
  br label %max77693_init_fled_cdev.exit

max77693_init_fled_cdev.exit:                     ; preds = %cond.false.i.i95, %cond.true.i.i
  %cond.i.i96 = phi i32 [ %add.i.i, %cond.true.i.i ], [ %217, %cond.false.i.i95 ]
  %max.i.i = getelementptr %struct.max77693_sub_led, ptr %sub_leds5, i32 %i.0132, i32 1, i32 2, i32 1
  %218 = ptrtoint ptr %max.i.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 %cond.i.i96, ptr %max.i.i, align 4
  %step.i.i = getelementptr %struct.max77693_sub_led, ptr %sub_leds5, i32 %i.0132, i32 1, i32 2, i32 2
  %219 = ptrtoint ptr %step.i.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 15625, ptr %step.i.i, align 4
  %val.i.i = getelementptr %struct.max77693_sub_led, ptr %sub_leds5, i32 %i.0132, i32 1, i32 2, i32 3
  %220 = ptrtoint ptr %val.i.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 %cond.i.i96, ptr %val.i.i, align 4
  %timeout.i.i = getelementptr %struct.max77693_sub_led, ptr %sub_leds5, i32 %i.0132, i32 1, i32 3
  %221 = ptrtoint ptr %timeout.i.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 62500, ptr %timeout.i.i, align 4
  %arrayidx9.i.i = getelementptr %struct.max77693_led_config_data, ptr %led_cfg, i32 0, i32 3, i32 %192
  %222 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %arrayidx9.i.i, align 4
  %max10.i.i = getelementptr %struct.max77693_sub_led, ptr %sub_leds5, i32 %i.0132, i32 1, i32 3, i32 1
  %224 = ptrtoint ptr %max10.i.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 %223, ptr %max10.i.i, align 4
  %step11.i.i = getelementptr %struct.max77693_sub_led, ptr %sub_leds5, i32 %i.0132, i32 1, i32 3, i32 2
  %225 = ptrtoint ptr %step11.i.i to i32
  call void @__asan_store4_noabort(i32 %225)
  store i32 62500, ptr %step11.i.i, align 4
  %val13.i.i = getelementptr %struct.max77693_sub_led, ptr %sub_leds5, i32 %i.0132, i32 1, i32 3, i32 3
  %226 = ptrtoint ptr %val13.i.i to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 %223, ptr %val13.i.i, align 4
  %flash_timeout.i = getelementptr %struct.max77693_sub_led, ptr %sub_leds5, i32 %i.0132, i32 4
  %227 = ptrtoint ptr %flash_timeout.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 %223, ptr %flash_timeout.i, align 4
  %arrayidx27 = getelementptr [2 x ptr], ptr %sub_nodes, i32 0, i32 %i.0132
  %228 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %arrayidx27, align 4
  %pdev.i = getelementptr inbounds %struct.max77693_led_device, ptr %add.ptr.i.i, i32 0, i32 1
  %230 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %pdev.i, align 4
  %dev2.i = getelementptr inbounds %struct.platform_device, ptr %231, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %v4l2_sd_cfg.i) #8
  %232 = call ptr @memset(ptr %v4l2_sd_cfg.i, i32 0, i32 56)
  %call.i.i = call i32 @led_classdev_flash_register_ext(ptr noundef %dev2.i, ptr noundef %fled_cdev2.i, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.i, label %max77693_register_led.exit.thread, label %if.end.i107

max77693_register_led.exit.thread:                ; preds = %max77693_init_fled_cdev.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %v4l2_sd_cfg.i) #8
  br label %if.then30

if.end.i107:                                      ; preds = %max77693_init_fled_cdev.exit
  %233 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %arrayidx25, align 4
  %.neg.i.i.i = mul i32 %234, -476
  %idx.neg.i.i.i = add i32 %.neg.i.i.i, -100
  %add.ptr.i.i.i = getelementptr i8, ptr %arrayidx25, i32 %idx.neg.i.i.i
  %pdev.i.i100 = getelementptr inbounds %struct.max77693_led_device, ptr %add.ptr.i.i.i, i32 0, i32 1
  %235 = ptrtoint ptr %pdev.i.i100 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %pdev.i.i100, align 4
  %parent.i.i = getelementptr inbounds %struct.platform_device, ptr %236, i32 0, i32 3, i32 1
  %237 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %parent.i.i, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.device, ptr %238, i32 0, i32 8
  %239 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %driver_data.i.i.i, align 4
  %i2c3.i.i = getelementptr inbounds %struct.max77693_dev, ptr %240, i32 0, i32 1
  %241 = ptrtoint ptr %i2c3.i.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %i2c3.i.i, align 4
  %243 = ptrtoint ptr %fled_cdev2.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %fled_cdev2.i, align 4
  %adapter.i.i = getelementptr inbounds %struct.i2c_client, ptr %242, i32 0, i32 3
  %245 = ptrtoint ptr %adapter.i.i to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %adapter.i.i, align 8
  %nr.i.i.i = getelementptr inbounds %struct.i2c_adapter, ptr %246, i32 0, i32 11
  %247 = ptrtoint ptr %nr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %nr.i.i.i, align 4
  %addr.i.i = getelementptr inbounds %struct.i2c_client, ptr %242, i32 0, i32 1
  %249 = ptrtoint ptr %addr.i.i to i32
  call void @__asan_load2_noabort(i32 %249)
  %250 = load i16, ptr %addr.i.i, align 2
  %conv.i.i101 = zext i16 %250 to i32
  %call5.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %v4l2_sd_cfg.i, i32 noundef 32, ptr noundef nonnull @.str.39, ptr noundef %244, i32 noundef %248, i32 noundef %conv.i.i101) #8
  %251 = ptrtoint ptr %intensity.i.i to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 15625, ptr %intensity.i.i, align 4
  %252 = ptrtoint ptr %max_brightness.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load i32, ptr %max_brightness.i, align 4
  %mul.i.i = mul i32 %253, 15625
  %254 = ptrtoint ptr %max.i.i102 to i32
  call void @__asan_store4_noabort(i32 %254)
  store i32 %mul.i.i, ptr %max.i.i102, align 4
  %255 = ptrtoint ptr %step.i.i103 to i32
  call void @__asan_store4_noabort(i32 %255)
  store i32 15625, ptr %step.i.i103, align 4
  %256 = ptrtoint ptr %val.i.i104 to i32
  call void @__asan_store4_noabort(i32 %256)
  store i32 %mul.i.i, ptr %val.i.i104, align 4
  %257 = ptrtoint ptr %flash_faults.i.i to i32
  call void @__asan_store4_noabort(i32 %257)
  store i32 25, ptr %flash_faults.i.i, align 4
  %258 = ptrtoint ptr %has_external_strobe.i.i to i32
  call void @__asan_load1_noabort(i32 %258)
  %bf.load.i.i = load i8, ptr %has_external_strobe.i.i, align 4
  %bf.set.i.i = or i8 %bf.load.i.i, -128
  store i8 %bf.set.i.i, ptr %has_external_strobe.i.i, align 4
  %tobool.not.i105 = icmp eq ptr %229, null
  %fwnode.i = getelementptr inbounds %struct.device_node, ptr %229, i32 0, i32 3
  %spec.select.i = select i1 %tobool.not.i105, ptr null, ptr %fwnode.i
  %call4.i = call ptr @v4l2_flash_init(ptr noundef %dev2.i, ptr noundef %spec.select.i, ptr noundef %fled_cdev2.i, ptr noundef nonnull @v4l2_flash_ops, ptr noundef nonnull %v4l2_sd_cfg.i) #8
  %v4l2_flash.i = getelementptr %struct.max77693_sub_led, ptr %sub_leds5, i32 %i.0132, i32 2
  %259 = ptrtoint ptr %v4l2_flash.i to i32
  call void @__asan_store4_noabort(i32 %259)
  store ptr %call4.i, ptr %v4l2_flash.i, align 4
  %cmp.i.i106 = icmp ugt ptr %call4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i106, label %max77693_register_led.exit, label %max77693_register_led.exit.thread120

max77693_register_led.exit.thread120:             ; preds = %if.end.i107
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %v4l2_sd_cfg.i) #8
  br label %for.inc

max77693_register_led.exit:                       ; preds = %if.end.i107
  call void @led_classdev_flash_unregister(ptr noundef %fled_cdev2.i) #8
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %v4l2_sd_cfg.i) #8
  %cmp29 = icmp slt ptr %call4.i, null
  br i1 %cmp29, label %if.then30.loopexit, label %max77693_register_led.exit.for.inc_crit_edge

max77693_register_led.exit.for.inc_crit_edge:     ; preds = %max77693_register_led.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then30.loopexit:                               ; preds = %max77693_register_led.exit
  call void @__sanitizer_cov_trace_pc() #10
  %260 = ptrtoint ptr %call4.i to i32
  br label %if.then30

if.then30:                                        ; preds = %if.then30.loopexit, %max77693_register_led.exit.thread
  %retval.0.i108119 = phi i32 [ %call.i.i, %max77693_register_led.exit.thread ], [ %260, %if.then30.loopexit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %186)
  %tobool35.not = icmp eq i32 %186, 0
  %or.cond = select i1 %cmp20, i1 true, i1 %tobool35.not
  br i1 %or.cond, label %if.then30.err_register_led1_crit_edge, label %if.end37

if.then30.err_register_led1_crit_edge:            ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_register_led1

for.inc:                                          ; preds = %max77693_register_led.exit.for.inc_crit_edge, %max77693_register_led.exit.thread120, %for.body.for.inc_crit_edge
  br i1 %cmp20, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

if.end37:                                         ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  %v4l2_flash = getelementptr inbounds %struct.max77693_led_device, ptr %call.i, i32 0, i32 3, i32 0, i32 2
  %261 = ptrtoint ptr %v4l2_flash to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %v4l2_flash, align 4
  call void @v4l2_flash_release(ptr noundef %262) #8
  %fled_cdev = getelementptr inbounds %struct.max77693_led_device, ptr %call.i, i32 0, i32 3, i32 0, i32 1
  call void @led_classdev_flash_unregister(ptr noundef %fled_cdev) #8
  br label %err_register_led1

err_register_led1:                                ; preds = %if.end37, %if.then30.err_register_led1_crit_edge
  call void @mutex_destroy(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %err_register_led1, %for.inc.cleanup_crit_edge, %max77693_setup.exit.cleanup_crit_edge, %max77693_setup.exit.thread, %max77693_led_get_configuration.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i108119, %err_register_led1 ], [ -12, %entry.cleanup_crit_edge ], [ %call36.i.i, %max77693_setup.exit.cleanup_crit_edge ], [ -22, %max77693_led_get_configuration.exit.thread ], [ %retval.0.i83.ph, %max77693_setup.exit.thread ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %init_fled_cdev) #8
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %led_cfg) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sub_nodes) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77693_led_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %iout_joint = getelementptr inbounds %struct.max77693_led_device, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %iout_joint to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %iout_joint, align 2, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %fled_mask.i = getelementptr inbounds %struct.max77693_led_device, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %fled_mask.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %fled_mask.i, align 4
  %6 = and i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.i.not = icmp eq i8 %6, 0
  br i1 %tobool.i.not, label %lor.lhs.false.if.end_crit_edge, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %v4l2_flash = getelementptr inbounds %struct.max77693_led_device, ptr %1, i32 0, i32 3, i32 0, i32 2
  %7 = ptrtoint ptr %v4l2_flash to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %v4l2_flash, align 4
  tail call void @v4l2_flash_release(ptr noundef %8) #8
  %fled_cdev = getelementptr inbounds %struct.max77693_led_device, ptr %1, i32 0, i32 3, i32 0, i32 1
  tail call void @led_classdev_flash_unregister(ptr noundef %fled_cdev) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %lor.lhs.false.if.end_crit_edge
  %9 = ptrtoint ptr %iout_joint to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %iout_joint, align 2, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool5.not = icmp eq i8 %10, 0
  br i1 %tobool5.not, label %land.lhs.true, label %if.end.if.end12_crit_edge

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end
  %fled_mask.i21 = getelementptr inbounds %struct.max77693_led_device, ptr %1, i32 0, i32 10
  %11 = ptrtoint ptr %fled_mask.i21 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %fled_mask.i21, align 4
  %13 = and i8 %12, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.i24.not = icmp eq i8 %13, 0
  br i1 %tobool.i24.not, label %land.lhs.true.if.end12_crit_edge, label %if.then7

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %v4l2_flash9 = getelementptr %struct.max77693_led_device, ptr %1, i32 0, i32 3, i32 1, i32 2
  %14 = ptrtoint ptr %v4l2_flash9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %v4l2_flash9, align 4
  tail call void @v4l2_flash_release(ptr noundef %15) #8
  %fled_cdev11 = getelementptr %struct.max77693_led_device, ptr %1, i32 0, i32 3, i32 1, i32 1
  tail call void @led_classdev_flash_unregister(ptr noundef %fled_cdev11) #8
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %land.lhs.true.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %lock = getelementptr inbounds %struct.max77693_led_device, ptr %1, i32 0, i32 2
  tail call void @mutex_destroy(ptr noundef %lock) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_flash_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @led_classdev_flash_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_prop_next_u32(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @max77693_set_flash_current(ptr nocapture noundef %led, i32 noundef %fled_id, i32 noundef %micro_amp) unnamed_addr #2 align 64 {
entry:
  %iout = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %led to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %led, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iout) #8
  %2 = ptrtoint ptr %iout to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %iout, align 4, !annotation !96
  %3 = getelementptr inbounds [2 x i32], ptr %iout, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !96
  %iout_joint.i = getelementptr inbounds %struct.max77693_led_device, ptr %led, i32 0, i32 12
  %5 = ptrtoint ptr %iout_joint.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %iout_joint.i, align 2, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %max77693_distribute_currents.exit.thread, label %if.end.i

if.end.i:                                         ; preds = %entry
  %iout_flash_max = getelementptr inbounds %struct.max77693_led_device, ptr %led, i32 0, i32 5
  %7 = ptrtoint ptr %iout_flash_max to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %iout_flash_max, align 4
  %9 = tail call i32 @llvm.umin.i32(i32 %8, i32 %micro_amp) #8
  %10 = ptrtoint ptr %iout to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %iout, align 4
  %sub.i = sub i32 %micro_amp, %9
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %sub.i, ptr %3, align 4
  %allowed_modes.i = getelementptr inbounds %struct.max77693_led_device, ptr %led, i32 0, i32 11
  %12 = ptrtoint ptr %allowed_modes.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %allowed_modes.i, align 1
  %14 = and i8 %13, -52
  %conv9.i39.i = or i8 %14, 17
  store i8 %conv9.i39.i, ptr %allowed_modes.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %micro_amp)
  %tobool14.not.i.not = icmp ult i32 %8, %micro_amp
  br i1 %tobool14.not.i.not, label %max77693_add_allowed_modes.exit47.i, label %if.end.i.if.then_crit_edge

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

max77693_add_allowed_modes.exit47.i:              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv9.i46.i = or i8 %13, 51
  %15 = ptrtoint ptr %allowed_modes.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv9.i46.i, ptr %allowed_modes.i, align 1
  br label %if.then

max77693_distribute_currents.exit.thread:         ; preds = %entry
  %arrayidx.i = getelementptr i32, ptr %iout, i32 %fled_id
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %micro_amp, ptr %arrayidx.i, align 4
  %shl.i.i = shl nuw i32 1, %fled_id
  %add.i.i = add i32 %fled_id, 4
  %shl1.i.i = shl nuw i32 1, %add.i.i
  %or.i.i = or i32 %shl1.i.i, %shl.i.i
  %allowed_modes6.i.i = getelementptr inbounds %struct.max77693_led_device, ptr %led, i32 0, i32 11
  %17 = ptrtoint ptr %allowed_modes6.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %allowed_modes6.i.i, align 1
  %19 = trunc i32 %or.i.i to i8
  %conv9.i.i = or i8 %18, %19
  store i8 %conv9.i.i, ptr %allowed_modes6.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %fled_id)
  %cmp36 = icmp eq i32 %fled_id, 0
  br i1 %cmp36, label %max77693_distribute_currents.exit.thread.if.then_crit_edge, label %max77693_distribute_currents.exit.thread.if.end6_crit_edge

max77693_distribute_currents.exit.thread.if.end6_crit_edge: ; preds = %max77693_distribute_currents.exit.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

max77693_distribute_currents.exit.thread.if.then_crit_edge: ; preds = %max77693_distribute_currents.exit.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then

if.then:                                          ; preds = %max77693_distribute_currents.exit.thread.if.then_crit_edge, %max77693_add_allowed_modes.exit47.i, %if.end.i.if.then_crit_edge
  %20 = ptrtoint ptr %iout to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %iout, align 4
  %22 = tail call i32 @llvm.umax.i32(i32 %21, i32 15625) #8
  %sub.i32 = add i32 %22, -15625
  %div.i = udiv i32 %sub.i32, 15625
  %conv = and i32 %div.i, 255
  %call2 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 0, i32 noundef %conv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then.cleanup_crit_edge, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end6

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %max77693_distribute_currents.exit.thread.if.end6_crit_edge
  %ret.0 = phi i32 [ %call2, %if.then.if.end6_crit_edge ], [ -22, %max77693_distribute_currents.exit.thread.if.end6_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %fled_id)
  %cmp7 = icmp eq i32 %fled_id, 1
  br i1 %cmp7, label %if.end6.if.then13_crit_edge, label %lor.lhs.false9

if.end6.if.then13_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

lor.lhs.false9:                                   ; preds = %if.end6
  %23 = ptrtoint ptr %iout_joint.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %iout_joint.i, align 2, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool11.not = icmp eq i8 %24, 0
  br i1 %tobool11.not, label %lor.lhs.false9.cleanup_crit_edge, label %lor.lhs.false9.if.then13_crit_edge

lor.lhs.false9.if.then13_crit_edge:               ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

lor.lhs.false9.cleanup_crit_edge:                 ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then13:                                        ; preds = %lor.lhs.false9.if.then13_crit_edge, %if.end6.if.then13_crit_edge
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %3, align 4
  %27 = tail call i32 @llvm.umax.i32(i32 %26, i32 15625) #8
  %sub.i33 = add i32 %27, -15625
  %div.i34 = udiv i32 %sub.i33, 15625
  %conv16 = and i32 %div.i34, 255
  %call17 = tail call i32 @regmap_write(ptr noundef %1, i32 noundef 1, i32 noundef %conv16) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %lor.lhs.false9.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.then.cleanup_crit_edge ], [ %call17, %if.then13 ], [ %ret.0, %lor.lhs.false9.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iout) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77693_led_brightness_set(ptr noundef %led_cdev, i32 noundef %value) #2 align 64 {
entry:
  %iout.i = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %led_cdev, i32 -4
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i, align 4
  %.neg.i = mul i32 %1, -476
  %idx.neg.i = add i32 %.neg.i, -100
  %add.ptr.i87 = getelementptr i8, ptr %add.ptr.i, i32 %idx.neg.i
  %lock = getelementptr inbounds %struct.max77693_led_device, ptr %add.ptr.i87, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %cmp = icmp eq i32 %value, 0
  br i1 %cmp, label %if.then, label %if.end13

if.then:                                          ; preds = %entry
  %add = add i32 %1, 2
  %shl = shl nuw i32 1, %add
  %conv = trunc i32 %shl to i8
  %call4 = tail call fastcc i32 @max77693_clear_mode(ptr noundef %add.ptr.i87, i8 noundef zeroext %conv)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %do.body, label %if.then.unlock_crit_edge

if.then.unlock_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max77693_led_brightness_set.__UNIQUE_ID_ddebug294, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max77693_led_brightness_set, %if.then11)) #8
          to label %unlock [label %if.then11], !srcloc !98

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %pdev = getelementptr inbounds %struct.max77693_led_device, ptr %add.ptr.i87, i32 0, i32 1
  %2 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max77693_led_brightness_set.__UNIQUE_ID_ddebug294, ptr noundef %dev, ptr noundef nonnull @.str.36, i32 noundef %call4) #8
  br label %unlock

if.end13:                                         ; preds = %entry
  %mul = mul i32 %value, 15625
  %4 = ptrtoint ptr %add.ptr.i87 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr.i87, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %iout.i) #8
  %6 = ptrtoint ptr %iout.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %iout.i, align 4, !annotation !96
  %7 = getelementptr inbounds [2 x i32], ptr %iout.i, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4, !annotation !96
  %iout_joint.i.i = getelementptr inbounds %struct.max77693_led_device, ptr %add.ptr.i87, i32 0, i32 12
  %9 = ptrtoint ptr %iout_joint.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %iout_joint.i.i, align 2, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i.i, label %max77693_distribute_currents.exit.thread.i, label %if.end.i.i

if.end.i.i:                                       ; preds = %if.end13
  %iout_torch_max.i = getelementptr inbounds %struct.max77693_led_device, ptr %add.ptr.i87, i32 0, i32 4
  %11 = ptrtoint ptr %iout_torch_max.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %iout_torch_max.i, align 4
  %13 = tail call i32 @llvm.umin.i32(i32 %12, i32 %mul) #8
  %14 = ptrtoint ptr %iout.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %iout.i, align 4
  %sub.i.i = sub i32 %mul, %13
  %15 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub.i.i, ptr %7, align 4
  %allowed_modes.i.i = getelementptr inbounds %struct.max77693_led_device, ptr %add.ptr.i87, i32 0, i32 11
  %16 = ptrtoint ptr %allowed_modes.i.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %allowed_modes.i.i, align 1
  %18 = and i8 %17, -13
  %conv9.i3950.i.i = or i8 %18, 4
  store i8 %conv9.i3950.i.i, ptr %allowed_modes.i.i, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %mul)
  %tobool14.not51.i.not.i = icmp ult i32 %12, %mul
  br i1 %tobool14.not51.i.not.i, label %max77693_add_allowed_modes.exit47.i.i, label %if.end.i.i.if.then.i_crit_edge

if.end.i.i.if.then.i_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

max77693_add_allowed_modes.exit47.i.i:            ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %conv9.i46.i.i = or i8 %17, 12
  %19 = ptrtoint ptr %allowed_modes.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv9.i46.i.i, ptr %allowed_modes.i.i, align 1
  br label %if.then.i

max77693_distribute_currents.exit.thread.i:       ; preds = %if.end13
  %arrayidx.i.i = getelementptr i32, ptr %iout.i, i32 %1
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %mul, ptr %arrayidx.i.i, align 4
  %add4.i.i.i = add i32 %1, 2
  %shl5.i.i.i = shl nuw i32 1, %add4.i.i.i
  %allowed_modes6.i.i.i = getelementptr inbounds %struct.max77693_led_device, ptr %add.ptr.i87, i32 0, i32 11
  %21 = ptrtoint ptr %allowed_modes6.i.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %allowed_modes6.i.i.i, align 1
  %23 = trunc i32 %shl5.i.i.i to i8
  %conv9.i.i.i = or i8 %22, %23
  store i8 %conv9.i.i.i, ptr %allowed_modes6.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp42.i = icmp eq i32 %1, 0
  br i1 %cmp42.i, label %max77693_distribute_currents.exit.thread.i.if.then.i_crit_edge, label %max77693_distribute_currents.exit.thread.i.if.end.i_crit_edge

max77693_distribute_currents.exit.thread.i.if.end.i_crit_edge: ; preds = %max77693_distribute_currents.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

max77693_distribute_currents.exit.thread.i.if.then.i_crit_edge: ; preds = %max77693_distribute_currents.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %max77693_distribute_currents.exit.thread.i.if.then.i_crit_edge, %max77693_add_allowed_modes.exit47.i.i, %if.end.i.i.if.then.i_crit_edge
  %24 = ptrtoint ptr %iout.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %iout.i, align 4
  %26 = tail call i32 @llvm.umax.i32(i32 %25, i32 15625) #8
  %sub.i38.i = add i32 %26, -15625
  %div.i.i = udiv i32 %sub.i38.i, 15625
  %conv.i.i = trunc i32 %div.i.i to i8
  %torch_iout_reg.i = getelementptr inbounds %struct.max77693_led_device, ptr %add.ptr.i87, i32 0, i32 7
  %27 = ptrtoint ptr %torch_iout_reg.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %torch_iout_reg.i, align 4
  %29 = and i8 %28, -16
  store i8 %29, ptr %torch_iout_reg.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %max77693_distribute_currents.exit.thread.i.if.end.i_crit_edge
  %iout1_reg.0.i = phi i8 [ %conv.i.i, %if.then.i ], [ 0, %max77693_distribute_currents.exit.thread.i.if.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp3.i = icmp eq i32 %1, 1
  %tobool.not.i.not.i = xor i1 %tobool.not.i.i, true
  %brmerge.i = select i1 %cmp3.i, i1 true, i1 %tobool.not.i.not.i
  br i1 %brmerge.i, label %if.then9.i, label %if.end.i.max77693_set_torch_current.exit_crit_edge

if.end.i.max77693_set_torch_current.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max77693_set_torch_current.exit

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %7, align 4
  %32 = tail call i32 @llvm.umax.i32(i32 %31, i32 15625) #8
  %sub.i39.i = add i32 %32, -15625
  %div.i40.i = udiv i32 %sub.i39.i, 15625
  %conv.i41.i = trunc i32 %div.i40.i to i8
  %torch_iout_reg12.i = getelementptr inbounds %struct.max77693_led_device, ptr %add.ptr.i87, i32 0, i32 7
  %33 = ptrtoint ptr %torch_iout_reg12.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %torch_iout_reg12.i, align 4
  %35 = and i8 %34, 15
  store i8 %35, ptr %torch_iout_reg12.i, align 4
  %phi.bo.i = shl i8 %conv.i41.i, 4
  br label %max77693_set_torch_current.exit

max77693_set_torch_current.exit:                  ; preds = %if.then9.i, %if.end.i.max77693_set_torch_current.exit_crit_edge
  %iout2_reg.0.i = phi i8 [ %phi.bo.i, %if.then9.i ], [ 0, %if.end.i.max77693_set_torch_current.exit_crit_edge ]
  %or.i = or i8 %iout2_reg.0.i, %iout1_reg.0.i
  %torch_iout_reg20.i = getelementptr inbounds %struct.max77693_led_device, ptr %add.ptr.i87, i32 0, i32 7
  %36 = ptrtoint ptr %torch_iout_reg20.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %torch_iout_reg20.i, align 4
  %or22.i = or i8 %or.i, %37
  store i8 %or22.i, ptr %torch_iout_reg20.i, align 4
  %conv25.i = zext i8 %or22.i to i32
  %call26.i = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 2, i32 noundef %conv25.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %iout.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i)
  %cmp15 = icmp slt i32 %call26.i, 0
  br i1 %cmp15, label %do.body18, label %if.end36

do.body18:                                        ; preds = %max77693_set_torch_current.exit
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max77693_led_brightness_set.__UNIQUE_ID_ddebug295, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max77693_led_brightness_set, %if.then30)) #8
          to label %unlock [label %if.then30], !srcloc !98

if.then30:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #10
  %pdev31 = getelementptr inbounds %struct.max77693_led_device, ptr %add.ptr.i87, i32 0, i32 1
  %38 = ptrtoint ptr %pdev31 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pdev31, align 4
  %dev32 = getelementptr inbounds %struct.platform_device, ptr %39, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max77693_led_brightness_set.__UNIQUE_ID_ddebug295, ptr noundef %dev32, ptr noundef nonnull @.str.37, i32 noundef %call26.i) #8
  br label %unlock

if.end36:                                         ; preds = %max77693_set_torch_current.exit
  %add37 = add i32 %1, 2
  %shl38 = shl nuw i32 1, %add37
  %conv39 = trunc i32 %shl38 to i8
  %call40 = tail call fastcc i32 @max77693_add_mode(ptr noundef %add.ptr.i87, i8 noundef zeroext %conv39)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %do.body44, label %if.end36.unlock_crit_edge

if.end36.unlock_crit_edge:                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

do.body44:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @max77693_led_brightness_set.__UNIQUE_ID_ddebug296, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@max77693_led_brightness_set, %if.then56)) #8
          to label %unlock [label %if.then56], !srcloc !98

if.then56:                                        ; preds = %do.body44
  call void @__sanitizer_cov_trace_pc() #10
  %pdev57 = getelementptr inbounds %struct.max77693_led_device, ptr %add.ptr.i87, i32 0, i32 1
  %40 = ptrtoint ptr %pdev57 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pdev57, align 4
  %dev58 = getelementptr inbounds %struct.platform_device, ptr %41, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @max77693_led_brightness_set.__UNIQUE_ID_ddebug296, ptr noundef %dev58, ptr noundef nonnull @.str.38, i32 noundef %call40) #8
  br label %unlock

unlock:                                           ; preds = %if.then56, %do.body44, %if.end36.unlock_crit_edge, %if.then30, %do.body18, %if.then11, %do.body, %if.then.unlock_crit_edge
  %ret.0 = phi i32 [ %call4, %if.then11 ], [ %call4, %if.then.unlock_crit_edge ], [ %call26.i, %if.then30 ], [ %call40, %if.then56 ], [ %call40, %if.end36.unlock_crit_edge ], [ %call4, %do.body ], [ %call26.i, %do.body18 ], [ %call40, %do.body44 ]
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77693_led_flash_brightness_set(ptr noundef %fled_cdev, i32 noundef %brightness) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %fled_cdev, i32 -4
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i, align 4
  %.neg.i = mul i32 %1, -476
  %idx.neg.i = add i32 %.neg.i, -100
  %add.ptr.i7 = getelementptr i8, ptr %add.ptr.i, i32 %idx.neg.i
  %lock = getelementptr inbounds %struct.max77693_led_device, ptr %add.ptr.i7, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i, align 4
  %call2 = tail call fastcc i32 @max77693_set_flash_current(ptr noundef %add.ptr.i7, i32 noundef %3, i32 noundef %brightness)
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77693_led_flash_strobe_set(ptr noundef %fled_cdev, i1 noundef zeroext %state) #2 align 64 {
entry:
  %v.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %fled_cdev, i32 -4
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i, align 4
  %.neg.i = mul i32 %1, -476
  %idx.neg.i = add i32 %.neg.i, -100
  %add.ptr.i36 = getelementptr i8, ptr %add.ptr.i, i32 %idx.neg.i
  %lock = getelementptr inbounds %struct.max77693_led_device, ptr %add.ptr.i36, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  br i1 %state, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %shl = shl nuw i32 1, %1
  %conv = trunc i32 %shl to i8
  %call3 = tail call fastcc i32 @max77693_clear_mode(ptr noundef %add.ptr.i36, i8 noundef zeroext %conv)
  br label %unlock

if.end:                                           ; preds = %entry
  %flash_timeout = getelementptr i8, ptr %fled_cdev, i32 464
  %2 = ptrtoint ptr %flash_timeout to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flash_timeout, align 4
  %current_flash_timeout = getelementptr inbounds %struct.max77693_led_device, ptr %add.ptr.i36, i32 0, i32 6
  %4 = ptrtoint ptr %current_flash_timeout to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %current_flash_timeout, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not = icmp eq i32 %3, %5
  br i1 %cmp.not, label %if.end.if.end12_crit_edge, label %if.then5

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then5:                                         ; preds = %if.end
  %6 = ptrtoint ptr %add.ptr.i36 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i36, align 4
  %sub.i.i = add i32 %3, -62500
  %div.i.i = udiv i32 %sub.i.i, 62500
  %8 = and i32 %div.i.i, 127
  %conv2.i = or i32 %8, 128
  %call3.i = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 4, i32 noundef %conv2.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp.i = icmp slt i32 %call3.i, 0
  br i1 %cmp.i, label %if.then5.unlock_crit_edge, label %max77693_set_timeout.exit

if.then5.unlock_crit_edge:                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

max77693_set_timeout.exit:                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %current_flash_timeout to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %3, ptr %current_flash_timeout, align 4
  br label %if.end12

if.end12:                                         ; preds = %max77693_set_timeout.exit, %if.end.if.end12_crit_edge
  %strobing_sub_led_id = getelementptr inbounds %struct.max77693_led_device, ptr %add.ptr.i36, i32 0, i32 9
  %10 = ptrtoint ptr %strobing_sub_led_id to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %1, ptr %strobing_sub_led_id, align 4
  %shl13 = shl nuw i32 1, %1
  %conv14 = trunc i32 %shl13 to i8
  %call15 = tail call fastcc i32 @max77693_add_mode(ptr noundef %add.ptr.i36, i8 noundef zeroext %conv14)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %if.end12.unlock_crit_edge, label %if.end19

if.end12.unlock_crit_edge:                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %unlock

if.end19:                                         ; preds = %if.end12
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.i, align 4
  %.neg.i.i = mul i32 %12, -476
  %idx.neg.i.i = add i32 %.neg.i.i, -100
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i, i32 %idx.neg.i.i
  %13 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %add.ptr.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.i) #8
  %15 = ptrtoint ptr %v.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %v.i, align 4, !annotation !96
  %flash_faults.i = getelementptr i8, ptr %fled_cdev, i32 468
  %16 = ptrtoint ptr %flash_faults.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %flash_faults.i, align 4
  %iout_joint.i = getelementptr inbounds %struct.max77693_led_device, ptr %add.ptr.i.i, i32 0, i32 12
  %17 = ptrtoint ptr %iout_joint.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %iout_joint.i, align 2, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp.i37 = icmp eq i32 %12, 0
  %phi.cast42.i = select i1 %cmp.i37, i32 8, i32 2
  %fault_short_mask.0.i = select i1 %tobool.not.i, i32 %phi.cast42.i, i32 10
  %call6.i = call i32 @regmap_read(ptr noundef %14, i32 noundef 14, ptr noundef nonnull %v.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %if.end19.max77693_get_flash_faults.exit_crit_edge, label %if.end10.i

if.end19.max77693_get_flash_faults.exit_crit_edge: ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %max77693_get_flash_faults.exit

if.end10.i:                                       ; preds = %if.end19
  %phi.cast.i = select i1 %cmp.i37, i32 4, i32 1
  %fault_open_mask.0.i = select i1 %tobool.not.i, i32 %phi.cast.i, i32 5
  %19 = ptrtoint ptr %v.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %v.i, align 4
  %and.i = and i32 %20, %fault_open_mask.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool12.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool12.not.i, label %if.end10.i.if.end15.i_crit_edge, label %if.then13.i

if.end10.i.if.end15.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.i

if.then13.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %flash_faults.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flash_faults.i, align 4
  %or.i = or i32 %22, 1
  store i32 %or.i, ptr %flash_faults.i, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.then13.i, %if.end10.i.if.end15.i_crit_edge
  %and17.i = and i32 %20, %fault_short_mask.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  br i1 %tobool18.not.i, label %if.end15.i.if.end22.i_crit_edge, label %if.then19.i

if.end15.i.if.end22.i_crit_edge:                  ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22.i

if.then19.i:                                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %flash_faults.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flash_faults.i, align 4
  %or21.i = or i32 %24, 8
  store i32 %or21.i, ptr %flash_faults.i, align 4
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.then19.i, %if.end15.i.if.end22.i_crit_edge
  %and23.i = and i32 %20, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and23.i)
  %tobool24.not.i = icmp eq i32 %and23.i, 0
  br i1 %tobool24.not.i, label %if.end22.i.max77693_get_flash_faults.exit_crit_edge, label %if.then25.i

if.end22.i.max77693_get_flash_faults.exit_crit_edge: ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max77693_get_flash_faults.exit

if.then25.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %flash_faults.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flash_faults.i, align 4
  %or27.i = or i32 %26, 16
  store i32 %or27.i, ptr %flash_faults.i, align 4
  br label %max77693_get_flash_faults.exit

max77693_get_flash_faults.exit:                   ; preds = %if.then25.i, %if.end22.i.max77693_get_flash_faults.exit_crit_edge, %if.end19.max77693_get_flash_faults.exit_crit_edge
  %retval.0.i38 = phi i32 [ %call6.i, %if.end19.max77693_get_flash_faults.exit_crit_edge ], [ 0, %if.then25.i ], [ 0, %if.end22.i.max77693_get_flash_faults.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i) #8
  br label %unlock

unlock:                                           ; preds = %max77693_get_flash_faults.exit, %if.end12.unlock_crit_edge, %if.then5.unlock_crit_edge, %if.then
  %ret.0 = phi i32 [ %call15, %if.end12.unlock_crit_edge ], [ %retval.0.i38, %max77693_get_flash_faults.exit ], [ %call3, %if.then ], [ %call3.i, %if.then5.unlock_crit_edge ]
  call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77693_led_flash_strobe_get(ptr noundef %fled_cdev, ptr noundef %state) #2 align 64 {
entry:
  %v.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %fled_cdev, i32 -4
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i, align 4
  %.neg.i = mul i32 %1, -476
  %idx.neg.i = add i32 %.neg.i, -100
  %add.ptr.i15 = getelementptr i8, ptr %add.ptr.i, i32 %idx.neg.i
  %tobool.not = icmp eq ptr %state, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.max77693_led_device, ptr %add.ptr.i15, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %2 = ptrtoint ptr %add.ptr.i15 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %add.ptr.i15, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v.i) #8
  %4 = ptrtoint ptr %v.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %v.i, align 4, !annotation !96
  %call.i = call i32 @regmap_read(ptr noundef %3, i32 noundef 16, ptr noundef nonnull %v.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %max77693_get_strobe_status.exitthread-pre-split, label %if.end.i

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %5 = ptrtoint ptr %v.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %v.i, align 4
  %7 = trunc i32 %6 to i8
  %8 = lshr i8 %7, 3
  %9 = and i8 %8, 1
  %10 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %state, align 1
  br label %max77693_get_strobe_status.exit

max77693_get_strobe_status.exitthread-pre-split:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %state to i32
  call void @__asan_load1_noabort(i32 %11)
  %.pr = load i8, ptr %state, align 1
  br label %max77693_get_strobe_status.exit

max77693_get_strobe_status.exit:                  ; preds = %max77693_get_strobe_status.exitthread-pre-split, %if.end.i
  %12 = phi i8 [ %.pr, %max77693_get_strobe_status.exitthread-pre-split ], [ %9, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v.i) #8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool3.not = icmp eq i8 %12, 0
  br i1 %tobool3.not, label %max77693_get_strobe_status.exit.land.end_crit_edge, label %land.rhs

max77693_get_strobe_status.exit.land.end_crit_edge: ; preds = %max77693_get_strobe_status.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %max77693_get_strobe_status.exit
  call void @__sanitizer_cov_trace_pc() #10
  %strobing_sub_led_id = getelementptr inbounds %struct.max77693_led_device, ptr %add.ptr.i15, i32 0, i32 9
  %13 = ptrtoint ptr %strobing_sub_led_id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %strobing_sub_led_id, align 4
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp = icmp eq i32 %14, %16
  br label %land.end

land.end:                                         ; preds = %land.rhs, %max77693_get_strobe_status.exit.land.end_crit_edge
  %17 = phi i1 [ false, %max77693_get_strobe_status.exit.land.end_crit_edge ], [ %cmp, %land.rhs ]
  %frombool = zext i1 %17 to i8
  %18 = ptrtoint ptr %state to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %frombool, ptr %state, align 1
  call void @mutex_unlock(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %land.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %land.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77693_led_flash_timeout_set(ptr noundef %fled_cdev, i32 noundef %timeout) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %fled_cdev, i32 -4
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i, align 4
  %.neg.i = mul i32 %1, -476
  %idx.neg.i = add i32 %.neg.i, -100
  %add.ptr.i5 = getelementptr i8, ptr %add.ptr.i, i32 %idx.neg.i
  %lock = getelementptr inbounds %struct.max77693_led_device, ptr %add.ptr.i5, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %flash_timeout = getelementptr i8, ptr %fled_cdev, i32 464
  %2 = ptrtoint ptr %flash_timeout to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %timeout, ptr %flash_timeout, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @max77693_led_flash_fault_get(ptr nocapture noundef readonly %fled_cdev, ptr nocapture noundef writeonly %fault) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %flash_faults = getelementptr i8, ptr %fled_cdev, i32 468
  %0 = ptrtoint ptr %flash_faults to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flash_faults, align 4
  %2 = ptrtoint ptr %fault to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %fault, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @max77693_clear_mode(ptr nocapture noundef %led, i8 noundef zeroext %mode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %iout_joint = getelementptr inbounds %struct.max77693_led_device, ptr %led, i32 0, i32 12
  %0 = ptrtoint ptr %iout_joint to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %iout_joint, align 2, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %shl = shl i8 %mode, 1
  %or = select i1 %tobool.not, i8 0, i8 %shl
  %mode.addr.0 = or i8 %or, %mode
  %conv3 = zext i8 %mode.addr.0 to i32
  %neg = xor i32 %conv3, -1
  %mode_flags = getelementptr inbounds %struct.max77693_led_device, ptr %led, i32 0, i32 8
  %2 = ptrtoint ptr %mode_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode_flags, align 4
  %and = and i32 %3, %neg
  store i32 %and, ptr %mode_flags, align 4
  %4 = ptrtoint ptr %led to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %led, align 4
  %and.i = and i32 %and, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %or.i = select i1 %tobool.not.i, i32 0, i32 12
  %and4.i = and i32 %and, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.else.i, label %if.then6.i

if.then6.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %or10.i = or i32 %or.i, 192
  br label %for.inc.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %and14.i = and i32 %and, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  %or24.i = or i32 %or.i, 72
  %spec.select.i = select i1 %tobool15.not.i, i32 %or.i, i32 %or24.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.then6.i
  %v.2.i = phi i32 [ %or10.i, %if.then6.i ], [ %spec.select.i, %if.else.i ]
  %and.1.i = and i32 %and, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool.not.1.i = icmp eq i32 %and.1.i, 0
  %or.1.i = select i1 %tobool.not.1.i, i32 0, i32 3
  %v.1.1.i = or i32 %v.2.i, %or.1.i
  %and4.1.i = and i32 %and, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.1.i)
  %tobool5.not.1.i = icmp eq i32 %and4.1.i, 0
  br i1 %tobool5.not.1.i, label %if.else.1.i, label %if.then6.1.i

if.then6.1.i:                                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  %or10.1.i = or i32 %v.1.1.i, 48
  br label %for.inc.1.i

if.else.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  %and14.1.i = and i32 %and, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.1.i)
  %tobool15.not.1.i = icmp eq i32 %and14.1.i, 0
  %or24.1.i = or i32 %v.1.1.i, 18
  %spec.select60.i = select i1 %tobool15.not.1.i, i32 %v.1.1.i, i32 %or24.1.i
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.else.1.i, %if.then6.1.i
  %v.2.1.i = phi i32 [ %or10.1.i, %if.then6.1.i ], [ %spec.select60.i, %if.else.1.i ]
  %6 = and i32 %and, 243
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool29.not.i = icmp eq i32 %6, 0
  br i1 %tobool29.not.i, label %for.inc.1.i.if.end35.i_crit_edge, label %if.then30.i

for.inc.1.i.if.end35.i_crit_edge:                 ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35.i

if.then30.i:                                      ; preds = %for.inc.1.i
  %call.i = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 5, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp31.i = icmp slt i32 %call.i, 0
  br i1 %cmp31.i, label %if.then30.i.max77693_set_mode_reg.exit_crit_edge, label %if.then30.i.if.end35.i_crit_edge

if.then30.i.if.end35.i_crit_edge:                 ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35.i

if.then30.i.max77693_set_mode_reg.exit_crit_edge: ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max77693_set_mode_reg.exit

if.end35.i:                                       ; preds = %if.then30.i.if.end35.i_crit_edge, %for.inc.1.i.if.end35.i_crit_edge
  %call36.i = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 5, i32 noundef %v.2.1.i) #8
  br label %max77693_set_mode_reg.exit

max77693_set_mode_reg.exit:                       ; preds = %if.end35.i, %if.then30.i.max77693_set_mode_reg.exit_crit_edge
  %retval.0.i = phi i32 [ %call36.i, %if.end35.i ], [ %call.i, %if.then30.i.max77693_set_mode_reg.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @max77693_add_mode(ptr nocapture noundef %led, i8 noundef zeroext %mode) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %iout_joint = getelementptr inbounds %struct.max77693_led_device, ptr %led, i32 0, i32 12
  %0 = ptrtoint ptr %iout_joint to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %iout_joint, align 2, !range !97
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %shl = shl i8 %mode, 1
  %or = select i1 %tobool.not, i8 0, i8 %shl
  %mode.addr.0 = or i8 %or, %mode
  %conv4 = zext i8 %mode.addr.0 to i32
  %mode_flags = getelementptr inbounds %struct.max77693_led_device, ptr %led, i32 0, i32 8
  %and = and i32 %conv4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %entry.for.inc_crit_edge, label %if.then7

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then7:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %mode_flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode_flags, align 4
  %and13 = and i32 %3, -6
  store i32 %and13, ptr %mode_flags, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then7, %entry.for.inc_crit_edge
  %and.1 = and i32 %conv4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool6.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool6.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then7.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.1

if.then7.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %mode_flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mode_flags, align 4
  %and13.1 = and i32 %5, -11
  store i32 %and13.1, ptr %mode_flags, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then7.1, %for.inc.for.inc.1_crit_edge
  %6 = ptrtoint ptr %mode_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mode_flags, align 4
  %8 = trunc i32 %7 to i8
  %conv18 = or i8 %mode.addr.0, %8
  %allowed_modes = getelementptr inbounds %struct.max77693_led_device, ptr %led, i32 0, i32 11
  %9 = ptrtoint ptr %allowed_modes to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %allowed_modes, align 1
  %and2168 = and i8 %conv18, %10
  %conv23 = zext i8 %and2168 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv23)
  %tobool25.not = icmp eq i32 %7, %conv23
  br i1 %tobool25.not, label %for.inc.1.cleanup_crit_edge, label %if.then26

for.inc.1.cleanup_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then26:                                        ; preds = %for.inc.1
  %11 = ptrtoint ptr %mode_flags to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv23, ptr %mode_flags, align 4
  %12 = ptrtoint ptr %led to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %led, align 4
  %and.i = and i32 %conv23, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %or.i = select i1 %tobool.not.i, i32 0, i32 12
  %and4.i = and i32 %conv23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %if.else.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  %or10.i = or i32 %or.i, 192
  br label %for.inc.i

if.else.i:                                        ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  %and14.i = and i32 %conv23, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.i)
  %tobool15.not.i = icmp eq i32 %and14.i, 0
  %or24.i = or i32 %or.i, 72
  %spec.select.i = select i1 %tobool15.not.i, i32 %or.i, i32 %or24.i
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %if.then6.i
  %v.2.i = phi i32 [ %or10.i, %if.then6.i ], [ %spec.select.i, %if.else.i ]
  %and.1.i = and i32 %conv23, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool.not.1.i = icmp eq i32 %and.1.i, 0
  %or.1.i = select i1 %tobool.not.1.i, i32 0, i32 3
  %v.1.1.i = or i32 %v.2.i, %or.1.i
  %and4.1.i = and i32 %conv23, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.1.i)
  %tobool5.not.1.i = icmp eq i32 %and4.1.i, 0
  br i1 %tobool5.not.1.i, label %if.else.1.i, label %if.then6.1.i

if.then6.1.i:                                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  %or10.1.i = or i32 %v.1.1.i, 48
  br label %for.inc.1.i

if.else.1.i:                                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  %and14.1.i = and i32 %conv23, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14.1.i)
  %tobool15.not.1.i = icmp eq i32 %and14.1.i, 0
  %or24.1.i = or i32 %v.1.1.i, 18
  %spec.select60.i = select i1 %tobool15.not.1.i, i32 %v.1.1.i, i32 %or24.1.i
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.else.1.i, %if.then6.1.i
  %v.2.1.i = phi i32 [ %or10.1.i, %if.then6.1.i ], [ %spec.select60.i, %if.else.1.i ]
  %14 = and i8 %and2168, -13
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool29.not.i = icmp eq i8 %14, 0
  br i1 %tobool29.not.i, label %for.inc.1.i.max77693_set_mode_reg.exit_crit_edge, label %if.then30.i

for.inc.1.i.max77693_set_mode_reg.exit_crit_edge: ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max77693_set_mode_reg.exit

if.then30.i:                                      ; preds = %for.inc.1.i
  %call.i = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 5, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp31.i = icmp slt i32 %call.i, 0
  br i1 %cmp31.i, label %if.then30.i.cleanup_crit_edge, label %if.then30.i.max77693_set_mode_reg.exit_crit_edge

if.then30.i.max77693_set_mode_reg.exit_crit_edge: ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %max77693_set_mode_reg.exit

if.then30.i.cleanup_crit_edge:                    ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

max77693_set_mode_reg.exit:                       ; preds = %if.then30.i.max77693_set_mode_reg.exit_crit_edge, %for.inc.1.i.max77693_set_mode_reg.exit_crit_edge
  %call36.i = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 5, i32 noundef %v.2.1.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36.i)
  %cmp32 = icmp slt i32 %call36.i, 0
  %and37 = and i32 %conv4, 51
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  %or.cond = select i1 %cmp32, i1 true, i1 %tobool38.not
  br i1 %or.cond, label %max77693_set_mode_reg.exit.cleanup_crit_edge, label %if.then39

max77693_set_mode_reg.exit.cleanup_crit_edge:     ; preds = %max77693_set_mode_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then39:                                        ; preds = %max77693_set_mode_reg.exit
  call void @__sanitizer_cov_trace_pc() #10
  %neg41 = xor i32 %conv4, -1
  %15 = ptrtoint ptr %mode_flags to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mode_flags, align 4
  %and43 = and i32 %16, %neg41
  store i32 %and43, ptr %mode_flags, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then39, %max77693_set_mode_reg.exit.cleanup_crit_edge, %if.then30.i.cleanup_crit_edge, %for.inc.1.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.inc.1.cleanup_crit_edge ], [ %call36.i, %max77693_set_mode_reg.exit.cleanup_crit_edge ], [ %call36.i, %if.then39 ], [ %call.i, %if.then30.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @v4l2_flash_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @led_classdev_flash_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @max77693_led_external_strobe_set(ptr nocapture noundef readonly %v4l2_flash, i1 noundef zeroext %enable) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %v4l2_flash to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %v4l2_flash, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -4
  %2 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i, align 4
  %.neg.i = mul i32 %3, -476
  %idx.neg.i = add i32 %.neg.i, -100
  %add.ptr.i14 = getelementptr i8, ptr %add.ptr.i, i32 %idx.neg.i
  %lock = getelementptr inbounds %struct.max77693_led_device, ptr %add.ptr.i14, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #8
  %add = add i32 %3, 4
  %shl = shl nuw i32 1, %add
  %conv = trunc i32 %shl to i8
  br i1 %enable, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call fastcc i32 @max77693_add_mode(ptr noundef %add.ptr.i14, i8 noundef zeroext %conv)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call7 = tail call fastcc i32 @max77693_clear_mode(ptr noundef %add.ptr.i14, i8 noundef zeroext %conv)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ %call3, %if.then ], [ %call7, %if.else ]
  tail call void @mutex_unlock(ptr noundef %lock) #8
  ret i32 %ret.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !21, !23, !25, !27, !29, !30, !31, !32, !33, !34, !35, !37, !38, !39, !41, !42, !43, !45, !47, !49, !50, !51, !52, !54, !56, !57, !58, !60, !62, !63, !64, !66, !67, !68, !70, !72, !73, !74, !75, !77, !78, !80, !81, !83, !85}
!llvm.module.flags = !{!87, !88, !89, !90, !91, !92, !93, !94}
!llvm.ident = !{!95}

!0 = !{ptr @__initcall__kmod_leds_max77693__305_1054_max77693_led_driver_init6, !1, !"__initcall__kmod_leds_max77693__305_1054_max77693_led_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/leds/flash/leds-max77693.c", i32 1054, i32 1}
!2 = !{ptr @__exitcall_max77693_led_driver_exit, !1, !"__exitcall_max77693_led_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author306, !4, !"__UNIQUE_ID_author306", i1 false, i1 false}
!4 = !{!"../drivers/leds/flash/leds-max77693.c", i32 1056, i32 1}
!5 = !{ptr @__UNIQUE_ID_author307, !6, !"__UNIQUE_ID_author307", i1 false, i1 false}
!6 = !{!"../drivers/leds/flash/leds-max77693.c", i32 1057, i32 1}
!7 = !{ptr @__UNIQUE_ID_description308, !8, !"__UNIQUE_ID_description308", i1 false, i1 false}
!8 = !{!"../drivers/leds/flash/leds-max77693.c", i32 1058, i32 1}
!9 = !{ptr @__UNIQUE_ID_file309, !10, !"__UNIQUE_ID_file309", i1 false, i1 false}
!10 = !{!"../drivers/leds/flash/leds-max77693.c", i32 1059, i32 1}
!11 = !{ptr @__UNIQUE_ID_license310, !10, !"__UNIQUE_ID_license310", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/leds/flash/leds-max77693.c", i32 1049, i32 11}
!14 = !{ptr @max77693_led_driver, !15, !"max77693_led_driver", i1 false, i1 false}
!15 = !{!"../drivers/leds/flash/leds-max77693.c", i32 1045, i32 31}
!16 = !{ptr @max77693_led_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/leds/flash/leds-max77693.c", i32 973, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/leds/flash/leds-max77693.c", i32 607, i32 29}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/leds/flash/leds-max77693.c", i32 608, i32 29}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/leds/flash/leds-max77693.c", i32 609, i32 29}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/leds/flash/leds-max77693.c", i32 612, i32 39}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/leds/flash/leds-max77693.c", i32 623, i32 4}
!29 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @max77693_led_parse_dt._entry, !28, !"_entry", i1 false, i1 false}
!34 = !{ptr @max77693_led_parse_dt._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.12, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/leds/flash/leds-max77693.c", i32 639, i32 4}
!37 = !{ptr @max77693_led_parse_dt._entry.11, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @max77693_led_parse_dt._entry_ptr.13, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/leds/flash/leds-max77693.c", i32 646, i32 4}
!41 = !{ptr @max77693_led_parse_dt._entry.14, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @max77693_led_parse_dt._entry_ptr.16, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/leds/flash/leds-max77693.c", i32 656, i32 32}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/leds/flash/leds-max77693.c", i32 659, i32 42}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/leds/flash/leds-max77693.c", i32 663, i32 4}
!49 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @max77693_led_parse_dt._entry.19, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @max77693_led_parse_dt._entry_ptr.22, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/leds/flash/leds-max77693.c", i32 666, i32 42}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/leds/flash/leds-max77693.c", i32 670, i32 4}
!56 = !{ptr @max77693_led_parse_dt._entry.24, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @max77693_led_parse_dt._entry_ptr.26, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/leds/flash/leds-max77693.c", i32 674, i32 42}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/leds/flash/leds-max77693.c", i32 678, i32 4}
!62 = !{ptr @max77693_led_parse_dt._entry.28, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @max77693_led_parse_dt._entry_ptr.30, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/leds/flash/leds-max77693.c", i32 691, i32 3}
!66 = !{ptr @max77693_led_parse_dt._entry.31, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @max77693_led_parse_dt._entry_ptr.33, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @flash_ops, !69, !"flash_ops", i1 false, i1 false}
!69 = !{!"../drivers/leds/flash/leds-max77693.c", i32 784, i32 35}
!70 = !{ptr @.str.34, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/leds/flash/leds-max77693.c", i32 474, i32 4}
!72 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @max77693_led_brightness_set.__UNIQUE_ID_ddebug294, !71, !"__UNIQUE_ID_ddebug294", i1 false, i1 false}
!75 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/leds/flash/leds-max77693.c", i32 482, i32 3}
!77 = !{ptr @max77693_led_brightness_set.__UNIQUE_ID_ddebug295, !76, !"__UNIQUE_ID_ddebug295", i1 false, i1 false}
!78 = !{ptr @.str.38, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/leds/flash/leds-max77693.c", i32 490, i32 3}
!80 = !{ptr @max77693_led_brightness_set.__UNIQUE_ID_ddebug296, !79, !"__UNIQUE_ID_ddebug296", i1 false, i1 false}
!81 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/leds/flash/leds-max77693.c", i32 853, i32 4}
!83 = !{ptr @v4l2_flash_ops, !84, !"v4l2_flash_ops", i1 false, i1 false}
!84 = !{!"../drivers/leds/flash/leds-max77693.c", i32 870, i32 36}
!85 = !{ptr @max77693_led_dt_match, !86, !"max77693_led_dt_match", i1 false, i1 false}
!86 = !{!"../drivers/leds/flash/leds-max77693.c", i32 1039, i32 34}
!87 = !{i32 1, !"wchar_size", i32 2}
!88 = !{i32 1, !"min_enum_size", i32 4}
!89 = !{i32 8, !"branch-target-enforcement", i32 0}
!90 = !{i32 8, !"sign-return-address", i32 0}
!91 = !{i32 8, !"sign-return-address-all", i32 0}
!92 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!93 = !{i32 7, !"uwtable", i32 1}
!94 = !{i32 7, !"frame-pointer", i32 2}
!95 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!96 = !{!"auto-init"}
!97 = !{i8 0, i8 2}
!98 = !{i64 2148332217, i64 2148332222, i64 2148332235, i64 2148332279, i64 2148332313, i64 2148332334}
