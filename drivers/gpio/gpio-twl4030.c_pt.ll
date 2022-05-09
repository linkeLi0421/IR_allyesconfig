; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpio-twl4030.c_pt.bc'
source_filename = "../drivers/gpio/gpio-twl4030.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.68, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%union.anon.68 = type { ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.gpio_twl4030_priv = type { %struct.gpio_chip, %struct.mutex, i32, i32, i32, i32 }
%struct.twl4030_gpio_platform_data = type { i8, i8, i32, i32, i32, ptr, ptr }

@__UNIQUE_ID_alias231 = internal constant [41 x i8] c"gpio_twl4030.alias=platform:twl4030_gpio\00", section ".modinfo", align 1
@__initcall__kmod_gpio_twl4030__232_641_gpio_twl4030_init4 = internal global ptr @gpio_twl4030_init, section ".initcall4.init", align 4
@gpio_twl4030_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @gpio_twl4030_probe, ptr @gpio_twl4030_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @twl_gpio_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_gpio_twl4030_exit = internal global ptr @gpio_twl4030_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author233 = internal constant [44 x i8] c"gpio_twl4030.author=Texas Instruments, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_description234 = internal constant [52 x i8] c"gpio_twl4030.description=GPIO interface for TWL4030\00", section ".modinfo", align 1
@__UNIQUE_ID_file235 = internal constant [44 x i8] c"gpio_twl4030.file=drivers/gpio/gpio-twl4030\00", section ".modinfo", align 1
@__UNIQUE_ID_license236 = internal constant [25 x i8] c"gpio_twl4030.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"twl4030_gpio\00", [19 x i8] zeroinitializer }, align 32
@twl_gpio_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,twl4030-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@gpio_twl4030_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 518, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to alloc irq_descs\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gpio_twl4030_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/gpio/gpio-twl4030.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gpio_twl4030_probe._entry_ptr = internal global ptr @gpio_twl4030_probe._entry, section ".printk_index", align 4
@irq_domain_simple_ops = external dso_local constant %struct.irq_domain_ops, align 4
@template_chip = internal constant { %struct.gpio_chip, [68 x i8] } { %struct.gpio_chip { ptr @.str.17, ptr null, ptr null, ptr null, ptr null, ptr @twl_request, ptr @twl_free, ptr @twl_get_direction, ptr @twl_direction_in, ptr @twl_direction_out, ptr @twl_get, ptr null, ptr @twl_set, ptr null, ptr null, ptr @twl_to_irq, ptr null, ptr null, ptr null, i32 0, i16 0, i16 0, ptr null, i8 1, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, [68 x i8] zeroinitializer }, align 32
@gpio_twl4030_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&priv->mutex\00", [19 x i8] zeroinitializer }, align 32
@gpio_twl4030_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 543, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Platform data is missing\0A\00", [38 x i8] zeroinitializer }, align 32
@gpio_twl4030_probe._entry_ptr.9 = internal global ptr @gpio_twl4030_probe._entry.7, section ".printk_index", align 4
@gpio_twl4030_probe.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.2, ptr @.str.3, ptr @.str.11, i8 0, i8 -117, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gpio_twl4030\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"pullups %.05x %.05x --> %d\0A\00", [36 x i8] zeroinitializer }, align 32
@gpio_twl4030_probe.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.2, ptr @.str.3, ptr @.str.12, i8 0, i8 -116, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"debounce %.03x %.01x --> %d\0A\00", [35 x i8] zeroinitializer }, align 32
@gpio_twl4030_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@gpio_twl4030_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@gpio_twl4030_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 572, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"could not register gpiochip, %d\0A\00", [63 x i8] zeroinitializer }, align 32
@gpio_twl4030_probe._entry_ptr.15 = internal global ptr @gpio_twl4030_probe._entry.13, section ".printk_index", align 4
@gpio_twl4030_probe.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.2, ptr @.str.3, ptr @.str.16, i8 0, i8 -110, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"setup --> %d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"twl4030\00", [24 x i8] zeroinitializer }, align 32
@cached_leden = internal global { i8, [31 x i8] } zeroinitializer, align 32
@twl4030_led_set_value.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ti,use-leds\00", [20 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ti,debounce\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ti,mmc-cd\00", [22 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ti,pullups\00", [21 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ti,pulldowns\00", [19 x i8] zeroinitializer }, align 32
@gpio_twl4030_remove.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.23, ptr @.str.3, ptr @.str.24, i8 0, i8 -105, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gpio_twl4030_remove\00", [44 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"teardown --> %d\0A\00", [47 x i8] zeroinitializer }, align 32
@___asan_gen_.25 = private unnamed_addr constant [20 x i8] c"gpio_twl4030_driver\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 628, i32 31 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 630, i32 11 }
@___asan_gen_.31 = private unnamed_addr constant [15 x i8] c"twl_gpio_match\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 619, i32 34 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 518, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant [14 x i8] c"template_chip\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 410, i32 31 }
@___asan_gen_.55 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 537, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 543, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 555, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 560, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.79 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 570, i32 8 }
@___asan_gen_.82 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 572, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 586, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 411, i32 13 }
@___asan_gen_.94 = private unnamed_addr constant [13 x i8] c"cached_leden\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 115, i32 11 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 483, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 485, i32 37 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 487, i32 37 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 489, i32 37 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 491, i32 37 }
@___asan_gen_.115 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.116 = private constant [31 x i8] c"../drivers/gpio/gpio-twl4030.c\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 604, i32 4 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @__UNIQUE_ID_alias231, ptr @__UNIQUE_ID_author233, ptr @__UNIQUE_ID_description234, ptr @__UNIQUE_ID_file235, ptr @__UNIQUE_ID_license236, ptr @__exitcall_gpio_twl4030_exit, ptr @__initcall__kmod_gpio_twl4030__232_641_gpio_twl4030_init4, ptr @gpio_twl4030_exit, ptr @gpio_twl4030_probe._entry, ptr @gpio_twl4030_probe._entry.13, ptr @gpio_twl4030_probe._entry.7, ptr @gpio_twl4030_probe._entry_ptr, ptr @gpio_twl4030_probe._entry_ptr.15, ptr @gpio_twl4030_probe._entry_ptr.9, ptr @gpio_twl4030_driver, ptr @.str, ptr @twl_gpio_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @template_chip, ptr @gpio_twl4030_probe.__key, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @gpio_twl4030_probe.lock_key, ptr @gpio_twl4030_probe.request_key, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @cached_leden, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_twl4030_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @twl_gpio_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_twl4030_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @template_chip to i32), i32 348, i32 416, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_twl4030_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_twl4030_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_twl4030_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_twl4030_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_twl4030_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cached_leden to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_twl4030_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @gpio_twl4030_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gpio_twl4030_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @gpio_twl4030_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_twl4030_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %message.i193 = alloca [3 x i8], align 1
  %message.i = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 456, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call i32 @__devm_irq_alloc_descs(ptr noundef %dev, i32 noundef -1, i32 noundef 0, i32 noundef 18, i32 noundef 0, ptr noundef null, ptr noundef null) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %do.end, label %if.end8

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = tail call ptr @irq_domain_add_legacy(ptr noundef %3, i32 noundef 18, i32 noundef %call5, i32 noundef 0, ptr noundef nonnull @irq_domain_simple_ops, ptr noundef null) #5
  %call11 = tail call i32 @twl4030_sih_setup(ptr noundef %dev, i32 noundef 10, i32 noundef %call5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.end8.cleanup_crit_edge, label %if.end14

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end14:                                         ; preds = %if.end8
  %irq_base15 = getelementptr inbounds %struct.gpio_twl4030_priv, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %irq_base15 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call5, ptr %irq_base15, align 4
  %5 = call ptr @memcpy(ptr %call.i, ptr @template_chip, i32 348)
  %base = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 19
  %6 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %base, align 4
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 20
  %7 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 18, ptr %ngpio, align 4
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 2
  %8 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev, ptr %parent, align 4
  %mutex = getelementptr inbounds %struct.gpio_twl4030_priv, ptr %call.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %mutex, ptr noundef nonnull @.str.6, ptr noundef nonnull @gpio_twl4030_probe.__key) #5
  %tobool23.not = icmp eq ptr %3, null
  br i1 %tobool23.not, label %if.end27, label %if.then24

