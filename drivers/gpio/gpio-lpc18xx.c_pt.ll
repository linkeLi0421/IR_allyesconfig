; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpio-lpc18xx.c_pt.bc'
source_filename = "../drivers/gpio/gpio-lpc18xx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.68, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.68 = type { ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_fwspec = type { ptr, i32, [16 x i32] }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.lpc18xx_gpio_chip = type { %struct.gpio_chip, ptr, ptr, ptr, %struct.spinlock }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.lpc18xx_gpio_pin_ic = type { ptr, ptr, %struct.raw_spinlock }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_gpio_lpc18xx__223_411_lpc18xx_gpio_driver_init6 = internal global ptr @lpc18xx_gpio_driver_init, section ".initcall6.init", align 4
@lpc18xx_gpio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @lpc18xx_gpio_probe, ptr @lpc18xx_gpio_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @lpc18xx_gpio_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_lpc18xx_gpio_driver_exit = internal global ptr @lpc18xx_gpio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author224 = internal constant [58 x i8] c"gpio_lpc18xx.author=Joachim Eastwood <manabian@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author225 = internal constant [54 x i8] c"gpio_lpc18xx.author=Vladimir Zapolskiy <vz@mleia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description226 = internal constant [54 x i8] c"gpio_lpc18xx.description=GPIO driver for LPC18xx/43xx\00", section ".modinfo", align 1
@__UNIQUE_ID_file227 = internal constant [44 x i8] c"gpio_lpc18xx.file=drivers/gpio/gpio-lpc18xx\00", section ".modinfo", align 1
@__UNIQUE_ID_license228 = internal constant [28 x i8] c"gpio_lpc18xx.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"lpc18xx-gpio\00", [19 x i8] zeroinitializer }, align 32
@lpc18xx_gpio_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,lpc1850-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@lpc18xx_chip = internal constant { %struct.gpio_chip, [68 x i8] } { %struct.gpio_chip { ptr @.str.15, ptr null, ptr null, ptr null, ptr null, ptr @gpiochip_generic_request, ptr @gpiochip_generic_free, ptr null, ptr @lpc18xx_gpio_direction_input, ptr @lpc18xx_gpio_direction_output, ptr @lpc18xx_gpio_get, ptr null, ptr @lpc18xx_gpio_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i16 256, i16 0, ptr null, i8 0, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, %struct.spinlock zeroinitializer, i32 0, i32 0, %struct.gpio_irq_chip zeroinitializer, ptr null, ptr null, i32 0, ptr null }, [68 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"reg-names\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpio\00", [27 x i8] zeroinitializer }, align 32
@lpc18xx_gpio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 358, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"input clock not found\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"lpc18xx_gpio_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/gpio/gpio-lpc18xx.c\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@lpc18xx_gpio_probe._entry_ptr = internal global ptr @lpc18xx_gpio_probe._entry, section ".printk_index", align 4
@lpc18xx_gpio_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 364, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"unable to enable clock\0A\00", [40 x i8] zeroinitializer }, align 32
@lpc18xx_gpio_probe._entry_ptr.10 = internal global ptr @lpc18xx_gpio_probe._entry.8, section ".printk_index", align 4
@lpc18xx_gpio_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&gc->lock\00", [22 x i8] zeroinitializer }, align 32
@lpc18xx_gpio_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@lpc18xx_gpio_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@lpc18xx_gpio_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.5, i32 374, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to add gpio chip\0A\00", [39 x i8] zeroinitializer }, align 32
@lpc18xx_gpio_probe._entry_ptr.14 = internal global ptr @lpc18xx_gpio_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lpc18xx/43xx-gpio\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpio-pin-ic\00", [20 x i8] zeroinitializer }, align 32
@lpc18xx_gpio_pin_ic_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&ic->lock\00", [22 x i8] zeroinitializer }, align 32
@lpc18xx_gpio_pin_ic_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr @irq_domain_xlate_twocell, ptr @lpc18xx_gpio_pin_ic_domain_alloc, ptr @irq_domain_free_irqs_common, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@lpc18xx_gpio_pin_ic_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.5, i32 251, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013unable to add irq domain\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"lpc18xx_gpio_pin_ic_probe\00", [38 x i8] zeroinitializer }, align 32
@lpc18xx_gpio_pin_ic_probe._entry_ptr = internal global ptr @lpc18xx_gpio_pin_ic_probe._entry, section ".printk_index", align 4
@lpc18xx_gpio_pin_ic_domain_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.5, i32 190, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013failed to allocate parent irq %u: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"lpc18xx_gpio_pin_ic_domain_alloc\00", [63 x i8] zeroinitializer }, align 32
@lpc18xx_gpio_pin_ic_domain_alloc._entry_ptr = internal global ptr @lpc18xx_gpio_pin_ic_domain_alloc._entry, section ".printk_index", align 4
@lpc18xx_gpio_pin_ic = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.22, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @lpc18xx_gpio_pin_ic_mask, ptr null, ptr @lpc18xx_gpio_pin_ic_unmask, ptr @lpc18xx_gpio_pin_ic_eoi, ptr null, ptr null, ptr @lpc18xx_gpio_pin_ic_set_type, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 1 }, [56 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"LPC18xx GPIO pin\00", [47 x i8] zeroinitializer }, align 32
@___asan_gen_.23 = private unnamed_addr constant [20 x i8] c"lpc18xx_gpio_driver\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 403, i32 31 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 407, i32 12 }
@___asan_gen_.29 = private unnamed_addr constant [19 x i8] c"lpc18xx_gpio_match\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 397, i32 34 }
@___asan_gen_.32 = private unnamed_addr constant [13 x i8] c"lpc18xx_chip\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 315, i32 31 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 340, i32 49 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 340, i32 62 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 358, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 364, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 368, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 372, i32 8 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 374, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 316, i32 13 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 227, i32 7 }
@___asan_gen_.89 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 243, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant [31 x i8] c"lpc18xx_gpio_pin_ic_domain_ops\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 198, i32 36 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 251, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 189, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant [20 x i8] c"lpc18xx_gpio_pin_ic\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 154, i32 24 }
@___asan_gen_.119 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.120 = private constant [31 x i8] c"../drivers/gpio/gpio-lpc18xx.c\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 155, i32 11 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @__UNIQUE_ID_author224, ptr @__UNIQUE_ID_author225, ptr @__UNIQUE_ID_description226, ptr @__UNIQUE_ID_file227, ptr @__UNIQUE_ID_license228, ptr @__exitcall_lpc18xx_gpio_driver_exit, ptr @__initcall__kmod_gpio_lpc18xx__223_411_lpc18xx_gpio_driver_init6, ptr @lpc18xx_gpio_driver_exit, ptr @lpc18xx_gpio_pin_ic_domain_alloc._entry, ptr @lpc18xx_gpio_pin_ic_domain_alloc._entry_ptr, ptr @lpc18xx_gpio_pin_ic_probe._entry, ptr @lpc18xx_gpio_pin_ic_probe._entry_ptr, ptr @lpc18xx_gpio_probe._entry, ptr @lpc18xx_gpio_probe._entry.12, ptr @lpc18xx_gpio_probe._entry.8, ptr @lpc18xx_gpio_probe._entry_ptr, ptr @lpc18xx_gpio_probe._entry_ptr.10, ptr @lpc18xx_gpio_probe._entry_ptr.14, ptr @lpc18xx_gpio_driver, ptr @.str, ptr @lpc18xx_gpio_match, ptr @lpc18xx_chip, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @lpc18xx_gpio_probe.__key, ptr @.str.11, ptr @lpc18xx_gpio_probe.lock_key, ptr @lpc18xx_gpio_probe.request_key, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @lpc18xx_gpio_pin_ic_probe.__key, ptr @.str.17, ptr @lpc18xx_gpio_pin_ic_domain_ops, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @lpc18xx_gpio_pin_ic, ptr @.str.22], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_gpio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_gpio_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_chip to i32), i32 348, i32 416, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_gpio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_gpio_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_gpio_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_gpio_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_gpio_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_gpio_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_gpio_pin_ic_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_gpio_pin_ic_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_gpio_pin_ic_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_gpio_pin_ic_domain_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpc18xx_gpio_pin_ic to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc18xx_gpio_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @lpc18xx_gpio_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lpc18xx_gpio_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @lpc18xx_gpio_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc18xx_gpio_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %fwspec.i.i4.i.i = alloca %struct.irq_fwspec, align 4
  %fwspec.i.i.i.i = alloca %struct.irq_fwspec, align 4
  %res.i = alloca %struct.resource, align 4
  %res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 404, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup49_crit_edge, label %if.end

