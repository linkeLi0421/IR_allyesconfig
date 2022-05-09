; ModuleID = '/llk/IR_all_yes/drivers/leds/blink/leds-lgm-sso.c_pt.bc'
source_filename = "../drivers/leds/blink/leds-lgm-sso.c"
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
%struct.led_init_data = type { ptr, ptr, ptr, i8 }
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
%struct.sso_led_priv = type { ptr, ptr, ptr, [2 x %struct.clk_bulk_data], i32, i32, [10 x i32], %struct.list_head, %struct.sso_gpio }
%struct.clk_bulk_data = type { ptr, ptr }
%struct.sso_gpio = type { %struct.gpio_chip, i32, i32, i32, i32, i32 }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.68, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.68 = type { ptr }
%struct.sso_led = type { %struct.list_head, %struct.led_classdev, ptr, %struct.sso_led_desc, ptr }
%struct.led_classdev = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, %struct.timer_list, i32, i32, ptr, %struct.work_struct, i32, %struct.rw_semaphore, ptr, %struct.list_head, ptr, i8, ptr, i32, ptr, %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.sso_led_desc = type { ptr, ptr, i32, i32, i8, i32, i32 }

@__initcall__kmod_leds_lgm_sso__258_874_intel_sso_led_driver_init6 = internal global ptr @intel_sso_led_driver_init, section ".initcall6.init", align 4
@intel_sso_led_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @intel_sso_led_probe, ptr @intel_sso_led_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_sso_led_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_intel_sso_led_driver_exit = internal global ptr @intel_sso_led_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description259 = internal constant [51 x i8] c"leds_lgm_sso.description=Intel SSO LED/GPIO driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file260 = internal constant [50 x i8] c"leds_lgm_sso.file=drivers/leds/blink/leds-lgm-sso\00", section ".modinfo", align 1
@__UNIQUE_ID_license261 = internal constant [28 x i8] c"leds_lgm_sso.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lgm-ssoled\00", [21 x i8] zeroinitializer }, align 32
@of_sso_led_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"intel,lgm-ssoled\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sso\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fpid\00", [27 x i8] zeroinitializer }, align 32
@intel_sso_led_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 794, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Getting clocks failed!\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"intel_sso_led_probe\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/leds/blink/leds-lgm-sso.c\00", [62 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@intel_sso_led_probe._entry_ptr = internal global ptr @intel_sso_led_probe._entry, section ".printk_index", align 4
@intel_sso_led_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 800, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to prepare and enable clocks!\0A\00", [58 x i8] zeroinitializer }, align 32
@intel_sso_led_probe._entry_ptr.10 = internal global ptr @intel_sso_led_probe._entry.8, section ".printk_index", align 4
@intel_sso_led_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 814, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Failed to map iomem!\0A\00", [42 x i8] zeroinitializer }, align 32
@intel_sso_led_probe._entry_ptr.13 = internal global ptr @intel_sso_led_probe._entry.11, section ".printk_index", align 4
@intel_sso_led_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.4, ptr @.str.5, i32 836, ptr @.str.16, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sso LED init success!\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@intel_sso_led_probe._entry_ptr.17 = internal global ptr @intel_sso_led_probe._entry.14, section ".printk_index", align 4
@.str.18 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ngpios\00", [25 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"intel,sso-update-rate-hz\00", [39 x i8] zeroinitializer }, align 32
@sso_register_shift_clk._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.5, i32 510, ptr @.str.22, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"%s: Invalid freq %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sso_register_shift_clk\00", [41 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@sso_register_shift_clk._entry_ptr = internal global ptr @sso_register_shift_clk._entry, section ".printk_index", align 4
@.str.23 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"lgm-sso\00", [24 x i8] zeroinitializer }, align 32
@sso_gpio_gc_init.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@sso_gpio_gc_init.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ssoled\00", [25 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"led: get gpio fail!\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"linux,default-trigger\00", [42 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"retain-state-suspended\00", [41 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"retain-state-shutdown\00", [42 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"panic-indicator\00", [16 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@__sso_led_dt_parse._entry = internal constant %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.5, i32 665, ptr @.str.6, ptr @.str.7 }, align 1
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"invalid LED pin:%u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"__sso_led_dt_parse\00", [45 x i8] zeroinitializer }, align 32
@__sso_led_dt_parse._entry_ptr = internal global ptr @__sso_led_dt_parse._entry, section ".printk_index", align 4
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"intel,sso-hw-blink\00", [45 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"intel,sso-hw-trigger\00", [43 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"intel,sso-blink-rate-hz\00", [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"default-state\00", [18 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c":\00", [30 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.40 = private unnamed_addr constant [21 x i8] c"intel_sso_led_driver\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 865, i32 31 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 869, i32 12 }
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"of_sso_led_match\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 858, i32 34 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 787, i32 23 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 790, i32 23 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 794, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 800, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 814, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 836, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 746, i32 36 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 752, i32 36 }
@___asan_gen_.100 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 509, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 474, i32 28 }
@___asan_gen_.115 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.118 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 481, i32 9 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 730, i32 50 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 642, i32 50 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 647, i32 10 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 651, i32 10 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 655, i32 10 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 658, i32 45 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 661, i32 48 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 665, i32 4 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 671, i32 45 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 675, i32 10 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 685, i32 11 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 697, i32 50 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 698, i32 21 }
@___asan_gen_.163 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.164 = private constant [37 x i8] c"../drivers/leds/blink/leds-lgm-sso.c\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 357, i32 28 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @__UNIQUE_ID_description259, ptr @__UNIQUE_ID_file260, ptr @__UNIQUE_ID_license261, ptr @__exitcall_intel_sso_led_driver_exit, ptr @__initcall__kmod_leds_lgm_sso__258_874_intel_sso_led_driver_init6, ptr @__sso_led_dt_parse._entry, ptr @__sso_led_dt_parse._entry_ptr, ptr @intel_sso_led_driver_exit, ptr @intel_sso_led_probe._entry, ptr @intel_sso_led_probe._entry.11, ptr @intel_sso_led_probe._entry.14, ptr @intel_sso_led_probe._entry.8, ptr @intel_sso_led_probe._entry_ptr, ptr @intel_sso_led_probe._entry_ptr.10, ptr @intel_sso_led_probe._entry_ptr.13, ptr @intel_sso_led_probe._entry_ptr.17, ptr @sso_register_shift_clk._entry, ptr @sso_register_shift_clk._entry_ptr, ptr @intel_sso_led_driver, ptr @.str, ptr @of_sso_led_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @sso_gpio_gc_init.lock_key, ptr @sso_gpio_gc_init.request_key, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_sso_led_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_sso_led_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_sso_led_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_sso_led_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_sso_led_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_sso_led_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sso_register_shift_clk._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sso_gpio_gc_init.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sso_gpio_gc_init.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @intel_sso_led_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @intel_sso_led_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @intel_sso_led_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @intel_sso_led_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intel_sso_led_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %init_data.i.i.i = alloca %struct.led_init_data, align 4
  %tmp.i.i = alloca ptr, align 4
  %prop.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 452, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %pdev2 = getelementptr inbounds %struct.sso_led_priv, ptr %call.i, i32 0, i32 2
  %0 = ptrtoint ptr %pdev2 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %pdev, ptr %pdev2, align 4
  %dev3 = getelementptr inbounds %struct.sso_led_priv, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %dev1, ptr %dev3, align 4
  %clocks = getelementptr inbounds %struct.sso_led_priv, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %clocks to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @.str.1, ptr %clocks, align 4
  %arrayidx5 = getelementptr %struct.sso_led_priv, ptr %call.i, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @.str.2, ptr %arrayidx5, align 4
  %call8 = tail call i32 @devm_clk_bulk_get(ptr noundef %dev1, i32 noundef 2, ptr noundef %clocks) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3) #11
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %call.i98 = tail call i32 @clk_bulk_prepare(i32 noundef 2, ptr noundef %clocks) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i98)
  %tobool.not.i = icmp eq i32 %call.i98, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end11.do.end19_crit_edge

if.end11.do.end19_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end19

if.end.i:                                         ; preds = %if.end11
  %call1.i = tail call i32 @clk_bulk_enable(i32 noundef 2, ptr noundef %clocks) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end20, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_bulk_unprepare(i32 noundef 2, ptr noundef %clocks) #8
  br label %do.end19

do.end19:                                         ; preds = %if.then3.i, %if.end11.do.end19_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i98, %if.end11.do.end19_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #11
  br label %cleanup

if.end20:                                         ; preds = %if.end.i
  %call.i99 = tail call i32 @devm_add_action(ptr noundef %dev1, ptr noundef nonnull @sso_clock_disable_unprepare, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i99)
  %tobool.not.i100 = icmp eq i32 %call.i99, 0
  br i1 %tobool.not.i100, label %if.end24, label %devm_add_action_or_reset.exit

devm_add_action_or_reset.exit:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_bulk_disable(i32 noundef 2, ptr noundef %clocks) #8
  tail call void @clk_bulk_unprepare(i32 noundef 2, ptr noundef %clocks) #8
  br label %cleanup

if.end24:                                         ; preds = %if.end20
  %clk = getelementptr %struct.sso_led_priv, ptr %call.i, i32 0, i32 3, i32 1, i32 1
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %call27 = tail call i32 @clk_get_rate(ptr noundef %5) #8
  %fpid_clkrate = getelementptr inbounds %struct.sso_led_priv, ptr %call.i, i32 0, i32 4
  %6 = ptrtoint ptr %fpid_clkrate to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call27, ptr %fpid_clkrate, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %7 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node, align 8
  %call28 = tail call ptr @syscon_node_to_regmap(ptr noundef %8) #8
  %9 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call28, ptr %call.i, align 4
  %10 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_node, align 8
  %call30 = tail call ptr @syscon_node_to_regmap(ptr noundef %11) #8
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call30, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call30, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end37, label %if.end40

do.end37:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.12) #11
  %13 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %call.i, align 4
  %15 = ptrtoint ptr %14 to i32
  br label %cleanup

if.end40:                                         ; preds = %if.end24
  %16 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev3, align 4
  %pins.i = getelementptr inbounds %struct.sso_led_priv, ptr %call.i, i32 0, i32 8, i32 4
  %call.i.i = tail call i32 @device_property_read_u32_array(ptr noundef %17, ptr noundef nonnull @.str.18, ptr noundef %pins.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i102 = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i102, label %if.end.i104, label %if.end.thread.i

if.end.thread.i:                                  ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %pins.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 32, ptr %pins.i, align 4
  br label %if.end7.i

if.end.i104:                                      ; preds = %if.end40
  %19 = ptrtoint ptr %pins.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pr.i = load i32, ptr %pins.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %.pr.i)
  %cmp.i103 = icmp ugt i32 %.pr.i, 32
  br i1 %cmp.i103, label %if.end.i104.if.then43_crit_edge, label %if.end.i104.if.end7.i_crit_edge

if.end.i104.if.end7.i_crit_edge:                  ; preds = %if.end.i104
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7.i

if.end.i104.if.then43_crit_edge:                  ; preds = %if.end.i104
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then43

if.end7.i:                                        ; preds = %if.end.i104.if.end7.i_crit_edge, %if.end.thread.i
  %freq.i = getelementptr inbounds %struct.sso_led_priv, ptr %call.i, i32 0, i32 8, i32 3
  %call.i35.i = tail call i32 @device_property_read_u32_array(ptr noundef %17, ptr noundef nonnull @.str.19, ptr noundef %freq.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35.i)
  %tobool10.not.i = icmp eq i32 %call.i35.i, 0
  br i1 %tobool10.not.i, label %if.end7.i.if.end14.i_crit_edge, label %if.then11.i

if.end7.i.if.end14.i_crit_edge:                   ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14.i

if.then11.i:                                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  %20 = ptrtoint ptr %freq.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %freq.i, align 4
  br label %if.end14.i

if.end14.i:                                       ; preds = %if.then11.i, %if.end7.i.if.end14.i_crit_edge
  %edge.i = getelementptr inbounds %struct.sso_led_priv, ptr %call.i, i32 0, i32 8, i32 2
  %21 = ptrtoint ptr %edge.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %edge.i, align 4
  %shift_clk_freq.i = getelementptr inbounds %struct.sso_led_priv, ptr %call.i, i32 0, i32 8, i32 1
  %22 = ptrtoint ptr %shift_clk_freq.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -1, ptr %shift_clk_freq.i, align 4
  %23 = ptrtoint ptr %pins.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pins.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp104.not.i.i = icmp eq i32 %24, 0
  br i1 %cmp104.not.i.i, label %if.end14.i.for.cond1.preheader.i.i_crit_edge, label %if.end14.i.for.body.i.i_crit_edge

if.end14.i.for.body.i.i_crit_edge:                ; preds = %if.end14.i
  br label %for.body.i.i

if.end14.i.for.cond1.preheader.i.i_crit_edge:     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond1.preheader.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i
  %inc.i.i = add nuw i32 %i.0105.i.i, 1
  %25 = ptrtoint ptr %pins.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pins.i, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %26
  br i1 %cmp.i.i, label %for.cond.i.i.for.body.i.i_crit_edge, label %for.cond.i.i.for.cond1.preheader.i.i_crit_edge

for.cond.i.i.for.cond1.preheader.i.i_crit_edge:   ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond1.preheader.i.i

for.cond.i.i.for.body.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i

for.cond1.preheader.i.i:                          ; preds = %for.cond.i.i.for.cond1.preheader.i.i_crit_edge, %if.end14.i.for.cond1.preheader.i.i_crit_edge
  %27 = ptrtoint ptr %pins.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pins.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp11.i.i = icmp ne i32 %28, 0
  %lnot.ext.i.i = zext i1 %cmp11.i.i to i32
  %29 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %call.i, align 4
  %call.i.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef 692, i32 noundef 1, i32 noundef %lnot.ext.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %tobool18.not.i.i = icmp eq i32 %call.i.i.i, 0
  br i1 %tobool18.not.i.i, label %for.cond1.i.i, label %for.cond1.preheader.i.i.if.then43_crit_edge

for.cond1.preheader.i.i.if.then43_crit_edge:      ; preds = %for.cond1.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then43

for.body.i.i:                                     ; preds = %for.cond.i.i.for.body.i.i_crit_edge, %if.end14.i.for.body.i.i_crit_edge
  %i.0105.i.i = phi i32 [ %inc.i.i, %for.cond.i.i.for.body.i.i_crit_edge ], [ 0, %if.end14.i.for.body.i.i_crit_edge ]
  %31 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call.i, align 4
  %mul.i.i = shl i32 %i.0105.i.i, 2
  %add.i.i = add i32 %mul.i.i, 8
  %call.i36.i = tail call i32 @regmap_write(ptr noundef %32, i32 noundef %add.i.i, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36.i)
  %tobool.not.i.i = icmp eq i32 %call.i36.i, 0
  br i1 %tobool.not.i.i, label %for.cond.i.i, label %for.body.i.i.if.then43_crit_edge

for.body.i.i.if.then43_crit_edge:                 ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then43

for.cond1.i.i:                                    ; preds = %for.cond1.preheader.i.i
  %33 = ptrtoint ptr %pins.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pins.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %34)
  %cmp11.1.i.i = icmp ugt i32 %34, 8
  %35 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %call.i, align 4
  %shl16.1.i.i = select i1 %cmp11.1.i.i, i32 2, i32 0
  %call.i.1.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %36, i32 noundef 692, i32 noundef 2, i32 noundef %shl16.1.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1.i.i)
  %tobool18.not.1.i.i = icmp eq i32 %call.i.1.i.i, 0
  br i1 %tobool18.not.1.i.i, label %for.cond1.1.i.i, label %for.cond1.i.i.if.then43_crit_edge

for.cond1.i.i.if.then43_crit_edge:                ; preds = %for.cond1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then43

for.cond1.1.i.i:                                  ; preds = %for.cond1.i.i
  %37 = ptrtoint ptr %pins.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %pins.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %38)
  %cmp11.2.i.i = icmp ugt i32 %38, 16
  %39 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call.i, align 4
  %shl16.2.i.i = select i1 %cmp11.2.i.i, i32 4, i32 0
  %call.i.2.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %40, i32 noundef 692, i32 noundef 4, i32 noundef %shl16.2.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2.i.i)
  %tobool18.not.2.i.i = icmp eq i32 %call.i.2.i.i, 0
  br i1 %tobool18.not.2.i.i, label %for.cond1.2.i.i, label %for.cond1.1.i.i.if.then43_crit_edge