if.then24:                                        ; preds = %if.end14
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 24, i32 noundef 3520) #5
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then24.do.end32_crit_edge, label %if.end.i

if.then24.do.end32_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end32

if.end.i:                                         ; preds = %if.then24
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %if.end.i.if.end27.thread200_crit_edge, label %if.then2.i

if.end.i.if.end27.thread200_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end27.thread200

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %9 = call ptr @memcpy(ptr %call.i.i, ptr %1, i32 24)
  br label %if.end27.thread200

if.end27.thread200:                               ; preds = %if.then2.i, %if.end.i.if.end27.thread200_crit_edge
  %10 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_node, align 8
  %call.i26.i = tail call ptr @of_find_property(ptr noundef %11, ptr noundef nonnull @.str.18, ptr noundef null) #5
  %tobool.i.i = icmp ne ptr %call.i26.i, null
  %frombool.i = zext i1 %tobool.i.i to i8
  %12 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %frombool.i, ptr %call.i.i, align 4
  %13 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %of_node, align 8
  %debounce.i = getelementptr inbounds %struct.twl4030_gpio_platform_data, ptr %call.i.i, i32 0, i32 2
  %call.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %14, ptr noundef nonnull @.str.19, ptr noundef %debounce.i, i32 noundef 1, i32 noundef 0) #5
  %15 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %of_node, align 8
  %mmc_cd.i = getelementptr inbounds %struct.twl4030_gpio_platform_data, ptr %call.i.i, i32 0, i32 1
  %call.i.i27.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %16, ptr noundef nonnull @.str.20, ptr noundef %mmc_cd.i, i32 noundef 1, i32 noundef 0) #5
  %17 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %of_node, align 8
  %pullups.i = getelementptr inbounds %struct.twl4030_gpio_platform_data, ptr %call.i.i, i32 0, i32 3
  %call.i.i28.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %18, ptr noundef nonnull @.str.21, ptr noundef %pullups.i, i32 noundef 1, i32 noundef 0) #5
  %19 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %of_node, align 8
  %pulldowns.i = getelementptr inbounds %struct.twl4030_gpio_platform_data, ptr %call.i.i, i32 0, i32 4
  %call.i.i29.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %20, ptr noundef nonnull @.str.22, ptr noundef %pulldowns.i, i32 noundef 1, i32 noundef 0) #5
  br label %if.end34

if.end27:                                         ; preds = %if.end14
  %cmp28 = icmp eq ptr %1, null
  br i1 %cmp28, label %if.end27.do.end32_crit_edge, label %if.end27.if.end34_crit_edge

if.end27.if.end34_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

if.end27.do.end32_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end32

do.end32:                                         ; preds = %if.end27.do.end32_crit_edge, %if.then24.do.end32_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #8
  br label %cleanup

if.end34:                                         ; preds = %if.end27.if.end34_crit_edge, %if.end27.thread200
  %pdata.0203 = phi ptr [ %call.i.i, %if.end27.thread200 ], [ %1, %if.end27.if.end34_crit_edge ]
  %pullups = getelementptr inbounds %struct.twl4030_gpio_platform_data, ptr %pdata.0203, i32 0, i32 3
  %21 = ptrtoint ptr %pullups to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pullups, align 4
  %pulldowns = getelementptr inbounds %struct.twl4030_gpio_platform_data, ptr %pdata.0203, i32 0, i32 4
  %23 = ptrtoint ptr %pulldowns to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %pulldowns, align 4
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %message.i) #5
  %25 = call ptr @memset(ptr %message.i, i32 255, i32 5)
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.inc.3.i.for.cond1.preheader.i_crit_edge, %if.end34
  %gpio_bit.033.i = phi i32 [ 1, %if.end34 ], [ %shl15.3.i, %for.inc.3.i.for.cond1.preheader.i_crit_edge ]
  %i.032.i = phi i32 [ 0, %if.end34 ], [ %inc.i, %for.inc.3.i.for.cond1.preheader.i_crit_edge ]
  %and.i = and i32 %gpio_bit.033.i, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i191 = icmp eq i32 %and.i, 0
  %and5.i = and i32 %gpio_bit.033.i, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp ne i32 %and5.i, 0
  %spec.select.i = zext i1 %tobool6.not.i to i8
  %bit_mask.1.i = select i1 %tobool.not.i191, i8 %spec.select.i, i8 2
  %shl15.i = shl i32 %gpio_bit.033.i, 1
  %and.1.i = and i32 %shl15.i, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool.not.1.i = icmp eq i32 %and.1.i, 0
  br i1 %tobool.not.1.i, label %if.else.1.i, label %if.then.1.i

if.then.1.i:                                      ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv4.1.i = or i8 %bit_mask.1.i, 8
  br label %for.inc.1.i

if.else.1.i:                                      ; preds = %for.cond1.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  %and5.1.i = and i32 %shl15.i, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.1.i)
  %tobool6.not.1.i = icmp eq i32 %and5.1.i, 0
  %conv12.1.i = or i8 %bit_mask.1.i, 4
  %spec.select34.i = select i1 %tobool6.not.1.i, i8 %bit_mask.1.i, i8 %conv12.1.i
  br label %for.inc.1.i

