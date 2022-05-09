; ModuleID = '/llk/IR_all_yes/drivers/leds/leds-netxbig.c_pt.bc'
source_filename = "../drivers/leds/leds-netxbig.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.netxbig_gpio_ext = type { ptr, i32, ptr, i32, ptr }
%struct.netxbig_led_timer = type { i32, i32, i32 }
%struct.netxbig_led_platform_data = type { ptr, ptr, i32, ptr, i32 }
%struct.netxbig_led = type { ptr, ptr, i32, ptr, i32, i32 }
%struct.netxbig_led_data = type { ptr, %struct.led_classdev, i32, ptr, i32, ptr, i32, i32, i32, %struct.spinlock }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }

@__initcall__kmod_leds_netxbig__183_637_netxbig_led_driver_init6 = internal global ptr @netxbig_led_driver_init, section ".initcall6.init", align 4
@netxbig_led_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @netxbig_led_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_netxbig_leds_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_netxbig_led_driver_exit = internal global ptr @netxbig_led_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author184 = internal constant [53 x i8] c"leds_netxbig.author=Simon Guinot <sguinot@lacie.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description185 = internal constant [66 x i8] c"leds_netxbig.description=LED driver for LaCie xBig Network boards\00", section ".modinfo", align 1
@__UNIQUE_ID_file186 = internal constant [44 x i8] c"leds_netxbig.file=drivers/leds/leds-netxbig\00", section ".modinfo", align 1
@__UNIQUE_ID_license187 = internal constant [25 x i8] c"leds_netxbig.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias188 = internal constant [41 x i8] c"leds_netxbig.alias=platform:leds-netxbig\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"leds-netxbig\00", [19 x i8] zeroinitializer }, align 32
@of_netxbig_leds_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"lacie,netxbig-leds\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gpio-ext\00", [23 x i8] zeroinitializer }, align 32
@netxbig_leds_get_of_pdata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 438, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to get DT handle gpio-ext\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"netxbig_leds_get_of_pdata\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/leds/leds-netxbig.c\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@netxbig_leds_get_of_pdata._entry_ptr = internal global ptr @netxbig_leds_get_of_pdata._entry, section ".printk_index", align 4
@netxbig_leds_get_of_pdata._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 443, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to find platform device for gpio-ext\0A\00", [51 x i8] zeroinitializer }, align 32
@netxbig_leds_get_of_pdata._entry_ptr.9 = internal global ptr @netxbig_leds_get_of_pdata._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"timers\00", [25 x i8] zeroinitializer }, align 32
@netxbig_leds_get_of_pdata._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 498, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"No LED subnodes found in DT\0A\00", [35 x i8] zeroinitializer }, align 32
@netxbig_leds_get_of_pdata._entry_ptr.13 = internal global ptr @netxbig_leds_get_of_pdata._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mode-addr\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bright-addr\00", [20 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"max-brightness\00", [17 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mode-val\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"label\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"linux,default-trigger\00", [42 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"addr\00", [27 x i8] zeroinitializer }, align 32
@netxbig_gpio_ext_get._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.4, i32 359, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Failed to count GPIOs in DT property addr-gpios\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"netxbig_gpio_ext_get\00", [43 x i8] zeroinitializer }, align 32
@netxbig_gpio_ext_get._entry_ptr = internal global ptr @netxbig_gpio_ext_get._entry, section ".printk_index", align 4
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"GPIO extension addr\00", [44 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"data\00", [27 x i8] zeroinitializer }, align 32
@netxbig_gpio_ext_get._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.22, ptr @.str.4, i32 388, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Failed to count GPIOs in DT property data-gpios\0A\00", [47 x i8] zeroinitializer }, align 32
@netxbig_gpio_ext_get._entry_ptr.27 = internal global ptr @netxbig_gpio_ext_get._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"GPIO extension data\00", [44 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"enable\00", [25 x i8] zeroinitializer }, align 32
@netxbig_gpio_ext_get._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.22, ptr @.str.4, i32 410, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Failed to get GPIO from DT property enable-gpio\0A\00", [47 x i8] zeroinitializer }, align 32
@netxbig_gpio_ext_get._entry_ptr.32 = internal global ptr @netxbig_gpio_ext_get._entry.30, section ".printk_index", align 4
@.str.33 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"GPIO extension enable\00", [42 x i8] zeroinitializer }, align 32
@create_netxbig_led.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&led_dat->lock\00", [17 x i8] zeroinitializer }, align 32
@netxbig_led_groups = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @netxbig_led_group, ptr null], [24 x i8] zeroinitializer }, align 32
@gpio_ext_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.35, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gpio_ext_lock\00", [18 x i8] zeroinitializer }, align 32
@netxbig_led_group = internal constant { %struct.attribute_group, [44 x i8] } { %struct.attribute_group { ptr null, ptr null, ptr null, ptr @netxbig_led_attrs, ptr null }, [44 x i8] zeroinitializer }, align 32
@netxbig_led_attrs = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @dev_attr_sata, ptr null], [24 x i8] zeroinitializer }, align 32
@dev_attr_sata = internal global { %struct.device_attribute, [36 x i8] } { %struct.device_attribute { %struct.attribute { ptr @.str.36, i16 420, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @sata_show, ptr @sata_store }, [36 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sata\00", [27 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.38 = private unnamed_addr constant [19 x i8] c"netxbig_led_driver\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 629, i32 31 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 632, i32 12 }
@___asan_gen_.44 = private unnamed_addr constant [22 x i8] c"of_netxbig_leds_match\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 593, i32 34 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 436, i32 37 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 438, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 443, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 461, i32 40 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 498, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 515, i32 37 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 520, i32 37 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 525, i32 37 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 542, i32 44 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 569, i32 39 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 575, i32 11 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 356, i32 34 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 358, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 379, i32 34 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 385, i32 34 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 387, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 401, i32 34 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 407, i32 34 }
@___asan_gen_.131 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 409, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 413, i32 33 }
@___asan_gen_.140 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 281, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant [19 x i8] c"netxbig_led_groups\00", align 1
@___asan_gen_.149 = private unnamed_addr constant [14 x i8] c"gpio_ext_lock\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 66, i32 8 }
@___asan_gen_.155 = private unnamed_addr constant [18 x i8] c"netxbig_led_group\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 274, i32 1 }
@___asan_gen_.158 = private unnamed_addr constant [18 x i8] c"netxbig_led_attrs\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 270, i32 26 }
@___asan_gen_.161 = private unnamed_addr constant [14 x i8] c"dev_attr_sata\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 268, i32 8 }
@___asan_gen_.167 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.168 = private constant [31 x i8] c"../drivers/leds/leds-netxbig.c\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 265, i32 22 }
@llvm.compiler.used = appending global [58 x ptr] [ptr @__UNIQUE_ID_alias188, ptr @__UNIQUE_ID_author184, ptr @__UNIQUE_ID_description185, ptr @__UNIQUE_ID_file186, ptr @__UNIQUE_ID_license187, ptr @__exitcall_netxbig_led_driver_exit, ptr @__initcall__kmod_leds_netxbig__183_637_netxbig_led_driver_init6, ptr @netxbig_gpio_ext_get._entry, ptr @netxbig_gpio_ext_get._entry.25, ptr @netxbig_gpio_ext_get._entry.30, ptr @netxbig_gpio_ext_get._entry_ptr, ptr @netxbig_gpio_ext_get._entry_ptr.27, ptr @netxbig_gpio_ext_get._entry_ptr.32, ptr @netxbig_led_driver_exit, ptr @netxbig_leds_get_of_pdata._entry, ptr @netxbig_leds_get_of_pdata._entry.11, ptr @netxbig_leds_get_of_pdata._entry.7, ptr @netxbig_leds_get_of_pdata._entry_ptr, ptr @netxbig_leds_get_of_pdata._entry_ptr.13, ptr @netxbig_leds_get_of_pdata._entry_ptr.9, ptr @netxbig_led_driver, ptr @.str, ptr @of_netxbig_leds_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @create_netxbig_led.__key, ptr @.str.34, ptr @netxbig_led_groups, ptr @gpio_ext_lock, ptr @.str.35, ptr @netxbig_led_group, ptr @netxbig_led_attrs, ptr @dev_attr_sata, ptr @.str.36, ptr @.str.37], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxbig_led_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_netxbig_leds_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxbig_leds_get_of_pdata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxbig_leds_get_of_pdata._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxbig_leds_get_of_pdata._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxbig_gpio_ext_get._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxbig_gpio_ext_get._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxbig_gpio_ext_get._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @create_netxbig_led.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxbig_led_groups to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_ext_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxbig_led_group to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @netxbig_led_attrs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dev_attr_sata to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @netxbig_led_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @netxbig_led_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @netxbig_led_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @netxbig_led_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netxbig_led_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args.i.i = alloca %struct.of_phandle_args, align 4
  %tmp.i = alloca i32, align 4
  %string.i = alloca ptr, align 4
  %mode94.i = alloca i32, align 4
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 20, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.not.i.i = icmp eq ptr %dev, null
  br i1 %tobool.not.i.i, label %if.end.dev_of_node.exit.i_crit_edge, label %if.end.i.i

if.end.dev_of_node.exit.i_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_of_node.exit.i

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %of_node.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node.i.i, align 8
  br label %dev_of_node.exit.i

dev_of_node.exit.i:                               ; preds = %if.end.i.i, %if.end.dev_of_node.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %1, %if.end.i.i ], [ null, %if.end.dev_of_node.exit.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #8
  %2 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %call.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef %retval.0.i.i, ptr noundef nonnull @.str.1, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i231.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i231.i, label %of_parse_phandle.exit.i, label %of_parse_phandle.exit.thread.i

of_parse_phandle.exit.thread.i:                   ; preds = %dev_of_node.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #8
  br label %do.end.i

of_parse_phandle.exit.i:                          ; preds = %dev_of_node.exit.i
  %3 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %args.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #8
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %of_parse_phandle.exit.i.do.end.i_crit_edge, label %if.end.i

of_parse_phandle.exit.i.do.end.i_crit_edge:       ; preds = %of_parse_phandle.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end.i

do.end.i:                                         ; preds = %of_parse_phandle.exit.i.do.end.i_crit_edge, %of_parse_phandle.exit.thread.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #11
  br label %cleanup

if.end.i:                                         ; preds = %of_parse_phandle.exit.i
  %call2.i = call ptr @of_find_device_by_node(ptr noundef nonnull %4) #8
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %do.end7.i, label %if.end8.i

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #11
  br label %cleanup

if.end8.i:                                        ; preds = %if.end.i
  %dev9.i = getelementptr inbounds %struct.platform_device, ptr %call2.i, i32 0, i32 3
  %call.i234.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 20, i32 noundef 3520) #8
  %tobool11.not.i = icmp eq ptr %call.i234.i, null
  br i1 %tobool11.not.i, label %if.then12.i, label %if.end13.i

if.then12.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @of_node_put(ptr noundef nonnull %4) #8
  br label %netxbig_leds_get_of_pdata.exit.thread53