entry.cleanup49_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup49

if.end:                                           ; preds = %entry
  %0 = call ptr @memcpy(ptr %call.i, ptr @lpc18xx_chip, i32 348)
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call2 = tail call i32 @of_property_match_string(ptr noundef %3, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %base = getelementptr inbounds %struct.lpc18xx_gpio_chip, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call4, ptr %base, align 4
  br label %if.end12

if.else:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #6
  %5 = call ptr @memset(ptr %res, i32 255, i32 32)
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %call6 = call i32 @of_address_to_resource(ptr noundef %7, i32 noundef %call2, ptr noundef nonnull %res) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %cleanup49.critedge, label %if.end9

if.end9:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call10 = call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef nonnull %res) #6
  %base11 = getelementptr inbounds %struct.lpc18xx_gpio_chip, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %base11 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call10, ptr %base11, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #6
  br label %if.end12

if.end12:                                         ; preds = %if.end9, %if.then3
  %base13 = getelementptr inbounds %struct.lpc18xx_gpio_chip, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %base13 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base13, align 4
  %cmp.i = icmp ugt ptr %10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %10 to i32
  br label %cleanup49

if.end18:                                         ; preds = %if.end12
  %call19 = call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #6
  %clk = getelementptr inbounds %struct.lpc18xx_gpio_chip, ptr %call.i, i32 0, i32 2
  %12 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call19, ptr %clk, align 4
  %cmp.i86 = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i86, label %do.end, label %if.end25