for.inc.1.i:                                      ; preds = %if.else.1.i, %if.then.1.i
  %bit_mask.1.1.i = phi i8 [ %conv4.1.i, %if.then.1.i ], [ %spec.select34.i, %if.else.1.i ]
  %shl15.1.i = shl i32 %gpio_bit.033.i, 2
  %and.2.i = and i32 %shl15.1.i, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i)
  %tobool.not.2.i = icmp eq i32 %and.2.i, 0
  br i1 %tobool.not.2.i, label %if.else.2.i, label %if.then.2.i

if.then.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv4.2.i = or i8 %bit_mask.1.1.i, 32
  br label %for.inc.2.i

if.else.2.i:                                      ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #7
  %and5.2.i = and i32 %shl15.1.i, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.2.i)
  %tobool6.not.2.i = icmp eq i32 %and5.2.i, 0
  %conv12.2.i = or i8 %bit_mask.1.1.i, 16
  %spec.select35.i = select i1 %tobool6.not.2.i, i8 %bit_mask.1.1.i, i8 %conv12.2.i
  br label %for.inc.2.i

for.inc.2.i:                                      ; preds = %if.else.2.i, %if.then.2.i
  %bit_mask.1.2.i = phi i8 [ %conv4.2.i, %if.then.2.i ], [ %spec.select35.i, %if.else.2.i ]
  %shl15.2.i = shl i32 %gpio_bit.033.i, 3
  %and.3.i = and i32 %shl15.2.i, %22
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i)
  %tobool.not.3.i = icmp eq i32 %and.3.i, 0
  br i1 %tobool.not.3.i, label %if.else.3.i, label %if.then.3.i

if.then.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv4.3.i = or i8 %bit_mask.1.2.i, -128
  br label %for.inc.3.i

if.else.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #7
  %and5.3.i = and i32 %shl15.2.i, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.3.i)
  %tobool6.not.3.i = icmp eq i32 %and5.3.i, 0
  %conv12.3.i = or i8 %bit_mask.1.2.i, 64
  %spec.select36.i = select i1 %tobool6.not.3.i, i8 %bit_mask.1.2.i, i8 %conv12.3.i
  br label %for.inc.3.i

for.inc.3.i:                                      ; preds = %if.else.3.i, %if.then.3.i
  %bit_mask.1.3.i = phi i8 [ %conv4.3.i, %if.then.3.i ], [ %spec.select36.i, %if.else.3.i ]
  %shl15.3.i = shl i32 %gpio_bit.033.i, 4
  %arrayidx.i = getelementptr [5 x i8], ptr %message.i, i32 0, i32 %i.032.i
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %bit_mask.1.3.i, ptr %arrayidx.i, align 1
  %inc.i = add nuw nsw i32 %i.032.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 5
  br i1 %exitcond.not.i, label %gpio_twl4030_pulls.exit, label %for.inc.3.i.for.cond1.preheader.i_crit_edge

for.inc.3.i.for.cond1.preheader.i_crit_edge:      ; preds = %for.inc.3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond1.preheader.i

gpio_twl4030_pulls.exit:                          ; preds = %for.inc.3.i
  %call.i192 = call i32 @twl_i2c_write(i8 noundef zeroext 10, ptr noundef nonnull %message.i, i8 noundef zeroext 19, i32 noundef 5) #5
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %message.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i192)
  %tobool36.not = icmp eq i32 %call.i192, 0
  br i1 %tobool36.not, label %gpio_twl4030_pulls.exit.if.end51_crit_edge, label %do.body38

gpio_twl4030_pulls.exit.if.end51_crit_edge:       ; preds = %gpio_twl4030_pulls.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end51

do.body38:                                        ; preds = %gpio_twl4030_pulls.exit
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gpio_twl4030_probe.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gpio_twl4030_probe, %if.end51)) #5
          to label %if.then44 [label %if.end51], !srcloc !82

if.then44:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %pullups to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pullups, align 4
  %29 = ptrtoint ptr %pulldowns to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %pulldowns, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gpio_twl4030_probe.__UNIQUE_ID_ddebug227, ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %28, i32 noundef %30, i32 noundef %call.i192) #5
  br label %if.end51

if.end51:                                         ; preds = %if.then44, %do.body38, %gpio_twl4030_pulls.exit.if.end51_crit_edge
  %debounce = getelementptr inbounds %struct.twl4030_gpio_platform_data, ptr %pdata.0203, i32 0, i32 2
  %31 = ptrtoint ptr %debounce to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %debounce, align 4
  %mmc_cd = getelementptr inbounds %struct.twl4030_gpio_platform_data, ptr %pdata.0203, i32 0, i32 1
  %33 = ptrtoint ptr %mmc_cd to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %mmc_cd, align 1
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %message.i193) #5
  %35 = getelementptr inbounds [3 x i8], ptr %message.i193, i32 0, i32 1
  %36 = getelementptr inbounds [3 x i8], ptr %message.i193, i32 0, i32 2
  %37 = and i8 %34, 3
  %38 = trunc i32 %32 to i8
  %conv2.i = or i8 %37, %38
  %39 = ptrtoint ptr %message.i193 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv2.i, ptr %message.i193, align 1
  %shr.i = lshr i32 %32, 8
  %conv4.i = trunc i32 %shr.i to i8
  %40 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv4.i, ptr %35, align 1
  %shr6.i = lshr i32 %32, 16
  %41 = trunc i32 %shr6.i to i8
  %conv8.i = and i8 %41, 3
  %42 = ptrtoint ptr %36 to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv8.i, ptr %36, align 1
  %call.i194 = call i32 @twl_i2c_write(i8 noundef zeroext 10, ptr noundef nonnull %message.i193, i8 noundef zeroext 15, i32 noundef 3) #5
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %message.i193) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i194)
  %tobool53.not = icmp eq i32 %call.i194, 0
  br i1 %tobool53.not, label %if.end51.if.end76_crit_edge, label %do.body55

if.end51.if.end76_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end76

do.body55:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gpio_twl4030_probe.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gpio_twl4030_probe, %if.end76)) #5
          to label %if.then69 [label %if.end76], !srcloc !82

if.then69:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #7
  %43 = ptrtoint ptr %debounce to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %debounce, align 4
  %45 = ptrtoint ptr %mmc_cd to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %mmc_cd, align 1
  %conv = zext i8 %46 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gpio_twl4030_probe.__UNIQUE_ID_ddebug228, ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %44, i32 noundef %conv, i32 noundef %call.i194) #5
  br label %if.end76

if.end76:                                         ; preds = %if.then69, %do.body55, %if.end51.if.end76_crit_edge
  %47 = ptrtoint ptr %pdata.0203 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %pdata.0203, align 4, !range !83
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool77.not = icmp eq i8 %48, 0
  br i1 %tobool77.not, label %if.end76.if.end83_crit_edge, label %if.then78

if.end76.if.end83_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end83

if.then78:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #7
  %49 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %ngpio, align 4
  %add = add i16 %50, 2
  store i16 %add, ptr %ngpio, align 4
  br label %if.end83