for.cond1.1.i.i.if.then43_crit_edge:              ; preds = %for.cond1.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then43

for.cond1.2.i.i:                                  ; preds = %for.cond1.1.i.i
  %41 = ptrtoint ptr %pins.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pins.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %42)
  %cmp11.3.i.i = icmp ugt i32 %42, 24
  %43 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %call.i, align 4
  %shl16.3.i.i = select i1 %cmp11.3.i.i, i32 8, i32 0
  %call.i.3.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %44, i32 noundef 692, i32 noundef 8, i32 noundef %shl16.3.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.3.i.i)
  %tobool18.not.3.i.i = icmp eq i32 %call.i.3.i.i, 0
  br i1 %tobool18.not.3.i.i, label %for.cond1.3.i.i, label %for.cond1.2.i.i.if.then43_crit_edge

for.cond1.2.i.i.if.then43_crit_edge:              ; preds = %for.cond1.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then43

for.cond1.3.i.i:                                  ; preds = %for.cond1.2.i.i
  %45 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %call.i, align 4
  %call25.i.i = tail call i32 @regmap_write(ptr noundef %46, i32 noundef 712, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25.i.i)
  %tobool26.not.i.i = icmp eq i32 %call25.i.i, 0
  br i1 %tobool26.not.i.i, label %if.end28.i.i, label %for.cond1.3.i.i.if.then43_crit_edge

for.cond1.3.i.i.if.then43_crit_edge:              ; preds = %for.cond1.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then43

if.end28.i.i:                                     ; preds = %for.cond1.3.i.i
  %47 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %call.i, align 4
  %call30.i.i = tail call i32 @regmap_write(ptr noundef %48, i32 noundef 708, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i.i)
  %tobool31.not.i.i = icmp eq i32 %call30.i.i, 0
  br i1 %tobool31.not.i.i, label %if.end33.i.i, label %if.end28.i.i.if.then43_crit_edge

if.end28.i.i.if.then43_crit_edge:                 ; preds = %if.end28.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then43

if.end33.i.i:                                     ; preds = %if.end28.i.i
  %49 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %call.i, align 4
  %call35.i.i = tail call i32 @regmap_write(ptr noundef %50, i32 noundef 696, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35.i.i)
  %tobool36.not.i.i = icmp eq i32 %call35.i.i, 0
  br i1 %tobool36.not.i.i, label %do.end57.i.i, label %if.end33.i.i.if.then43_crit_edge

if.end33.i.i.if.then43_crit_edge:                 ; preds = %if.end33.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then43

do.end57.i.i:                                     ; preds = %if.end33.i.i
  %51 = ptrtoint ptr %edge.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %edge.i, align 4
  %53 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %call.i, align 4
  %shl60.i.i = shl i32 %52, 26
  %and61.i.i = and i32 %shl60.i.i, 67108864
  %call.i101.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %54, i32 noundef 688, i32 noundef 67108864, i32 noundef %and61.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i101.i.i)
  %tobool63.not.i.i = icmp eq i32 %call.i101.i.i, 0
  br i1 %tobool63.not.i.i, label %if.end65.i.i, label %do.end57.i.i.if.then43_crit_edge

do.end57.i.i.if.then43_crit_edge:                 ; preds = %do.end57.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then43

if.end65.i.i:                                     ; preds = %do.end57.i.i
  %55 = ptrtoint ptr %freq.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %freq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %56)
  %cmp1.not.i.i.i = icmp sgt i32 %56, 2
  br i1 %cmp1.not.i.i.i, label %for.inc.i.i.i, label %sso_gpio_get_freq_idx.exit.i.i

for.inc.i.i.i:                                    ; preds = %if.end65.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %56)
  %cmp1.not.1.i.i.i = icmp ugt i32 %56, 4
  br i1 %cmp1.not.1.i.i.i, label %for.inc.1.i.i.i, label %for.inc.i.i.i.do.end59.i.i_crit_edge

for.inc.i.i.i.do.end59.i.i_crit_edge:             ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end59.i.i

for.inc.1.i.i.i:                                  ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %56)
  %cmp1.not.2.i.i.i = icmp ugt i32 %56, 8
  br i1 %cmp1.not.2.i.i.i, label %for.inc.2.i.i.i, label %for.inc.1.i.i.i.do.end59.i.i_crit_edge

for.inc.1.i.i.i.do.end59.i.i_crit_edge:           ; preds = %for.inc.1.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end59.i.i

for.inc.2.i.i.i:                                  ; preds = %for.inc.1.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %56)
  %cmp1.not.3.i.i.i = icmp ugt i32 %56, 10
  br i1 %cmp1.not.3.i.i.i, label %for.inc.3.i.i.i, label %for.inc.2.i.i.i.do.end59.i.i_crit_edge

for.inc.2.i.i.i.do.end59.i.i_crit_edge:           ; preds = %for.inc.2.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end59.i.i

for.inc.3.i.i.i:                                  ; preds = %for.inc.2.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 50000, i32 %56)
  %cmp1.not.4.i.i.i = icmp ugt i32 %56, 50000
  br i1 %cmp1.not.4.i.i.i, label %for.inc.4.i.i.i, label %for.inc.3.i.i.i.do.end105.i.i_crit_edge

for.inc.3.i.i.i.do.end105.i.i_crit_edge:          ; preds = %for.inc.3.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end105.i.i

for.inc.4.i.i.i:                                  ; preds = %for.inc.3.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %56)
  %cmp1.not.5.i.i.i = icmp ugt i32 %56, 100000
  br i1 %cmp1.not.5.i.i.i, label %for.inc.5.i.i.i, label %for.inc.4.i.i.i.do.end105.i.i_crit_edge

for.inc.4.i.i.i.do.end105.i.i_crit_edge:          ; preds = %for.inc.4.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end105.i.i

for.inc.5.i.i.i:                                  ; preds = %for.inc.4.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 200000, i32 %56)
  %cmp1.not.6.i.i.i = icmp ugt i32 %56, 200000
  %spec.select.i.i = select i1 %cmp1.not.6.i.i.i, i32 100663296, i32 67108864
  br label %do.end105.i.i

sso_gpio_get_freq_idx.exit.i.i:                   ; preds = %if.end65.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool.not.i40.i = icmp eq i32 %56, 0
  br i1 %tobool.not.i40.i, label %if.then3.i.i, label %sso_gpio_get_freq_idx.exit.i.i.do.end59.i.i_crit_edge

sso_gpio_get_freq_idx.exit.i.i.do.end59.i.i_crit_edge: ; preds = %sso_gpio_get_freq_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end59.i.i

if.then3.i.i:                                     ; preds = %sso_gpio_get_freq_idx.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %call.i, align 4
  %call.i.i41.i = tail call i32 @regmap_update_bits_base(ptr noundef %58, i32 noundef 688, i32 noundef 1073741824, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %59 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %call.i, align 4
  %call.i3.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %60, i32 noundef 692, i32 noundef -1073741824, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %sso_gpio_freq_set.exit.i

do.end59.i.i:                                     ; preds = %sso_gpio_get_freq_idx.exit.i.i.do.end59.i.i_crit_edge, %for.inc.2.i.i.i.do.end59.i.i_crit_edge, %for.inc.1.i.i.i.do.end59.i.i_crit_edge, %for.inc.i.i.i.do.end59.i.i_crit_edge
  %rem1523.i.i = phi i32 [ 0, %sso_gpio_get_freq_idx.exit.i.i.do.end59.i.i_crit_edge ], [ 8388608, %for.inc.i.i.i.do.end59.i.i_crit_edge ], [ 16777216, %for.inc.1.i.i.i.do.end59.i.i_crit_edge ], [ 25165824, %for.inc.2.i.i.i.do.end59.i.i_crit_edge ]
  %61 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %call.i, align 4
  %call.i4.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %62, i32 noundef 688, i32 noundef 1073741824, i32 noundef 1073741824, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %63 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %call.i, align 4
  %call.i5.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %64, i32 noundef 692, i32 noundef -1073741824, i32 noundef -2147483648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %65 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %call.i, align 4
  %call.i6.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %66, i32 noundef 692, i32 noundef 25165824, i32 noundef %rem1523.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %sso_gpio_freq_set.exit.i

do.end105.i.i:                                    ; preds = %for.inc.5.i.i.i, %for.inc.4.i.i.i.do.end105.i.i_crit_edge, %for.inc.3.i.i.i.do.end105.i.i_crit_edge
  %rem1527.i.i = phi i32 [ 33554432, %for.inc.4.i.i.i.do.end105.i.i_crit_edge ], [ 0, %for.inc.3.i.i.i.do.end105.i.i_crit_edge ], [ %spec.select.i.i, %for.inc.5.i.i.i ]
  %67 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %call.i, align 4
  %call.i7.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %68, i32 noundef 688, i32 noundef 1073741824, i32 noundef 1073741824, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %69 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %call.i, align 4
  %call.i8.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %70, i32 noundef 692, i32 noundef -1073741824, i32 noundef 1073741824, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %71 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %call.i, align 4
  %call.i9.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %72, i32 noundef 692, i32 noundef 100663296, i32 noundef %rem1527.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %sso_gpio_freq_set.exit.i

sso_gpio_freq_set.exit.i:                         ; preds = %do.end105.i.i, %do.end59.i.i, %if.then3.i.i
  %73 = ptrtoint ptr %shift_clk_freq.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %shift_clk_freq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 25000000, i32 %74)
  %cmp1.not.i.i = icmp slt i32 %74, 25000000
  br i1 %cmp1.not.i.i, label %for.inc.i.i, label %sso_gpio_freq_set.exit.i.sso_probe_gpios.exit_crit_edge

sso_gpio_freq_set.exit.i.sso_probe_gpios.exit_crit_edge: ; preds = %sso_gpio_freq_set.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sso_probe_gpios.exit

for.inc.i.i:                                      ; preds = %sso_gpio_freq_set.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 12500000, i32 %74)
  %cmp1.not.1.i.i = icmp slt i32 %74, 12500000
  br i1 %cmp1.not.1.i.i, label %for.inc.1.i.i, label %for.inc.i.i.sso_probe_gpios.exit_crit_edge

for.inc.i.i.sso_probe_gpios.exit_crit_edge:       ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sso_probe_gpios.exit

for.inc.1.i.i:                                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 6250000, i32 %74)
  %cmp1.not.2.i.i = icmp slt i32 %74, 6250000
  br i1 %cmp1.not.2.i.i, label %for.inc.2.i.i, label %for.inc.1.i.i.sso_probe_gpios.exit_crit_edge

for.inc.1.i.i.sso_probe_gpios.exit_crit_edge:     ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sso_probe_gpios.exit

for.inc.2.i.i:                                    ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 3125000, i32 %74)
  %cmp1.not.3.i.i = icmp slt i32 %74, 3125000
  br i1 %cmp1.not.3.i.i, label %do.end.i.i, label %for.inc.2.i.i.sso_probe_gpios.exit_crit_edge

for.inc.2.i.i.sso_probe_gpios.exit_crit_edge:     ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sso_probe_gpios.exit

do.end.i.i:                                       ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %75 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev3, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %76, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.21, i32 noundef %74) #11
  br label %sso_probe_gpios.exit