if.end13.i:                                       ; preds = %if.end8.i
  %call.i235.i = call i32 @gpiod_count(ptr noundef %dev9.i, ptr noundef nonnull @.str.20) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i235.i)
  %cmp.i.i = icmp slt i32 %call.i235.i, 0
  br i1 %cmp.i.i, label %if.end13.i.netxbig_gpio_ext_get.exit.thread.sink.split.i_crit_edge, label %if.end.i236.i

if.end13.i.netxbig_gpio_ext_get.exit.thread.sink.split.i_crit_edge: ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %netxbig_gpio_ext_get.exit.thread.sink.split.i

if.end.i236.i:                                    ; preds = %if.end13.i
  %5 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call.i235.i, i32 4) #8
  %6 = extractvalue { i32, i1 } %5, 1
  br i1 %6, label %if.end.i236.i.netxbig_gpio_ext_get.exit.thread.i_crit_edge, label %devm_kcalloc.exit.i.i, !prof !100

if.end.i236.i.netxbig_gpio_ext_get.exit.thread.i_crit_edge: ; preds = %if.end.i236.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %netxbig_gpio_ext_get.exit.thread.i

devm_kcalloc.exit.i.i:                            ; preds = %if.end.i236.i
  %7 = extractvalue { i32, i1 } %5, 0
  %call5.i.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %7, i32 noundef 3520) #8
  %tobool.not.i237.i = icmp eq ptr %call5.i.i.i.i, null
  br i1 %tobool.not.i237.i, label %devm_kcalloc.exit.i.i.netxbig_gpio_ext_get.exit.thread.i_crit_edge, label %for.cond.preheader.i.i

devm_kcalloc.exit.i.i.netxbig_gpio_ext_get.exit.thread.i_crit_edge: ; preds = %devm_kcalloc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %netxbig_gpio_ext_get.exit.thread.i

for.cond.preheader.i.i:                           ; preds = %devm_kcalloc.exit.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i235.i)
  %cmp4110.not.i.i = icmp eq i32 %call.i235.i, 0
  br i1 %cmp4110.not.i.i, label %for.cond.preheader.i.i.for.end.i.i_crit_edge, label %for.cond.preheader.i.i.for.body.i.i_crit_edge

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond.preheader.i.i.for.end.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.body.i.i:                                     ; preds = %if.end9.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %i.0111.i.i = phi i32 [ %inc.i.i, %if.end9.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %call5.i.i = call ptr @gpiod_get_index(ptr noundef %dev9.i, ptr noundef nonnull @.str.20, i32 noundef %i.0111.i.i, i32 noundef 3) #8
  %cmp.i.i.i = icmp ugt ptr %call5.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.then7.i.i, label %if.end9.i.i

if.then7.i.i:                                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %call5.i.i to i32
  br label %netxbig_leds_get_of_pdata.exit

if.end9.i.i:                                      ; preds = %for.body.i.i
  %call10.i.i = call i32 @gpiod_set_consumer_name(ptr noundef %call5.i.i, ptr noundef nonnull @.str.23) #8
  %arrayidx.i.i = getelementptr ptr, ptr %call5.i.i.i.i, i32 %i.0111.i.i
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call5.i.i, ptr %arrayidx.i.i, align 4
  %inc.i.i = add nuw nsw i32 %i.0111.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %call.i235.i
  br i1 %exitcond.not.i.i, label %if.end9.i.i.for.end.i.i_crit_edge, label %if.end9.i.i.for.body.i.i_crit_edge

if.end9.i.i.for.body.i.i_crit_edge:               ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

if.end9.i.i.for.end.i.i_crit_edge:                ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %if.end9.i.i.for.end.i.i_crit_edge, %for.cond.preheader.i.i.for.end.i.i_crit_edge
  %10 = ptrtoint ptr %call.i234.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call5.i.i.i.i, ptr %call.i234.i, align 4
  %num_addr12.i.i = getelementptr inbounds %struct.netxbig_gpio_ext, ptr %call.i234.i, i32 0, i32 1
  %11 = ptrtoint ptr %num_addr12.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call.i235.i, ptr %num_addr12.i.i, align 4
  %call13.i.i = call i32 @gpiod_count(ptr noundef %dev9.i, ptr noundef nonnull @.str.24) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i)
  %cmp14.i.i = icmp slt i32 %call13.i.i, 0
  br i1 %cmp14.i.i, label %for.end.i.i.netxbig_gpio_ext_get.exit.thread.sink.split.i_crit_edge, label %if.end19.i.i

for.end.i.i.netxbig_gpio_ext_get.exit.thread.sink.split.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %netxbig_gpio_ext_get.exit.thread.sink.split.i

if.end19.i.i:                                     ; preds = %for.end.i.i
  %12 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %call13.i.i, i32 4) #8
  %13 = extractvalue { i32, i1 } %12, 1
  br i1 %13, label %if.end19.i.i.netxbig_gpio_ext_get.exit.thread.i_crit_edge, label %devm_kcalloc.exit103.i.i, !prof !100

if.end19.i.i.netxbig_gpio_ext_get.exit.thread.i_crit_edge: ; preds = %if.end19.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %netxbig_gpio_ext_get.exit.thread.i

devm_kcalloc.exit103.i.i:                         ; preds = %if.end19.i.i
  %14 = extractvalue { i32, i1 } %12, 0
  %call5.i.i100.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %14, i32 noundef 3520) #8
  %tobool21.not.i.i = icmp eq ptr %call5.i.i100.i.i, null
  br i1 %tobool21.not.i.i, label %devm_kcalloc.exit103.i.i.netxbig_gpio_ext_get.exit.thread.i_crit_edge, label %for.cond24.preheader.i.i

devm_kcalloc.exit103.i.i.netxbig_gpio_ext_get.exit.thread.i_crit_edge: ; preds = %devm_kcalloc.exit103.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %netxbig_gpio_ext_get.exit.thread.i

for.cond24.preheader.i.i:                         ; preds = %devm_kcalloc.exit103.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i.i)
  %cmp25112.not.i.i = icmp eq i32 %call13.i.i, 0
  br i1 %cmp25112.not.i.i, label %for.cond24.preheader.i.i.for.end36.i.i_crit_edge, label %for.cond24.preheader.i.i.for.body26.i.i_crit_edge

for.cond24.preheader.i.i.for.body26.i.i_crit_edge: ; preds = %for.cond24.preheader.i.i
  br label %for.body26.i.i

for.cond24.preheader.i.i.for.end36.i.i_crit_edge: ; preds = %for.cond24.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end36.i.i

for.body26.i.i:                                   ; preds = %if.end31.i.i.for.body26.i.i_crit_edge, %for.cond24.preheader.i.i.for.body26.i.i_crit_edge
  %i.1113.i.i = phi i32 [ %inc35.i.i, %if.end31.i.i.for.body26.i.i_crit_edge ], [ 0, %for.cond24.preheader.i.i.for.body26.i.i_crit_edge ]
  %call27.i.i = call ptr @gpiod_get_index(ptr noundef %dev9.i, ptr noundef nonnull @.str.24, i32 noundef %i.1113.i.i, i32 noundef 3) #8
  %cmp.i104.i.i = icmp ugt ptr %call27.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i104.i.i, label %if.then29.i.i, label %if.end31.i.i

if.then29.i.i:                                    ; preds = %for.body26.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %call27.i.i to i32
  br label %netxbig_leds_get_of_pdata.exit

if.end31.i.i:                                     ; preds = %for.body26.i.i
  %call32.i.i = call i32 @gpiod_set_consumer_name(ptr noundef %call27.i.i, ptr noundef nonnull @.str.28) #8
  %arrayidx33.i.i = getelementptr ptr, ptr %call5.i.i100.i.i, i32 %i.1113.i.i
  %16 = ptrtoint ptr %arrayidx33.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call27.i.i, ptr %arrayidx33.i.i, align 4
  %inc35.i.i = add nuw nsw i32 %i.1113.i.i, 1
  %exitcond116.not.i.i = icmp eq i32 %inc35.i.i, %call13.i.i
  br i1 %exitcond116.not.i.i, label %if.end31.i.i.for.end36.i.i_crit_edge, label %if.end31.i.i.for.body26.i.i_crit_edge

if.end31.i.i.for.body26.i.i_crit_edge:            ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body26.i.i

if.end31.i.i.for.end36.i.i_crit_edge:             ; preds = %if.end31.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end36.i.i

for.end36.i.i:                                    ; preds = %if.end31.i.i.for.end36.i.i_crit_edge, %for.cond24.preheader.i.i.for.end36.i.i_crit_edge
  %data37.i.i = getelementptr inbounds %struct.netxbig_gpio_ext, ptr %call.i234.i, i32 0, i32 2
  %17 = ptrtoint ptr %data37.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call5.i.i100.i.i, ptr %data37.i.i, align 4
  %num_data38.i.i = getelementptr inbounds %struct.netxbig_gpio_ext, ptr %call.i234.i, i32 0, i32 3
  %18 = ptrtoint ptr %num_data38.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %call13.i.i, ptr %num_data38.i.i, align 4
  %call39.i.i = call ptr @gpiod_get(ptr noundef %dev9.i, ptr noundef nonnull @.str.29, i32 noundef 3) #8
  %cmp.i105.i.i = icmp ugt ptr %call39.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i105.i.i, label %do.end44.i.i, label %if.end46.i.i

do.end44.i.i:                                     ; preds = %for.end36.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.31) #11
  %19 = ptrtoint ptr %call39.i.i to i32
  br label %netxbig_leds_get_of_pdata.exit