if.end83:                                         ; preds = %if.then78, %if.end76.if.end83_crit_edge
  %call86 = call i32 @gpiochip_add_data_with_key(ptr noundef nonnull %call.i, ptr noundef nonnull %call.i, ptr noundef nonnull @gpio_twl4030_probe.lock_key, ptr noundef nonnull @gpio_twl4030_probe.request_key) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %cmp87 = icmp slt i32 %call86, 0
  br i1 %cmp87, label %do.end92, label %if.end97

do.end92:                                         ; preds = %if.end83
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %call86) #8
  %51 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 0, ptr %ngpio, align 4
  %52 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %platform_data.i, align 8
  %driver_data.i.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %54 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %driver_data.i.i.i, align 4
  %tobool.not.i195 = icmp eq ptr %53, null
  br i1 %tobool.not.i195, label %do.end92.if.end16.i_crit_edge, label %land.lhs.true.i

do.end92.if.end16.i_crit_edge:                    ; preds = %do.end92
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16.i

land.lhs.true.i:                                  ; preds = %do.end92
  %teardown.i = getelementptr inbounds %struct.twl4030_gpio_platform_data, ptr %53, i32 0, i32 6
  %56 = ptrtoint ptr %teardown.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %teardown.i, align 4
  %tobool2.not.i = icmp eq ptr %57, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end16.i_crit_edge, label %if.then.i

land.lhs.true.i.if.end16.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16.i

if.then.i:                                        ; preds = %land.lhs.true.i
  %base.i = getelementptr inbounds %struct.gpio_chip, ptr %55, i32 0, i32 19
  %58 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %base.i, align 4
  %call5.i = call i32 %57(ptr noundef %dev, i32 noundef %59, i32 noundef 18) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i196 = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i196, label %if.then.i.if.end16.i_crit_edge, label %do.body.i

if.then.i.if.end16.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16.i

do.body.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gpio_twl4030_remove.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gpio_twl4030_probe, %cleanup)) #5
          to label %if.then13.i [label %cleanup], !srcloc !82

if.then13.i:                                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gpio_twl4030_remove.__UNIQUE_ID_ddebug230, ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %call5.i) #5
  br label %cleanup

if.end16.i:                                       ; preds = %if.then.i.if.end16.i_crit_edge, %land.lhs.true.i.if.end16.i_crit_edge, %do.end92.if.end16.i_crit_edge
  call void @gpiochip_remove(ptr noundef %55) #5
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 615, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

if.end97:                                         ; preds = %if.end83
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %60 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %setup = getelementptr inbounds %struct.twl4030_gpio_platform_data, ptr %pdata.0203, i32 0, i32 5
  %61 = ptrtoint ptr %setup to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %setup, align 4
  %tobool98.not = icmp eq ptr %62, null
  br i1 %tobool98.not, label %if.end97.cleanup_crit_edge, label %if.then99

if.end97.cleanup_crit_edge:                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then99:                                        ; preds = %if.end97
  %63 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %base, align 4
  %call104 = call i32 %62(ptr noundef %dev, i32 noundef %64, i32 noundef 18) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call104)
  %tobool105.not = icmp eq i32 %call104, 0
  br i1 %tobool105.not, label %if.then99.cleanup_crit_edge, label %do.body107

if.then99.cleanup_crit_edge:                      ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body107:                                       ; preds = %if.then99
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gpio_twl4030_probe.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gpio_twl4030_probe, %cleanup)) #5
          to label %if.then121 [label %cleanup], !srcloc !82

if.then121:                                       ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gpio_twl4030_probe.__UNIQUE_ID_ddebug229, ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %call104) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then121, %do.body107, %if.then99.cleanup_crit_edge, %if.end97.cleanup_crit_edge, %if.end16.i, %if.then13.i, %do.body.i, %do.end32, %if.end8.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %do.end ], [ -6, %do.end32 ], [ -12, %entry.cleanup_crit_edge ], [ %call11, %if.end8.cleanup_crit_edge ], [ %call86, %if.then99.cleanup_crit_edge ], [ %call86, %if.then121 ], [ %call86, %if.end97.cleanup_crit_edge ], [ %call86, %do.body.i ], [ %call86, %if.then13.i ], [ %call86, %if.end16.i ], [ %call86, %do.body107 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_twl4030_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end16_crit_edge, label %land.lhs.true

entry.if.end16_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

land.lhs.true:                                    ; preds = %entry
  %teardown = getelementptr inbounds %struct.twl4030_gpio_platform_data, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %teardown to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %teardown, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %land.lhs.true.if.end16_crit_edge, label %if.then

land.lhs.true.if.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

if.then:                                          ; preds = %land.lhs.true
  %base = getelementptr inbounds %struct.gpio_chip, ptr %3, i32 0, i32 19
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base, align 4
  %call5 = tail call i32 %5(ptr noundef %dev, i32 noundef %7, i32 noundef 18) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.then.if.end16_crit_edge, label %do.body

if.then.if.end16_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end16

do.body:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gpio_twl4030_remove.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gpio_twl4030_remove, %cleanup)) #5
          to label %if.then13 [label %cleanup], !srcloc !82

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gpio_twl4030_remove.__UNIQUE_ID_ddebug230, ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %call5) #5
  br label %cleanup

if.end16:                                         ; preds = %if.then.if.end16_crit_edge, %land.lhs.true.if.end16_crit_edge, %entry.if.end16_crit_edge
  tail call void @gpiochip_remove(ptr noundef %3) #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 615, i32 noundef 9, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then13, %do.body
  %retval.0 = phi i32 [ -5, %if.end16 ], [ %call5, %if.then13 ], [ %call5, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__devm_irq_alloc_descs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_add_legacy(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl4030_sih_setup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl_request(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  %val.addr.i.i = alloca i8, align 1
  %val.addr.i71 = alloca i8, align 1
  %val.addr.i68 = alloca i8, align 1
  %val.addr.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #5
  %mutex = getelementptr inbounds %struct.gpio_twl4030_priv, ptr %call, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %offset)
  %cmp = icmp ugt i32 %offset, 17
  br i1 %cmp, label %if.then, label %if.end29

if.then:                                          ; preds = %entry
  %sub = add i32 %offset, -18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool.not = icmp eq i32 %sub, 0
  %spec.select = select i1 %tobool.not, i8 -86, i8 85
  %spec.select67 = select i1 %tobool.not, i8 1, i8 3
  %narrow = add nuw nsw i8 %spec.select67, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i)
  %0 = ptrtoint ptr %val.addr.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 127, ptr %val.addr.i, align 1
  %call.i = call i32 @twl_i2c_write(i8 noundef zeroext 7, ptr noundef nonnull %val.addr.i, i8 noundef zeroext %narrow, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp6 = icmp slt i32 %call.i, 0
  br i1 %cmp6, label %if.then.if.end47_crit_edge, label %if.end9

if.then.if.end47_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

if.end9:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i68)
  %1 = ptrtoint ptr %val.addr.i68 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 127, ptr %val.addr.i68, align 1
  %call.i69 = call i32 @twl_i2c_write(i8 noundef zeroext 7, ptr noundef nonnull %val.addr.i68, i8 noundef zeroext %spec.select67, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i68)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69)
  %cmp11 = icmp slt i32 %call.i69, 0
  br i1 %cmp11, label %if.end9.if.end47_crit_edge, label %if.end14