do.end:                                           ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3) #9
  %13 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk, align 4
  %15 = ptrtoint ptr %14 to i32
  br label %cleanup49

if.end25:                                         ; preds = %if.end18
  %call.i87 = call i32 @clk_prepare(ptr noundef %call19) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i87)
  %tobool.not.i = icmp eq i32 %call.i87, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end25.do.end32_crit_edge

if.end25.do.end32_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end32

if.end.i:                                         ; preds = %if.end25
  %call1.i = call i32 @clk_enable(ptr noundef %call19) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %do.body34, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @clk_unprepare(ptr noundef %call19) #6
  br label %do.end32

do.end32:                                         ; preds = %if.then3.i, %if.end25.do.end32_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i87, %if.end25.do.end32_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #9
  br label %cleanup49

do.body34:                                        ; preds = %if.end.i
  %lock = getelementptr inbounds %struct.lpc18xx_gpio_chip, ptr %call.i, i32 0, i32 4
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.11, ptr noundef nonnull @lpc18xx_gpio_probe.__key, i16 noundef signext 3) #6
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 2
  %16 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %dev1, ptr %parent, align 4
  %call40 = call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev1, ptr noundef nonnull %call.i, ptr noundef nonnull %call.i, ptr noundef nonnull @lpc18xx_gpio_probe.lock_key, ptr noundef nonnull @lpc18xx_gpio_probe.request_key) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end47, label %do.end45

do.end45:                                         ; preds = %do.body34
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.13) #9
  %17 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %clk, align 4
  call void @clk_disable(ptr noundef %18) #6
  call void @clk_unprepare(ptr noundef %18) #6
  br label %cleanup49

if.end47:                                         ; preds = %do.body34
  %19 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %parent, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res.i) #6
  %of_node.i = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 27
  %21 = call ptr @memset(ptr %res.i, i32 255, i32 32)
  %22 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %of_node.i, align 8
  %call.i88 = call ptr @of_irq_find_parent(ptr noundef %23) #6
  %tobool.not.i89 = icmp eq ptr %call.i88, null
  br i1 %tobool.not.i89, label %if.end47.lpc18xx_gpio_pin_ic_probe.exit_crit_edge, label %if.end.i90

if.end47.lpc18xx_gpio_pin_ic_probe.exit_crit_edge: ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  br label %lpc18xx_gpio_pin_ic_probe.exit

if.end.i90:                                       ; preds = %if.end47
  %fwnode.i.i.i.i = getelementptr inbounds %struct.device_node, ptr %call.i88, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %fwspec.i.i.i.i) #6
  %24 = getelementptr inbounds i8, ptr %fwspec.i.i.i.i, i32 4
  %25 = call ptr @memset(ptr %24, i32 0, i32 68)
  %26 = ptrtoint ptr %fwspec.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %fwnode.i.i.i.i, ptr %fwspec.i.i.i.i, align 4
  %call.i.i.i.i = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %fwspec.i.i.i.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fwspec.i.i.i.i) #6
  %tobool.not.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i, label %irq_find_host.exit.i, label %irq_find_host.exit.thread.i