if.end46.i.i:                                     ; preds = %for.end36.i.i
  %call47.i.i = call i32 @gpiod_set_consumer_name(ptr noundef %call39.i.i, ptr noundef nonnull @.str.33) #8
  %enable.i.i = getelementptr inbounds %struct.netxbig_gpio_ext, ptr %call.i234.i, i32 0, i32 4
  %20 = ptrtoint ptr %enable.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call39.i.i, ptr %enable.i.i, align 4
  %call.i.i.i = call i32 @devm_add_action(ptr noundef %dev, ptr noundef nonnull @netxbig_gpio_ext_remove, ptr noundef nonnull %call.i234.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %netxbig_gpio_ext_get.exit.thread259.i, label %if.then.i.i.i

netxbig_gpio_ext_get.exit.thread259.i:            ; preds = %if.end46.i.i
  call void @of_node_put(ptr noundef nonnull %4) #8
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i234.i, ptr %call.i, align 4
  %call.i239.i = call i32 @of_property_count_elems_of_size(ptr noundef %retval.0.i.i, ptr noundef nonnull @.str.10, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i239.i)
  %cmp.i = icmp sgt i32 %call.i239.i, 0
  br i1 %cmp.i, label %if.then20.i, label %netxbig_gpio_ext_get.exit.thread259.i.if.end42.i_crit_edge

netxbig_gpio_ext_get.exit.thread259.i.if.end42.i_crit_edge: ; preds = %netxbig_gpio_ext_get.exit.thread259.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42.i

if.then.i.i.i:                                    ; preds = %if.end46.i.i
  %22 = ptrtoint ptr %num_addr12.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_addr12.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp18.i.i.i.i = icmp sgt i32 %23, 0
  br i1 %cmp18.i.i.i.i, label %if.then.i.i.i.for.body.i.i.i.i_crit_edge, label %if.then.i.i.i.for.cond1.preheader.i.i.i.i_crit_edge

if.then.i.i.i.for.cond1.preheader.i.i.i.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond1.preheader.i.i.i.i

if.then.i.i.i.for.body.i.i.i.i_crit_edge:         ; preds = %if.then.i.i.i
  br label %for.body.i.i.i.i

for.cond1.preheader.i.i.i.i:                      ; preds = %for.body.i.i.i.i.for.cond1.preheader.i.i.i.i_crit_edge, %if.then.i.i.i.for.cond1.preheader.i.i.i.i_crit_edge
  %24 = ptrtoint ptr %num_data38.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_data38.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp220.i.i.i.i = icmp sgt i32 %25, 0
  br i1 %cmp220.i.i.i.i, label %for.cond1.preheader.i.i.i.i.for.body3.i.i.i.i_crit_edge, label %for.cond1.preheader.i.i.i.i.netxbig_gpio_ext_remove.exit.i.i.i_crit_edge

for.cond1.preheader.i.i.i.i.netxbig_gpio_ext_remove.exit.i.i.i_crit_edge: ; preds = %for.cond1.preheader.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %netxbig_gpio_ext_remove.exit.i.i.i

for.cond1.preheader.i.i.i.i.for.body3.i.i.i.i_crit_edge: ; preds = %for.cond1.preheader.i.i.i.i
  br label %for.body3.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge, %if.then.i.i.i.for.body.i.i.i.i_crit_edge
  %i.019.i.i.i.i = phi i32 [ %inc.i.i.i.i, %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ 0, %if.then.i.i.i.for.body.i.i.i.i_crit_edge ]
  %26 = ptrtoint ptr %call.i234.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call.i234.i, align 4
  %arrayidx.i.i.i.i = getelementptr ptr, ptr %27, i32 %i.019.i.i.i.i
  %28 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i.i.i.i, align 4
  call void @gpiod_put(ptr noundef %29) #8
  %inc.i.i.i.i = add nuw nsw i32 %i.019.i.i.i.i, 1
  %30 = ptrtoint ptr %num_addr12.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_addr12.i.i, align 4
  %cmp.i.i.i.i = icmp slt i32 %inc.i.i.i.i, %31
  br i1 %cmp.i.i.i.i, label %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge, label %for.body.i.i.i.i.for.cond1.preheader.i.i.i.i_crit_edge

for.body.i.i.i.i.for.cond1.preheader.i.i.i.i_crit_edge: ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond1.preheader.i.i.i.i

for.body.i.i.i.i.for.body.i.i.i.i_crit_edge:      ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i.i.i

for.body3.i.i.i.i:                                ; preds = %for.body3.i.i.i.i.for.body3.i.i.i.i_crit_edge, %for.cond1.preheader.i.i.i.i.for.body3.i.i.i.i_crit_edge
  %i.121.i.i.i.i = phi i32 [ %inc7.i.i.i.i, %for.body3.i.i.i.i.for.body3.i.i.i.i_crit_edge ], [ 0, %for.cond1.preheader.i.i.i.i.for.body3.i.i.i.i_crit_edge ]
  %32 = ptrtoint ptr %data37.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %data37.i.i, align 4
  %arrayidx5.i.i.i.i = getelementptr ptr, ptr %33, i32 %i.121.i.i.i.i
  %34 = ptrtoint ptr %arrayidx5.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx5.i.i.i.i, align 4
  call void @gpiod_put(ptr noundef %35) #8
  %inc7.i.i.i.i = add nuw nsw i32 %i.121.i.i.i.i, 1
  %36 = ptrtoint ptr %num_data38.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_data38.i.i, align 4
  %cmp2.i.i.i.i = icmp slt i32 %inc7.i.i.i.i, %37
  br i1 %cmp2.i.i.i.i, label %for.body3.i.i.i.i.for.body3.i.i.i.i_crit_edge, label %for.body3.i.i.i.i.netxbig_gpio_ext_remove.exit.i.i.i_crit_edge

for.body3.i.i.i.i.netxbig_gpio_ext_remove.exit.i.i.i_crit_edge: ; preds = %for.body3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %netxbig_gpio_ext_remove.exit.i.i.i

for.body3.i.i.i.i.for.body3.i.i.i.i_crit_edge:    ; preds = %for.body3.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body3.i.i.i.i

netxbig_gpio_ext_remove.exit.i.i.i:               ; preds = %for.body3.i.i.i.i.netxbig_gpio_ext_remove.exit.i.i.i_crit_edge, %for.cond1.preheader.i.i.i.i.netxbig_gpio_ext_remove.exit.i.i.i_crit_edge
  %38 = ptrtoint ptr %enable.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %enable.i.i, align 4
  call void @gpiod_put(ptr noundef %39) #8
  br label %netxbig_leds_get_of_pdata.exit

netxbig_gpio_ext_get.exit.thread.sink.split.i:    ; preds = %for.end.i.i.netxbig_gpio_ext_get.exit.thread.sink.split.i_crit_edge, %if.end13.i.netxbig_gpio_ext_get.exit.thread.sink.split.i_crit_edge
  %.str.21.sink.i = phi ptr [ @.str.21, %if.end13.i.netxbig_gpio_ext_get.exit.thread.sink.split.i_crit_edge ], [ @.str.26, %for.end.i.i.netxbig_gpio_ext_get.exit.thread.sink.split.i_crit_edge ]
  %retval.0.i238.ph.ph.i = phi i32 [ %call.i235.i, %if.end13.i.netxbig_gpio_ext_get.exit.thread.sink.split.i_crit_edge ], [ %call13.i.i, %for.end.i.i.netxbig_gpio_ext_get.exit.thread.sink.split.i_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.21.sink.i) #11
  br label %netxbig_gpio_ext_get.exit.thread.i

netxbig_gpio_ext_get.exit.thread.i:               ; preds = %netxbig_gpio_ext_get.exit.thread.sink.split.i, %devm_kcalloc.exit103.i.i.netxbig_gpio_ext_get.exit.thread.i_crit_edge, %if.end19.i.i.netxbig_gpio_ext_get.exit.thread.i_crit_edge, %devm_kcalloc.exit.i.i.netxbig_gpio_ext_get.exit.thread.i_crit_edge, %if.end.i236.i.netxbig_gpio_ext_get.exit.thread.i_crit_edge
  %retval.0.i238.ph.i = phi i32 [ -12, %if.end19.i.i.netxbig_gpio_ext_get.exit.thread.i_crit_edge ], [ -12, %if.end.i236.i.netxbig_gpio_ext_get.exit.thread.i_crit_edge ], [ -12, %devm_kcalloc.exit103.i.i.netxbig_gpio_ext_get.exit.thread.i_crit_edge ], [ -12, %devm_kcalloc.exit.i.i.netxbig_gpio_ext_get.exit.thread.i_crit_edge ], [ %retval.0.i238.ph.ph.i, %netxbig_gpio_ext_get.exit.thread.sink.split.i ]
  call void @of_node_put(ptr noundef nonnull %4) #8
  br label %netxbig_leds_get_of_pdata.exit.thread53

if.then20.i:                                      ; preds = %netxbig_gpio_ext_get.exit.thread259.i
  %call.i239.i.frozen = freeze i32 %call.i239.i
  %div278.i = udiv i32 %call.i239.i.frozen, 3
  %40 = mul i32 %div278.i, 3
  %rem277.i.decomposed = sub i32 %call.i239.i.frozen, %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem277.i.decomposed)
  %tobool21.not.i = icmp eq i32 %rem277.i.decomposed, 0
  br i1 %tobool21.not.i, label %if.end23.i, label %if.then20.i.netxbig_leds_get_of_pdata.exit.thread53_crit_edge

if.then20.i.netxbig_leds_get_of_pdata.exit.thread53_crit_edge: ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %netxbig_leds_get_of_pdata.exit.thread53

if.end23.i:                                       ; preds = %if.then20.i
  %41 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %div278.i, i32 12) #8
  %42 = extractvalue { i32, i1 } %41, 1
  br i1 %42, label %if.end23.i.netxbig_leds_get_of_pdata.exit.thread53_crit_edge, label %devm_kcalloc.exit.i, !prof !100

if.end23.i.netxbig_leds_get_of_pdata.exit.thread53_crit_edge: ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %netxbig_leds_get_of_pdata.exit.thread53

devm_kcalloc.exit.i:                              ; preds = %if.end23.i
  %43 = extractvalue { i32, i1 } %41, 0
  %call5.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %43, i32 noundef 3520) #8
  %tobool25.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool25.not.i, label %devm_kcalloc.exit.i.netxbig_leds_get_of_pdata.exit.thread53_crit_edge, label %for.cond.preheader.i

devm_kcalloc.exit.i.netxbig_leds_get_of_pdata.exit.thread53_crit_edge: ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %netxbig_leds_get_of_pdata.exit.thread53

for.cond.preheader.i:                             ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call.i239.i)
  %44 = icmp ult i32 %call.i239.i, 3
  br i1 %44, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.0287.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #8
  %45 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 -1, ptr %tmp.i, align 4, !annotation !101
  %mul.i = mul nuw i32 %i.0287.i, 3
  %mode.i = getelementptr %struct.netxbig_led_timer, ptr %call5.i.i.i, i32 %i.0287.i, i32 2
  %call29.i = call i32 @of_property_read_u32_index(ptr noundef %retval.0.i.i, ptr noundef nonnull @.str.10, i32 noundef %mul.i, ptr noundef %mode.i) #8
  %46 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %47)
  %cmp32.i = icmp ugt i32 %47, 4
  br i1 %cmp32.i, label %cleanup.i, label %for.inc.i

cleanup.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #8
  br label %netxbig_leds_get_of_pdata.exit.thread53

for.inc.i:                                        ; preds = %for.body.i
  %arrayidx.i = getelementptr %struct.netxbig_led_timer, ptr %call5.i.i.i, i32 %i.0287.i
  %add.i = add nuw i32 %mul.i, 1
  %call36.i = call i32 @of_property_read_u32_index(ptr noundef %retval.0.i.i, ptr noundef nonnull @.str.10, i32 noundef %add.i, ptr noundef nonnull %tmp.i) #8
  %48 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tmp.i, align 4
  %50 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %arrayidx.i, align 4
  %add39.i = add nuw i32 %mul.i, 2
  %call40.i = call i32 @of_property_read_u32_index(ptr noundef %retval.0.i.i, ptr noundef nonnull @.str.10, i32 noundef %add39.i, ptr noundef nonnull %tmp.i) #8
  %51 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %tmp.i, align 4
  %delay_off.i = getelementptr %struct.netxbig_led_timer, ptr %call5.i.i.i, i32 %i.0287.i, i32 1
  %53 = ptrtoint ptr %delay_off.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %delay_off.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #8
  %inc.i = add nuw nsw i32 %i.0287.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %div278.i
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %timer.i = getelementptr inbounds %struct.netxbig_led_platform_data, ptr %call.i, i32 0, i32 1
  %54 = ptrtoint ptr %timer.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call5.i.i.i, ptr %timer.i, align 4
  %num_timer.i = getelementptr inbounds %struct.netxbig_led_platform_data, ptr %call.i, i32 0, i32 2
  %55 = ptrtoint ptr %num_timer.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %div278.i, ptr %num_timer.i, align 4
  br label %if.end42.i