if.end9.if.end47_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

if.end14:                                         ; preds = %if.end9
  %call.i70 = call i32 @twl_i2c_read(i8 noundef zeroext 7, ptr noundef nonnull @cached_leden, i8 noundef zeroext 0, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70)
  %cmp16 = icmp slt i32 %call.i70, 0
  br i1 %cmp16, label %if.end14.if.end47_crit_edge, label %if.end19

if.end14.if.end47_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

if.end19:                                         ; preds = %if.end14
  %2 = load i8, ptr @cached_leden, align 1
  %and = and i8 %2, %spec.select
  store i8 %and, ptr @cached_leden, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i71)
  %3 = ptrtoint ptr %val.addr.i71 to i32
  call void @__asan_store1_noabort(i32 %3)
  store i8 %and, ptr %val.addr.i71, align 1
  %call.i72 = call i32 @twl_i2c_write(i8 noundef zeroext 7, ptr noundef nonnull %val.addr.i71, i8 noundef zeroext 0, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i71)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i72)
  %cmp24 = icmp slt i32 %call.i72, 0
  br i1 %cmp24, label %if.end19.if.end47_crit_edge, label %if.end19.if.then43_crit_edge

if.end19.if.then43_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then43

if.end19.if.end47_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

if.end29:                                         ; preds = %entry
  %usage_count = getelementptr inbounds %struct.gpio_twl4030_priv, ptr %call, i32 0, i32 3
  %4 = ptrtoint ptr %usage_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %usage_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool30.not = icmp eq i32 %5, 0
  br i1 %tobool30.not, label %if.then31, label %if.end29.if.then43_crit_edge

if.end29.if.then43_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then43

if.then31:                                        ; preds = %if.end29
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 2
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 4
  %platform_data.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %platform_data.i, align 8
  %tobool33.not = icmp eq ptr %9, null
  br i1 %tobool33.not, label %if.then31.done_crit_edge, label %if.then34

if.then31.done_crit_edge:                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #7
  br label %done

if.then34:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #7
  %mmc_cd = getelementptr inbounds %struct.twl4030_gpio_platform_data, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %mmc_cd to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %mmc_cd, align 1
  %12 = and i8 %11, 3
  %13 = or i8 %12, 4
  br label %done

done:                                             ; preds = %if.then34, %if.then31.done_crit_edge
  %value.0 = phi i8 [ %13, %if.then34 ], [ 4, %if.then31.done_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #5
  %14 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %value.0, ptr %val.addr.i.i, align 1
  %call.i.i = call i32 @twl_i2c_write(i8 noundef zeroext 10, ptr noundef nonnull %val.addr.i.i, i8 noundef zeroext 18, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool42.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool42.not, label %done.if.then43_crit_edge, label %done.if.end47_crit_edge

done.if.end47_crit_edge:                          ; preds = %done
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end47

done.if.then43_crit_edge:                         ; preds = %done
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then43

if.then43:                                        ; preds = %done.if.then43_crit_edge, %if.end29.if.then43_crit_edge, %if.end19.if.then43_crit_edge
  %offset.addr.082 = phi i32 [ %offset, %done.if.then43_crit_edge ], [ %sub, %if.end19.if.then43_crit_edge ], [ %offset, %if.end29.if.then43_crit_edge ]
  %shl44 = shl nuw i32 1, %offset.addr.082
  %usage_count45 = getelementptr inbounds %struct.gpio_twl4030_priv, ptr %call, i32 0, i32 3
  %15 = ptrtoint ptr %usage_count45 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %usage_count45, align 4
  %or46 = or i32 %16, %shl44
  store i32 %or46, ptr %usage_count45, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then43, %done.if.end47_crit_edge, %if.end19.if.end47_crit_edge, %if.end14.if.end47_crit_edge, %if.end9.if.end47_crit_edge, %if.then.if.end47_crit_edge
  %status.176 = phi i32 [ 0, %if.then43 ], [ %call.i.i, %done.if.end47_crit_edge ], [ %call.i70, %if.end14.if.end47_crit_edge ], [ %call.i69, %if.end9.if.end47_crit_edge ], [ %call.i, %if.then.if.end47_crit_edge ], [ %call.i72, %if.end19.if.end47_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex) #5
  ret i32 %status.176
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @twl_free(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  %val.addr.i.i11 = alloca i8, align 1
  %val.addr.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #5
  %mutex = getelementptr inbounds %struct.gpio_twl4030_priv, ptr %call, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %offset)
  %cmp = icmp ugt i32 %offset, 17
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %offset)
  %tobool.not.i = icmp eq i32 %offset, 18
  %0 = load i8, ptr @cached_leden, align 1
  %1 = select i1 %tobool.not.i, i8 -18, i8 -35
  %conv6.i = and i8 %0, %1
  store i8 %conv6.i, ptr @cached_leden, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #5
  %2 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv6.i, ptr %val.addr.i.i, align 1
  %call.i.i = call i32 @twl_i2c_write(i8 noundef zeroext 7, ptr noundef nonnull %val.addr.i.i, i8 noundef zeroext 0, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool11.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool11.not.i, label %if.then.out_crit_edge, label %land.rhs.i

if.then.out_crit_edge:                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

land.rhs.i:                                       ; preds = %if.then
  %.b54.i = load i1, ptr @twl4030_led_set_value.__already_done, align 1
  br i1 %.b54.i, label %land.rhs.i.out_crit_edge, label %if.then20.i, !prof !84

land.rhs.i.out_crit_edge:                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then20.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @twl4030_led_set_value.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 134, i32 noundef 9, ptr noundef null) #5
  br label %out

if.end:                                           ; preds = %entry
  %shl = shl nuw nsw i32 1, %offset
  %neg = xor i32 %shl, -1
  %usage_count = getelementptr inbounds %struct.gpio_twl4030_priv, ptr %call, i32 0, i32 3
  %3 = ptrtoint ptr %usage_count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %usage_count, align 4
  %and = and i32 %4, %neg
  store i32 %and, ptr %usage_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then2, label %if.end.out_crit_edge

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i11) #5
  %5 = ptrtoint ptr %val.addr.i.i11 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %val.addr.i.i11, align 1
  %call.i.i12 = call i32 @twl_i2c_write(i8 noundef zeroext 10, ptr noundef nonnull %val.addr.i.i11, i8 noundef zeroext 18, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i11) #5
  br label %out