irq_find_host.exit.thread.i:                      ; preds = %if.end.i90
  call void @__sanitizer_cov_trace_pc() #8
  call void @of_node_put(ptr noundef nonnull %call.i88) #6
  br label %if.end4.i

irq_find_host.exit.i:                             ; preds = %if.end.i90
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %fwspec.i.i4.i.i) #6
  %27 = getelementptr inbounds i8, ptr %fwspec.i.i4.i.i, i32 4
  %28 = call ptr @memset(ptr %27, i32 0, i32 68)
  %29 = ptrtoint ptr %fwspec.i.i4.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %fwnode.i.i.i.i, ptr %fwspec.i.i4.i.i, align 4
  %call.i.i8.i.i = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %fwspec.i.i4.i.i, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fwspec.i.i4.i.i) #6
  call void @of_node_put(ptr noundef nonnull %call.i88) #6
  %tobool2.not.i91 = icmp eq ptr %call.i.i8.i.i, null
  br i1 %tobool2.not.i91, label %irq_find_host.exit.i.lpc18xx_gpio_pin_ic_probe.exit_crit_edge, label %irq_find_host.exit.i.if.end4.i_crit_edge

irq_find_host.exit.i.if.end4.i_crit_edge:         ; preds = %irq_find_host.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4.i

irq_find_host.exit.i.lpc18xx_gpio_pin_ic_probe.exit_crit_edge: ; preds = %irq_find_host.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lpc18xx_gpio_pin_ic_probe.exit

if.end4.i:                                        ; preds = %irq_find_host.exit.i.if.end4.i_crit_edge, %irq_find_host.exit.thread.i
  %d.0.i3.i = phi ptr [ %call.i.i.i.i, %irq_find_host.exit.thread.i ], [ %call.i.i8.i.i, %irq_find_host.exit.i.if.end4.i_crit_edge ]
  %call.i.i = call noalias ptr @devm_kmalloc(ptr noundef %20, i32 noundef 52, i32 noundef 3520) #6
  %tobool6.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool6.not.i, label %if.end4.i.lpc18xx_gpio_pin_ic_probe.exit_crit_edge, label %if.end8.i

if.end4.i.lpc18xx_gpio_pin_ic_probe.exit_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %lpc18xx_gpio_pin_ic_probe.exit

if.end8.i:                                        ; preds = %if.end4.i
  %30 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %of_node.i, align 8
  %call10.i = call i32 @of_property_match_string(ptr noundef %31, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.16) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp.i92 = icmp slt i32 %call10.i, 0
  br i1 %cmp.i92, label %if.end8.i.free_ic.i_crit_edge, label %if.end12.i

if.end8.i.free_ic.i_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_ic.i

if.end12.i:                                       ; preds = %if.end8.i
  %32 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %of_node.i, align 8
  %call14.i = call i32 @of_address_to_resource(ptr noundef %33, i32 noundef %call10.i, ptr noundef nonnull %res.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i)
  %cmp15.i = icmp slt i32 %call14.i, 0
  br i1 %cmp15.i, label %if.end12.i.free_ic.i_crit_edge, label %if.end17.i

if.end12.i.free_ic.i_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_ic.i

if.end17.i:                                       ; preds = %if.end12.i
  %call18.i = call ptr @devm_ioremap_resource(ptr noundef %20, ptr noundef nonnull %res.i) #6
  %34 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call18.i, ptr %call.i.i, align 4
  %cmp.i.i = icmp ugt ptr %call18.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end17.i.free_ic.i_crit_edge, label %do.body.i

if.end17.i.free_ic.i_crit_edge:                   ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %free_ic.i

do.body.i:                                        ; preds = %if.end17.i
  %lock.i = getelementptr inbounds %struct.lpc18xx_gpio_pin_ic, ptr %call.i.i, i32 0, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.17, ptr noundef nonnull @lpc18xx_gpio_pin_ic_probe.__key, i16 noundef signext 2) #6
  %35 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %of_node.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %36, null
  %fwnode.i.i.i = getelementptr inbounds %struct.device_node, ptr %36, i32 0, i32 3
  %spec.select.i.i.i = select i1 %tobool.not.i.i.i, ptr null, ptr %fwnode.i.i.i
  %call1.i.i = call ptr @irq_domain_create_hierarchy(ptr noundef nonnull %d.0.i3.i, i32 noundef 0, i32 noundef 8, ptr noundef %spec.select.i.i.i, ptr noundef nonnull @lpc18xx_gpio_pin_ic_domain_ops, ptr noundef nonnull %call.i.i) #6
  %domain.i = getelementptr inbounds %struct.lpc18xx_gpio_pin_ic, ptr %call.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %domain.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call1.i.i, ptr %domain.i, align 4
  %tobool28.not.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool28.not.i, label %do.end32.i, label %if.end34.i