if.end42.i:                                       ; preds = %for.end.i, %netxbig_gpio_ext_get.exit.thread259.i.if.end42.i_crit_edge
  %call.i240.i = call ptr @of_get_next_available_child(ptr noundef %retval.0.i.i, ptr noundef null) #8
  %cmp.not5.i.i = icmp eq ptr %call.i240.i, null
  br i1 %cmp.not5.i.i, label %if.end42.i.do.end48.i_crit_edge, label %if.end42.i.for.body.i242.i_crit_edge

if.end42.i.for.body.i242.i_crit_edge:             ; preds = %if.end42.i
  br label %for.body.i242.i

if.end42.i.do.end48.i_crit_edge:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end48.i

for.body.i242.i:                                  ; preds = %for.body.i242.i.for.body.i242.i_crit_edge, %if.end42.i.for.body.i242.i_crit_edge
  %num.07.i.i = phi i32 [ %inc.i241.i, %for.body.i242.i.for.body.i242.i_crit_edge ], [ 0, %if.end42.i.for.body.i242.i_crit_edge ]
  %child.06.i.i = phi ptr [ %call1.i.i, %for.body.i242.i.for.body.i242.i_crit_edge ], [ %call.i240.i, %if.end42.i.for.body.i242.i_crit_edge ]
  %inc.i241.i = add i32 %num.07.i.i, 1
  %call1.i.i = call ptr @of_get_next_available_child(ptr noundef %retval.0.i.i, ptr noundef nonnull %child.06.i.i) #8
  %cmp.not.i.i = icmp eq ptr %call1.i.i, null
  br i1 %cmp.not.i.i, label %of_get_available_child_count.exit.i, label %for.body.i242.i.for.body.i242.i_crit_edge

for.body.i242.i.for.body.i242.i_crit_edge:        ; preds = %for.body.i242.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i242.i

of_get_available_child_count.exit.i:              ; preds = %for.body.i242.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i241.i)
  %tobool44.not.i = icmp eq i32 %inc.i241.i, 0
  br i1 %tobool44.not.i, label %of_get_available_child_count.exit.i.do.end48.i_crit_edge, label %if.end49.i

of_get_available_child_count.exit.i.do.end48.i_crit_edge: ; preds = %of_get_available_child_count.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end48.i

do.end48.i:                                       ; preds = %of_get_available_child_count.exit.i.do.end48.i_crit_edge, %if.end42.i.do.end48.i_crit_edge
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #11
  br label %netxbig_leds_get_of_pdata.exit.thread53

if.end49.i:                                       ; preds = %of_get_available_child_count.exit.i
  %56 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %inc.i241.i, i32 24) #8
  %57 = extractvalue { i32, i1 } %56, 1
  br i1 %57, label %if.end49.i.netxbig_leds_get_of_pdata.exit.thread53_crit_edge, label %devm_kcalloc.exit247.i, !prof !100

if.end49.i.netxbig_leds_get_of_pdata.exit.thread53_crit_edge: ; preds = %if.end49.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %netxbig_leds_get_of_pdata.exit.thread53

devm_kcalloc.exit247.i:                           ; preds = %if.end49.i
  %58 = extractvalue { i32, i1 } %56, 0
  %call5.i.i244.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %58, i32 noundef 3520) #8
  %tobool51.not.i = icmp eq ptr %call5.i.i244.i, null
  br i1 %tobool51.not.i, label %devm_kcalloc.exit247.i.netxbig_leds_get_of_pdata.exit.thread53_crit_edge, label %if.end53.i

devm_kcalloc.exit247.i.netxbig_leds_get_of_pdata.exit.thread53_crit_edge: ; preds = %devm_kcalloc.exit247.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %netxbig_leds_get_of_pdata.exit.thread53

if.end53.i:                                       ; preds = %devm_kcalloc.exit247.i
  %call54.i = call ptr @of_get_next_available_child(ptr noundef %retval.0.i.i, ptr noundef null) #8
  %cmp56.not306.i = icmp eq ptr %call54.i, null
  br i1 %cmp56.not306.i, label %if.end53.i.netxbig_leds_get_of_pdata.exit.thread49_crit_edge, label %if.end53.i.for.body57.i_crit_edge

if.end53.i.for.body57.i_crit_edge:                ; preds = %if.end53.i
  br label %for.body57.i

if.end53.i.netxbig_leds_get_of_pdata.exit.thread49_crit_edge: ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %netxbig_leds_get_of_pdata.exit.thread49

for.body57.i:                                     ; preds = %for.inc127.i.for.body57.i_crit_edge, %if.end53.i.for.body57.i_crit_edge
  %led.0309.i = phi ptr [ %incdec.ptr.i, %for.inc127.i.for.body57.i_crit_edge ], [ %call5.i.i244.i, %if.end53.i.for.body57.i_crit_edge ]
  %child.0307.i = phi ptr [ %call128.i, %for.inc127.i.for.body57.i_crit_edge ], [ %call54.i, %if.end53.i.for.body57.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %string.i) #8
  %59 = ptrtoint ptr %string.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr inttoptr (i32 -1 to ptr), ptr %string.i, align 4, !annotation !101
  %mode_addr.i = getelementptr inbounds %struct.netxbig_led, ptr %led.0309.i, i32 0, i32 2
  %call.i.i248.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0307.i, ptr noundef nonnull @.str.14, ptr noundef %mode_addr.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i248.i)
  %tobool59.not.i = icmp sgt i32 %call.i.i248.i, -1
  br i1 %tobool59.not.i, label %if.end61.i, label %for.body57.i.err_node_put.i_crit_edge

for.body57.i.err_node_put.i_crit_edge:            ; preds = %for.body57.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_node_put.i

if.end61.i:                                       ; preds = %for.body57.i
  %bright_addr.i = getelementptr inbounds %struct.netxbig_led, ptr %led.0309.i, i32 0, i32 4
  %call.i.i249.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0307.i, ptr noundef nonnull @.str.15, ptr noundef %bright_addr.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i249.i)
  %tobool63.not.i = icmp sgt i32 %call.i.i249.i, -1
  br i1 %tobool63.not.i, label %if.end65.i, label %if.end61.i.err_node_put.i_crit_edge

if.end61.i.err_node_put.i_crit_edge:              ; preds = %if.end61.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_node_put.i

if.end65.i:                                       ; preds = %if.end61.i
  %bright_max.i = getelementptr inbounds %struct.netxbig_led, ptr %led.0309.i, i32 0, i32 5
  %call.i.i250.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.0307.i, ptr noundef nonnull @.str.16, ptr noundef %bright_max.i, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i250.i)
  %tobool67.not.i = icmp sgt i32 %call.i.i250.i, -1
  br i1 %tobool67.not.i, label %if.end69.i, label %if.end65.i.err_node_put.i_crit_edge

if.end65.i.err_node_put.i_crit_edge:              ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_node_put.i

if.end69.i:                                       ; preds = %if.end65.i
  %call5.i.i251.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 20, i32 noundef 3520) #8
  %tobool71.not.i = icmp eq ptr %call5.i.i251.i, null
  br i1 %tobool71.not.i, label %if.end69.i.err_node_put.i_crit_edge, label %for.body76.preheader.i

if.end69.i.err_node_put.i_crit_edge:              ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_node_put.i

for.body76.preheader.i:                           ; preds = %if.end69.i
  %60 = ptrtoint ptr %call5.i.i251.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 5, ptr %call5.i.i251.i, align 4
  %arrayidx77.1.i = getelementptr i32, ptr %call5.i.i251.i, i32 1
  %61 = ptrtoint ptr %arrayidx77.1.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 5, ptr %arrayidx77.1.i, align 4
  %arrayidx77.2.i = getelementptr i32, ptr %call5.i.i251.i, i32 2
  %62 = ptrtoint ptr %arrayidx77.2.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 5, ptr %arrayidx77.2.i, align 4
  %arrayidx77.3.i = getelementptr i32, ptr %call5.i.i251.i, i32 3
  %63 = ptrtoint ptr %arrayidx77.3.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 5, ptr %arrayidx77.3.i, align 4
  %arrayidx77.4.i = getelementptr i32, ptr %call5.i.i251.i, i32 4
  %64 = ptrtoint ptr %arrayidx77.4.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 5, ptr %arrayidx77.4.i, align 4
  %call.i254.i = call i32 @of_property_count_elems_of_size(ptr noundef nonnull %child.0307.i, ptr noundef nonnull @.str.17, i32 noundef 4) #8
  %65 = and i32 %call.i254.i, -2147483647
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %if.end86.i, label %for.body76.preheader.i.err_node_put.i_crit_edge

for.body76.preheader.i.err_node_put.i_crit_edge:  ; preds = %for.body76.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_node_put.i

if.end86.i:                                       ; preds = %for.body76.preheader.i
  %div87279280.i = lshr i32 %call.i254.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %call.i254.i)
  %cmp88.i = icmp ugt i32 %call.i254.i, 11
  br i1 %cmp88.i, label %if.end86.i.err_node_put.i_crit_edge, label %for.cond91.preheader.i

if.end86.i.err_node_put.i_crit_edge:              ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_node_put.i

for.cond91.preheader.i:                           ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call.i254.i)
  %cmp92289.not.i = icmp ult i32 %call.i254.i, 2
  br i1 %cmp92289.not.i, label %for.cond91.preheader.i.for.end110.i_crit_edge, label %for.body93.preheader.i

for.cond91.preheader.i.for.end110.i_crit_edge:    ; preds = %for.cond91.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end110.i

for.body93.preheader.i:                           ; preds = %for.cond91.preheader.i
  %umax.i = call i32 @llvm.umax.i32(i32 %div87279280.i, i32 1) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode94.i) #8
  %67 = ptrtoint ptr %mode94.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 -1, ptr %mode94.i, align 4, !annotation !101
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #8
  %68 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 -1, ptr %val.i, align 4, !annotation !101
  %call96.i = call i32 @of_property_read_u32_index(ptr noundef nonnull %child.0307.i, ptr noundef nonnull @.str.17, i32 noundef 0, ptr noundef nonnull %mode94.i) #8
  %call99.i = call i32 @of_property_read_u32_index(ptr noundef nonnull %child.0307.i, ptr noundef nonnull @.str.17, i32 noundef 1, ptr noundef nonnull %val.i) #8
  %69 = ptrtoint ptr %mode94.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %mode94.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %70)
  %cmp100.i = icmp sgt i32 %70, 4
  br i1 %cmp100.i, label %for.body93.preheader.i.cleanup104.thread.i_crit_edge, label %for.inc108.i

for.body93.preheader.i.cleanup104.thread.i_crit_edge: ; preds = %for.body93.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup104.thread.i

cleanup104.thread.i:                              ; preds = %for.body93.i.4.cleanup104.thread.i_crit_edge, %for.body93.i.3.cleanup104.thread.i_crit_edge, %for.body93.i.2.cleanup104.thread.i_crit_edge, %for.body93.i.1.cleanup104.thread.i_crit_edge, %for.body93.preheader.i.cleanup104.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode94.i) #8
  br label %err_node_put.i