sso_probe_gpios.exit:                             ; preds = %do.end.i.i, %for.inc.2.i.i.sso_probe_gpios.exit_crit_edge, %for.inc.1.i.i.sso_probe_gpios.exit_crit_edge, %for.inc.i.i.sso_probe_gpios.exit_crit_edge, %sso_gpio_freq_set.exit.i.sso_probe_gpios.exit_crit_edge
  %val.037.i.i = phi i32 [ 0, %do.end.i.i ], [ 0, %sso_gpio_freq_set.exit.i.sso_probe_gpios.exit_crit_edge ], [ 1048576, %for.inc.i.i.sso_probe_gpios.exit_crit_edge ], [ 2097152, %for.inc.1.i.i.sso_probe_gpios.exit_crit_edge ], [ 3145728, %for.inc.2.i.i.sso_probe_gpios.exit_crit_edge ]
  %77 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %call.i, align 4
  %call.i.i39.i = tail call i32 @regmap_update_bits_base(ptr noundef %78, i32 noundef 692, i32 noundef 3145728, i32 noundef %val.037.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %gpio.i.i = getelementptr inbounds %struct.sso_led_priv, ptr %call.i, i32 0, i32 8
  %request.i.i = getelementptr inbounds %struct.sso_led_priv, ptr %call.i, i32 0, i32 8, i32 0, i32 5
  %79 = ptrtoint ptr %request.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @sso_gpio_request, ptr %request.i.i, align 4
  %free.i.i = getelementptr inbounds %struct.sso_led_priv, ptr %call.i, i32 0, i32 8, i32 0, i32 6
  %80 = ptrtoint ptr %free.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @sso_gpio_free, ptr %free.i.i, align 4
  %get_direction.i.i = getelementptr inbounds %struct.sso_led_priv, ptr %call.i, i32 0, i32 8, i32 0, i32 7
  %81 = ptrtoint ptr %get_direction.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @sso_gpio_get_dir, ptr %get_direction.i.i, align 4
  %direction_output.i.i = getelementptr inbounds %struct.sso_led_priv, ptr %call.i, i32 0, i32 8, i32 0, i32 9
  %82 = ptrtoint ptr %direction_output.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @sso_gpio_dir_out, ptr %direction_output.i.i, align 4
  %get.i.i = getelementptr inbounds %struct.sso_led_priv, ptr %call.i, i32 0, i32 8, i32 0, i32 10
  %83 = ptrtoint ptr %get.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @sso_gpio_get, ptr %get.i.i, align 4
  %set.i.i = getelementptr inbounds %struct.sso_led_priv, ptr %call.i, i32 0, i32 8, i32 0, i32 12
  %84 = ptrtoint ptr %set.i.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @sso_gpio_set, ptr %set.i.i, align 4
  %85 = ptrtoint ptr %gpio.i.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @.str.23, ptr %gpio.i.i, align 4
  %base.i.i = getelementptr inbounds %struct.sso_led_priv, ptr %call.i, i32 0, i32 8, i32 0, i32 19
  %86 = ptrtoint ptr %base.i.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 -1, ptr %base.i.i, align 4
  %87 = ptrtoint ptr %pins.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %pins.i, align 4
  %conv.i.i = trunc i32 %88 to i16
  %ngpio.i.i = getelementptr inbounds %struct.sso_led_priv, ptr %call.i, i32 0, i32 8, i32 0, i32 20
  %89 = ptrtoint ptr %ngpio.i.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %conv.i.i, ptr %ngpio.i.i, align 4
  %parent.i.i = getelementptr inbounds %struct.sso_led_priv, ptr %call.i, i32 0, i32 8, i32 0, i32 2
  %90 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr %17, ptr %parent.i.i, align 4
  %owner.i.i = getelementptr inbounds %struct.sso_led_priv, ptr %call.i, i32 0, i32 8, i32 0, i32 4
  %91 = ptrtoint ptr %owner.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr null, ptr %owner.i.i, align 4
  %call.i38.i = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %17, ptr noundef %gpio.i.i, ptr noundef %call.i, ptr noundef nonnull @sso_gpio_gc_init.lock_key, ptr noundef nonnull @sso_gpio_gc_init.request_key) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i38.i)
  %tobool42.not = icmp eq i32 %call.i38.i, 0
  br i1 %tobool42.not, label %if.end45, label %sso_probe_gpios.exit.if.then43_crit_edge

sso_probe_gpios.exit.if.then43_crit_edge:         ; preds = %sso_probe_gpios.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then43

if.then43:                                        ; preds = %sso_probe_gpios.exit.if.then43_crit_edge, %do.end57.i.i.if.then43_crit_edge, %if.end33.i.i.if.then43_crit_edge, %if.end28.i.i.if.then43_crit_edge, %for.cond1.3.i.i.if.then43_crit_edge, %for.cond1.2.i.i.if.then43_crit_edge, %for.cond1.1.i.i.if.then43_crit_edge, %for.cond1.i.i.if.then43_crit_edge, %for.body.i.i.if.then43_crit_edge, %for.cond1.preheader.i.i.if.then43_crit_edge, %if.end.i104.if.then43_crit_edge
  %retval.0.i105139 = phi i32 [ %call.i38.i, %sso_probe_gpios.exit.if.then43_crit_edge ], [ %call25.i.i, %for.cond1.3.i.i.if.then43_crit_edge ], [ %call30.i.i, %if.end28.i.i.if.then43_crit_edge ], [ %call35.i.i, %if.end33.i.i.if.then43_crit_edge ], [ %call.i101.i.i, %do.end57.i.i.if.then43_crit_edge ], [ %call.i.i.i, %for.cond1.preheader.i.i.if.then43_crit_edge ], [ %call.i.1.i.i, %for.cond1.i.i.if.then43_crit_edge ], [ %call.i.2.i.i, %for.cond1.1.i.i.if.then43_crit_edge ], [ %call.i.3.i.i, %for.cond1.2.i.i.if.then43_crit_edge ], [ -22, %if.end.i104.if.then43_crit_edge ], [ %call.i36.i, %for.body.i.i.if.then43_crit_edge ]
  %92 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %call.i, align 4
  tail call void @regmap_exit(ptr noundef %93) #8
  br label %cleanup

if.end45:                                         ; preds = %sso_probe_gpios.exit
  %led_list = getelementptr inbounds %struct.sso_led_priv, ptr %call.i, i32 0, i32 7
  %94 = ptrtoint ptr %led_list to i32
  call void @__asan_store4_noabort(i32 %94)
  store volatile ptr %led_list, ptr %led_list, align 4
  %prev.i = getelementptr inbounds %struct.sso_led_priv, ptr %call.i, i32 0, i32 7, i32 1
  %95 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %led_list, ptr %prev.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %96 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %freq.i106 = getelementptr inbounds %struct.sso_led_priv, ptr %call.i, i32 0, i32 6
  %97 = ptrtoint ptr %freq.i106 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %freq.i106, align 4
  %gptc_clkrate15.i = getelementptr inbounds %struct.sso_led_priv, ptr %call.i, i32 0, i32 5
  %arrayidx17.i = getelementptr %struct.sso_led_priv, ptr %call.i, i32 0, i32 6, i32 9
  %98 = ptrtoint ptr %fpid_clkrate to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %fpid_clkrate, align 4
  %div.i = udiv i32 %99, 4000
  %arrayidx4.i = getelementptr %struct.sso_led_priv, ptr %call.i, i32 0, i32 6, i32 1
  %100 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %div.i, ptr %arrayidx4.i, align 4
  %div.1.i = udiv i32 %99, 2000
  %arrayidx4.1.i = getelementptr %struct.sso_led_priv, ptr %call.i, i32 0, i32 6, i32 2
  %101 = ptrtoint ptr %arrayidx4.1.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %div.1.i, ptr %arrayidx4.1.i, align 4
  %div.2.i = udiv i32 %99, 1000
  %arrayidx4.2.i = getelementptr %struct.sso_led_priv, ptr %call.i, i32 0, i32 6, i32 3
  %102 = ptrtoint ptr %arrayidx4.2.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %div.2.i, ptr %arrayidx4.2.i, align 4
  %div.3.i = udiv i32 %99, 800
  %arrayidx4.3.i = getelementptr %struct.sso_led_priv, ptr %call.i, i32 0, i32 6, i32 4
  %103 = ptrtoint ptr %arrayidx4.3.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %div.3.i, ptr %arrayidx4.3.i, align 4
  %104 = ptrtoint ptr %gptc_clkrate15.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %gptc_clkrate15.i, align 4
  %div9.4.i = udiv i32 %105, 4000
  %arrayidx11.4.i = getelementptr %struct.sso_led_priv, ptr %call.i, i32 0, i32 6, i32 5
  %106 = ptrtoint ptr %arrayidx11.4.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %div9.4.i, ptr %arrayidx11.4.i, align 4
  %div9.5.i = udiv i32 %105, 2000
  %arrayidx11.5.i = getelementptr %struct.sso_led_priv, ptr %call.i, i32 0, i32 6, i32 6
  %107 = ptrtoint ptr %arrayidx11.5.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %div9.5.i, ptr %arrayidx11.5.i, align 4
  %div9.6.i = udiv i32 %105, 1000
  %arrayidx11.6.i = getelementptr %struct.sso_led_priv, ptr %call.i, i32 0, i32 6, i32 7
  %108 = ptrtoint ptr %arrayidx11.6.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %div9.6.i, ptr %arrayidx11.6.i, align 4
  %div9.7.i = udiv i32 %105, 800
  %arrayidx11.7.i = getelementptr %struct.sso_led_priv, ptr %call.i, i32 0, i32 6, i32 8
  %109 = ptrtoint ptr %arrayidx11.7.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %div9.7.i, ptr %arrayidx11.7.i, align 4
  %110 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %105, ptr %arrayidx17.i, align 4
  store i32 200000000, ptr %gptc_clkrate15.i, align 4
  %111 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dev3, align 4
  %call.i107 = tail call ptr @dev_fwnode(ptr noundef %112) #8
  %113 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %dev3, align 4
  %call3.i = tail call i32 @device_get_child_node_count(ptr noundef %114) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i108 = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i108, label %if.end45.do.end53_crit_edge, label %if.end.i109

if.end45.do.end53_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end53

if.end.i109:                                      ; preds = %if.end45
  %call4.i = tail call ptr @fwnode_get_named_child_node(ptr noundef %call.i107, ptr noundef nonnull @.str.24) #8
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %if.end.i109.do.end53_crit_edge, label %if.then6.i

if.end.i109.do.end53_crit_edge:                   ; preds = %if.end.i109
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end53

if.then6.i:                                       ; preds = %if.end.i109
  %115 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dev3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #8
  %117 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr inttoptr (i32 -1 to ptr), ptr %tmp.i.i, align 4, !annotation !100
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prop.i.i) #8
  %118 = ptrtoint ptr %prop.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 -1, ptr %prop.i.i, align 4, !annotation !100
  %call.i.i110 = tail call ptr @fwnode_get_next_child_node(ptr noundef nonnull %call4.i, ptr noundef null) #8
  %tobool.not200.i.i = icmp eq ptr %call.i.i110, null
  br i1 %tobool.not200.i.i, label %if.then6.i.__sso_led_dt_parse.exit.thread.i_crit_edge, label %for.body.lr.ph.i.i

if.then6.i.__sso_led_dt_parse.exit.thread.i_crit_edge: ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__sso_led_dt_parse.exit.thread.i

for.body.lr.ph.i.i:                               ; preds = %if.then6.i
  %119 = getelementptr inbounds i8, ptr %init_data.i.i.i, i32 12
  %devicename.i.i.i = getelementptr inbounds %struct.led_init_data, ptr %init_data.i.i.i, i32 0, i32 2
  %default_label.i.i.i = getelementptr inbounds %struct.led_init_data, ptr %init_data.i.i.i, i32 0, i32 1
  br label %for.body.i.i112

for.body.i.i112:                                  ; preds = %for.inc.i.i132.for.body.i.i112_crit_edge, %for.body.lr.ph.i.i
  %fwnode_child.0201.i.i = phi ptr [ %call.i.i110, %for.body.lr.ph.i.i ], [ %call98.i.i, %for.inc.i.i132.for.body.i.i112_crit_edge ]
  %call.i.i.i111 = call noalias ptr @devm_kmalloc(ptr noundef %116, i32 noundef 444, i32 noundef 3520) #8
  %tobool3.not.i.i = icmp eq ptr %call.i.i.i111, null
  br i1 %tobool3.not.i.i, label %for.body.i.i112.__dt_err.i.i_crit_edge, label %if.end.i.i

for.body.i.i112.__dt_err.i.i_crit_edge:           ; preds = %for.body.i.i112
  call void @__sanitizer_cov_trace_pc() #10
  br label %__dt_err.i.i

if.end.i.i:                                       ; preds = %for.body.i.i112
  %120 = ptrtoint ptr %call.i.i.i111 to i32
  call void @__asan_store4_noabort(i32 %120)
  store volatile ptr %call.i.i.i111, ptr %call.i.i.i111, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %call.i.i.i111, i32 0, i32 1
  %121 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %call.i.i.i111, ptr %prev.i.i.i, align 4
  %priv4.i.i = getelementptr inbounds %struct.sso_led, ptr %call.i.i.i111, i32 0, i32 4
  %122 = ptrtoint ptr %priv4.i.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %call.i, ptr %priv4.i.i, align 4
  %call.i176.i.i = call ptr @devm_fwnode_gpiod_get_index(ptr noundef %116, ptr noundef nonnull %fwnode_child.0201.i.i, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef null) #8
  %gpiod.i.i = getelementptr inbounds %struct.sso_led, ptr %call.i.i.i111, i32 0, i32 2
  %123 = ptrtoint ptr %gpiod.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %call.i176.i.i, ptr %gpiod.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %call.i176.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.then9.i.i, label %if.end13.i.i

if.then9.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %124 = ptrtoint ptr %call.i176.i.i to i32
  %call12.i.i = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %116, i32 noundef %124, ptr noundef nonnull @.str.25) #8
  br label %__dt_err.i.i