do.end32.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %call33.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #9
  %38 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call.i.i, align 4
  call void @devm_iounmap(ptr noundef %20, ptr noundef %39) #6
  br label %free_ic.i

if.end34.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %pin_ic.i = getelementptr inbounds %struct.lpc18xx_gpio_chip, ptr %call.i, i32 0, i32 3
  %40 = ptrtoint ptr %pin_ic.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i.i, ptr %pin_ic.i, align 4
  br label %lpc18xx_gpio_pin_ic_probe.exit

free_ic.i:                                        ; preds = %do.end32.i, %if.end17.i.free_ic.i_crit_edge, %if.end12.i.free_ic.i_crit_edge, %if.end8.i.free_ic.i_crit_edge
  call void @devm_kfree(ptr noundef %20, ptr noundef nonnull %call.i.i) #6
  br label %lpc18xx_gpio_pin_ic_probe.exit

lpc18xx_gpio_pin_ic_probe.exit:                   ; preds = %free_ic.i, %if.end34.i, %if.end4.i.lpc18xx_gpio_pin_ic_probe.exit_crit_edge, %irq_find_host.exit.i.lpc18xx_gpio_pin_ic_probe.exit_crit_edge, %if.end47.lpc18xx_gpio_pin_ic_probe.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i) #6
  br label %cleanup49

cleanup49.critedge:                               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #6
  br label %cleanup49