for.inc108.i:                                     ; preds = %for.body93.preheader.i
  %71 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %val.i, align 4
  %arrayidx103.i = getelementptr i32, ptr %call5.i.i251.i, i32 %70
  %73 = ptrtoint ptr %arrayidx103.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %arrayidx103.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode94.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call.i254.i)
  %exitcond332.not.i = icmp ult i32 %call.i254.i, 4
  br i1 %exitcond332.not.i, label %for.inc108.i.for.end110.i_crit_edge, label %for.body93.i.1

for.inc108.i.for.end110.i_crit_edge:              ; preds = %for.inc108.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end110.i

for.body93.i.1:                                   ; preds = %for.inc108.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode94.i) #8
  %74 = ptrtoint ptr %mode94.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 -1, ptr %mode94.i, align 4, !annotation !101
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #8
  %75 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 -1, ptr %val.i, align 4, !annotation !101
  %call96.i.1 = call i32 @of_property_read_u32_index(ptr noundef nonnull %child.0307.i, ptr noundef nonnull @.str.17, i32 noundef 2, ptr noundef nonnull %mode94.i) #8
  %call99.i.1 = call i32 @of_property_read_u32_index(ptr noundef nonnull %child.0307.i, ptr noundef nonnull @.str.17, i32 noundef 3, ptr noundef nonnull %val.i) #8
  %76 = ptrtoint ptr %mode94.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %mode94.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %77)
  %cmp100.i.1 = icmp sgt i32 %77, 4
  br i1 %cmp100.i.1, label %for.body93.i.1.cleanup104.thread.i_crit_edge, label %for.inc108.i.1

for.body93.i.1.cleanup104.thread.i_crit_edge:     ; preds = %for.body93.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup104.thread.i

for.inc108.i.1:                                   ; preds = %for.body93.i.1
  %78 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %val.i, align 4
  %arrayidx103.i.1 = getelementptr i32, ptr %call5.i.i251.i, i32 %77
  %80 = ptrtoint ptr %arrayidx103.i.1 to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %arrayidx103.i.1, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode94.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %umax.i)
  %exitcond332.not.i.1 = icmp eq i32 %umax.i, 2
  br i1 %exitcond332.not.i.1, label %for.inc108.i.1.for.end110.i_crit_edge, label %for.body93.i.2

for.inc108.i.1.for.end110.i_crit_edge:            ; preds = %for.inc108.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end110.i

for.body93.i.2:                                   ; preds = %for.inc108.i.1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode94.i) #8
  %81 = ptrtoint ptr %mode94.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 -1, ptr %mode94.i, align 4, !annotation !101
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #8
  %82 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 -1, ptr %val.i, align 4, !annotation !101
  %call96.i.2 = call i32 @of_property_read_u32_index(ptr noundef nonnull %child.0307.i, ptr noundef nonnull @.str.17, i32 noundef 4, ptr noundef nonnull %mode94.i) #8
  %call99.i.2 = call i32 @of_property_read_u32_index(ptr noundef nonnull %child.0307.i, ptr noundef nonnull @.str.17, i32 noundef 5, ptr noundef nonnull %val.i) #8
  %83 = ptrtoint ptr %mode94.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %mode94.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %84)
  %cmp100.i.2 = icmp sgt i32 %84, 4
  br i1 %cmp100.i.2, label %for.body93.i.2.cleanup104.thread.i_crit_edge, label %for.inc108.i.2

for.body93.i.2.cleanup104.thread.i_crit_edge:     ; preds = %for.body93.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup104.thread.i

for.inc108.i.2:                                   ; preds = %for.body93.i.2
  %85 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %val.i, align 4
  %arrayidx103.i.2 = getelementptr i32, ptr %call5.i.i251.i, i32 %84
  %87 = ptrtoint ptr %arrayidx103.i.2 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %arrayidx103.i.2, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode94.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %umax.i)
  %exitcond332.not.i.2 = icmp eq i32 %umax.i, 3
  br i1 %exitcond332.not.i.2, label %for.inc108.i.2.for.end110.i_crit_edge, label %for.body93.i.3

for.inc108.i.2.for.end110.i_crit_edge:            ; preds = %for.inc108.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end110.i

for.body93.i.3:                                   ; preds = %for.inc108.i.2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode94.i) #8
  %88 = ptrtoint ptr %mode94.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 -1, ptr %mode94.i, align 4, !annotation !101
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #8
  %89 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 -1, ptr %val.i, align 4, !annotation !101
  %call96.i.3 = call i32 @of_property_read_u32_index(ptr noundef nonnull %child.0307.i, ptr noundef nonnull @.str.17, i32 noundef 6, ptr noundef nonnull %mode94.i) #8
  %call99.i.3 = call i32 @of_property_read_u32_index(ptr noundef nonnull %child.0307.i, ptr noundef nonnull @.str.17, i32 noundef 7, ptr noundef nonnull %val.i) #8
  %90 = ptrtoint ptr %mode94.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %mode94.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %91)
  %cmp100.i.3 = icmp sgt i32 %91, 4
  br i1 %cmp100.i.3, label %for.body93.i.3.cleanup104.thread.i_crit_edge, label %for.inc108.i.3

for.body93.i.3.cleanup104.thread.i_crit_edge:     ; preds = %for.body93.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup104.thread.i

for.inc108.i.3:                                   ; preds = %for.body93.i.3
  %92 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %val.i, align 4
  %arrayidx103.i.3 = getelementptr i32, ptr %call5.i.i251.i, i32 %91
  %94 = ptrtoint ptr %arrayidx103.i.3 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %arrayidx103.i.3, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode94.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %umax.i)
  %exitcond332.not.i.3 = icmp eq i32 %umax.i, 4
  br i1 %exitcond332.not.i.3, label %for.inc108.i.3.for.end110.i_crit_edge, label %for.body93.i.4

for.inc108.i.3.for.end110.i_crit_edge:            ; preds = %for.inc108.i.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end110.i

for.body93.i.4:                                   ; preds = %for.inc108.i.3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mode94.i) #8
  %95 = ptrtoint ptr %mode94.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 -1, ptr %mode94.i, align 4, !annotation !101
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #8
  %96 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 -1, ptr %val.i, align 4, !annotation !101
  %call96.i.4 = call i32 @of_property_read_u32_index(ptr noundef nonnull %child.0307.i, ptr noundef nonnull @.str.17, i32 noundef 8, ptr noundef nonnull %mode94.i) #8
  %call99.i.4 = call i32 @of_property_read_u32_index(ptr noundef nonnull %child.0307.i, ptr noundef nonnull @.str.17, i32 noundef 9, ptr noundef nonnull %val.i) #8
  %97 = ptrtoint ptr %mode94.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %mode94.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %98)
  %cmp100.i.4 = icmp sgt i32 %98, 4
  br i1 %cmp100.i.4, label %for.body93.i.4.cleanup104.thread.i_crit_edge, label %for.inc108.i.4

for.body93.i.4.cleanup104.thread.i_crit_edge:     ; preds = %for.body93.i.4
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup104.thread.i

for.inc108.i.4:                                   ; preds = %for.body93.i.4
  call void @__sanitizer_cov_trace_pc() #10
  %99 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %val.i, align 4
  %arrayidx103.i.4 = getelementptr i32, ptr %call5.i.i251.i, i32 %98
  %101 = ptrtoint ptr %arrayidx103.i.4 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %arrayidx103.i.4, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mode94.i) #8
  br label %for.end110.i

for.end110.i:                                     ; preds = %for.inc108.i.4, %for.inc108.i.3.for.end110.i_crit_edge, %for.inc108.i.2.for.end110.i_crit_edge, %for.inc108.i.1.for.end110.i_crit_edge, %for.inc108.i.for.end110.i_crit_edge, %for.cond91.preheader.i.for.end110.i_crit_edge
  %mode_val111.i = getelementptr inbounds %struct.netxbig_led, ptr %led.0309.i, i32 0, i32 3
  %102 = ptrtoint ptr %mode_val111.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %call5.i.i251.i, ptr %mode_val111.i, align 4
  %call112.i = call i32 @of_property_read_string(ptr noundef nonnull %child.0307.i, ptr noundef nonnull @.str.18, ptr noundef nonnull %string.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call112.i)
  %tobool113.not.i = icmp eq i32 %call112.i, 0
  %string.child.0.i = select i1 %tobool113.not.i, ptr %string.i, ptr %child.0307.i
  %103 = ptrtoint ptr %string.child.0.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %storemerge.i = load ptr, ptr %string.child.0.i, align 4
  %104 = ptrtoint ptr %led.0309.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %storemerge.i, ptr %led.0309.i, align 4
  %call118.i = call i32 @of_property_read_string(ptr noundef nonnull %child.0307.i, ptr noundef nonnull @.str.19, ptr noundef nonnull %string.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call118.i)
  %tobool119.not.i = icmp eq i32 %call118.i, 0
  br i1 %tobool119.not.i, label %if.then120.i, label %for.end110.i.for.inc127.i_crit_edge

for.end110.i.for.inc127.i_crit_edge:              ; preds = %for.end110.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc127.i

if.then120.i:                                     ; preds = %for.end110.i
  call void @__sanitizer_cov_trace_pc() #10
  %105 = ptrtoint ptr %string.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %string.i, align 4
  %default_trigger.i = getelementptr inbounds %struct.netxbig_led, ptr %led.0309.i, i32 0, i32 1
  %107 = ptrtoint ptr %default_trigger.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %106, ptr %default_trigger.i, align 4
  br label %for.inc127.i

for.inc127.i:                                     ; preds = %if.then120.i, %for.end110.i.for.inc127.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.netxbig_led, ptr %led.0309.i, i32 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %string.i) #8
  %call128.i = call ptr @of_get_next_available_child(ptr noundef %retval.0.i.i, ptr noundef nonnull %child.0307.i) #8
  %cmp56.not.i = icmp eq ptr %call128.i, null
  br i1 %cmp56.not.i, label %for.inc127.i.netxbig_leds_get_of_pdata.exit.thread49_crit_edge, label %for.inc127.i.for.body57.i_crit_edge

for.inc127.i.for.body57.i_crit_edge:              ; preds = %for.inc127.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body57.i

for.inc127.i.netxbig_leds_get_of_pdata.exit.thread49_crit_edge: ; preds = %for.inc127.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %netxbig_leds_get_of_pdata.exit.thread49

netxbig_leds_get_of_pdata.exit.thread49:          ; preds = %for.inc127.i.netxbig_leds_get_of_pdata.exit.thread49_crit_edge, %if.end53.i.netxbig_leds_get_of_pdata.exit.thread49_crit_edge
  %leds130.i = getelementptr inbounds %struct.netxbig_led_platform_data, ptr %call.i, i32 0, i32 3
  %108 = ptrtoint ptr %leds130.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %call5.i.i244.i, ptr %leds130.i, align 4
  %num_leds131.i = getelementptr inbounds %struct.netxbig_led_platform_data, ptr %call.i, i32 0, i32 4
  %109 = ptrtoint ptr %num_leds131.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %inc.i241.i, ptr %num_leds131.i, align 4
  %110 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %inc.i241.i, i32 476) #8
  %111 = extractvalue { i32, i1 } %110, 1
  br i1 %111, label %netxbig_leds_get_of_pdata.exit.thread49.cleanup_crit_edge, label %devm_kcalloc.exit, !prof !100