if.end13.i.i:                                     ; preds = %if.end.i.i
  %default_trigger.i.i = getelementptr inbounds %struct.sso_led, ptr %call.i.i.i111, i32 0, i32 3, i32 1
  %call14.i.i = call i32 @fwnode_property_read_string(ptr noundef nonnull %fwnode_child.0201.i.i, ptr noundef nonnull @.str.26, ptr noundef %default_trigger.i.i) #8
  %call15.i.i = call zeroext i1 @fwnode_property_present(ptr noundef nonnull %fwnode_child.0201.i.i, ptr noundef nonnull @.str.27) #8
  br i1 %call15.i.i, label %if.then16.i.i, label %if.end13.i.i.if.end17.i.i_crit_edge

if.end13.i.i.if.end17.i.i_crit_edge:              ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i.i

if.then16.i.i:                                    ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %retain_state_suspended.i.i = getelementptr inbounds %struct.sso_led, ptr %call.i.i.i111, i32 0, i32 3, i32 4
  %125 = ptrtoint ptr %retain_state_suspended.i.i to i32
  call void @__asan_load1_noabort(i32 %125)
  %bf.load.i.i = load i8, ptr %retain_state_suspended.i.i, align 4
  %bf.set.i.i = or i8 %bf.load.i.i, -128
  store i8 %bf.set.i.i, ptr %retain_state_suspended.i.i, align 4
  br label %if.end17.i.i

if.end17.i.i:                                     ; preds = %if.then16.i.i, %if.end13.i.i.if.end17.i.i_crit_edge
  %call18.i.i = call zeroext i1 @fwnode_property_present(ptr noundef nonnull %fwnode_child.0201.i.i, ptr noundef nonnull @.str.28) #8
  br i1 %call18.i.i, label %if.then19.i.i, label %if.end17.i.i.if.end23.i.i_crit_edge

if.end17.i.i.if.end23.i.i_crit_edge:              ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end23.i.i

if.then19.i.i:                                    ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %retain_state_shutdown.i.i = getelementptr inbounds %struct.sso_led, ptr %call.i.i.i111, i32 0, i32 3, i32 4
  %126 = ptrtoint ptr %retain_state_shutdown.i.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %bf.load20.i.i = load i8, ptr %retain_state_shutdown.i.i, align 4
  %bf.set22.i.i = or i8 %bf.load20.i.i, 64
  store i8 %bf.set22.i.i, ptr %retain_state_shutdown.i.i, align 4
  br label %if.end23.i.i

if.end23.i.i:                                     ; preds = %if.then19.i.i, %if.end17.i.i.if.end23.i.i_crit_edge
  %call24.i.i = call zeroext i1 @fwnode_property_present(ptr noundef nonnull %fwnode_child.0201.i.i, ptr noundef nonnull @.str.29) #8
  br i1 %call24.i.i, label %if.then25.i.i, label %if.end23.i.i.if.end29.i.i_crit_edge

if.end23.i.i.if.end29.i.i_crit_edge:              ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.i.i

if.then25.i.i:                                    ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %panic_indicator.i.i = getelementptr inbounds %struct.sso_led, ptr %call.i.i.i111, i32 0, i32 3, i32 4
  %127 = ptrtoint ptr %panic_indicator.i.i to i32
  call void @__asan_load1_noabort(i32 %127)
  %bf.load26.i.i = load i8, ptr %panic_indicator.i.i, align 4
  %bf.set28.i.i = or i8 %bf.load26.i.i, 32
  store i8 %bf.set28.i.i, ptr %panic_indicator.i.i, align 4
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %if.then25.i.i, %if.end23.i.i.if.end29.i.i_crit_edge
  %call.i177.i.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %fwnode_child.0201.i.i, ptr noundef nonnull @.str.30, ptr noundef nonnull %prop.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i177.i.i)
  %tobool31.not.i.i113 = icmp eq i32 %call.i177.i.i, 0
  br i1 %tobool31.not.i.i113, label %if.end33.i.i115, label %if.end29.i.i.__dt_err.i.i_crit_edge

if.end29.i.i.__dt_err.i.i_crit_edge:              ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__dt_err.i.i

if.end33.i.i115:                                  ; preds = %if.end29.i.i
  %128 = ptrtoint ptr %prop.i.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %prop.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %129)
  %cmp.i.i114 = icmp ugt i32 %129, 31
  br i1 %cmp.i.i114, label %do.end.i.i116, label %if.end35.i.i

do.end.i.i116:                                    ; preds = %if.end33.i.i115
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %116, ptr noundef nonnull @.str.31, i32 noundef %129) #11
  br label %__dt_err.i.i

if.end35.i.i:                                     ; preds = %if.end33.i.i115
  %pin.i.i = getelementptr inbounds %struct.sso_led, ptr %call.i.i.i111, i32 0, i32 3, i32 6
  %130 = ptrtoint ptr %pin.i.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %129, ptr %pin.i.i, align 4
  %call36.i.i = call zeroext i1 @fwnode_property_present(ptr noundef nonnull %fwnode_child.0201.i.i, ptr noundef nonnull @.str.33) #8
  br i1 %call36.i.i, label %if.then37.i.i, label %if.end35.i.i.if.end41.i.i_crit_edge

if.end35.i.i.if.end41.i.i_crit_edge:              ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41.i.i

if.then37.i.i:                                    ; preds = %if.end35.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %hw_blink.i.i = getelementptr inbounds %struct.sso_led, ptr %call.i.i.i111, i32 0, i32 3, i32 4
  %131 = ptrtoint ptr %hw_blink.i.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %bf.load38.i.i = load i8, ptr %hw_blink.i.i, align 4
  %bf.set40.i.i = or i8 %bf.load38.i.i, 16
  store i8 %bf.set40.i.i, ptr %hw_blink.i.i, align 4
  br label %if.end41.i.i

if.end41.i.i:                                     ; preds = %if.then37.i.i, %if.end35.i.i.if.end41.i.i_crit_edge
  %call.i178.i.i = call zeroext i1 @fwnode_property_present(ptr noundef nonnull %fwnode_child.0201.i.i, ptr noundef nonnull @.str.34) #8
  %hw_trig.i.i = getelementptr inbounds %struct.sso_led, ptr %call.i.i.i111, i32 0, i32 3, i32 4
  %132 = ptrtoint ptr %hw_trig.i.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %bf.load43.i.i = load i8, ptr %hw_trig.i.i, align 4
  %bf.shl.i.i = select i1 %call.i178.i.i, i8 8, i8 0
  %bf.clear44.i.i = and i8 %bf.load43.i.i, -9
  %bf.set45.i.i = or i8 %bf.clear44.i.i, %bf.shl.i.i
  store i8 %bf.set45.i.i, ptr %hw_trig.i.i, align 4
  br i1 %call.i178.i.i, label %if.then50.i.i, label %if.end41.i.i.if.end68.i.i_crit_edge

if.end41.i.i.if.end68.i.i_crit_edge:              ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end68.i.i

if.then50.i.i:                                    ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %133 = ptrtoint ptr %default_trigger.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr null, ptr %default_trigger.i.i, align 4
  %bf.clear66.i.i = and i8 %bf.set45.i.i, 15
  %134 = ptrtoint ptr %hw_trig.i.i to i32
  call void @__asan_store1_noabort(i32 %134)
  store i8 %bf.clear66.i.i, ptr %hw_trig.i.i, align 4
  br label %if.end68.i.i

if.end68.i.i:                                     ; preds = %if.then50.i.i, %if.end41.i.i.if.end68.i.i_crit_edge
  %call.i179.i.i = call i32 @fwnode_property_read_u32_array(ptr noundef nonnull %fwnode_child.0201.i.i, ptr noundef nonnull @.str.35, ptr noundef nonnull %prop.i.i, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i179.i.i)
  %tobool70.not.i.i = icmp eq i32 %call.i179.i.i, 0
  br i1 %tobool70.not.i.i, label %if.else.i.i, label %if.then71.i.i

if.then71.i.i:                                    ; preds = %if.end68.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %freq_idx.i.i = getelementptr inbounds %struct.sso_led, ptr %call.i.i.i111, i32 0, i32 3, i32 5
  %135 = ptrtoint ptr %freq_idx.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 0, ptr %freq_idx.i.i, align 4
  br label %if.end85.i.i

if.else.i.i:                                      ; preds = %if.end68.i.i
  %136 = ptrtoint ptr %prop.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %prop.i.i, align 4
  %138 = ptrtoint ptr %freq.i106 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %freq.i106, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %139, i32 %137)
  %cmp1.not.i.i.i117 = icmp ult i32 %139, %137
  br i1 %cmp1.not.i.i.i117, label %for.inc.i.i.i119, label %if.else.i.i.sso_get_blink_rate_idx.exit.thread.i.i_crit_edge

if.else.i.i.sso_get_blink_rate_idx.exit.thread.i.i_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sso_get_blink_rate_idx.exit.thread.i.i

for.inc.i.i.i119:                                 ; preds = %if.else.i.i
  %140 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %141, i32 %137)
  %cmp1.not.1.i.i.i118 = icmp ult i32 %141, %137
  br i1 %cmp1.not.1.i.i.i118, label %for.inc.1.i.i.i121, label %for.inc.i.i.i119.sso_get_blink_rate_idx.exit.thread.i.i_crit_edge

for.inc.i.i.i119.sso_get_blink_rate_idx.exit.thread.i.i_crit_edge: ; preds = %for.inc.i.i.i119
  call void @__sanitizer_cov_trace_pc() #10
  br label %sso_get_blink_rate_idx.exit.thread.i.i

for.inc.1.i.i.i121:                               ; preds = %for.inc.i.i.i119
  %142 = ptrtoint ptr %arrayidx4.1.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %arrayidx4.1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %143, i32 %137)
  %cmp1.not.2.i.i.i120 = icmp ult i32 %143, %137
  br i1 %cmp1.not.2.i.i.i120, label %for.inc.2.i.i.i123, label %for.inc.1.i.i.i121.sso_get_blink_rate_idx.exit.thread.i.i_crit_edge

for.inc.1.i.i.i121.sso_get_blink_rate_idx.exit.thread.i.i_crit_edge: ; preds = %for.inc.1.i.i.i121
  call void @__sanitizer_cov_trace_pc() #10
  br label %sso_get_blink_rate_idx.exit.thread.i.i

for.inc.2.i.i.i123:                               ; preds = %for.inc.1.i.i.i121
  %144 = ptrtoint ptr %arrayidx4.2.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %arrayidx4.2.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %145, i32 %137)
  %cmp1.not.3.i.i.i122 = icmp ult i32 %145, %137
  br i1 %cmp1.not.3.i.i.i122, label %for.inc.3.i.i.i125, label %for.inc.2.i.i.i123.sso_get_blink_rate_idx.exit.thread.i.i_crit_edge

for.inc.2.i.i.i123.sso_get_blink_rate_idx.exit.thread.i.i_crit_edge: ; preds = %for.inc.2.i.i.i123
  call void @__sanitizer_cov_trace_pc() #10
  br label %sso_get_blink_rate_idx.exit.thread.i.i

for.inc.3.i.i.i125:                               ; preds = %for.inc.2.i.i.i123
  %146 = ptrtoint ptr %arrayidx4.3.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arrayidx4.3.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %147, i32 %137)
  %cmp1.not.4.i.i.i124 = icmp ult i32 %147, %137
  br i1 %cmp1.not.4.i.i.i124, label %for.inc.4.i.i.i127, label %for.inc.3.i.i.i125.sso_get_blink_rate_idx.exit.thread.i.i_crit_edge

for.inc.3.i.i.i125.sso_get_blink_rate_idx.exit.thread.i.i_crit_edge: ; preds = %for.inc.3.i.i.i125
  call void @__sanitizer_cov_trace_pc() #10
  br label %sso_get_blink_rate_idx.exit.thread.i.i

for.inc.4.i.i.i127:                               ; preds = %for.inc.3.i.i.i125
  %148 = ptrtoint ptr %arrayidx11.4.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %arrayidx11.4.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %149, i32 %137)
  %cmp1.not.5.i.i.i126 = icmp ult i32 %149, %137
  br i1 %cmp1.not.5.i.i.i126, label %for.inc.5.i.i.i129, label %for.inc.4.i.i.i127.sso_get_blink_rate_idx.exit.thread.i.i_crit_edge

for.inc.4.i.i.i127.sso_get_blink_rate_idx.exit.thread.i.i_crit_edge: ; preds = %for.inc.4.i.i.i127
  call void @__sanitizer_cov_trace_pc() #10
  br label %sso_get_blink_rate_idx.exit.thread.i.i

for.inc.5.i.i.i129:                               ; preds = %for.inc.4.i.i.i127
  %150 = ptrtoint ptr %arrayidx11.5.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %arrayidx11.5.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %151, i32 %137)
  %cmp1.not.6.i.i.i128 = icmp ult i32 %151, %137
  br i1 %cmp1.not.6.i.i.i128, label %for.inc.6.i.i.i, label %for.inc.5.i.i.i129.sso_get_blink_rate_idx.exit.thread.i.i_crit_edge

for.inc.5.i.i.i129.sso_get_blink_rate_idx.exit.thread.i.i_crit_edge: ; preds = %for.inc.5.i.i.i129
  call void @__sanitizer_cov_trace_pc() #10
  br label %sso_get_blink_rate_idx.exit.thread.i.i

for.inc.6.i.i.i:                                  ; preds = %for.inc.5.i.i.i129
  %152 = ptrtoint ptr %arrayidx11.6.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx11.6.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %153, i32 %137)
  %cmp1.not.7.i.i.i = icmp ult i32 %153, %137
  br i1 %cmp1.not.7.i.i.i, label %for.inc.7.i.i.i, label %for.inc.6.i.i.i.sso_get_blink_rate_idx.exit.thread.i.i_crit_edge

for.inc.6.i.i.i.sso_get_blink_rate_idx.exit.thread.i.i_crit_edge: ; preds = %for.inc.6.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sso_get_blink_rate_idx.exit.thread.i.i