out:                                              ; preds = %if.then2, %if.end.out_crit_edge, %if.then20.i, %land.rhs.i.out_crit_edge, %if.then.out_crit_edge
  call void @mutex_unlock(ptr noundef %mutex) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl_get_direction(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  %data.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #5
  %mutex = getelementptr inbounds %struct.gpio_twl4030_priv, ptr %call, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %offset)
  %cmp = icmp ult i32 %offset, 18
  br i1 %cmp, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.then:                                          ; preds = %entry
  %0 = lshr i32 %offset, 3
  %1 = trunc i32 %0 to i8
  %conv3.i = add nuw nsw i8 %1, 3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i.i) #5
  %2 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %data.i.i, align 1, !annotation !85
  %call.i.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 10, ptr noundef nonnull %data.i.i, i8 noundef zeroext %conv3.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %twl4030_get_gpio_direction.exit.thread, label %twl4030_get_gpio_direction.exit

twl4030_get_gpio_direction.exit.thread:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i.i) #5
  br label %cleanup

twl4030_get_gpio_direction.exit:                  ; preds = %if.then
  %3 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %data.i.i, align 1
  %conv.i.i = zext i8 %4 to i32
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i.i) #5
  %and.i = and i32 %offset, 7
  %5 = shl nuw nsw i32 1, %and.i
  %6 = and i32 %5, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.not = icmp eq i32 %6, 0
  br i1 %tobool.not.not, label %twl4030_get_gpio_direction.exit.cleanup_crit_edge, label %twl4030_get_gpio_direction.exit.if.end4_crit_edge

twl4030_get_gpio_direction.exit.if.end4_crit_edge: ; preds = %twl4030_get_gpio_direction.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

twl4030_get_gpio_direction.exit.cleanup_crit_edge: ; preds = %twl4030_get_gpio_direction.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %twl4030_get_gpio_direction.exit.if.end4_crit_edge, %entry.if.end4_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %twl4030_get_gpio_direction.exit.cleanup_crit_edge, %twl4030_get_gpio_direction.exit.thread
  %retval.0 = phi i32 [ 0, %if.end4 ], [ %call.i.i.i, %twl4030_get_gpio_direction.exit.thread ], [ 1, %twl4030_get_gpio_direction.exit.cleanup_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl_direction_in(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  %val.addr.i.i.i = alloca i8, align 1
  %data.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #5
  %mutex = getelementptr inbounds %struct.gpio_twl4030_priv, ptr %call, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %offset)
  %cmp = icmp ult i32 %offset, 18
  br i1 %cmp, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.then:                                          ; preds = %entry
  %0 = lshr i32 %offset, 3
  %1 = trunc i32 %0 to i8
  %conv3.i = add nuw nsw i8 %1, 3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i.i) #5
  %2 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %data.i.i, align 1, !annotation !85
  %call.i.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 10, ptr noundef nonnull %data.i.i, i8 noundef zeroext %conv3.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %gpio_twl4030_read.exit.i, label %if.end

gpio_twl4030_read.exit.i:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i.i) #5
  br label %if.end3

if.end:                                           ; preds = %if.then
  %and.i = and i32 %offset, 7
  %shl.i = shl nuw nsw i32 1, %and.i
  %3 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %data.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i.i) #5
  %5 = trunc i32 %shl.i to i8
  %6 = xor i8 %5, -1
  %reg.0.i = and i8 %4, %6
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i.i) #5
  %7 = ptrtoint ptr %val.addr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %reg.0.i, ptr %val.addr.i.i.i, align 1
  %call.i.i19.i = call i32 @twl_i2c_write(i8 noundef zeroext 10, ptr noundef nonnull %val.addr.i.i.i, i8 noundef zeroext %conv3.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i19.i)
  %tobool.not = icmp eq i32 %call.i.i19.i, 0
  br i1 %tobool.not, label %if.then2, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end3

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %shl = shl nuw nsw i32 1, %offset
  %neg = xor i32 %shl, -1
  %direction = getelementptr inbounds %struct.gpio_twl4030_priv, ptr %call, i32 0, i32 4
  %8 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %direction, align 4
  %and = and i32 %9, %neg
  store i32 %and, ptr %direction, align 4
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.end.if.end3_crit_edge, %gpio_twl4030_read.exit.i, %entry.if.end3_crit_edge
  %ret.012 = phi i32 [ 0, %if.then2 ], [ %call.i.i19.i, %if.end.if.end3_crit_edge ], [ %call.i.i.i, %gpio_twl4030_read.exit.i ], [ -22, %entry.if.end3_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex) #5
  ret i32 %ret.012
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl_direction_out(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  %val.addr.i.i.i = alloca i8, align 1
  %data.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #5
  %mutex = getelementptr inbounds %struct.gpio_twl4030_priv, ptr %call, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %offset)
  %cmp = icmp ult i32 %offset, 18
  br i1 %cmp, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.then:                                          ; preds = %entry
  %0 = lshr i32 %offset, 3
  %1 = trunc i32 %0 to i8
  %conv3.i = add nuw nsw i8 %1, 3
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i.i) #5
  %2 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 -1, ptr %data.i.i, align 1, !annotation !85
  %call.i.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 10, ptr noundef nonnull %data.i.i, i8 noundef zeroext %conv3.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %twl4030_set_gpio_direction.exit.thread, label %twl4030_set_gpio_direction.exit

twl4030_set_gpio_direction.exit.thread:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i.i) #5
  br label %if.then2

twl4030_set_gpio_direction.exit:                  ; preds = %if.then
  %and.i = and i32 %offset, 7
  %shl.i = shl nuw nsw i32 1, %and.i
  %3 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %data.i.i, align 1
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i.i) #5
  %5 = trunc i32 %shl.i to i8
  %reg.0.i = or i8 %4, %5
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i.i) #5
  %6 = ptrtoint ptr %val.addr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %reg.0.i, ptr %val.addr.i.i.i, align 1
  %call.i.i19.i = call i32 @twl_i2c_write(i8 noundef zeroext 10, ptr noundef nonnull %val.addr.i.i.i, i8 noundef zeroext %conv3.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i19.i)
  %tobool.not = icmp eq i32 %call.i.i19.i, 0
  br i1 %tobool.not, label %twl4030_set_gpio_direction.exit.if.end4_crit_edge, label %twl4030_set_gpio_direction.exit.if.then2_crit_edge

twl4030_set_gpio_direction.exit.if.then2_crit_edge: ; preds = %twl4030_set_gpio_direction.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then2

twl4030_set_gpio_direction.exit.if.end4_crit_edge: ; preds = %twl4030_set_gpio_direction.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

if.then2:                                         ; preds = %twl4030_set_gpio_direction.exit.if.then2_crit_edge, %twl4030_set_gpio_direction.exit.thread
  %ret.0.i18 = phi i32 [ %call.i.i.i, %twl4030_set_gpio_direction.exit.thread ], [ %call.i.i19.i, %twl4030_set_gpio_direction.exit.if.then2_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex) #5
  br label %cleanup