netxbig_leds_get_of_pdata.exit.thread49.cleanup_crit_edge: ; preds = %netxbig_leds_get_of_pdata.exit.thread49
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err_node_put.i:                                   ; preds = %cleanup104.thread.i, %if.end86.i.err_node_put.i_crit_edge, %for.body76.preheader.i.err_node_put.i_crit_edge, %if.end69.i.err_node_put.i_crit_edge, %if.end65.i.err_node_put.i_crit_edge, %if.end61.i.err_node_put.i_crit_edge, %for.body57.i.err_node_put.i_crit_edge
  %ret.4.ph.i = phi i32 [ -22, %cleanup104.thread.i ], [ %call.i.i248.i, %for.body57.i.err_node_put.i_crit_edge ], [ %call.i.i249.i, %if.end61.i.err_node_put.i_crit_edge ], [ %call.i.i250.i, %if.end65.i.err_node_put.i_crit_edge ], [ -12, %if.end69.i.err_node_put.i_crit_edge ], [ -22, %for.body76.preheader.i.err_node_put.i_crit_edge ], [ -22, %if.end86.i.err_node_put.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %string.i) #8
  call void @of_node_put(ptr noundef nonnull %child.0307.i) #8
  br label %netxbig_leds_get_of_pdata.exit.thread53

netxbig_leds_get_of_pdata.exit.thread53:          ; preds = %err_node_put.i, %devm_kcalloc.exit247.i.netxbig_leds_get_of_pdata.exit.thread53_crit_edge, %if.end49.i.netxbig_leds_get_of_pdata.exit.thread53_crit_edge, %do.end48.i, %cleanup.i, %devm_kcalloc.exit.i.netxbig_leds_get_of_pdata.exit.thread53_crit_edge, %if.end23.i.netxbig_leds_get_of_pdata.exit.thread53_crit_edge, %if.then20.i.netxbig_leds_get_of_pdata.exit.thread53_crit_edge, %netxbig_gpio_ext_get.exit.thread.i, %if.then12.i
  %ret.5.i.ph = phi i32 [ -12, %if.end49.i.netxbig_leds_get_of_pdata.exit.thread53_crit_edge ], [ -12, %if.end23.i.netxbig_leds_get_of_pdata.exit.thread53_crit_edge ], [ %retval.0.i238.ph.i, %netxbig_gpio_ext_get.exit.thread.i ], [ -12, %devm_kcalloc.exit247.i.netxbig_leds_get_of_pdata.exit.thread53_crit_edge ], [ -12, %devm_kcalloc.exit.i.netxbig_leds_get_of_pdata.exit.thread53_crit_edge ], [ -22, %if.then20.i.netxbig_leds_get_of_pdata.exit.thread53_crit_edge ], [ -12, %if.then12.i ], [ -19, %do.end48.i ], [ %ret.4.ph.i, %err_node_put.i ], [ -22, %cleanup.i ]
  call void @put_device(ptr noundef %dev9.i) #8
  br label %cleanup

netxbig_leds_get_of_pdata.exit:                   ; preds = %netxbig_gpio_ext_remove.exit.i.i.i, %do.end44.i.i, %if.then29.i.i, %if.then7.i.i
  %retval.0.i238.i = phi i32 [ %8, %if.then7.i.i ], [ %15, %if.then29.i.i ], [ %19, %do.end44.i.i ], [ %call.i.i.i, %netxbig_gpio_ext_remove.exit.i.i.i ]
  call void @of_node_put(ptr noundef nonnull %4) #8
  call void @put_device(ptr noundef %dev9.i) #8
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %netxbig_leds_get_of_pdata.exit.thread49
  %112 = extractvalue { i32, i1 } %110, 0
  %call5.i.i35 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %112, i32 noundef 3520) #8
  %tobool8.not = icmp eq ptr %call5.i.i35, null
  br i1 %tobool8.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %for.cond.preheader

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483647, i32 %num.07.i.i)
  %cmp63 = icmp ult i32 %num.07.i.i, 2147483647
  br i1 %cmp63, label %for.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %113 = ptrtoint ptr %leds130.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %leds130.i, align 4
  %timer.i42 = getelementptr inbounds %struct.netxbig_led_platform_data, ptr %call.i, i32 0, i32 1
  %num_timer.i43 = getelementptr inbounds %struct.netxbig_led_platform_data, ptr %call.i, i32 0, i32 2
  br label %for.body

for.cond:                                         ; preds = %create_netxbig_led.exit
  %inc = add nuw nsw i32 %i.064, 1
  %exitcond.not = icmp eq i32 %i.064, %num.07.i.i
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.064 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.netxbig_led_data, ptr %call5.i.i35, i32 %i.064
  %arrayidx12 = getelementptr %struct.netxbig_led, ptr %114, i32 %i.064
  %lock.i = getelementptr %struct.netxbig_led_data, ptr %call5.i.i35, i32 %i.064, i32 9
  call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.34, ptr noundef nonnull @create_netxbig_led.__key, i16 noundef signext 3) #8
  %115 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %call.i, align 4
  %117 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %116, ptr %arrayidx, align 4
  %118 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %arrayidx12, align 4
  %cdev.i = getelementptr %struct.netxbig_led_data, ptr %call5.i.i35, i32 %i.064, i32 1
  %120 = ptrtoint ptr %cdev.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %119, ptr %cdev.i, align 4
  %default_trigger.i38 = getelementptr %struct.netxbig_led, ptr %114, i32 %i.064, i32 1
  %121 = ptrtoint ptr %default_trigger.i38 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %default_trigger.i38, align 4
  %default_trigger4.i = getelementptr %struct.netxbig_led_data, ptr %call5.i.i35, i32 %i.064, i32 1, i32 14
  %123 = ptrtoint ptr %default_trigger4.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %122, ptr %default_trigger4.i, align 4
  %blink_set.i = getelementptr %struct.netxbig_led_data, ptr %call5.i.i35, i32 %i.064, i32 1, i32 8
  %124 = ptrtoint ptr %blink_set.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr @netxbig_led_blink_set, ptr %blink_set.i, align 4
  %brightness_set.i = getelementptr %struct.netxbig_led_data, ptr %call5.i.i35, i32 %i.064, i32 1, i32 5
  %125 = ptrtoint ptr %brightness_set.i to i32
  call void @__asan_store4_noabort(i32 %125)
  store ptr @netxbig_led_set, ptr %brightness_set.i, align 4
  %sata.i = getelementptr %struct.netxbig_led_data, ptr %call5.i.i35, i32 %i.064, i32 8
  %126 = ptrtoint ptr %sata.i to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 0, ptr %sata.i, align 4
  %brightness.i = getelementptr %struct.netxbig_led_data, ptr %call5.i.i35, i32 %i.064, i32 1, i32 1
  %127 = ptrtoint ptr %brightness.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 0, ptr %brightness.i, align 4
  %bright_max.i39 = getelementptr %struct.netxbig_led, ptr %114, i32 %i.064, i32 5
  %128 = ptrtoint ptr %bright_max.i39 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %bright_max.i39, align 4
  %max_brightness.i = getelementptr %struct.netxbig_led_data, ptr %call5.i.i35, i32 %i.064, i32 1, i32 2
  %130 = ptrtoint ptr %max_brightness.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %129, ptr %max_brightness.i, align 4
  %flags.i = getelementptr %struct.netxbig_led_data, ptr %call5.i.i35, i32 %i.064, i32 1, i32 3
  %131 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %132, 65536
  store i32 %or.i, ptr %flags.i, align 4
  %mode_addr.i40 = getelementptr %struct.netxbig_led, ptr %114, i32 %i.064, i32 2
  %133 = ptrtoint ptr %mode_addr.i40 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %mode_addr.i40, align 4
  %mode_addr10.i = getelementptr %struct.netxbig_led_data, ptr %call5.i.i35, i32 %i.064, i32 2
  %135 = ptrtoint ptr %mode_addr10.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %134, ptr %mode_addr10.i, align 4
  %mode_val.i = getelementptr %struct.netxbig_led, ptr %114, i32 %i.064, i32 3
  %136 = ptrtoint ptr %mode_val.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %mode_val.i, align 4
  %mode_val11.i = getelementptr %struct.netxbig_led_data, ptr %call5.i.i35, i32 %i.064, i32 3
  %138 = ptrtoint ptr %mode_val11.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %137, ptr %mode_val11.i, align 4
  %bright_addr.i41 = getelementptr %struct.netxbig_led, ptr %114, i32 %i.064, i32 4
  %139 = ptrtoint ptr %bright_addr.i41 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %bright_addr.i41, align 4
  %bright_addr12.i = getelementptr %struct.netxbig_led_data, ptr %call5.i.i35, i32 %i.064, i32 4
  %141 = ptrtoint ptr %bright_addr12.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %140, ptr %bright_addr12.i, align 4
  %142 = ptrtoint ptr %timer.i42 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %timer.i42, align 4
  %timer13.i = getelementptr %struct.netxbig_led_data, ptr %call5.i.i35, i32 %i.064, i32 5
  %144 = ptrtoint ptr %timer13.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store ptr %143, ptr %timer13.i, align 4
  %145 = ptrtoint ptr %num_timer.i43 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %num_timer.i43, align 4
  %num_timer14.i = getelementptr %struct.netxbig_led_data, ptr %call5.i.i35, i32 %i.064, i32 6
  %147 = ptrtoint ptr %num_timer14.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %146, ptr %num_timer14.i, align 4
  %arrayidx.i44 = getelementptr i32, ptr %137, i32 2
  %148 = ptrtoint ptr %arrayidx.i44 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %arrayidx.i44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %149)
  %cmp.not.i = icmp eq i32 %149, 5
  br i1 %cmp.not.i, label %for.body.create_netxbig_led.exit_crit_edge, label %if.then.i

for.body.create_netxbig_led.exit_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %create_netxbig_led.exit

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %groups.i = getelementptr %struct.netxbig_led_data, ptr %call5.i.i35, i32 %i.064, i32 1, i32 12
  %150 = ptrtoint ptr %groups.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr @netxbig_led_groups, ptr %groups.i, align 4
  br label %create_netxbig_led.exit

create_netxbig_led.exit:                          ; preds = %if.then.i, %for.body.create_netxbig_led.exit_crit_edge
  %call.i.i45 = call i32 @devm_led_classdev_register_ext(ptr noundef %dev, ptr noundef %cdev.i, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i45)
  %cmp14 = icmp slt i32 %call.i.i45, 0
  br i1 %cmp14, label %create_netxbig_led.exit.cleanup_crit_edge, label %for.cond