for.inc.7.i.i.i:                                  ; preds = %for.inc.6.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %154 = ptrtoint ptr %arrayidx11.7.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %arrayidx11.7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %155, i32 %137)
  %cmp1.not.8.i.i.i = icmp ult i32 %155, %137
  %spec.select.i.i130 = select i1 %cmp1.not.8.i.i.i, i32 9, i32 8
  br label %sso_get_blink_rate_idx.exit.thread.i.i

sso_get_blink_rate_idx.exit.thread.i.i:           ; preds = %for.inc.7.i.i.i, %for.inc.6.i.i.i.sso_get_blink_rate_idx.exit.thread.i.i_crit_edge, %for.inc.5.i.i.i129.sso_get_blink_rate_idx.exit.thread.i.i_crit_edge, %for.inc.4.i.i.i127.sso_get_blink_rate_idx.exit.thread.i.i_crit_edge, %for.inc.3.i.i.i125.sso_get_blink_rate_idx.exit.thread.i.i_crit_edge, %for.inc.2.i.i.i123.sso_get_blink_rate_idx.exit.thread.i.i_crit_edge, %for.inc.1.i.i.i121.sso_get_blink_rate_idx.exit.thread.i.i_crit_edge, %for.inc.i.i.i119.sso_get_blink_rate_idx.exit.thread.i.i_crit_edge, %if.else.i.i.sso_get_blink_rate_idx.exit.thread.i.i_crit_edge
  %156 = phi i32 [ 7, %for.inc.6.i.i.i.sso_get_blink_rate_idx.exit.thread.i.i_crit_edge ], [ 6, %for.inc.5.i.i.i129.sso_get_blink_rate_idx.exit.thread.i.i_crit_edge ], [ 5, %for.inc.4.i.i.i127.sso_get_blink_rate_idx.exit.thread.i.i_crit_edge ], [ 4, %for.inc.3.i.i.i125.sso_get_blink_rate_idx.exit.thread.i.i_crit_edge ], [ 3, %for.inc.2.i.i.i123.sso_get_blink_rate_idx.exit.thread.i.i_crit_edge ], [ 2, %for.inc.1.i.i.i121.sso_get_blink_rate_idx.exit.thread.i.i_crit_edge ], [ 1, %for.inc.i.i.i119.sso_get_blink_rate_idx.exit.thread.i.i_crit_edge ], [ 0, %if.else.i.i.sso_get_blink_rate_idx.exit.thread.i.i_crit_edge ], [ %spec.select.i.i130, %for.inc.7.i.i.i ]
  %freq_idx74190.i.i = getelementptr inbounds %struct.sso_led, ptr %call.i.i.i111, i32 0, i32 3, i32 5
  %157 = ptrtoint ptr %freq_idx74190.i.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %156, ptr %freq_idx74190.i.i, align 4
  %arrayidx83.i.i = getelementptr %struct.sso_led_priv, ptr %call.i, i32 0, i32 6, i32 %156
  br label %if.end85.i.i

if.end85.i.i:                                     ; preds = %sso_get_blink_rate_idx.exit.thread.i.i, %if.then71.i.i
  %arrayidx83.sink.i.i = phi ptr [ %arrayidx83.i.i, %sso_get_blink_rate_idx.exit.thread.i.i ], [ %freq.i106, %if.then71.i.i ]
  %158 = ptrtoint ptr %arrayidx83.sink.i.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %arrayidx83.sink.i.i, align 4
  %blink_rate84.i.i = getelementptr inbounds %struct.sso_led, ptr %call.i.i.i111, i32 0, i32 3, i32 3
  %160 = ptrtoint ptr %blink_rate84.i.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %159, ptr %blink_rate84.i.i, align 4
  %call86.i.i = call i32 @fwnode_property_read_string(ptr noundef nonnull %fwnode_child.0201.i.i, ptr noundef nonnull @.str.36, ptr noundef nonnull %tmp.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86.i.i)
  %tobool87.not.i.i = icmp eq i32 %call86.i.i, 0
  br i1 %tobool87.not.i.i, label %if.then88.i.i, label %if.end85.i.i.if.end93.i.i_crit_edge

if.end85.i.i.if.end93.i.i_crit_edge:              ; preds = %if.end85.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93.i.i

if.then88.i.i:                                    ; preds = %if.end85.i.i
  %161 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %tmp.i.i, align 4
  %call89.i.i = call i32 @strcmp(ptr noundef %162, ptr noundef nonnull dereferenceable(3) @.str.37) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89.i.i)
  %tobool90.not.i.i = icmp eq i32 %call89.i.i, 0
  br i1 %tobool90.not.i.i, label %if.then91.i.i, label %if.then88.i.i.if.end93.i.i_crit_edge

if.then88.i.i.if.end93.i.i_crit_edge:             ; preds = %if.then88.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end93.i.i

if.then91.i.i:                                    ; preds = %if.then88.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %brightness.i.i = getelementptr inbounds %struct.sso_led, ptr %call.i.i.i111, i32 0, i32 3, i32 2
  %163 = ptrtoint ptr %brightness.i.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 255, ptr %brightness.i.i, align 4
  br label %if.end93.i.i

if.end93.i.i:                                     ; preds = %if.then91.i.i, %if.then88.i.i.if.end93.i.i_crit_edge, %if.end85.i.i.if.end93.i.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %init_data.i.i.i) #8
  %164 = ptrtoint ptr %119 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 -1, ptr %119, align 4
  %165 = ptrtoint ptr %init_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %165)
  store ptr %fwnode_child.0201.i.i, ptr %init_data.i.i.i, align 4
  %166 = ptrtoint ptr %devicename.i.i.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr @.str.23, ptr %devicename.i.i.i, align 4
  %167 = ptrtoint ptr %default_label.i.i.i to i32
  call void @__asan_store4_noabort(i32 %167)
  store ptr @.str.38, ptr %default_label.i.i.i, align 4
  %168 = ptrtoint ptr %default_trigger.i.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %default_trigger.i.i, align 4
  %cdev.i.i.i = getelementptr inbounds %struct.sso_led, ptr %call.i.i.i111, i32 0, i32 1
  %default_trigger2.i.i.i = getelementptr inbounds %struct.sso_led, ptr %call.i.i.i111, i32 0, i32 1, i32 14
  %170 = ptrtoint ptr %default_trigger2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store ptr %169, ptr %default_trigger2.i.i.i, align 4
  %brightness_set.i.i.i = getelementptr inbounds %struct.sso_led, ptr %call.i.i.i111, i32 0, i32 1, i32 5
  %171 = ptrtoint ptr %brightness_set.i.i.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr @sso_led_brightness_set, ptr %brightness_set.i.i.i, align 4
  %brightness_get.i.i.i = getelementptr inbounds %struct.sso_led, ptr %call.i.i.i111, i32 0, i32 1, i32 7
  %172 = ptrtoint ptr %brightness_get.i.i.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr @sso_led_brightness_get, ptr %brightness_get.i.i.i, align 4
  %brightness.i.i.i = getelementptr inbounds %struct.sso_led, ptr %call.i.i.i111, i32 0, i32 3, i32 2
  %173 = ptrtoint ptr %brightness.i.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %brightness.i.i.i, align 4
  %brightness6.i.i.i = getelementptr inbounds %struct.sso_led, ptr %call.i.i.i111, i32 0, i32 1, i32 1
  %175 = ptrtoint ptr %brightness6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %174, ptr %brightness6.i.i.i, align 4
  %max_brightness.i.i.i = getelementptr inbounds %struct.sso_led, ptr %call.i.i.i111, i32 0, i32 1, i32 2
  %176 = ptrtoint ptr %max_brightness.i.i.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 255, ptr %max_brightness.i.i.i, align 4
  %177 = ptrtoint ptr %hw_trig.i.i to i32
  call void @__asan_load1_noabort(i32 %177)
  %bf.load.i.i.i = load i8, ptr %hw_trig.i.i, align 4
  %178 = and i8 %bf.load.i.i.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %178)
  %tobool.not.i.i.i = icmp eq i8 %178, 0
  br i1 %tobool.not.i.i.i, label %if.end93.i.i.if.end.i.i.i_crit_edge, label %if.then.i.i.i

if.end93.i.i.if.end.i.i.i_crit_edge:              ; preds = %if.end93.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %if.end93.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %flags.i.i.i = getelementptr inbounds %struct.sso_led, ptr %call.i.i.i111, i32 0, i32 1, i32 3
  %179 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %flags.i.i.i, align 4
  %or.i.i.i = or i32 %180, 4194304
  store i32 %or.i.i.i, ptr %flags.i.i.i, align 4
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i.i, %if.end93.i.i.if.end.i.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i)
  %tobool12.not.i.i.i = icmp sgt i8 %bf.load.i.i.i, -1
  br i1 %tobool12.not.i.i.i, label %if.end.i.i.i.if.end17.i.i.i_crit_edge, label %if.then13.i.i.i

if.end.i.i.i.if.end17.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i.i.i

if.then13.i.i.i:                                  ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %flags15.i.i.i = getelementptr inbounds %struct.sso_led, ptr %call.i.i.i111, i32 0, i32 1, i32 3
  %181 = ptrtoint ptr %flags15.i.i.i to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %flags15.i.i.i, align 4
  %or16.i.i.i = or i32 %182, 65536
  store i32 %or16.i.i.i, ptr %flags15.i.i.i, align 4
  br label %if.end17.i.i.i

if.end17.i.i.i:                                   ; preds = %if.then13.i.i.i, %if.end.i.i.i.if.end17.i.i.i_crit_edge
  %183 = and i8 %bf.load.i.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %183)
  %tobool22.not.i.i.i = icmp eq i8 %183, 0
  br i1 %tobool22.not.i.i.i, label %if.end17.i.i.i.if.end27.i.i.i_crit_edge, label %if.then23.i.i.i

if.end17.i.i.i.if.end27.i.i.i_crit_edge:          ; preds = %if.end17.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27.i.i.i

if.then23.i.i.i:                                  ; preds = %if.end17.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %flags25.i.i.i = getelementptr inbounds %struct.sso_led, ptr %call.i.i.i111, i32 0, i32 1, i32 3
  %184 = ptrtoint ptr %flags25.i.i.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %flags25.i.i.i, align 4
  %or26.i.i.i = or i32 %185, 1048576
  store i32 %or26.i.i.i, ptr %flags25.i.i.i, align 4
  br label %if.end27.i.i.i

if.end27.i.i.i:                                   ; preds = %if.then23.i.i.i, %if.end17.i.i.i.if.end27.i.i.i_crit_edge
  %186 = and i8 %bf.load.i.i.i, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %186)
  %tobool32.not.i.i.i = icmp eq i8 %186, 0
  br i1 %tobool32.not.i.i.i, label %if.end27.i.i.i.if.end.i.i.i.i_crit_edge, label %if.then.i.i.i.i

if.end27.i.i.i.if.end.i.i.i.i_crit_edge:          ; preds = %if.end27.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end27.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %blink_set.i.i.i = getelementptr inbounds %struct.sso_led, ptr %call.i.i.i111, i32 0, i32 1, i32 8
  %187 = ptrtoint ptr %blink_set.i.i.i to i32
  call void @__asan_store4_noabort(i32 %187)
  store ptr @sso_led_blink_set, ptr %blink_set.i.i.i, align 4
  %188 = ptrtoint ptr %pin.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %pin.i.i, align 4
  %freq_idx.i.i.i.i = getelementptr inbounds %struct.sso_led, ptr %call.i.i.i111, i32 0, i32 3, i32 5
  %190 = ptrtoint ptr %freq_idx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %freq_idx.i.i.i.i, align 4
  call fastcc void @sso_led_freq_set(ptr noundef %call.i, i32 noundef %189, i32 noundef %191) #8
  %192 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %call.i, align 4
  %194 = ptrtoint ptr %pin.i.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %pin.i.i, align 4
  %shl.i.i.i.i = shl nuw i32 1, %195
  %call.i.i.i.i.i = call i32 @regmap_update_bits_base(ptr noundef %193, i32 noundef 708, i32 noundef %shl.i.i.i.i, i32 noundef %shl.i.i.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i, %if.end27.i.i.i.if.end.i.i.i.i_crit_edge
  %196 = ptrtoint ptr %hw_trig.i.i to i32
  call void @__asan_load1_noabort(i32 %196)
  %bf.load5.i.i.i.i = load i8, ptr %hw_trig.i.i, align 4
  %197 = and i8 %bf.load5.i.i.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %197)
  %tobool9.not.i.i.i.i = icmp eq i8 %197, 0
  br i1 %tobool9.not.i.i.i.i, label %if.end.i.i.i.i.if.end17.i.i.i.i_crit_edge, label %if.then10.i.i.i.i

if.end.i.i.i.i.if.end17.i.i.i.i_crit_edge:        ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end17.i.i.i.i

if.then10.i.i.i.i:                                ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %198 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %call.i, align 4
  %200 = ptrtoint ptr %pin.i.i to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %pin.i.i, align 4
  %shl13.i.i.i.i = shl nuw i32 1, %201
  %call.i46.i.i.i.i = call i32 @regmap_update_bits_base(ptr noundef %199, i32 noundef 712, i32 noundef %shl13.i.i.i.i, i32 noundef %shl13.i.i.i.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end17.i.i.i.i

if.end17.i.i.i.i:                                 ; preds = %if.then10.i.i.i.i, %if.end.i.i.i.i.if.end17.i.i.i.i_crit_edge
  %202 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %call.i, align 4
  %204 = ptrtoint ptr %pin.i.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %pin.i.i, align 4
  %mul.i.i.i.i = shl i32 %205, 2
  %add.i.i.i.i = add i32 %mul.i.i.i.i, 8
  %206 = ptrtoint ptr %brightness.i.i.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %brightness.i.i.i, align 4
  %call20.i.i.i.i = call i32 @regmap_write(ptr noundef %203, i32 noundef %add.i.i.i.i, i32 noundef %207) #8
  %208 = ptrtoint ptr %hw_trig.i.i to i32
  call void @__asan_load1_noabort(i32 %208)
  %bf.load22.i.i.i.i = load i8, ptr %hw_trig.i.i, align 4
  %209 = and i8 %bf.load22.i.i.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %209)
  %tobool26.not.i.i.i.i = icmp eq i8 %209, 0
  br i1 %tobool26.not.i.i.i.i, label %land.lhs.true.i.i.i.i, label %if.end17.i.i.i.i.sso_led_hw_cfg.exit.i.i.i_crit_edge