cleanup49:                                        ; preds = %cleanup49.critedge, %lpc18xx_gpio_pin_ic_probe.exit, %do.end45, %do.end32, %do.end, %if.then15, %entry.cleanup49_crit_edge
  %retval.1 = phi i32 [ %11, %if.then15 ], [ %15, %do.end ], [ %retval.0.i.ph, %do.end32 ], [ %call40, %do.end45 ], [ 0, %lpc18xx_gpio_pin_ic_probe.exit ], [ -12, %entry.cleanup49_crit_edge ], [ %call6, %cleanup49.critedge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc18xx_gpio_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %pin_ic = getelementptr inbounds %struct.lpc18xx_gpio_chip, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %pin_ic to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pin_ic, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %domain = getelementptr inbounds %struct.lpc18xx_gpio_pin_ic, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %domain, align 4
  tail call void @irq_domain_remove(ptr noundef %5) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %clk = getelementptr inbounds %struct.lpc18xx_gpio_chip, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %7) #6
  tail call void @clk_unprepare(ptr noundef %7) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_match_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_generic_request(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_generic_free(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc18xx_gpio_direction_input(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %rem.i = and i32 %offset, 31
  %lock.i = getelementptr inbounds %struct.lpc18xx_gpio_chip, ptr %call.i, i32 0, i32 4
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  %base.i = getelementptr inbounds %struct.lpc18xx_gpio_chip, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %2 = lshr i32 %offset, 3
  %mul.i = and i32 %2, 536870908
  %add.i = add nuw nsw i32 %mul.i, 8192
  %add.ptr.i = getelementptr i8, ptr %1, i32 %add.i
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !78
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  %shl.i = shl nuw i32 1, %rem.i
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %4, %neg.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  %5 = tail call i32 @llvm.bswap.i32(i32 %and.i) #6
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr16.i = getelementptr i8, ptr %7, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 %5) #6, !srcloc !81
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc18xx_gpio_direction_output(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  tail call void @arm_heavy_mb() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not.i = icmp ne i32 %value, 0
  %conv.i = zext i1 %tobool.not.i to i8
  %base.i = getelementptr inbounds %struct.lpc18xx_gpio_chip, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %offset
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %conv.i) #6, !srcloc !83
  %call.i3 = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %rem.i = and i32 %offset, 31
  %lock.i = getelementptr inbounds %struct.lpc18xx_gpio_chip, ptr %call.i3, i32 0, i32 4
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #6
  %base.i4 = getelementptr inbounds %struct.lpc18xx_gpio_chip, ptr %call.i3, i32 0, i32 1
  %2 = ptrtoint ptr %base.i4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i4, align 4
  %4 = lshr i32 %offset, 3
  %mul.i = and i32 %4, 536870908
  %add.i = add nuw nsw i32 %mul.i, 8192
  %add.ptr.i5 = getelementptr i8, ptr %3, i32 %add.i
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5) #6, !srcloc !78
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !79
  %shl.i = shl nuw i32 1, %rem.i
  %or.i = or i32 %6, %shl.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !80
  tail call void @arm_heavy_mb() #6
  %7 = tail call i32 @llvm.bswap.i32(i32 %or.i) #6
  %8 = ptrtoint ptr %base.i4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i4, align 4
  %add.ptr16.i = getelementptr i8, ptr %9, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16.i, i32 %7) #6, !srcloc !81
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc18xx_gpio_get(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  %base = getelementptr inbounds %struct.lpc18xx_gpio_chip, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %offset
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #6, !srcloc !84
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !85
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool = icmp ne i8 %2, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpc18xx_gpio_set(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !82
  tail call void @arm_heavy_mb() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp ne i32 %value, 0
  %conv = zext i1 %tobool.not to i8
  %base = getelementptr inbounds %struct.lpc18xx_gpio_chip, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %offset
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv) #6, !srcloc !83
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_irq_find_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_iounmap(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_find_matching_fwspec(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_create_hierarchy(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_xlate_twocell(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc18xx_gpio_pin_ic_domain_alloc(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs, ptr nocapture noundef readonly %data) #2 align 64 {
entry:
  %parent_fwspec = alloca %struct.irq_fwspec, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %parent_fwspec) #6
  %0 = getelementptr inbounds i8, ptr %parent_fwspec, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 60)
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  %2 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nr_irqs)
  %cmp.not = icmp eq i32 %nr_irqs, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %param = getelementptr inbounds %struct.irq_fwspec, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %param, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %5)
  %cmp1 = icmp ugt i32 %5, 7
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %parent = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 9
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 4
  %fwnode = getelementptr inbounds %struct.irq_domain, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %fwnode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fwnode, align 4
  %10 = ptrtoint ptr %parent_fwspec to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %parent_fwspec, align 4
  %param_count = getelementptr inbounds %struct.irq_fwspec, ptr %parent_fwspec, i32 0, i32 1
  %11 = ptrtoint ptr %param_count to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %param_count, align 4
  %add = add nuw nsw i32 %5, 32
  %param5 = getelementptr inbounds %struct.irq_fwspec, ptr %parent_fwspec, i32 0, i32 2
  %12 = ptrtoint ptr %param5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %add, ptr %param5, align 4
  %call = call i32 @irq_domain_alloc_irqs_parent(ptr noundef %domain, i32 noundef %virq, i32 noundef 1, ptr noundef nonnull %parent_fwspec) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp7 = icmp slt i32 %call, 0
  br i1 %cmp7, label %do.end, label %if.end12

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %param5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %param5, align 4
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %14, i32 noundef %call) #9
  br label %cleanup