if.end4:                                          ; preds = %twl4030_set_gpio_direction.exit.if.end4_crit_edge, %entry.if.end4_crit_edge
  %shl = shl nuw i32 1, %offset
  %direction = getelementptr inbounds %struct.gpio_twl4030_priv, ptr %call, i32 0, i32 4
  %7 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %direction, align 4
  %or = or i32 %8, %shl
  store i32 %or, ptr %direction, align 4
  call void @mutex_unlock(ptr noundef %mutex) #5
  call void @twl_set(ptr noundef %chip, i32 noundef %offset, i32 noundef %value)
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then2
  %retval.0 = phi i32 [ %ret.0.i18, %if.then2 ], [ 0, %if.end4 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl_get(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  %data.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #5
  %mutex = getelementptr inbounds %struct.gpio_twl4030_priv, ptr %call, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  %usage_count = getelementptr inbounds %struct.gpio_twl4030_priv, ptr %call, i32 0, i32 3
  %0 = ptrtoint ptr %usage_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %usage_count, align 4
  %shl = shl nuw i32 1, %offset
  %and = and i32 %1, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %entry
  %direction = getelementptr inbounds %struct.gpio_twl4030_priv, ptr %call, i32 0, i32 4
  %2 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %direction, align 4
  %and2 = and i32 %3, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %out_state = getelementptr inbounds %struct.gpio_twl4030_priv, ptr %call, i32 0, i32 5
  %4 = ptrtoint ptr %out_state to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %out_state, align 4
  %and6 = and i32 %5, %shl
  br label %if.end8

if.else:                                          ; preds = %if.end
  %6 = lshr i32 %offset, 3
  %conv.i = trunc i32 %6 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %data.i.i) #5
  %7 = ptrtoint ptr %data.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 -1, ptr %data.i.i, align 1, !annotation !85
  %call.i.i.i = call i32 @twl_i2c_read(i8 noundef zeroext 10, ptr noundef nonnull %data.i.i, i8 noundef zeroext %conv.i, i32 noundef 1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i.i, label %if.else.twl4030_get_gpio_datain.exit_crit_edge, label %cond.false.i.i

if.else.twl4030_get_gpio_datain.exit_crit_edge:   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %twl4030_get_gpio_datain.exit

cond.false.i.i:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %data.i.i, align 1
  %conv.i.i = zext i8 %9 to i32
  br label %twl4030_get_gpio_datain.exit

twl4030_get_gpio_datain.exit:                     ; preds = %cond.false.i.i, %if.else.twl4030_get_gpio_datain.exit_crit_edge
  %cond.i.i = phi i32 [ %conv.i.i, %cond.false.i.i ], [ %call.i.i.i, %if.else.twl4030_get_gpio_datain.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %data.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i.i)
  %cmp.i = icmp sgt i32 %cond.i.i, 0
  %conv1.i = and i32 %offset, 7
  %shr611.i = lshr i32 %cond.i.i, %conv1.i
  %and7.i = and i32 %shr611.i, 1
  %ret.0.i = select i1 %cmp.i, i32 %and7.i, i32 %cond.i.i
  br label %if.end8

if.end8:                                          ; preds = %twl4030_get_gpio_datain.exit, %if.then4
  %status.0 = phi i32 [ %and6, %if.then4 ], [ %ret.0.i, %twl4030_get_gpio_datain.exit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0)
  %cmp = icmp slt i32 %status.0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %status.0)
  %tobool9 = icmp ne i32 %status.0, 0
  %lnot.ext = zext i1 %tobool9 to i32
  %cond = select i1 %cmp, i32 %status.0, i32 %lnot.ext
  br label %out

out:                                              ; preds = %if.end8, %entry.out_crit_edge
  %ret.0 = phi i32 [ %cond, %if.end8 ], [ -1, %entry.out_crit_edge ]
  call void @mutex_unlock(ptr noundef %mutex) #5
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @twl_set(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  %val.addr.i.i = alloca i8, align 1
  %val.addr.i.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #5
  %mutex = getelementptr inbounds %struct.gpio_twl4030_priv, ptr %call, i32 0, i32 1
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %offset)
  %cmp = icmp ult i32 %offset, 18
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %0 = lshr i32 %offset, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not.i = icmp eq i32 %value, 0
  %1 = trunc i32 %0 to i8
  %base.0.v.i = select i1 %tobool.not.i, i8 9, i8 12
  %base.0.i = add nuw nsw i8 %base.0.v.i, %1
  %and.i = and i32 %offset, 7
  %shl.i = shl nuw nsw i32 1, %and.i
  %conv1.i = trunc i32 %shl.i to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i.i) #5
  %2 = ptrtoint ptr %val.addr.i.i.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %conv1.i, ptr %val.addr.i.i.i, align 1
  %call.i.i.i = call i32 @twl_i2c_write(i8 noundef zeroext 10, ptr noundef nonnull %val.addr.i.i.i, i8 noundef zeroext %base.0.i, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i.i) #5
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %offset)
  %tobool.not.i17 = icmp eq i32 %offset, 18
  %spec.select.i = select i1 %tobool.not.i17, i8 17, i8 34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool2.not.i = icmp eq i32 %value, 0
  %3 = load i8, ptr @cached_leden, align 1
  %conv9.i = or i8 %3, %spec.select.i
  %4 = xor i8 %spec.select.i, -1
  %conv6.i = and i8 %3, %4
  %storemerge.i = select i1 %tobool2.not.i, i8 %conv9.i, i8 %conv6.i
  store i8 %storemerge.i, ptr @cached_leden, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %val.addr.i.i) #5
  %5 = ptrtoint ptr %val.addr.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %storemerge.i, ptr %val.addr.i.i, align 1
  %call.i.i = call i32 @twl_i2c_write(i8 noundef zeroext 7, ptr noundef nonnull %val.addr.i.i, i8 noundef zeroext 0, i32 noundef 1) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %val.addr.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool11.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool11.not.i, label %if.else.if.end_crit_edge, label %land.rhs.i

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.rhs.i:                                       ; preds = %if.else
  %.b54.i = load i1, ptr @twl4030_led_set_value.__already_done, align 1
  br i1 %.b54.i, label %land.rhs.i.if.end_crit_edge, label %if.then20.i, !prof !84

land.rhs.i.if.end_crit_edge:                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then20.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @twl4030_led_set_value.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 134, i32 noundef 9, ptr noundef null) #5
  br label %if.end

if.end:                                           ; preds = %if.then20.i, %land.rhs.i.if.end_crit_edge, %if.else.if.end_crit_edge, %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %shl4 = shl nuw i32 1, %offset
  br i1 %tobool.not, label %if.else3, label %if.then2

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %out_state = getelementptr inbounds %struct.gpio_twl4030_priv, ptr %call, i32 0, i32 5
  %6 = ptrtoint ptr %out_state to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %out_state, align 4
  %or = or i32 %7, %shl4
  store i32 %or, ptr %out_state, align 4
  br label %if.end6