if.end17.i.i.i.i.sso_led_hw_cfg.exit.i.i.i_crit_edge: ; preds = %if.end17.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sso_led_hw_cfg.exit.i.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.end17.i.i.i.i
  %210 = ptrtoint ptr %brightness.i.i.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %brightness.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %211)
  %tobool28.not.i.i.i.i = icmp eq i32 %211, 0
  br i1 %tobool28.not.i.i.i.i, label %land.lhs.true.i.i.i.i.sso_led_hw_cfg.exit.i.i.i_crit_edge, label %if.then29.i.i.i.i

land.lhs.true.i.i.i.i.sso_led_hw_cfg.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sso_led_hw_cfg.exit.i.i.i

if.then29.i.i.i.i:                                ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %212 = ptrtoint ptr %gpiod.i.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %gpiod.i.i, align 4
  call void @gpiod_set_value(ptr noundef %213, i32 noundef 1) #8
  br label %sso_led_hw_cfg.exit.i.i.i

sso_led_hw_cfg.exit.i.i.i:                        ; preds = %if.then29.i.i.i.i, %land.lhs.true.i.i.i.i.sso_led_hw_cfg.exit.i.i.i_crit_edge, %if.end17.i.i.i.i.sso_led_hw_cfg.exit.i.i.i_crit_edge
  %214 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %dev3, align 4
  %call.i180.i.i = call i32 @devm_led_classdev_register_ext(ptr noundef %215, ptr noundef %cdev.i.i.i, ptr noundef nonnull %init_data.i.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i180.i.i)
  %tobool37.not.i.i.i = icmp eq i32 %call.i180.i.i, 0
  br i1 %tobool37.not.i.i.i, label %if.end39.i.i.i, label %sso_create_led.exit.i.i

if.end39.i.i.i:                                   ; preds = %sso_led_hw_cfg.exit.i.i.i
  %216 = ptrtoint ptr %led_list to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %led_list, align 4
  %call.i.i62.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i.i.i111, ptr noundef %led_list, ptr noundef %217) #8
  br i1 %call.i.i62.i.i.i, label %if.end.i.i.i.i.i, label %if.end39.i.i.i.for.inc.i.i132_crit_edge

if.end39.i.i.i.for.inc.i.i132_crit_edge:          ; preds = %if.end39.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc.i.i132

if.end.i.i.i.i.i:                                 ; preds = %if.end39.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %217, i32 0, i32 1
  %218 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store ptr %call.i.i.i111, ptr %prev1.i.i.i.i.i, align 4
  %219 = ptrtoint ptr %call.i.i.i111 to i32
  call void @__asan_store4_noabort(i32 %219)
  store ptr %217, ptr %call.i.i.i111, align 4
  %220 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store ptr %led_list, ptr %prev.i.i.i, align 4
  %221 = ptrtoint ptr %led_list to i32
  call void @__asan_store4_noabort(i32 %221)
  store volatile ptr %call.i.i.i111, ptr %led_list, align 4
  br label %for.inc.i.i132

sso_create_led.exit.i.i:                          ; preds = %sso_led_hw_cfg.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data.i.i.i) #8
  br label %__dt_err.i.i

for.inc.i.i132:                                   ; preds = %if.end.i.i.i.i.i, %if.end39.i.i.i.for.inc.i.i132_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %init_data.i.i.i) #8
  %call98.i.i = call ptr @fwnode_get_next_child_node(ptr noundef nonnull %call4.i, ptr noundef nonnull %fwnode_child.0201.i.i) #8
  %tobool.not.i.i131 = icmp eq ptr %call98.i.i, null
  br i1 %tobool.not.i.i131, label %for.inc.i.i132.__sso_led_dt_parse.exit.thread.i_crit_edge, label %for.inc.i.i132.for.body.i.i112_crit_edge

for.inc.i.i132.for.body.i.i112_crit_edge:         ; preds = %for.inc.i.i132
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i.i112

for.inc.i.i132.__sso_led_dt_parse.exit.thread.i_crit_edge: ; preds = %for.inc.i.i132
  call void @__sanitizer_cov_trace_pc() #10
  br label %__sso_led_dt_parse.exit.thread.i

__dt_err.i.i:                                     ; preds = %sso_create_led.exit.i.i, %do.end.i.i116, %if.end29.i.i.__dt_err.i.i_crit_edge, %if.then9.i.i, %for.body.i.i112.__dt_err.i.i_crit_edge
  %ret.0.i.i = phi i32 [ %call12.i.i, %if.then9.i.i ], [ -22, %do.end.i.i116 ], [ %call.i180.i.i, %sso_create_led.exit.i.i ], [ -12, %for.body.i.i112.__dt_err.i.i_crit_edge ], [ %call.i177.i.i, %if.end29.i.i.__dt_err.i.i_crit_edge ]
  call void @fwnode_handle_put(ptr noundef nonnull %fwnode_child.0201.i.i) #8
  %222 = ptrtoint ptr %led_list to i32
  call void @__asan_load4_noabort(i32 %222)
  %led.0202.i.i = load ptr, ptr %led_list, align 4
  %cmp103.not203.i.i = icmp eq ptr %led.0202.i.i, %led_list
  br i1 %cmp103.not203.i.i, label %__dt_err.i.i.__sso_led_dt_parse.exit.i_crit_edge, label %__dt_err.i.i.for.body105.i.i_crit_edge

__dt_err.i.i.for.body105.i.i_crit_edge:           ; preds = %__dt_err.i.i
  br label %for.body105.i.i

__dt_err.i.i.__sso_led_dt_parse.exit.i_crit_edge: ; preds = %__dt_err.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__sso_led_dt_parse.exit.i

for.body105.i.i:                                  ; preds = %sso_led_shutdown.exit.i.i.for.body105.i.i_crit_edge, %__dt_err.i.i.for.body105.i.i_crit_edge
  %led.0204.i.i = phi ptr [ %led.0.i.i, %sso_led_shutdown.exit.i.i.for.body105.i.i_crit_edge ], [ %led.0202.i.i, %__dt_err.i.i.for.body105.i.i_crit_edge ]
  %priv1.i.i.i = getelementptr inbounds %struct.sso_led, ptr %led.0204.i.i, i32 0, i32 4
  %223 = ptrtoint ptr %priv1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %priv1.i.i.i, align 4
  %dev.i181.i.i = getelementptr inbounds %struct.sso_led_priv, ptr %224, i32 0, i32 1
  %225 = ptrtoint ptr %dev.i181.i.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %dev.i181.i.i, align 4
  %cdev.i182.i.i = getelementptr inbounds %struct.sso_led, ptr %led.0204.i.i, i32 0, i32 1
  call void @devm_led_classdev_unregister(ptr noundef %226, ptr noundef %cdev.i182.i.i) #8
  %hw_trig.i.i.i = getelementptr inbounds %struct.sso_led, ptr %led.0204.i.i, i32 0, i32 3, i32 4
  %227 = ptrtoint ptr %hw_trig.i.i.i to i32
  call void @__asan_load1_noabort(i32 %227)
  %bf.load.i183.i.i = load i8, ptr %hw_trig.i.i.i, align 4
  %228 = and i8 %bf.load.i183.i.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %228)
  %tobool.not.i184.i.i = icmp eq i8 %228, 0
  br i1 %tobool.not.i184.i.i, label %for.body105.i.i.sso_led_shutdown.exit.i.i_crit_edge, label %if.then.i185.i.i

for.body105.i.i.sso_led_shutdown.exit.i.i_crit_edge: ; preds = %for.body105.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sso_led_shutdown.exit.i.i

if.then.i185.i.i:                                 ; preds = %for.body105.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %229 = ptrtoint ptr %224 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %224, align 4
  %pin.i.i.i = getelementptr inbounds %struct.sso_led, ptr %led.0204.i.i, i32 0, i32 3, i32 6
  %231 = ptrtoint ptr %pin.i.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %pin.i.i.i, align 4
  %shl.i.i.i = shl nuw i32 1, %232
  %call.i.i.i.i = call i32 @regmap_update_bits_base(ptr noundef %230, i32 noundef 712, i32 noundef %shl.i.i.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %sso_led_shutdown.exit.i.i

sso_led_shutdown.exit.i.i:                        ; preds = %if.then.i185.i.i, %for.body105.i.i.sso_led_shutdown.exit.i.i_crit_edge
  %233 = ptrtoint ptr %priv1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %233)
  store ptr null, ptr %priv1.i.i.i, align 4
  %234 = ptrtoint ptr %led.0204.i.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %led.0.i.i = load ptr, ptr %led.0204.i.i, align 4
  %cmp103.not.i.i = icmp eq ptr %led.0.i.i, %led_list
  br i1 %cmp103.not.i.i, label %sso_led_shutdown.exit.i.i.__sso_led_dt_parse.exit.i_crit_edge, label %sso_led_shutdown.exit.i.i.for.body105.i.i_crit_edge

sso_led_shutdown.exit.i.i.for.body105.i.i_crit_edge: ; preds = %sso_led_shutdown.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body105.i.i

sso_led_shutdown.exit.i.i.__sso_led_dt_parse.exit.i_crit_edge: ; preds = %sso_led_shutdown.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__sso_led_dt_parse.exit.i

__sso_led_dt_parse.exit.thread.i:                 ; preds = %for.inc.i.i132.__sso_led_dt_parse.exit.thread.i_crit_edge, %if.then6.i.__sso_led_dt_parse.exit.thread.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prop.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #8
  call void @fwnode_handle_put(ptr noundef nonnull %call4.i) #8
  br label %do.end53

__sso_led_dt_parse.exit.i:                        ; preds = %sso_led_shutdown.exit.i.i.__sso_led_dt_parse.exit.i_crit_edge, %__dt_err.i.i.__sso_led_dt_parse.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prop.i.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #8
  call void @fwnode_handle_put(ptr noundef nonnull %call4.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0.i.i)
  %tobool8.not.i = icmp eq i32 %ret.0.i.i, 0
  br i1 %tobool8.not.i, label %__sso_led_dt_parse.exit.i.do.end53_crit_edge, label %if.then48

__sso_led_dt_parse.exit.i.do.end53_crit_edge:     ; preds = %__sso_led_dt_parse.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end53

if.then48:                                        ; preds = %__sso_led_dt_parse.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %235 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %call.i, align 4
  call void @regmap_exit(ptr noundef %236) #8
  br label %cleanup

do.end53:                                         ; preds = %__sso_led_dt_parse.exit.i.do.end53_crit_edge, %__sso_led_dt_parse.exit.thread.i, %if.end.i109.do.end53_crit_edge, %if.end45.do.end53_crit_edge
  %237 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %dev3, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %238, ptr noundef nonnull @.str.15) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end53, %if.then48, %if.then43, %do.end37, %devm_add_action_or_reset.exit, %do.end19, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %do.end ], [ %retval.0.i.ph, %do.end19 ], [ %15, %do.end37 ], [ %retval.0.i105139, %if.then43 ], [ %ret.0.i.i, %if.then48 ], [ 0, %do.end53 ], [ -12, %entry.cleanup_crit_edge ], [ %call.i99, %devm_add_action_or_reset.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @intel_sso_led_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %led_list = getelementptr inbounds %struct.sso_led_priv, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %led_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %led_list, align 4
  %cmp.not20 = icmp eq ptr %3, %led_list
  br i1 %cmp.not20, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %sso_led_shutdown.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %led.021 = phi ptr [ %n.0, %sso_led_shutdown.exit.for.body_crit_edge ], [ %3, %entry.for.body_crit_edge ]
  %4 = ptrtoint ptr %led.021 to i32
  call void @__asan_load4_noabort(i32 %4)
  %n.0 = load ptr, ptr %led.021, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %led.021) #8
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %led.021, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %led.021 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %led.021, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %11 = ptrtoint ptr %led.021 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %led.021, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %led.021, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %priv1.i = getelementptr inbounds %struct.sso_led, ptr %led.021, i32 0, i32 4
  %13 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %priv1.i, align 4
  %dev.i = getelementptr inbounds %struct.sso_led_priv, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  %cdev.i = getelementptr inbounds %struct.sso_led, ptr %led.021, i32 0, i32 1
  tail call void @devm_led_classdev_unregister(ptr noundef %16, ptr noundef %cdev.i) #8
  %hw_trig.i = getelementptr inbounds %struct.sso_led, ptr %led.021, i32 0, i32 3, i32 4
  %17 = ptrtoint ptr %hw_trig.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %bf.load.i = load i8, ptr %hw_trig.i, align 4
  %18 = and i8 %bf.load.i, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i = icmp eq i8 %18, 0
  br i1 %tobool.not.i, label %list_del.exit.sso_led_shutdown.exit_crit_edge, label %if.then.i

list_del.exit.sso_led_shutdown.exit_crit_edge:    ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sso_led_shutdown.exit