if.end12:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #8
  %call13 = call i32 @irq_domain_set_hwirq_and_chip(ptr noundef %domain, i32 noundef %virq, i32 noundef %5, ptr noundef nonnull @lpc18xx_gpio_pin_ic, ptr noundef %3) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end ], [ %call13, %if.end12 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %parent_fwspec) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs_common(ptr noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_alloc_irqs_parent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_set_hwirq_and_chip(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpc18xx_gpio_pin_ic_mask(ptr noundef %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data, align 4
  %common.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 3
  %2 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %common.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %lock = getelementptr inbounds %struct.lpc18xx_gpio_pin_ic, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %6 = and i32 %5, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %8 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hwirq, align 4
  %shl.i = shl nuw i32 1, %9
  %10 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #6
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %10) #6, !srcloc !81
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and3 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %hwirq6 = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %13 = ptrtoint ptr %hwirq6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hwirq6, align 4
  %shl.i18 = shl nuw i32 1, %14
  %15 = tail call i32 @llvm.bswap.i32(i32 %shl.i18) #6
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %add.ptr.i19 = getelementptr i8, ptr %17, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 %15) #6, !srcloc !81
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  tail call void @irq_chip_mask_parent(ptr noundef %d) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpc18xx_gpio_pin_ic_unmask(ptr noundef %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data, align 4
  %common.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 3
  %2 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %common.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %lock = getelementptr inbounds %struct.lpc18xx_gpio_pin_ic, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %6 = and i32 %5, 13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %8 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hwirq, align 4
  %shl.i = shl nuw i32 1, %9
  %10 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #6
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %10) #6, !srcloc !81
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and3 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %hwirq6 = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %13 = ptrtoint ptr %hwirq6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hwirq6, align 4
  %shl.i18 = shl nuw i32 1, %14
  %15 = tail call i32 @llvm.bswap.i32(i32 %shl.i18) #6
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %add.ptr.i19 = getelementptr i8, ptr %17, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 %15) #6, !srcloc !81
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  tail call void @irq_chip_unmask_parent(ptr noundef %d) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @lpc18xx_gpio_pin_ic_eoi(ptr noundef %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data, align 4
  %common.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 3
  %2 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %common.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %lock = getelementptr inbounds %struct.lpc18xx_gpio_pin_ic, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %and = and i32 %5, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %6 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hwirq, align 4
  %shl.i = shl nuw i32 1, %7
  %8 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #6
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %10, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #6, !srcloc !81
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  tail call void @irq_chip_eoi_parent(ptr noundef %d) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @lpc18xx_gpio_pin_ic_set_type(ptr nocapture noundef readonly %d, i32 noundef %type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data, align 4
  %lock = getelementptr inbounds %struct.lpc18xx_gpio_pin_ic, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %and = and i32 %type, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %5) #6, !srcloc !78
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #6
  %shl.i = shl nuw i32 1, %3
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %7, %neg.i
  %8 = tail call i32 @llvm.bswap.i32(i32 %and.i) #6
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %10, i32 %8) #6, !srcloc !81
  %11 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hwirq, align 4
  %shl.i23 = shl nuw i32 1, %12
  %13 = tail call i32 @llvm.bswap.i32(i32 %shl.i23) #6
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %13) #6, !srcloc !81
  br label %if.end9

if.else:                                          ; preds = %entry
  %and2 = and i32 %type, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %hwirq8 = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %16 = ptrtoint ptr %hwirq8 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hwirq8, align 4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #6
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #6
  %shl.i30 = shl nuw i32 1, %17
  br i1 %tobool3.not, label %if.else7, label %if.then4

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %neg.i25 = xor i32 %shl.i30, -1
  %and.i26 = and i32 %21, %neg.i25
  %22 = tail call i32 @llvm.bswap.i32(i32 %and.i26) #6
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 %22) #6, !srcloc !81
  %25 = ptrtoint ptr %hwirq8 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %hwirq8, align 4
  %shl.i28 = shl nuw i32 1, %26
  %27 = tail call i32 @llvm.bswap.i32(i32 %shl.i28) #6
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %add.ptr.i29 = getelementptr i8, ptr %29, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i29, i32 %27) #6, !srcloc !81
  br label %if.end9

if.else7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %or.i33 = or i32 %21, %shl.i30
  %30 = tail call i32 @llvm.bswap.i32(i32 %or.i33) #6
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %32, i32 %30) #6, !srcloc !81
  br label %if.end9