create_netxbig_led.exit.cleanup_crit_edge:        ; preds = %create_netxbig_led.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %create_netxbig_led.exit.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %devm_kcalloc.exit.cleanup_crit_edge, %netxbig_leds_get_of_pdata.exit, %netxbig_leds_get_of_pdata.exit.thread53, %netxbig_leds_get_of_pdata.exit.thread49.cleanup_crit_edge, %do.end7.i, %do.end.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.i238.i, %netxbig_leds_get_of_pdata.exit ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ %ret.5.i.ph, %netxbig_leds_get_of_pdata.exit.thread53 ], [ -22, %do.end.i ], [ -19, %do.end7.i ], [ -12, %netxbig_leds_get_of_pdata.exit.thread49.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %call.i.i45, %create_netxbig_led.exit.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_available_child(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_count(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiod_get_index(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_set_consumer_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netxbig_gpio_ext_remove(ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %num_addr = getelementptr inbounds %struct.netxbig_gpio_ext, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %num_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp18 = icmp sgt i32 %1, 0
  br i1 %cmp18, label %entry.for.body_crit_edge, label %entry.for.cond1.preheader_crit_edge

entry.for.cond1.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond1.preheader

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.cond1.preheader:                              ; preds = %for.body.for.cond1.preheader_crit_edge, %entry.for.cond1.preheader_crit_edge
  %num_data = getelementptr inbounds %struct.netxbig_gpio_ext, ptr %data, i32 0, i32 3
  %2 = ptrtoint ptr %num_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp220 = icmp sgt i32 %3, 0
  br i1 %cmp220, label %for.body3.lr.ph, label %for.cond1.preheader.for.end8_crit_edge

for.cond1.preheader.for.end8_crit_edge:           ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end8

for.body3.lr.ph:                                  ; preds = %for.cond1.preheader
  %data4 = getelementptr inbounds %struct.netxbig_gpio_ext, ptr %data, i32 0, i32 2
  br label %for.body3

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.019 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr ptr, ptr %5, i32 %i.019
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  tail call void @gpiod_put(ptr noundef %7) #8
  %inc = add nuw nsw i32 %i.019, 1
  %8 = ptrtoint ptr %num_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_addr, align 4
  %cmp = icmp slt i32 %inc, %9
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.cond1.preheader_crit_edge

for.body.for.cond1.preheader_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond1.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body3:                                        ; preds = %for.body3.for.body3_crit_edge, %for.body3.lr.ph
  %i.121 = phi i32 [ 0, %for.body3.lr.ph ], [ %inc7, %for.body3.for.body3_crit_edge ]
  %10 = ptrtoint ptr %data4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data4, align 4
  %arrayidx5 = getelementptr ptr, ptr %11, i32 %i.121
  %12 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx5, align 4
  tail call void @gpiod_put(ptr noundef %13) #8
  %inc7 = add nuw nsw i32 %i.121, 1
  %14 = ptrtoint ptr %num_data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_data, align 4
  %cmp2 = icmp slt i32 %inc7, %15
  br i1 %cmp2, label %for.body3.for.body3_crit_edge, label %for.body3.for.end8_crit_edge

for.body3.for.end8_crit_edge:                     ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end8

for.body3.for.body3_crit_edge:                    ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body3

for.end8:                                         ; preds = %for.body3.for.end8_crit_edge, %for.cond1.preheader.for.end8_crit_edge
  %enable = getelementptr inbounds %struct.netxbig_gpio_ext, ptr %data, i32 0, i32 4
  %16 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %enable, align 4
  tail call void @gpiod_put(ptr noundef %17) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @netxbig_led_blink_set(ptr noundef %led_cdev, ptr nocapture noundef readonly %delay_on, ptr nocapture noundef readonly %delay_off) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %led_cdev, i32 -4
  %0 = ptrtoint ptr %delay_on to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %delay_on, align 4
  %2 = ptrtoint ptr %delay_off to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %delay_off, align 4
  %timer = getelementptr i8, ptr %led_cdev, i32 412
  %4 = ptrtoint ptr %timer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %timer, align 4
  %num_timer = getelementptr i8, ptr %led_cdev, i32 416
  %6 = ptrtoint ptr %num_timer to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_timer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp15.i = icmp sgt i32 %7, 0
  br i1 %cmp15.i, label %entry.for.body.i_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.016.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.netxbig_led_timer, ptr %5, i32 %i.016.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %1)
  %cmp2.i = icmp eq i32 %9, %1
  br i1 %cmp2.i, label %land.lhs.true.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %delay_off4.i = getelementptr %struct.netxbig_led_timer, ptr %5, i32 %i.016.i, i32 1
  %10 = ptrtoint ptr %delay_off4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %delay_off4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %3)
  %cmp5.i = icmp eq i32 %11, %3
  br i1 %cmp5.i, label %if.end, label %land.lhs.true.i.for.inc.i_crit_edge

land.lhs.true.i.for.inc.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i

for.inc.i:                                        ; preds = %land.lhs.true.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.016.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %7
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.i
  %mode7.i = getelementptr %struct.netxbig_led_timer, ptr %5, i32 %i.016.i, i32 2
  %12 = ptrtoint ptr %mode7.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mode7.i, align 4
  %mode_val1 = getelementptr i8, ptr %led_cdev, i32 404
  %14 = ptrtoint ptr %mode_val1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %mode_val1, align 4
  %arrayidx = getelementptr i32, ptr %15, i32 %13
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %17)
  %cmp2 = icmp eq i32 %17, 5
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %lock = getelementptr i8, ptr %led_cdev, i32 428
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 4
  %mode_addr = getelementptr i8, ptr %led_cdev, i32 400
  %20 = ptrtoint ptr %mode_addr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mode_addr, align 4
  tail call fastcc void @gpio_ext_set_value(ptr noundef %19, i32 noundef %21, i32 noundef %17)
  %mode5 = getelementptr i8, ptr %led_cdev, i32 420
  %22 = ptrtoint ptr %mode5 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %13, ptr %mode5, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %for.inc.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @netxbig_led_set(ptr noundef %led_cdev, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %led_cdev, i32 -4
  %lock = getelementptr i8, ptr %led_cdev, i32 428
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %cmp6 = icmp eq i32 %value, 0
  br i1 %cmp6, label %if.end23.critedge, label %if.else

if.else:                                          ; preds = %entry
  %sata = getelementptr i8, ptr %led_cdev, i32 424
  %0 = ptrtoint ptr %sata to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sata, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %if.else9, label %if.then21.critedge37

if.else9:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %mode10 = getelementptr i8, ptr %led_cdev, i32 420
  %2 = ptrtoint ptr %mode10 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mode10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp11 = icmp eq i32 %3, 0
  %. = select i1 %cmp11, i32 1, i32 %3
  %mode_val18.c = getelementptr i8, ptr %led_cdev, i32 404
  %4 = ptrtoint ptr %mode_val18.c to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mode_val18.c, align 4
  %arrayidx.c = getelementptr i32, ptr %5, i32 %.
  %6 = ptrtoint ptr %arrayidx.c to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.c, align 4
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 4
  %mode_addr.c = getelementptr i8, ptr %led_cdev, i32 400
  %10 = ptrtoint ptr %mode_addr.c to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mode_addr.c, align 4
  tail call fastcc void @gpio_ext_set_value(ptr noundef %9, i32 noundef %11, i32 noundef %7)
  %12 = ptrtoint ptr %mode10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %., ptr %mode10, align 4
  br label %if.then21

if.then21.critedge37:                             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %mode_val18.c38 = getelementptr i8, ptr %led_cdev, i32 404
  %13 = ptrtoint ptr %mode_val18.c38 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %mode_val18.c38, align 4
  %arrayidx.c39 = getelementptr i32, ptr %14, i32 2
  %15 = ptrtoint ptr %arrayidx.c39 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.c39, align 4
  %17 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %add.ptr, align 4
  %mode_addr.c40 = getelementptr i8, ptr %led_cdev, i32 400
  %19 = ptrtoint ptr %mode_addr.c40 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mode_addr.c40, align 4
  tail call fastcc void @gpio_ext_set_value(ptr noundef %18, i32 noundef %20, i32 noundef %16)
  %mode19.c41 = getelementptr i8, ptr %led_cdev, i32 420
  %21 = ptrtoint ptr %mode19.c41 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 2, ptr %mode19.c41, align 4
  br label %if.then21

if.then21:                                        ; preds = %if.then21.critedge37, %if.else9
  %22 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %add.ptr, align 4
  %bright_addr = getelementptr i8, ptr %led_cdev, i32 408
  %24 = ptrtoint ptr %bright_addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bright_addr, align 4
  tail call fastcc void @gpio_ext_set_value(ptr noundef %23, i32 noundef %25, i32 noundef %value)
  br label %if.end23

if.end23.critedge:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %mode_val18.c42 = getelementptr i8, ptr %led_cdev, i32 404
  %26 = ptrtoint ptr %mode_val18.c42 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mode_val18.c42, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %30 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %add.ptr, align 4
  %mode_addr.c43 = getelementptr i8, ptr %led_cdev, i32 400
  %32 = ptrtoint ptr %mode_addr.c43 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %mode_addr.c43, align 4
  tail call fastcc void @gpio_ext_set_value(ptr noundef %31, i32 noundef %33, i32 noundef %29)
  %mode19.c44 = getelementptr i8, ptr %led_cdev, i32 420
  %34 = ptrtoint ptr %mode19.c44 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %mode19.c44, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.end23.critedge, %if.then21
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gpio_ext_set_value(ptr nocapture noundef readonly %gpio_ext, i32 noundef %addr, i32 noundef %value) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @gpio_ext_lock) #8
  %num_addr.i = getelementptr inbounds %struct.netxbig_gpio_ext, ptr %gpio_ext, i32 0, i32 1
  %0 = ptrtoint ptr %num_addr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_addr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp7.i = icmp sgt i32 %1, 0
  br i1 %cmp7.i, label %entry.for.body.i_crit_edge, label %entry.gpio_ext_set_addr.exit_crit_edge

entry.gpio_ext_set_addr.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %gpio_ext_set_addr.exit

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %pin.08.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %2 = ptrtoint ptr %gpio_ext to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %gpio_ext, align 4
  %arrayidx.i = getelementptr ptr, ptr %3, i32 %pin.08.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %shr6.i = lshr i32 %addr, %pin.08.i
  %and.i = and i32 %shr6.i, 1
  tail call void @gpiod_set_value(ptr noundef %5, i32 noundef %and.i) #8
  %inc.i = add nuw nsw i32 %pin.08.i, 1
  %6 = ptrtoint ptr %num_addr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_addr.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %7
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.gpio_ext_set_addr.exit_crit_edge

for.body.i.gpio_ext_set_addr.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gpio_ext_set_addr.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

gpio_ext_set_addr.exit:                           ; preds = %for.body.i.gpio_ext_set_addr.exit_crit_edge, %entry.gpio_ext_set_addr.exit_crit_edge
  %num_data.i = getelementptr inbounds %struct.netxbig_gpio_ext, ptr %gpio_ext, i32 0, i32 3
  %8 = ptrtoint ptr %num_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %num_data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp7.i7 = icmp sgt i32 %9, 0
  br i1 %cmp7.i7, label %for.body.lr.ph.i, label %gpio_ext_set_addr.exit.gpio_ext_set_data.exit_crit_edge

gpio_ext_set_addr.exit.gpio_ext_set_data.exit_crit_edge: ; preds = %gpio_ext_set_addr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %gpio_ext_set_data.exit

for.body.lr.ph.i:                                 ; preds = %gpio_ext_set_addr.exit
  %data1.i = getelementptr inbounds %struct.netxbig_gpio_ext, ptr %gpio_ext, i32 0, i32 2
  br label %for.body.i14

for.body.i14:                                     ; preds = %for.body.i14.for.body.i14_crit_edge, %for.body.lr.ph.i
  %pin.08.i8 = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i12, %for.body.i14.for.body.i14_crit_edge ]
  %10 = ptrtoint ptr %data1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data1.i, align 4
  %arrayidx.i9 = getelementptr ptr, ptr %11, i32 %pin.08.i8
  %12 = ptrtoint ptr %arrayidx.i9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.i9, align 4
  %shr6.i10 = lshr i32 %value, %pin.08.i8
  %and.i11 = and i32 %shr6.i10, 1
  tail call void @gpiod_set_value(ptr noundef %13, i32 noundef %and.i11) #8
  %inc.i12 = add nuw nsw i32 %pin.08.i8, 1
  %14 = ptrtoint ptr %num_data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_data.i, align 4
  %cmp.i13 = icmp slt i32 %inc.i12, %15
  br i1 %cmp.i13, label %for.body.i14.for.body.i14_crit_edge, label %for.body.i14.gpio_ext_set_data.exit_crit_edge

for.body.i14.gpio_ext_set_data.exit_crit_edge:    ; preds = %for.body.i14
  call void @__sanitizer_cov_trace_pc() #10
  br label %gpio_ext_set_data.exit

for.body.i14.for.body.i14_crit_edge:              ; preds = %for.body.i14
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i14

gpio_ext_set_data.exit:                           ; preds = %for.body.i14.gpio_ext_set_data.exit_crit_edge, %gpio_ext_set_addr.exit.gpio_ext_set_data.exit_crit_edge
  %enable.i = getelementptr inbounds %struct.netxbig_gpio_ext, ptr %gpio_ext, i32 0, i32 4
  %16 = ptrtoint ptr %enable.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %enable.i, align 4
  tail call void @gpiod_set_value(ptr noundef %17, i32 noundef 0) #8
  %18 = ptrtoint ptr %enable.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %enable.i, align 4
  tail call void @gpiod_set_value(ptr noundef %19, i32 noundef 1) #8
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @gpio_ext_lock, i32 noundef %call2) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sata_show(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr nocapture noundef writeonly %buf) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %sata = getelementptr i8, ptr %1, i32 424
  %2 = ptrtoint ptr %sata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sata, align 4
  %call1 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %buf, ptr noundef nonnull @.str.37, i32 noundef %3)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sata_store(ptr nocapture noundef readonly %dev, ptr nocapture noundef readnone %attr, ptr noundef %buff, i32 noundef %count) #2 align 64 {