if.then.i:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %14, align 4
  %pin.i = getelementptr inbounds %struct.sso_led, ptr %led.021, i32 0, i32 3, i32 6
  %21 = ptrtoint ptr %pin.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pin.i, align 4
  %shl.i = shl nuw i32 1, %22
  %call.i.i19 = tail call i32 @regmap_update_bits_base(ptr noundef %20, i32 noundef 712, i32 noundef %shl.i, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %sso_led_shutdown.exit

sso_led_shutdown.exit:                            ; preds = %if.then.i, %list_del.exit.sso_led_shutdown.exit_crit_edge
  %23 = ptrtoint ptr %priv1.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %priv1.i, align 4
  %cmp.not = icmp eq ptr %n.0, %led_list
  br i1 %cmp.not, label %sso_led_shutdown.exit.for.end_crit_edge, label %sso_led_shutdown.exit.for.body_crit_edge

sso_led_shutdown.exit.for.body_crit_edge:         ; preds = %sso_led_shutdown.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

sso_led_shutdown.exit.for.end_crit_edge:          ; preds = %sso_led_shutdown.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %sso_led_shutdown.exit.for.end_crit_edge, %entry.for.end_crit_edge
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  tail call void @regmap_exit(ptr noundef %25) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_bulk_get(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sso_clock_disable_unprepare(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %clocks = getelementptr inbounds %struct.sso_led_priv, ptr %data, i32 0, i32 3
  tail call void @clk_bulk_disable(i32 noundef 2, ptr noundef %clocks) #8
  tail call void @clk_bulk_unprepare(i32 noundef 2, ptr noundef %clocks) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @regmap_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_prepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_bulk_enable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_unprepare(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_add_action(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_bulk_disable(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sso_gpio_request(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %alloc_bitmap = getelementptr inbounds %struct.sso_led_priv, ptr %call, i32 0, i32 8, i32 5
  %0 = ptrtoint ptr %alloc_bitmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %alloc_bitmap, align 4
  %shl = shl nuw i32 1, %offset
  %and = and i32 %1, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %or = or i32 %1, %shl
  %2 = ptrtoint ptr %alloc_bitmap to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or, ptr %alloc_bitmap, align 4
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call, align 4
  %mul = shl i32 %offset, 2
  %add = add i32 %mul, 8
  %call4 = tail call i32 @regmap_write(ptr noundef %4, i32 noundef %add, i32 noundef 255) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sso_gpio_free(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %shl = shl nuw i32 1, %offset
  %neg = xor i32 %shl, -1
  %alloc_bitmap = getelementptr inbounds %struct.sso_led_priv, ptr %call, i32 0, i32 8, i32 5
  %0 = ptrtoint ptr %alloc_bitmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %alloc_bitmap, align 4
  %and = and i32 %1, %neg
  store i32 %and, ptr %alloc_bitmap, align 4
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 4
  %mul = shl i32 %offset, 2
  %add = add i32 %mul, 8
  %call1 = tail call i32 @regmap_write(ptr noundef %3, i32 noundef %add, i32 noundef 0) #8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sso_gpio_get_dir(ptr nocapture noundef readnone %chip, i32 noundef %offset) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sso_gpio_dir_out(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool = icmp ne i32 %value, 0
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %shl = shl nuw i32 1, %offset
  %conv = zext i1 %tobool to i32
  %shl3 = shl nuw i32 %conv, %offset
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 696, i32 noundef %shl, i32 noundef %shl3, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %freq = getelementptr inbounds %struct.sso_led_priv, ptr %call, i32 0, i32 8, i32 3
  %2 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %freq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool5.not = icmp eq i32 %3, 0
  br i1 %tobool5.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call, align 4
  %call.i11 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 688, i32 noundef -2147483648, i32 noundef -2147483648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sso_gpio_get(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  %reg_val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_val) #8
  %0 = ptrtoint ptr %reg_val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg_val, align 4, !annotation !100
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call, align 4
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef 696, ptr noundef nonnull %reg_val) #8
  %3 = ptrtoint ptr %reg_val to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg_val, align 4
  %5 = lshr i32 %4, %offset
  %6 = and i32 %5, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_val) #8
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sso_gpio_set(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #8
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %shl = shl nuw i32 1, %offset
  %shl1 = shl i32 %value, %offset
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 696, i32 noundef %shl, i32 noundef %shl1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %freq = getelementptr inbounds %struct.sso_led_priv, ptr %call, i32 0, i32 8, i32 3
  %2 = ptrtoint ptr %freq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %freq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call, align 4
  %call.i8 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 688, i32 noundef -2147483648, i32 noundef -2147483648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_fwnode(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_get_child_node_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_get_named_child_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fwnode_handle_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fwnode_get_next_child_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @fwnode_property_present(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_fwnode_gpiod_get_index(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fwnode_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sso_led_brightness_set(ptr nocapture noundef %led_cdev, i32 noundef %brightness) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr i8, ptr %led_cdev, i32 432
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %brightness3 = getelementptr i8, ptr %led_cdev, i32 412
  %2 = ptrtoint ptr %brightness3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %brightness, ptr %brightness3, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %1, align 4
  %pin = getelementptr i8, ptr %led_cdev, i32 428
  %5 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pin, align 4
  %mul = shl i32 %6, 2
  %add = add i32 %mul, 8
  %call4 = tail call i32 @regmap_write(ptr noundef %4, i32 noundef %add, i32 noundef %brightness) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %brightness)
  %cmp = icmp eq i32 %brightness, 0
  %not.cmp = xor i1 %cmp, true
  %. = zext i1 %not.cmp to i32
  %hw_blink = getelementptr i8, ptr %led_cdev, i32 420
  %7 = ptrtoint ptr %hw_blink to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %hw_blink, align 4
  %8 = and i8 %bf.load, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  %brmerge = or i1 %tobool.not, %not.cmp
  %9 = and i8 %bf.load, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool11.not = icmp eq i8 %9, 0
  %or.cond = select i1 %brmerge, i1 true, i1 %tobool11.not
  br i1 %or.cond, label %if.else19, label %if.then12

if.then12:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %bf.clear15 = and i8 %bf.load, -5
  %10 = ptrtoint ptr %hw_blink to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %bf.clear15, ptr %hw_blink, align 4
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %13 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pin, align 4
  %shl = shl nuw i32 1, %14
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 708, i32 noundef %shl, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end47

if.else19:                                        ; preds = %entry
  %brmerge74 = or i1 %cmp, %tobool.not
  %brmerge74.not = xor i1 %brmerge74, true
  %or.cond75 = select i1 %brmerge74.not, i1 %tobool11.not, i1 false
  br i1 %or.cond75, label %if.then35, label %if.else19.if.end47_crit_edge

if.else19.if.end47_crit_edge:                     ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.then35:                                        ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #10
  %bf.set39 = or i8 %bf.load, 4
  %15 = ptrtoint ptr %hw_blink to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %bf.set39, ptr %hw_blink, align 4
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %18 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pin, align 4
  %shl42 = shl nuw i32 1, %19
  %call.i76 = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 708, i32 noundef %shl42, i32 noundef %shl42, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end47

if.end47:                                         ; preds = %if.then35, %if.else19.if.end47_crit_edge, %if.then12
  %20 = ptrtoint ptr %hw_blink to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load48 = load i8, ptr %hw_blink, align 4
  %21 = and i8 %bf.load48, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool52.not = icmp eq i8 %21, 0
  br i1 %tobool52.not, label %if.then53, label %if.end47.if.end54_crit_edge

if.end47.if.end54_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.then53:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  %gpiod = getelementptr i8, ptr %led_cdev, i32 400
  %22 = ptrtoint ptr %gpiod to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %gpiod, align 4
  tail call void @gpiod_set_value(ptr noundef %23, i32 noundef %.) #8
  br label %if.end54

if.end54:                                         ; preds = %if.then53, %if.end47.if.end54_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sso_led_brightness_get(ptr nocapture noundef readonly %led_cdev) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %brightness = getelementptr i8, ptr %led_cdev, i32 412
  %0 = ptrtoint ptr %brightness to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %brightness, align 4
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sso_led_blink_set(ptr nocapture noundef %led_cdev, ptr nocapture noundef %delay_on, ptr nocapture noundef %delay_off) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr i8, ptr %led_cdev, i32 432
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %2 = ptrtoint ptr %delay_on to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %delay_on, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %entry
  %4 = ptrtoint ptr %delay_off to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %delay_off, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not.i = icmp eq i32 %5, 0
  br i1 %tobool2.not.i, label %if.then.i, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %freq3.i = getelementptr inbounds %struct.sso_led_priv, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %freq3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %freq3.i, align 4
  %div.i = udiv i32 1000, %7
  %div432.i = lshr i32 %div.i, 1
  br label %cleanup.sink.split.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %8 = ptrtoint ptr %delay_off to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %delay_off, align 4
  %add.i = add i32 %9, %3
  %div5.i = udiv i32 1000, %add.i
  %arrayidx.i.i = getelementptr %struct.sso_led_priv, ptr %1, i32 0, i32 6, i32 0
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %div5.i)
  %cmp1.not.i.i = icmp ult i32 %11, %div5.i
  br i1 %cmp1.not.i.i, label %for.inc.i.i, label %if.end.i.sso_get_blink_rate_idx.exit.i_crit_edge

if.end.i.sso_get_blink_rate_idx.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sso_get_blink_rate_idx.exit.i

for.inc.i.i:                                      ; preds = %if.end.i
  %arrayidx.1.i.i = getelementptr %struct.sso_led_priv, ptr %1, i32 0, i32 6, i32 1
  %12 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx.1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %div5.i)
  %cmp1.not.1.i.i = icmp ult i32 %13, %div5.i
  br i1 %cmp1.not.1.i.i, label %for.inc.1.i.i, label %for.inc.i.i.sso_get_blink_rate_idx.exit.i_crit_edge

for.inc.i.i.sso_get_blink_rate_idx.exit.i_crit_edge: ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sso_get_blink_rate_idx.exit.i

for.inc.1.i.i:                                    ; preds = %for.inc.i.i
  %arrayidx.2.i.i = getelementptr %struct.sso_led_priv, ptr %1, i32 0, i32 6, i32 2
  %14 = ptrtoint ptr %arrayidx.2.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.2.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %div5.i)
  %cmp1.not.2.i.i = icmp ult i32 %15, %div5.i
  br i1 %cmp1.not.2.i.i, label %for.inc.2.i.i, label %for.inc.1.i.i.sso_get_blink_rate_idx.exit.i_crit_edge

for.inc.1.i.i.sso_get_blink_rate_idx.exit.i_crit_edge: ; preds = %for.inc.1.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sso_get_blink_rate_idx.exit.i

for.inc.2.i.i:                                    ; preds = %for.inc.1.i.i
  %arrayidx.3.i.i = getelementptr %struct.sso_led_priv, ptr %1, i32 0, i32 6, i32 3
  %16 = ptrtoint ptr %arrayidx.3.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.3.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %div5.i)
  %cmp1.not.3.i.i = icmp ult i32 %17, %div5.i
  br i1 %cmp1.not.3.i.i, label %for.inc.3.i.i, label %for.inc.2.i.i.sso_get_blink_rate_idx.exit.i_crit_edge

for.inc.2.i.i.sso_get_blink_rate_idx.exit.i_crit_edge: ; preds = %for.inc.2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sso_get_blink_rate_idx.exit.i

for.inc.3.i.i:                                    ; preds = %for.inc.2.i.i
  %arrayidx.4.i.i = getelementptr %struct.sso_led_priv, ptr %1, i32 0, i32 6, i32 4
  %18 = ptrtoint ptr %arrayidx.4.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx.4.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %div5.i)
  %cmp1.not.4.i.i = icmp ult i32 %19, %div5.i
  br i1 %cmp1.not.4.i.i, label %for.inc.4.i.i, label %for.inc.3.i.i.sso_get_blink_rate_idx.exit.i_crit_edge

for.inc.3.i.i.sso_get_blink_rate_idx.exit.i_crit_edge: ; preds = %for.inc.3.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sso_get_blink_rate_idx.exit.i

for.inc.4.i.i:                                    ; preds = %for.inc.3.i.i
  %arrayidx.5.i.i = getelementptr %struct.sso_led_priv, ptr %1, i32 0, i32 6, i32 5
  %20 = ptrtoint ptr %arrayidx.5.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx.5.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %div5.i)
  %cmp1.not.5.i.i = icmp ult i32 %21, %div5.i
  br i1 %cmp1.not.5.i.i, label %for.inc.5.i.i, label %for.inc.4.i.i.sso_get_blink_rate_idx.exit.i_crit_edge

for.inc.4.i.i.sso_get_blink_rate_idx.exit.i_crit_edge: ; preds = %for.inc.4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sso_get_blink_rate_idx.exit.i

for.inc.5.i.i:                                    ; preds = %for.inc.4.i.i
  %arrayidx.6.i.i = getelementptr %struct.sso_led_priv, ptr %1, i32 0, i32 6, i32 6
  %22 = ptrtoint ptr %arrayidx.6.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.6.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %div5.i)
  %cmp1.not.6.i.i = icmp ult i32 %23, %div5.i
  br i1 %cmp1.not.6.i.i, label %for.inc.6.i.i, label %for.inc.5.i.i.sso_get_blink_rate_idx.exit.i_crit_edge

for.inc.5.i.i.sso_get_blink_rate_idx.exit.i_crit_edge: ; preds = %for.inc.5.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sso_get_blink_rate_idx.exit.i

for.inc.6.i.i:                                    ; preds = %for.inc.5.i.i
  %arrayidx.7.i.i = getelementptr %struct.sso_led_priv, ptr %1, i32 0, i32 6, i32 7
  %24 = ptrtoint ptr %arrayidx.7.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.7.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %div5.i)
  %cmp1.not.7.i.i = icmp ult i32 %25, %div5.i
  br i1 %cmp1.not.7.i.i, label %for.inc.7.i.i, label %for.inc.6.i.i.sso_get_blink_rate_idx.exit.i_crit_edge

for.inc.6.i.i.sso_get_blink_rate_idx.exit.i_crit_edge: ; preds = %for.inc.6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %sso_get_blink_rate_idx.exit.i

for.inc.7.i.i:                                    ; preds = %for.inc.6.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx.8.i.i = getelementptr %struct.sso_led_priv, ptr %1, i32 0, i32 6, i32 8
  %26 = ptrtoint ptr %arrayidx.8.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx.8.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %div5.i)
  %cmp1.not.8.i.i = icmp ult i32 %27, %div5.i
  %spec.select.i = select i1 %cmp1.not.8.i.i, i32 9, i32 8
  br label %sso_get_blink_rate_idx.exit.i