if.end9:                                          ; preds = %if.else7, %if.then4, %if.then
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_mask_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_unmask_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_eoi_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !22, !23, !24, !25, !26, !27, !28, !30, !31, !32, !34, !35, !37, !38, !40, !41, !42, !44, !46, !48, !50, !51, !53, !54, !55, !56, !58, !60, !61, !62, !63, !65, !67}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !{ptr @__initcall__kmod_gpio_lpc18xx__223_411_lpc18xx_gpio_driver_init6, !1, !"__initcall__kmod_gpio_lpc18xx__223_411_lpc18xx_gpio_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpio-lpc18xx.c", i32 411, i32 1}
!2 = !{ptr @__exitcall_lpc18xx_gpio_driver_exit, !1, !"__exitcall_lpc18xx_gpio_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author224, !4, !"__UNIQUE_ID_author224", i1 false, i1 false}
!4 = !{!"../drivers/gpio/gpio-lpc18xx.c", i32 413, i32 1}
!5 = !{ptr @__UNIQUE_ID_author225, !6, !"__UNIQUE_ID_author225", i1 false, i1 false}
!6 = !{!"../drivers/gpio/gpio-lpc18xx.c", i32 414, i32 1}
!7 = !{ptr @__UNIQUE_ID_description226, !8, !"__UNIQUE_ID_description226", i1 false, i1 false}
!8 = !{!"../drivers/gpio/gpio-lpc18xx.c", i32 415, i32 1}
!9 = !{ptr @__UNIQUE_ID_file227, !10, !"__UNIQUE_ID_file227", i1 false, i1 false}
!10 = !{!"../drivers/gpio/gpio-lpc18xx.c", i32 416, i32 1}
!11 = !{ptr @__UNIQUE_ID_license228, !10, !"__UNIQUE_ID_license228", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpio/gpio-lpc18xx.c", i32 407, i32 12}
!14 = !{ptr @lpc18xx_gpio_driver, !15, !"lpc18xx_gpio_driver", i1 false, i1 false}
!15 = !{!"../drivers/gpio/gpio-lpc18xx.c", i32 403, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpio/gpio-lpc18xx.c", i32 340, i32 49}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpio/gpio-lpc18xx.c", i32 340, i32 62}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpio/gpio-lpc18xx.c", i32 358, i32 3}
!22 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @lpc18xx_gpio_probe._entry, !21, !"_entry", i1 false, i1 false}
!27 = !{ptr @lpc18xx_gpio_probe._entry_ptr, !21, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpio/gpio-lpc18xx.c", i32 364, i32 3}
!30 = !{ptr @lpc18xx_gpio_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @lpc18xx_gpio_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @lpc18xx_gpio_probe.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/gpio/gpio-lpc18xx.c", i32 368, i32 2}
!34 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @lpc18xx_gpio_probe.lock_key, !36, !"lock_key", i1 false, i1 false}
!36 = !{!"../drivers/gpio/gpio-lpc18xx.c", i32 372, i32 8}
!37 = !{ptr @lpc18xx_gpio_probe.request_key, !36, !"request_key", i1 false, i1 false}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpio/gpio-lpc18xx.c", i32 374, i32 3}
!40 = !{ptr @lpc18xx_gpio_probe._entry.12, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @lpc18xx_gpio_probe._entry_ptr.14, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpio/gpio-lpc18xx.c", i32 316, i32 13}
!44 = !{ptr @lpc18xx_chip, !45, !"lpc18xx_chip", i1 false, i1 false}
!45 = !{!"../drivers/gpio/gpio-lpc18xx.c", i32 315, i32 31}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpio/gpio-lpc18xx.c", i32 227, i32 7}
!48 = !{ptr @lpc18xx_gpio_pin_ic_probe.__key, !49, !"__key", i1 false, i1 false}
!49 = !{!"../drivers/gpio/gpio-lpc18xx.c", i32 243, i32 2}
!50 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpio/gpio-lpc18xx.c", i32 251, i32 3}
!53 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @lpc18xx_gpio_pin_ic_probe._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @lpc18xx_gpio_pin_ic_probe._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @lpc18xx_gpio_pin_ic_domain_ops, !57, !"lpc18xx_gpio_pin_ic_domain_ops", i1 false, i1 false}
!57 = !{!"../drivers/gpio/gpio-lpc18xx.c", i32 198, i32 36}
!58 = !{ptr @.str.20, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpio/gpio-lpc18xx.c", i32 189, i32 3}
!60 = !{ptr @.str.21, !59, !"<string literal>", i1 false, i1 false}
!61 = !{ptr @lpc18xx_gpio_pin_ic_domain_alloc._entry, !59, !"_entry", i1 false, i1 false}
!62 = !{ptr @lpc18xx_gpio_pin_ic_domain_alloc._entry_ptr, !59, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.22, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpio/gpio-lpc18xx.c", i32 155, i32 11}
!65 = !{ptr @lpc18xx_gpio_pin_ic, !66, !"lpc18xx_gpio_pin_ic", i1 false, i1 false}
!66 = !{!"../drivers/gpio/gpio-lpc18xx.c", i32 154, i32 24}
!67 = !{ptr @lpc18xx_gpio_match, !68, !"lpc18xx_gpio_match", i1 false, i1 false}
!68 = !{!"../drivers/gpio/gpio-lpc18xx.c", i32 397, i32 34}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!78 = !{i64 4879409}
!79 = !{i64 2153881372}
!80 = !{i64 2153881795}
!81 = !{i64 4878991}
!82 = !{i64 2153880111}
!83 = !{i64 4878794}
!84 = !{i64 4879189}
!85 = !{i64 2153880406}