if.else3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %neg = xor i32 %shl4, -1
  %out_state5 = getelementptr inbounds %struct.gpio_twl4030_priv, ptr %call, i32 0, i32 5
  %8 = ptrtoint ptr %out_state5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %out_state5, align 4
  %and = and i32 %9, %neg
  store i32 %and, ptr %out_state5, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.else3, %if.then2
  call void @mutex_unlock(ptr noundef %mutex) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @twl_to_irq(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #5
  %irq_base = getelementptr inbounds %struct.gpio_twl4030_priv, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq_base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp ne i32 %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 18, i32 %offset)
  %cmp = icmp ult i32 %offset, 18
  %or.cond = and i1 %cmp, %tobool.not
  %add = add i32 %1, %offset
  %cond = select i1 %or.cond, i32 %add, i32 -22
  ret i32 %cond
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl_i2c_write(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @twl_i2c_read(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !41, !42, !44, !45, !46, !48, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !70, !71}
!llvm.module.flags = !{!73, !74, !75, !76, !77, !78, !79, !80}
!llvm.ident = !{!81}

!0 = !{ptr @__UNIQUE_ID_alias231, !1, !"__UNIQUE_ID_alias231", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpio-twl4030.c", i32 626, i32 1}
!2 = !{ptr @__initcall__kmod_gpio_twl4030__232_641_gpio_twl4030_init4, !3, !"__initcall__kmod_gpio_twl4030__232_641_gpio_twl4030_init4", i1 false, i1 false}
!3 = !{!"../drivers/gpio/gpio-twl4030.c", i32 641, i32 1}
!4 = !{ptr @__exitcall_gpio_twl4030_exit, !5, !"__exitcall_gpio_twl4030_exit", i1 false, i1 false}
!5 = !{!"../drivers/gpio/gpio-twl4030.c", i32 647, i32 1}
!6 = !{ptr @__UNIQUE_ID_author233, !7, !"__UNIQUE_ID_author233", i1 false, i1 false}
!7 = !{!"../drivers/gpio/gpio-twl4030.c", i32 649, i32 1}
!8 = !{ptr @__UNIQUE_ID_description234, !9, !"__UNIQUE_ID_description234", i1 false, i1 false}
!9 = !{!"../drivers/gpio/gpio-twl4030.c", i32 650, i32 1}
!10 = !{ptr @__UNIQUE_ID_file235, !11, !"__UNIQUE_ID_file235", i1 false, i1 false}
!11 = !{!"../drivers/gpio/gpio-twl4030.c", i32 651, i32 1}
!12 = !{ptr @__UNIQUE_ID_license236, !11, !"__UNIQUE_ID_license236", i1 false, i1 false}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpio/gpio-twl4030.c", i32 630, i32 11}
!15 = !{ptr @gpio_twl4030_driver, !16, !"gpio_twl4030_driver", i1 false, i1 false}
!16 = !{!"../drivers/gpio/gpio-twl4030.c", i32 628, i32 31}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpio/gpio-twl4030.c", i32 518, i32 3}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @gpio_twl4030_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @gpio_twl4030_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @gpio_twl4030_probe.__key, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/gpio/gpio-twl4030.c", i32 537, i32 2}
!27 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpio/gpio-twl4030.c", i32 543, i32 3}
!30 = !{ptr @gpio_twl4030_probe._entry.7, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @gpio_twl4030_probe._entry_ptr.9, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpio/gpio-twl4030.c", i32 555, i32 3}
!34 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @gpio_twl4030_probe.__UNIQUE_ID_ddebug227, !33, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpio/gpio-twl4030.c", i32 560, i32 3}
!38 = !{ptr @gpio_twl4030_probe.__UNIQUE_ID_ddebug228, !37, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!39 = !{ptr @gpio_twl4030_probe.lock_key, !40, !"lock_key", i1 false, i1 false}
!40 = !{!"../drivers/gpio/gpio-twl4030.c", i32 570, i32 8}
!41 = !{ptr @gpio_twl4030_probe.request_key, !40, !"request_key", i1 false, i1 false}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpio/gpio-twl4030.c", i32 572, i32 3}
!44 = !{ptr @gpio_twl4030_probe._entry.13, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @gpio_twl4030_probe._entry_ptr.15, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpio/gpio-twl4030.c", i32 586, i32 4}
!48 = !{ptr @gpio_twl4030_probe.__UNIQUE_ID_ddebug229, !47, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpio/gpio-twl4030.c", i32 411, i32 13}
!51 = !{ptr @template_chip, !52, !"template_chip", i1 false, i1 false}
!52 = !{!"../drivers/gpio/gpio-twl4030.c", i32 410, i32 31}
!53 = !{ptr @cached_leden, !54, !"cached_leden", i1 false, i1 false}
!54 = !{!"../drivers/gpio/gpio-twl4030.c", i32 115, i32 11}
!55 = distinct !{null, !56, !"__already_done", i1 false, i1 false}
!56 = !{!"../drivers/gpio/gpio-twl4030.c", i32 133, i32 2}
!57 = !{ptr @.str.18, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpio/gpio-twl4030.c", i32 483, i32 4}
!59 = !{ptr @.str.19, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpio/gpio-twl4030.c", i32 485, i32 37}
!61 = !{ptr @.str.20, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpio/gpio-twl4030.c", i32 487, i32 37}
!63 = !{ptr @.str.21, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpio/gpio-twl4030.c", i32 489, i32 37}
!65 = !{ptr @.str.22, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpio/gpio-twl4030.c", i32 491, i32 37}
!67 = !{ptr @.str.23, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpio/gpio-twl4030.c", i32 604, i32 4}
!69 = !{ptr @.str.24, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @gpio_twl4030_remove.__UNIQUE_ID_ddebug230, !68, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!71 = !{ptr @twl_gpio_match, !72, !"twl_gpio_match", i1 false, i1 false}
!72 = !{!"../drivers/gpio/gpio-twl4030.c", i32 619, i32 34}
!73 = !{i32 1, !"wchar_size", i32 2}
!74 = !{i32 1, !"min_enum_size", i32 4}
!75 = !{i32 8, !"branch-target-enforcement", i32 0}
!76 = !{i32 8, !"sign-return-address", i32 0}
!77 = !{i32 8, !"sign-return-address-all", i32 0}
!78 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!79 = !{i32 7, !"uwtable", i32 1}
!80 = !{i32 7, !"frame-pointer", i32 2}
!81 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!82 = !{i64 2148966879, i64 2148966884, i64 2148966897, i64 2148966941, i64 2148966975, i64 2148966996}
!83 = !{i8 0, i8 2}
!84 = !{!"branch_weights", i32 2000, i32 1}
!85 = !{!"auto-init"}