sso_get_blink_rate_idx.exit.i:                    ; preds = %for.inc.7.i.i, %for.inc.6.i.i.sso_get_blink_rate_idx.exit.i_crit_edge, %for.inc.5.i.i.sso_get_blink_rate_idx.exit.i_crit_edge, %for.inc.4.i.i.sso_get_blink_rate_idx.exit.i_crit_edge, %for.inc.3.i.i.sso_get_blink_rate_idx.exit.i_crit_edge, %for.inc.2.i.i.sso_get_blink_rate_idx.exit.i_crit_edge, %for.inc.1.i.i.sso_get_blink_rate_idx.exit.i_crit_edge, %for.inc.i.i.sso_get_blink_rate_idx.exit.i_crit_edge, %if.end.i.sso_get_blink_rate_idx.exit.i_crit_edge
  %28 = phi i32 [ 7, %for.inc.6.i.i.sso_get_blink_rate_idx.exit.i_crit_edge ], [ 6, %for.inc.5.i.i.sso_get_blink_rate_idx.exit.i_crit_edge ], [ 5, %for.inc.4.i.i.sso_get_blink_rate_idx.exit.i_crit_edge ], [ 4, %for.inc.3.i.i.sso_get_blink_rate_idx.exit.i_crit_edge ], [ 3, %for.inc.2.i.i.sso_get_blink_rate_idx.exit.i_crit_edge ], [ 2, %for.inc.1.i.i.sso_get_blink_rate_idx.exit.i_crit_edge ], [ 1, %for.inc.i.i.sso_get_blink_rate_idx.exit.i_crit_edge ], [ 0, %if.end.i.sso_get_blink_rate_idx.exit.i_crit_edge ], [ %spec.select.i, %for.inc.7.i.i ]
  %arrayidx9.i = getelementptr %struct.sso_led_priv, ptr %1, i32 0, i32 6, i32 %28
  %29 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx9.i, align 4
  %div10.i = udiv i32 1000, %30
  %div1133.i = lshr i32 %div10.i, 1
  %31 = ptrtoint ptr %delay_off to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %div1133.i, ptr %delay_off, align 4
  %32 = ptrtoint ptr %delay_on to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %div1133.i, ptr %delay_on, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 500, i32 %30)
  %tobool12.not.i = icmp ugt i32 %30, 500
  br i1 %tobool12.not.i, label %sso_get_blink_rate_idx.exit.i.cleanup.sink.split.i_crit_edge, label %sso_get_blink_rate_idx.exit.i.delay_to_freq_idx.exit_crit_edge

sso_get_blink_rate_idx.exit.i.delay_to_freq_idx.exit_crit_edge: ; preds = %sso_get_blink_rate_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %delay_to_freq_idx.exit

sso_get_blink_rate_idx.exit.i.cleanup.sink.split.i_crit_edge: ; preds = %sso_get_blink_rate_idx.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %sso_get_blink_rate_idx.exit.i.cleanup.sink.split.i_crit_edge, %if.then.i
  %.sink36.i = phi i32 [ %div432.i, %if.then.i ], [ 1, %sso_get_blink_rate_idx.exit.i.cleanup.sink.split.i_crit_edge ]
  %retval.0.ph.i = phi i32 [ 0, %if.then.i ], [ %28, %sso_get_blink_rate_idx.exit.i.cleanup.sink.split.i_crit_edge ]
  %33 = ptrtoint ptr %delay_off to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %.sink36.i, ptr %delay_off, align 4
  %34 = ptrtoint ptr %delay_on to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %.sink36.i, ptr %delay_on, align 4
  br label %delay_to_freq_idx.exit

delay_to_freq_idx.exit:                           ; preds = %cleanup.sink.split.i, %sso_get_blink_rate_idx.exit.i.delay_to_freq_idx.exit_crit_edge
  %retval.0.i = phi i32 [ %28, %sso_get_blink_rate_idx.exit.i.delay_to_freq_idx.exit_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  %pin = getelementptr i8, ptr %led_cdev, i32 428
  %35 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %pin, align 4
  tail call fastcc void @sso_led_freq_set(ptr noundef %1, i32 noundef %36, i32 noundef %retval.0.i)
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  %39 = ptrtoint ptr %pin to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pin, align 4
  %shl = shl nuw i32 1, %40
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %38, i32 noundef 708, i32 noundef %shl, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  %freq_idx10 = getelementptr i8, ptr %led_cdev, i32 424
  %41 = ptrtoint ptr %freq_idx10 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %retval.0.i, ptr %freq_idx10, align 4
  %arrayidx = getelementptr %struct.sso_led_priv, ptr %1, i32 0, i32 6, i32 %retval.0.i
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx, align 4
  %blink_rate = getelementptr i8, ptr %led_cdev, i32 416
  %44 = ptrtoint ptr %blink_rate to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %blink_rate, align 4
  %blinking = getelementptr i8, ptr %led_cdev, i32 420
  %45 = ptrtoint ptr %blinking to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load = load i8, ptr %blinking, align 4
  %bf.set = or i8 %bf.load, 4
  store i8 %bf.set, ptr %blinking, align 4
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sso_led_freq_set(ptr nocapture noundef readonly %priv, i32 noundef %pin, i32 noundef %freq_idx) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %freq_idx)
  %tobool.not = icmp eq i32 %freq_idx, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %pin)
  %cmp.i = icmp ult i32 %pin, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %pin)
  %cmp1.i = icmp ult i32 %pin, 29
  %..i = select i1 %cmp1.i, i32 1, i32 2
  %retval.0.i = select i1 %cmp.i, i32 0, i32 %..i
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %freq_idx)
  %cmp.i68 = icmp slt i32 %freq_idx, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %freq_idx)
  %cmp1.i69 = icmp slt i32 %freq_idx, 9
  %..i70 = select i1 %cmp1.i69, i32 1, i32 2
  %retval.0.i71 = select i1 %cmp.i68, i32 0, i32 %..i70
  %0 = zext i32 %retval.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %retval.0.i, label %if.end.cleanup_crit_edge [
    i32 2, label %if.else6
    i32 1, label %if.end.if.end8_crit_edge
  ]

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.end8:                                          ; preds = %if.else6, %if.end.if.end8_crit_edge
  %.sink = phi i32 [ -29, %if.else6 ], [ -24, %if.end.if.end8_crit_edge ]
  %reg.0 = phi i32 [ 4, %if.else6 ], [ 0, %if.end.if.end8_crit_edge ]
  %sub3.i = add i32 %.sink, %pin
  %1 = zext i32 %retval.0.i71 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %retval.0.i71, label %if.end8.if.end27_crit_edge [
    i32 0, label %if.end8.if.then18_crit_edge
    i32 1, label %if.then13
  ]

if.end8.if.then18_crit_edge:                      ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then18

if.end8.if.end27_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then13:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then18

if.then18:                                        ; preds = %if.then13, %if.end8.if.then18_crit_edge
  %.sink82 = phi i32 [ -5, %if.then13 ], [ -1, %if.end8.if.then18_crit_edge ]
  %sub14 = add i32 %.sink82, %freq_idx
  %mul = mul i32 %sub3.i, 6
  %mul19 = shl nuw nsw i32 %retval.0.i71, 1
  %add = add i32 %mul, %mul19
  %add20 = add i32 %add, 2
  %shl = shl i32 %sub14, %add20
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  %shl21.neg = shl nsw i32 -1, %add
  %sub24 = sub i32 29, %add
  %shr = lshr i32 -1, %sub24
  %and = and i32 %shr, %shl21.neg
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %reg.0, i32 noundef %and, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %if.end27

if.end27:                                         ; preds = %if.then18, %if.end8.if.end27_crit_edge
  %mul28 = mul i32 %pin, 6
  %add29 = add i32 %mul28, 4
  %add30 = add i32 %mul28, 6
  %shl31 = shl i32 %retval.0.i71, %add30
  %4 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %priv, align 4
  %shl33.neg = shl nsw i32 -1, %add29
  %sub36 = sub i32 25, %mul28
  %shr37 = lshr i32 -1, %sub36
  %and38 = and i32 %shl33.neg, %shr37
  %call.i73 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %reg.0, i32 noundef %and38, i32 noundef %shl31, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_led_classdev_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !37, !39, !41, !43, !45, !46, !47, !48, !49, !51, !53, !55, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !75, !76, !77, !79, !81, !83, !85, !87, !89}
!llvm.module.flags = !{!91, !92, !93, !94, !95, !96, !97, !98}
!llvm.ident = !{!99}

!0 = !{ptr @__initcall__kmod_leds_lgm_sso__258_874_intel_sso_led_driver_init6, !1, !"__initcall__kmod_leds_lgm_sso__258_874_intel_sso_led_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/leds/blink/leds-lgm-sso.c", i32 874, i32 1}
!2 = !{ptr @__exitcall_intel_sso_led_driver_exit, !1, !"__exitcall_intel_sso_led_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description259, !4, !"__UNIQUE_ID_description259", i1 false, i1 false}
!4 = !{!"../drivers/leds/blink/leds-lgm-sso.c", i32 876, i32 1}
!5 = !{ptr @__UNIQUE_ID_file260, !6, !"__UNIQUE_ID_file260", i1 false, i1 false}
!6 = !{!"../drivers/leds/blink/leds-lgm-sso.c", i32 877, i32 1}
!7 = !{ptr @__UNIQUE_ID_license261, !6, !"__UNIQUE_ID_license261", i1 false, i1 false}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/leds/blink/leds-lgm-sso.c", i32 869, i32 12}
!10 = !{ptr @intel_sso_led_driver, !11, !"intel_sso_led_driver", i1 false, i1 false}
!11 = !{!"../drivers/leds/blink/leds-lgm-sso.c", i32 865, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/leds/blink/leds-lgm-sso.c", i32 787, i32 23}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/leds/blink/leds-lgm-sso.c", i32 790, i32 23}
!16 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/leds/blink/leds-lgm-sso.c", i32 794, i32 3}
!18 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @intel_sso_led_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @intel_sso_led_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/leds/blink/leds-lgm-sso.c", i32 800, i32 3}
!26 = !{ptr @intel_sso_led_probe._entry.8, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @intel_sso_led_probe._entry_ptr.10, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/leds/blink/leds-lgm-sso.c", i32 814, i32 3}
!30 = !{ptr @intel_sso_led_probe._entry.11, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @intel_sso_led_probe._entry_ptr.13, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.15, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/leds/blink/leds-lgm-sso.c", i32 836, i32 2}
!34 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @intel_sso_led_probe._entry.14, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @intel_sso_led_probe._entry_ptr.17, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/leds/blink/leds-lgm-sso.c", i32 746, i32 36}
!39 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/leds/blink/leds-lgm-sso.c", i32 752, i32 36}
!41 = distinct !{null, !42, !"freq_tbl", i1 false, i1 false}
!42 = !{!"../drivers/leds/blink/leds-lgm-sso.c", i32 58, i32 18}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/leds/blink/leds-lgm-sso.c", i32 509, i32 3}
!45 = !{ptr @.str.21, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @sso_register_shift_clk._entry, !44, !"_entry", i1 false, i1 false}
!48 = !{ptr @sso_register_shift_clk._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!49 = distinct !{null, !50, !"shift_clk_freq_tbl", i1 false, i1 false}
!50 = !{!"../drivers/leds/blink/leds-lgm-sso.c", i32 59, i32 18}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/leds/blink/leds-lgm-sso.c", i32 474, i32 28}
!53 = !{ptr @sso_gpio_gc_init.lock_key, !54, !"lock_key", i1 false, i1 false}
!54 = !{!"../drivers/leds/blink/leds-lgm-sso.c", i32 481, i32 9}
!55 = !{ptr @sso_gpio_gc_init.request_key, !54, !"request_key", i1 false, i1 false}
!56 = distinct !{null, !57, !"freq_div_tbl", i1 false, i1 false}
!57 = !{!"../drivers/leds/blink/leds-lgm-sso.c", i32 57, i32 18}
!58 = !{ptr @.str.24, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/leds/blink/leds-lgm-sso.c", i32 730, i32 50}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/leds/blink/leds-lgm-sso.c", i32 642, i32 50}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/leds/blink/leds-lgm-sso.c", i32 647, i32 10}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/leds/blink/leds-lgm-sso.c", i32 651, i32 10}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/leds/blink/leds-lgm-sso.c", i32 655, i32 10}
!68 = !{ptr @.str.29, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/leds/blink/leds-lgm-sso.c", i32 658, i32 45}
!70 = !{ptr @.str.30, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/leds/blink/leds-lgm-sso.c", i32 661, i32 48}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/leds/blink/leds-lgm-sso.c", i32 665, i32 4}
!74 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @__sso_led_dt_parse._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @__sso_led_dt_parse._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/leds/blink/leds-lgm-sso.c", i32 671, i32 45}
!79 = !{ptr @.str.34, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/leds/blink/leds-lgm-sso.c", i32 675, i32 10}
!81 = !{ptr @.str.35, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/leds/blink/leds-lgm-sso.c", i32 685, i32 11}
!83 = !{ptr @.str.36, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/leds/blink/leds-lgm-sso.c", i32 697, i32 50}
!85 = !{ptr @.str.37, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/leds/blink/leds-lgm-sso.c", i32 698, i32 21}
!87 = !{ptr @.str.38, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/leds/blink/leds-lgm-sso.c", i32 357, i32 28}
!89 = !{ptr @of_sso_led_match, !90, !"of_sso_led_match", i1 false, i1 false}
!90 = !{!"../drivers/leds/blink/leds-lgm-sso.c", i32 858, i32 34}
!91 = !{i32 1, !"wchar_size", i32 2}
!92 = !{i32 1, !"min_enum_size", i32 4}
!93 = !{i32 8, !"branch-target-enforcement", i32 0}
!94 = !{i32 8, !"sign-return-address", i32 0}
!95 = !{i32 8, !"sign-return-address-all", i32 0}
!96 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!97 = !{i32 7, !"uwtable", i32 1}
!98 = !{i32 7, !"frame-pointer", i32 2}
!99 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!100 = !{!"auto-init"}