entry:
  %enable = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 -4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %enable) #8
  %2 = ptrtoint ptr %enable to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %enable, align 4, !annotation !101
  %call.i = call i32 @_kstrtoul(ptr noundef %buff, i32 noundef 10, ptr noundef nonnull %enable) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %enable, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool = icmp ne i32 %4, 0
  %lnot.ext = zext i1 %tobool to i32
  %5 = ptrtoint ptr %enable to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %lnot.ext, ptr %enable, align 4
  %lock = getelementptr i8, ptr %1, i32 428
  call void @_raw_spin_lock_irq(ptr noundef %lock) #8
  %sata = getelementptr i8, ptr %1, i32 424
  %6 = ptrtoint ptr %sata to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sata, align 4
  %8 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %enable, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp3 = icmp eq i32 %7, %9
  br i1 %cmp3, label %if.end.exit_unlock_crit_edge, label %if.end5

if.end.exit_unlock_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_unlock

if.end5:                                          ; preds = %if.end
  %mode6 = getelementptr i8, ptr %1, i32 420
  %10 = ptrtoint ptr %mode6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mode6, align 4
  %.off = add i32 %11, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool12.not = icmp eq i32 %9, 0
  %. = select i1 %tobool12.not, i32 1, i32 2
  %mode.0 = select i1 %switch, i32 %., i32 %11
  %mode_val17 = getelementptr i8, ptr %1, i32 404
  %12 = ptrtoint ptr %mode_val17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mode_val17, align 4
  %arrayidx = getelementptr i32, ptr %13, i32 %mode.0
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %15)
  %cmp18 = icmp eq i32 %15, 5
  br i1 %cmp18, label %if.end5.exit_unlock_crit_edge, label %if.end20

if.end5.exit_unlock_crit_edge:                    ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %exit_unlock

if.end20:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %16 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %add.ptr, align 4
  %mode_addr = getelementptr i8, ptr %1, i32 400
  %18 = ptrtoint ptr %mode_addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mode_addr, align 4
  call fastcc void @gpio_ext_set_value(ptr noundef %17, i32 noundef %19, i32 noundef %15)
  %20 = ptrtoint ptr %mode6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %mode.0, ptr %mode6, align 4
  %21 = ptrtoint ptr %enable to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %enable, align 4
  %23 = ptrtoint ptr %sata to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %sata, align 4
  br label %exit_unlock

exit_unlock:                                      ; preds = %if.end20, %if.end5.exit_unlock_crit_edge, %if.end.exit_unlock_crit_edge
  %ret.0 = phi i32 [ %count, %if.end20 ], [ %count, %if.end.exit_unlock_crit_edge ], [ -22, %if.end5.exit_unlock_crit_edge ]
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #8
  br label %cleanup

cleanup:                                          ; preds = %exit_unlock, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %exit_unlock ], [ %call.i, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %enable) #8
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_kstrtoul(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nofree nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !29, !30, !32, !34, !35, !36, !38, !40, !42, !44, !46, !48, !50, !52, !53, !54, !55, !57, !59, !61, !62, !63, !65, !67, !69, !70, !71, !73, !75, !76, !78, !79, !81, !82, !84, !86, !87, !89}
!llvm.module.flags = !{!91, !92, !93, !94, !95, !96, !97, !98}
!llvm.ident = !{!99}

!0 = !{ptr @__initcall__kmod_leds_netxbig__183_637_netxbig_led_driver_init6, !1, !"__initcall__kmod_leds_netxbig__183_637_netxbig_led_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/leds/leds-netxbig.c", i32 637, i32 1}
!2 = !{ptr @__exitcall_netxbig_led_driver_exit, !1, !"__exitcall_netxbig_led_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author184, !4, !"__UNIQUE_ID_author184", i1 false, i1 false}
!4 = !{!"../drivers/leds/leds-netxbig.c", i32 639, i32 1}
!5 = !{ptr @__UNIQUE_ID_description185, !6, !"__UNIQUE_ID_description185", i1 false, i1 false}
!6 = !{!"../drivers/leds/leds-netxbig.c", i32 640, i32 1}
!7 = !{ptr @__UNIQUE_ID_file186, !8, !"__UNIQUE_ID_file186", i1 false, i1 false}
!8 = !{!"../drivers/leds/leds-netxbig.c", i32 641, i32 1}
!9 = !{ptr @__UNIQUE_ID_license187, !8, !"__UNIQUE_ID_license187", i1 false, i1 false}
!10 = !{ptr @__UNIQUE_ID_alias188, !11, !"__UNIQUE_ID_alias188", i1 false, i1 false}
!11 = !{!"../drivers/leds/leds-netxbig.c", i32 642, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/leds/leds-netxbig.c", i32 632, i32 12}
!14 = !{ptr @netxbig_led_driver, !15, !"netxbig_led_driver", i1 false, i1 false}
!15 = !{!"../drivers/leds/leds-netxbig.c", i32 629, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/leds/leds-netxbig.c", i32 436, i32 37}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/leds/leds-netxbig.c", i32 438, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @netxbig_leds_get_of_pdata._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @netxbig_leds_get_of_pdata._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/leds/leds-netxbig.c", i32 443, i32 3}
!28 = !{ptr @netxbig_leds_get_of_pdata._entry.7, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @netxbig_leds_get_of_pdata._entry_ptr.9, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/leds/leds-netxbig.c", i32 461, i32 40}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/leds/leds-netxbig.c", i32 498, i32 3}
!34 = !{ptr @netxbig_leds_get_of_pdata._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @netxbig_leds_get_of_pdata._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/leds/leds-netxbig.c", i32 515, i32 37}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/leds/leds-netxbig.c", i32 520, i32 37}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/leds/leds-netxbig.c", i32 525, i32 37}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/leds/leds-netxbig.c", i32 542, i32 44}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/leds/leds-netxbig.c", i32 569, i32 39}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/leds/leds-netxbig.c", i32 575, i32 11}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/leds/leds-netxbig.c", i32 356, i32 34}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/leds/leds-netxbig.c", i32 358, i32 3}
!52 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @netxbig_gpio_ext_get._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @netxbig_gpio_ext_get._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/leds/leds-netxbig.c", i32 379, i32 34}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/leds/leds-netxbig.c", i32 385, i32 34}
!59 = !{ptr @.str.26, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/leds/leds-netxbig.c", i32 387, i32 3}
!61 = !{ptr @netxbig_gpio_ext_get._entry.25, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @netxbig_gpio_ext_get._entry_ptr.27, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/leds/leds-netxbig.c", i32 401, i32 34}
!65 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/leds/leds-netxbig.c", i32 407, i32 34}
!67 = !{ptr @.str.31, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/leds/leds-netxbig.c", i32 409, i32 3}
!69 = !{ptr @netxbig_gpio_ext_get._entry.30, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @netxbig_gpio_ext_get._entry_ptr.32, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/leds/leds-netxbig.c", i32 413, i32 33}
!73 = !{ptr @create_netxbig_led.__key, !74, !"__key", i1 false, i1 false}
!74 = !{!"../drivers/leds/leds-netxbig.c", i32 281, i32 2}
!75 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/leds/leds-netxbig.c", i32 66, i32 8}
!78 = !{ptr @gpio_ext_lock, !77, !"gpio_ext_lock", i1 false, i1 false}
!79 = !{ptr @netxbig_led_groups, !80, !"netxbig_led_groups", i1 false, i1 false}
!80 = !{!"../drivers/leds/leds-netxbig.c", i32 274, i32 1}
!81 = !{ptr @netxbig_led_group, !80, !"netxbig_led_group", i1 false, i1 false}
!82 = !{ptr @netxbig_led_attrs, !83, !"netxbig_led_attrs", i1 false, i1 false}
!83 = !{!"../drivers/leds/leds-netxbig.c", i32 270, i32 26}
!84 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/leds/leds-netxbig.c", i32 268, i32 8}
!86 = !{ptr @dev_attr_sata, !85, !"dev_attr_sata", i1 false, i1 false}
!87 = !{ptr @.str.37, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/leds/leds-netxbig.c", i32 265, i32 22}
!89 = !{ptr @of_netxbig_leds_match, !90, !"of_netxbig_leds_match", i1 false, i1 false}
!90 = !{!"../drivers/leds/leds-netxbig.c", i32 593, i32 34}
!91 = !{i32 1, !"wchar_size", i32 2}
!92 = !{i32 1, !"min_enum_size", i32 4}
!93 = !{i32 8, !"branch-target-enforcement", i32 0}
!94 = !{i32 8, !"sign-return-address", i32 0}
!95 = !{i32 8, !"sign-return-address-all", i32 0}
!96 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!97 = !{i32 7, !"uwtable", i32 1}
!98 = !{i32 7, !"frame-pointer", i32 2}
!99 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!100 = !{!"branch_weights", i32 1, i32 2000}
!101 = !{!"auto-init"}
