; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpio-grgpio.c_pt.bc'
source_filename = "../drivers/gpio/gpio-grgpio.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
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
%struct.grgpio_priv = type { %struct.gpio_chip, ptr, ptr, i32, ptr, [32 x %struct.grgpio_uirq], [32 x %struct.grgpio_lirq] }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.68, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%union.anon.68 = type { ptr }
%struct.grgpio_uirq = type { i8, i8 }
%struct.grgpio_lirq = type { i8, i8 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_gpio_grgpio__229_474_grgpio_driver_init6 = internal global ptr @grgpio_driver_init, section ".initcall6.init", align 4
@grgpio_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @grgpio_probe, ptr @grgpio_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @grgpio_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_grgpio_driver_exit = internal global ptr @grgpio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author230 = internal constant [40 x i8] c"gpio_grgpio.author=Aeroflex Gaisler AB.\00", section ".modinfo", align 1
@__UNIQUE_ID_description231 = internal constant [59 x i8] c"gpio_grgpio.description=Driver for Aeroflex Gaisler GRGPIO\00", section ".modinfo", align 1
@__UNIQUE_ID_file232 = internal constant [42 x i8] c"gpio_grgpio.file=drivers/gpio/gpio-grgpio\00", section ".modinfo", align 1
@__UNIQUE_ID_license233 = internal constant [24 x i8] c"gpio_grgpio.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"grgpio\00", [25 x i8] zeroinitializer }, align 32
@grgpio_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] c"GAISLER_GPIO\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] zeroinitializer, [128 x i8] zeroinitializer, ptr null }, %struct.of_device_id { [32 x i8] c"01_01a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [32 x i8] zeroinitializer, [128 x i8] zeroinitializer, ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@grgpio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 353, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"bgpio_init() failed\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"grgpio_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/gpio/gpio-grgpio.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@grgpio_probe._entry_ptr = internal global ptr @grgpio_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"%pOF\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"nbits\00", [26 x i8] zeroinitializer }, align 32
@grgpio_probe.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.2, ptr @.str.3, ptr @.str.9, i8 0, i8 92, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpio_grgpio\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"No or invalid nbits property: assume %d\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"irqmap\00", [25 x i8] zeroinitializer }, align 32
@grgpio_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 384, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"irqmap shorter than ngpio (%d < %d)\0A\00", [59 x i8] zeroinitializer }, align 32
@grgpio_probe._entry_ptr.13 = internal global ptr @grgpio_probe._entry.11, section ".printk_index", align 4
@grgpio_irq_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr @grgpio_irq_map, ptr @grgpio_irq_unmap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@grgpio_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 392, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Could not add irq domain\0A\00", [38 x i8] zeroinitializer }, align 32
@grgpio_probe._entry_ptr.16 = internal global ptr @grgpio_probe._entry.14, section ".printk_index", align 4
@grgpio_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@grgpio_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@grgpio_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 422, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Could not add gpiochip\0A\00", [40 x i8] zeroinitializer }, align 32
@grgpio_probe._entry_ptr.19 = internal global ptr @grgpio_probe._entry.17, section ".printk_index", align 4
@grgpio_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.2, ptr @.str.3, i32 429, ptr @.str.22, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"regs=0x%p, base=%d, ngpio=%d, irqs=%s\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@grgpio_probe._entry_ptr.23 = internal global ptr @grgpio_probe._entry.20, section ".printk_index", align 4
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"on\00", [29 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"off\00", [28 x i8] zeroinitializer }, align 32
@grgpio_irq_map.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.26, ptr @.str.3, ptr @.str.27, i8 0, i8 62, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"grgpio_irq_map\00", [17 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Mapping irq %d for gpio line %d\0A\00", [63 x i8] zeroinitializer }, align 32
@grgpio_irq_map._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.3, i32 262, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Could not request underlying irq %d\0A\00", [59 x i8] zeroinitializer }, align 32
@grgpio_irq_map._entry_ptr = internal global ptr @grgpio_irq_map._entry, section ".printk_index", align 4
@grgpio_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @grgpio_irq_mask, ptr null, ptr @grgpio_irq_unmask, ptr null, ptr null, ptr null, ptr @grgpio_irq_set_type, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@grgpio_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.3, i32 221, ptr @.str.31, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"No gpio line matched irq %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"grgpio_irq_handler\00", [45 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@grgpio_irq_handler._entry_ptr = internal global ptr @grgpio_irq_handler._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@___asan_gen_.32 = private unnamed_addr constant [14 x i8] c"grgpio_driver\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 466, i32 31 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 468, i32 11 }
@___asan_gen_.38 = private unnamed_addr constant [13 x i8] c"grgpio_match\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 458, i32 34 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 353, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 363, i32 54 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 366, i32 33 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 369, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 379, i32 38 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 382, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant [22 x i8] c"grgpio_irq_domain_ops\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 321, i32 36 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 392, i32 4 }
@___asan_gen_.89 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 420, i32 8 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 422, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 428, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 247, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 260, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant [16 x i8] c"grgpio_irq_chip\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 187, i32 24 }
@___asan_gen_.131 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.140 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.141 = private constant [30 x i8] c"../drivers/gpio/gpio-grgpio.c\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 221, i32 3 }
@llvm.compiler.used = appending global [51 x ptr] [ptr @__UNIQUE_ID_author230, ptr @__UNIQUE_ID_description231, ptr @__UNIQUE_ID_file232, ptr @__UNIQUE_ID_license233, ptr @__exitcall_grgpio_driver_exit, ptr @__initcall__kmod_gpio_grgpio__229_474_grgpio_driver_init6, ptr @grgpio_driver_exit, ptr @grgpio_irq_handler._entry, ptr @grgpio_irq_handler._entry_ptr, ptr @grgpio_irq_map._entry, ptr @grgpio_irq_map._entry_ptr, ptr @grgpio_probe._entry, ptr @grgpio_probe._entry.11, ptr @grgpio_probe._entry.14, ptr @grgpio_probe._entry.17, ptr @grgpio_probe._entry.20, ptr @grgpio_probe._entry_ptr, ptr @grgpio_probe._entry_ptr.13, ptr @grgpio_probe._entry_ptr.16, ptr @grgpio_probe._entry_ptr.19, ptr @grgpio_probe._entry_ptr.23, ptr @grgpio_driver, ptr @.str, ptr @grgpio_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @grgpio_irq_domain_ops, ptr @.str.15, ptr @grgpio_probe.lock_key, ptr @grgpio_probe.request_key, ptr @.str.18, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @grgpio_irq_chip, ptr @.str.29, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [37 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @grgpio_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @grgpio_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @grgpio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @grgpio_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @grgpio_irq_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @grgpio_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @grgpio_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @grgpio_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @grgpio_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @grgpio_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @grgpio_irq_map._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @grgpio_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @grgpio_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @grgpio_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @grgpio_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @grgpio_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @grgpio_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @grgpio_probe(ptr noundef %ofdev) #2 align 64 {
entry:
  %prop = alloca i32, align 4
  %size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %ofdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %ofdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %prop) #5
  %2 = ptrtoint ptr %prop to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %prop, align 4, !annotation !83
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size) #5
  %3 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %size, align 4, !annotation !83
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 492, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup117_crit_edge, label %if.end

entry.cleanup117_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup117

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %ofdev, i32 noundef 0) #5
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %call2 to i32
  br label %cleanup117

if.end6:                                          ; preds = %if.end
  %add.ptr9 = getelementptr i8, ptr %call2, i32 4
  %add.ptr10 = getelementptr i8, ptr %call2, i32 8
  %call11 = tail call i32 @bgpio_init(ptr noundef nonnull %call.i, ptr noundef %dev, i32 noundef 4, ptr noundef %call2, ptr noundef %add.ptr9, ptr noundef null, ptr noundef %add.ptr10, ptr noundef null, i32 noundef 8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end15, label %do.end

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #8
  br label %cleanup117

if.end15:                                         ; preds = %if.end6
  %regs16 = getelementptr inbounds %struct.grgpio_priv, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %regs16 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call2, ptr %regs16, align 4
  %read_reg = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 24
  %6 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %read_reg, align 4
  %add.ptr17 = getelementptr i8, ptr %call2, i32 12
  %call18 = tail call i32 %7(ptr noundef %add.ptr17) #5
  %imask = getelementptr inbounds %struct.grgpio_priv, ptr %call.i, i32 0, i32 3
  %8 = ptrtoint ptr %imask to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %call18, ptr %imask, align 4
  %dev20 = getelementptr inbounds %struct.grgpio_priv, ptr %call.i, i32 0, i32 2
  %9 = ptrtoint ptr %dev20 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %dev, ptr %dev20, align 4
  %owner = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 4
  %10 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %owner, align 4
  %to_irq = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 15
  %11 = ptrtoint ptr %to_irq to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @grgpio_to_irq, ptr %to_irq, align 4
  %call22 = tail call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev, i32 noundef 3264, ptr noundef nonnull @.str.6, ptr noundef %1) #5
  %12 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call22, ptr %call.i, align 4
  %base = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 19
  %13 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %base, align 4
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.7, ptr noundef nonnull %prop, i32 noundef 1, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool24.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool24.not, label %lor.lhs.false, label %if.end15.if.then27_crit_edge

if.end15.if.then27_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then27

lor.lhs.false:                                    ; preds = %if.end15
  %14 = ptrtoint ptr %prop to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %prop, align 4
  %16 = add i32 %15, -33
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32, i32 %16)
  %17 = icmp ult i32 %16, -32
  br i1 %17, label %lor.lhs.false.if.then27_crit_edge, label %if.else

lor.lhs.false.if.then27_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then27

if.then27:                                        ; preds = %lor.lhs.false.if.then27_crit_edge, %if.end15.if.then27_crit_edge
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 20
  %18 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 32, ptr %ngpio, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @grgpio_probe.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@grgpio_probe, %if.end42)) #5
          to label %if.then34 [label %if.end42], !srcloc !84

if.then34:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %20 to i32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @grgpio_probe.__UNIQUE_ID_ddebug228, ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %conv) #5
  br label %if.end42

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  %conv40 = trunc i32 %15 to i16
  %ngpio41 = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 20
  %21 = ptrtoint ptr %ngpio41 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv40, ptr %ngpio41, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.else, %if.then34, %if.then27
  %call43 = call ptr @of_get_property(ptr noundef %1, ptr noundef nonnull @.str.10, ptr noundef nonnull %size) #5
  %tobool44.not = icmp eq ptr %call43, null
  br i1 %tobool44.not, label %if.end42.if.end92_crit_edge, label %if.then45

if.end42.if.end92_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end92

if.then45:                                        ; preds = %if.end42
  %22 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %size, align 4
  %ngpio46 = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 20
  %24 = ptrtoint ptr %ngpio46 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %ngpio46, align 4
  %conv47 = zext i16 %25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %conv47)
  %cmp48 = icmp slt i32 %23, %conv47
  br i1 %cmp48, label %do.end53, label %if.end57

do.end53:                                         ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %23, i32 noundef %conv47) #8
  br label %cleanup117

if.end57:                                         ; preds = %if.then45
  %tobool.not.i.i = icmp eq ptr %1, null
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %1, i32 0, i32 3
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr null, ptr %fwnode.i.i
  %call1.i = call ptr @__irq_domain_add(ptr noundef %spec.select.i.i, i32 noundef %conv47, i32 noundef %conv47, i32 noundef 0, ptr noundef nonnull @grgpio_irq_domain_ops, ptr noundef nonnull %call.i) #5
  %domain = getelementptr inbounds %struct.grgpio_priv, ptr %call.i, i32 0, i32 4
  %26 = ptrtoint ptr %domain to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call1.i, ptr %domain, align 4
  %tobool62.not = icmp eq ptr %call1.i, null
  br i1 %tobool62.not, label %do.end66, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end57
  %27 = ptrtoint ptr %ngpio46 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %ngpio46, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %28)
  %cmp71195.not = icmp eq i16 %28, 0
  br i1 %cmp71195.not, label %for.cond.preheader.if.end92_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end92_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end92

do.end66:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #8
  br label %cleanup117

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0196 = phi i32 [ %inc, %cleanup.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.grgpio_priv, ptr %call.i, i32 0, i32 6, i32 %i.0196
  %arrayidx73 = getelementptr i32, ptr %call43, i32 %i.0196
  %29 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx73, align 4
  %conv74 = trunc i32 %30 to i8
  %31 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv74, ptr %arrayidx, align 1
  %sext.mask = and i32 %30, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sext.mask)
  %cmp77.not = icmp eq i32 %sext.mask, 0
  br i1 %cmp77.not, label %if.end80, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end80:                                         ; preds = %for.body
  %conv76193 = and i32 %30, 255
  %call83 = call i32 @platform_get_irq(ptr noundef %ofdev, i32 noundef %conv76193) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call83)
  %cmp84 = icmp slt i32 %call83, 1
  br i1 %cmp84, label %if.end80.cleanup_crit_edge, label %if.end87

if.end80.cleanup_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end87:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #7
  %conv88 = trunc i32 %call83 to i8
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %arrayidx, align 1
  %idxprom = sext i8 %33 to i32
  %uirq = getelementptr %struct.grgpio_priv, ptr %call.i, i32 0, i32 5, i32 %idxprom, i32 1
  %34 = ptrtoint ptr %uirq to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv88, ptr %uirq, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end87, %if.end80.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %inc = add nuw nsw i32 %i.0196, 1
  %35 = ptrtoint ptr %ngpio46 to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %ngpio46, align 4
  %conv70 = zext i16 %36 to i32
  %cmp71 = icmp ult i32 %inc, %conv70
  br i1 %cmp71, label %cleanup.for.body_crit_edge, label %cleanup.if.end92_crit_edge

cleanup.if.end92_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end92

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end92:                                         ; preds = %cleanup.if.end92_crit_edge, %for.cond.preheader.if.end92_crit_edge, %if.end42.if.end92_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %ofdev, i32 0, i32 3, i32 8
  %37 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call94 = call i32 @gpiochip_add_data_with_key(ptr noundef nonnull %call.i, ptr noundef nonnull %call.i, ptr noundef nonnull @grgpio_probe.lock_key, ptr noundef nonnull @grgpio_probe.request_key) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %do.end109, label %do.end99

do.end99:                                         ; preds = %if.end92
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #8
  %domain101 = getelementptr inbounds %struct.grgpio_priv, ptr %call.i, i32 0, i32 4
  %38 = ptrtoint ptr %domain101 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %domain101, align 4
  %tobool102.not = icmp eq ptr %39, null
  br i1 %tobool102.not, label %do.end99.cleanup117_crit_edge, label %if.then103

do.end99.cleanup117_crit_edge:                    ; preds = %do.end99
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup117

if.then103:                                       ; preds = %do.end99
  call void @__sanitizer_cov_trace_pc() #7
  call void @irq_domain_remove(ptr noundef nonnull %39) #5
  br label %cleanup117

do.end109:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #7
  %40 = ptrtoint ptr %regs16 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs16, align 4
  %42 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %base, align 4
  %ngpio113 = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 20
  %44 = ptrtoint ptr %ngpio113 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %ngpio113, align 4
  %conv114 = zext i16 %45 to i32
  %domain115 = getelementptr inbounds %struct.grgpio_priv, ptr %call.i, i32 0, i32 4
  %46 = ptrtoint ptr %domain115 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %domain115, align 4
  %tobool116.not = icmp eq ptr %47, null
  %cond = select i1 %tobool116.not, ptr @.str.25, ptr @.str.24
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.21, ptr noundef %41, i32 noundef %43, i32 noundef %conv114, ptr noundef nonnull %cond) #8
  br label %cleanup117

cleanup117:                                       ; preds = %do.end109, %if.then103, %do.end99.cleanup117_crit_edge, %do.end66, %do.end53, %do.end, %if.then4, %entry.cleanup117_crit_edge
  %retval.0 = phi i32 [ %4, %if.then4 ], [ %call11, %do.end ], [ -22, %do.end53 ], [ 0, %do.end109 ], [ -22, %do.end66 ], [ -12, %entry.cleanup117_crit_edge ], [ %call94, %if.then103 ], [ %call94, %do.end99.cleanup117_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %prop) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @grgpio_remove(ptr nocapture noundef readonly %ofdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %ofdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %domain = getelementptr inbounds %struct.grgpio_priv, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %domain, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.016, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.cond.if.end4_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.cond.if.end4_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end4

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %i.016 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.grgpio_priv, ptr %1, i32 0, i32 5, i32 %i.016
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp1.not = icmp eq i8 %5, 0
  br i1 %cmp1.not, label %for.cond, label %for.body.out_crit_edge

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end4:                                          ; preds = %for.cond.if.end4_crit_edge, %entry.if.end4_crit_edge
  tail call void @gpiochip_remove(ptr noundef %1) #5
  %6 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %domain, align 4
  %tobool6.not = icmp eq ptr %7, null
  br i1 %tobool6.not, label %if.end4.out_crit_edge, label %if.then7

if.end4.out_crit_edge:                            ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @irq_domain_remove(ptr noundef nonnull %7) #5
  br label %out

out:                                              ; preds = %if.then7, %if.end4.out_crit_edge, %for.body.out_crit_edge
  %ret.0 = phi i32 [ 0, %if.then7 ], [ 0, %if.end4.out_crit_edge ], [ -16, %for.body.out_crit_edge ]
  ret i32 %ret.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bgpio_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @grgpio_to_irq(ptr noundef %gc, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #5
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %gc, i32 0, i32 20
  %0 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %1 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %offset)
  %cmp.not = icmp ugt i32 %conv, %offset
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.grgpio_priv, ptr %call, i32 0, i32 6, i32 %offset
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp3 = icmp slt i8 %3, 0
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %domain = getelementptr inbounds %struct.grgpio_priv, ptr %call, i32 0, i32 4
  %4 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %domain, align 4
  %call.i = tail call i32 @irq_create_mapping_affinity(ptr noundef %5, i32 noundef %offset, ptr noundef null) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end6 ], [ -6, %entry.cleanup_crit_edge ], [ -6, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_mapping_affinity(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @grgpio_irq_map(ptr nocapture noundef readonly %d, i32 noundef %irq, i32 noundef %hwirq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %d, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.grgpio_priv, ptr %1, i32 0, i32 6, i32 %hwirq
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp = icmp slt i8 %3, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %do.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @grgpio_irq_map.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@grgpio_irq_map, %do.body11)) #5
          to label %if.then8 [label %do.body11], !srcloc !84

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.grgpio_priv, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @grgpio_irq_map.__UNIQUE_ID_ddebug227, ptr noundef %5, ptr noundef nonnull @.str.27, i32 noundef %irq, i32 noundef %hwirq) #5
  br label %do.body11

do.body11:                                        ; preds = %if.then8, %do.body
  %bgpio_lock = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 34
  %call16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bgpio_lock) #5
  %conv21 = trunc i32 %irq to i8
  %irq22 = getelementptr %struct.grgpio_priv, ptr %1, i32 0, i32 6, i32 %hwirq, i32 1
  %6 = ptrtoint ptr %irq22 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv21, ptr %irq22, align 1
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 1
  %idxprom = sext i8 %8 to i32
  %arrayidx24 = getelementptr %struct.grgpio_priv, ptr %1, i32 0, i32 5, i32 %idxprom
  %9 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx24, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp26 = icmp eq i8 %10, 0
  br i1 %cmp26, label %if.then28, label %do.body11.if.end60_crit_edge

do.body11.if.end60_crit_edge:                     ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60

if.then28:                                        ; preds = %do.body11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bgpio_lock, i32 noundef %call16) #5
  %uirq31 = getelementptr %struct.grgpio_priv, ptr %1, i32 0, i32 5, i32 %idxprom, i32 1
  %11 = ptrtoint ptr %uirq31 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %uirq31, align 1
  %conv32 = zext i8 %12 to i32
  %dev33 = getelementptr inbounds %struct.grgpio_priv, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev33, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then28.dev_name.exit_crit_edge

if.then28.dev_name.exit_crit_edge:                ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #7
  %17 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %14, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.then28.dev_name.exit_crit_edge
  %retval.0.i94 = phi ptr [ %18, %if.end.i ], [ %16, %if.then28.dev_name.exit_crit_edge ]
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %conv32, ptr noundef nonnull @grgpio_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i94, ptr noundef nonnull %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool36.not = icmp eq i32 %call.i, 0
  br i1 %tobool36.not, label %do.body46, label %do.end40

do.end40:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  %19 = ptrtoint ptr %dev33 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev33, align 4
  %21 = ptrtoint ptr %uirq31 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %uirq31, align 1
  %conv43 = zext i8 %22 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.28, i32 noundef %conv43) #8
  br label %cleanup

do.body46:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call55 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bgpio_lock) #5
  br label %if.end60

if.end60:                                         ; preds = %do.body46, %do.body11.if.end60_crit_edge
  %flags.0 = phi i32 [ %call55, %do.body46 ], [ %call16, %do.body11.if.end60_crit_edge ]
  %23 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx24, align 1
  %inc = add i8 %24, 1
  store i8 %inc, ptr %arrayidx24, align 1
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bgpio_lock, i32 noundef %flags.0) #5
  %call64 = tail call i32 @irq_set_chip_data(i32 noundef %irq, ptr noundef nonnull %1) #5
  tail call void @irq_set_chip_and_handler_name(i32 noundef %irq, ptr noundef nonnull @grgpio_irq_chip, ptr noundef nonnull @handle_simple_irq, ptr noundef null) #5
  tail call void @irq_modify_status(i32 noundef %irq, i32 noundef 0, i32 noundef 1024) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %do.end40, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end40 ], [ 0, %if.end60 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @grgpio_irq_unmap(ptr nocapture noundef readonly %d, i32 noundef %irq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %d, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %ngpio1 = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 20
  %2 = ptrtoint ptr %ngpio1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ngpio1, align 4
  %conv = zext i16 %3 to i32
  tail call void @irq_set_chip_and_handler_name(i32 noundef %irq, ptr noundef null, ptr noundef null, ptr noundef null) #5
  %call = tail call i32 @irq_set_chip_data(i32 noundef %irq, ptr noundef null) #5
  %bgpio_lock = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 34
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bgpio_lock) #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp9101.not = icmp eq i16 %3, 0
  br i1 %cmp9101.not, label %entry.if.end36_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.if.end36_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.0102 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %irq11 = getelementptr %struct.grgpio_priv, ptr %1, i32 0, i32 6, i32 %i.0102, i32 1
  %4 = ptrtoint ptr %irq11 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %irq11, align 1
  %conv12 = zext i8 %5 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv12, i32 %irq)
  %cmp13 = icmp eq i32 %conv12, %irq
  br i1 %cmp13, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.0102, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.inc.if.end36_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.if.end36_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

for.end:                                          ; preds = %for.body
  %arrayidx.le = getelementptr %struct.grgpio_priv, ptr %1, i32 0, i32 6, i32 %i.0102
  %shl2.i = shl nuw i32 1, %i.0102
  %neg.i = xor i32 %shl2.i, -1
  %imask3.i = getelementptr inbounds %struct.grgpio_priv, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %imask3.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %imask3.i, align 4
  %and.i = and i32 %7, %neg.i
  store i32 %and.i, ptr %imask3.i, align 4
  %write_reg.i = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 25
  %8 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %write_reg.i, align 4
  %regs.i = getelementptr inbounds %struct.grgpio_priv, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 12
  tail call void %9(ptr noundef %add.ptr.i, i32 noundef %and.i) #5
  %12 = ptrtoint ptr %irq11 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %irq11, align 1
  %13 = ptrtoint ptr %arrayidx.le to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.le, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %cmp18 = icmp slt i8 %14, 0
  br i1 %cmp18, label %for.end.if.end36_crit_edge, label %if.then46, !prof !85

for.end.if.end36_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

if.end36:                                         ; preds = %for.end.if.end36_crit_edge, %for.inc.if.end36_crit_edge, %entry.if.end36_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 306, i32 noundef 9, ptr noundef null) #5
  br label %if.end60

if.then46:                                        ; preds = %for.end
  %15 = ptrtoint ptr %arrayidx.le to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.le, align 1
  %idxprom = sext i8 %16 to i32
  %arrayidx48 = getelementptr %struct.grgpio_priv, ptr %1, i32 0, i32 5, i32 %idxprom
  %17 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx48, align 1
  %dec = add i8 %18, -1
  store i8 %dec, ptr %arrayidx48, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dec)
  %cmp51 = icmp eq i8 %dec, 0
  br i1 %cmp51, label %if.then53, label %if.then46.if.end60_crit_edge

if.then46.if.end60_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end60

if.then53:                                        ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bgpio_lock, i32 noundef %call6) #5
  %uirq56 = getelementptr %struct.grgpio_priv, ptr %1, i32 0, i32 5, i32 %idxprom, i32 1
  %19 = ptrtoint ptr %uirq56 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %uirq56, align 1
  %conv57 = zext i8 %20 to i32
  %call58 = tail call ptr @free_irq(i32 noundef %conv57, ptr noundef %1) #5
  br label %cleanup

if.end60:                                         ; preds = %if.then46.if.end60_crit_edge, %if.end36
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bgpio_lock, i32 noundef %call6) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end60, %if.then53
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @grgpio_irq_handler(i32 noundef %irq, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %ngpio1 = getelementptr inbounds %struct.gpio_chip, ptr %dev, i32 0, i32 20
  %0 = ptrtoint ptr %ngpio1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ngpio1, align 4
  %conv = zext i16 %1 to i32
  %bgpio_lock = getelementptr inbounds %struct.gpio_chip, ptr %dev, i32 0, i32 34
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bgpio_lock) #5
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %cmp844.not = icmp eq i16 %1, 0
  br i1 %cmp844.not, label %for.end.thread, label %for.body.lr.ph

for.end.thread:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bgpio_lock, i32 noundef %call5) #5
  br label %do.end28

for.body.lr.ph:                                   ; preds = %entry
  %imask = getelementptr inbounds %struct.grgpio_priv, ptr %dev, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %for.body.lr.ph
  %match.047 = phi i32 [ 0, %for.body.lr.ph ], [ %match.1, %if.end.for.body_crit_edge ]
  %i.045 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end.for.body_crit_edge ]
  %2 = ptrtoint ptr %imask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %imask, align 4
  %shl = shl nuw i32 1, %i.045
  %and = and i32 %3, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %land.lhs.true

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  %arrayidx = getelementptr %struct.grgpio_priv, ptr %dev, i32 0, i32 6, i32 %i.045
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %5)
  %cmp11 = icmp sgt i8 %5, -1
  br i1 %cmp11, label %land.lhs.true13, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true13:                                  ; preds = %land.lhs.true
  %conv1043 = zext i8 %5 to i32
  %uirq = getelementptr %struct.grgpio_priv, ptr %dev, i32 0, i32 5, i32 %conv1043, i32 1
  %6 = ptrtoint ptr %uirq to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %uirq, align 1
  %conv16 = zext i8 %7 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv16, i32 %irq)
  %cmp17 = icmp eq i32 %conv16, %irq
  br i1 %cmp17, label %if.then, label %land.lhs.true13.if.end_crit_edge

land.lhs.true13.if.end_crit_edge:                 ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #7
  %irq19 = getelementptr %struct.grgpio_priv, ptr %dev, i32 0, i32 6, i32 %i.045, i32 1
  %8 = ptrtoint ptr %irq19 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %irq19, align 1
  %conv20 = zext i8 %9 to i32
  %call21 = tail call i32 @generic_handle_irq(i32 noundef %conv20) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true13.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %for.body.if.end_crit_edge
  %match.1 = phi i32 [ 1, %if.then ], [ %match.047, %land.lhs.true13.if.end_crit_edge ], [ %match.047, %land.lhs.true.if.end_crit_edge ], [ %match.047, %for.body.if.end_crit_edge ]
  %inc = add nuw nsw i32 %i.045, 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.end, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %if.end
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bgpio_lock, i32 noundef %call5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %match.1)
  %tobool24.not = icmp eq i32 %match.1, 0
  br i1 %tobool24.not, label %for.end.do.end28_crit_edge, label %for.end.if.end30_crit_edge

for.end.if.end30_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end30

for.end.do.end28_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end28

do.end28:                                         ; preds = %for.end.do.end28_crit_edge, %for.end.thread
  %dev29 = getelementptr inbounds %struct.grgpio_priv, ptr %dev, i32 0, i32 2
  %10 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev29, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %11, ptr noundef nonnull @.str.29, i32 noundef %irq) #8
  br label %if.end30

if.end30:                                         ; preds = %do.end28, %for.end.if.end30_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @grgpio_irq_mask(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %bgpio_lock = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 34
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bgpio_lock) #5
  %shl2.i = shl nuw i32 1, %3
  %neg.i = xor i32 %shl2.i, -1
  %imask3.i = getelementptr inbounds %struct.grgpio_priv, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %imask3.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %imask3.i, align 4
  %and.i = and i32 %5, %neg.i
  store i32 %and.i, ptr %imask3.i, align 4
  %write_reg.i = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 25
  %6 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_reg.i, align 4
  %regs.i = getelementptr inbounds %struct.grgpio_priv, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 12
  tail call void %7(ptr noundef %add.ptr.i, i32 noundef %and.i) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bgpio_lock, i32 noundef %call3) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @grgpio_irq_unmask(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %bgpio_lock = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 34
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bgpio_lock) #5
  %shl2.i = shl nuw i32 1, %3
  %imask.i = getelementptr inbounds %struct.grgpio_priv, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %imask.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %imask.i, align 4
  %or.i = or i32 %5, %shl2.i
  store i32 %or.i, ptr %imask.i, align 4
  %write_reg.i = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 25
  %6 = ptrtoint ptr %write_reg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %write_reg.i, align 4
  %regs.i = getelementptr inbounds %struct.grgpio_priv, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 12
  tail call void %7(ptr noundef %add.ptr.i, i32 noundef %or.i) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bgpio_lock, i32 noundef %call3) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @grgpio_irq_set_type(ptr nocapture noundef readonly %d, i32 noundef %type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %shl = shl nuw i32 1, %3
  %4 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %entry.cleanup_crit_edge [
    i32 8, label %entry.do.body4_crit_edge
    i32 4, label %sw.bb1
    i32 2, label %sw.bb2
    i32 1, label %sw.bb3
  ]

entry.do.body4_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body4

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body4

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body4

do.body4:                                         ; preds = %sw.bb3, %sw.bb2, %sw.bb1, %entry.do.body4_crit_edge
  %pol.0 = phi i32 [ %shl, %sw.bb3 ], [ 0, %sw.bb2 ], [ %shl, %sw.bb1 ], [ 0, %entry.do.body4_crit_edge ]
  %edge.0 = phi i32 [ %shl, %sw.bb3 ], [ %shl, %sw.bb2 ], [ 0, %sw.bb1 ], [ 0, %entry.do.body4_crit_edge ]
  %bgpio_lock = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 34
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %bgpio_lock) #5
  %read_reg = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 24
  %5 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %read_reg, align 4
  %regs = getelementptr inbounds %struct.grgpio_priv, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 16
  %call10 = tail call i32 %6(ptr noundef %add.ptr) #5
  %neg = xor i32 %shl, -1
  %and = and i32 %call10, %neg
  %9 = ptrtoint ptr %read_reg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %read_reg, align 4
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs, align 4
  %add.ptr14 = getelementptr i8, ptr %12, i32 20
  %call15 = tail call i32 %10(ptr noundef %add.ptr14) #5
  %and17 = and i32 %call15, %neg
  %write_reg = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 25
  %13 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %write_reg, align 4
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs, align 4
  %add.ptr20 = getelementptr i8, ptr %16, i32 16
  %or = or i32 %and, %pol.0
  tail call void %14(ptr noundef %add.ptr20, i32 noundef %or) #5
  %17 = ptrtoint ptr %write_reg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %write_reg, align 4
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs, align 4
  %add.ptr24 = getelementptr i8, ptr %20, i32 20
  %or25 = or i32 %and17, %edge.0
  tail call void %18(ptr noundef %add.ptr24, i32 noundef %or25) #5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %bgpio_lock, i32 noundef %call6) #5
  br label %cleanup

cleanup:                                          ; preds = %do.body4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.body4 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_remove(ptr noundef) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 37)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !28, !29, !30, !32, !34, !35, !36, !38, !39, !40, !42, !43, !45, !46, !47, !49, !50, !51, !52, !53, !54, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !69, !70, !72}
!llvm.module.flags = !{!74, !75, !76, !77, !78, !79, !80, !81}
!llvm.ident = !{!82}

!0 = !{ptr @__initcall__kmod_gpio_grgpio__229_474_grgpio_driver_init6, !1, !"__initcall__kmod_gpio_grgpio__229_474_grgpio_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpio-grgpio.c", i32 474, i32 1}
!2 = !{ptr @__exitcall_grgpio_driver_exit, !1, !"__exitcall_grgpio_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author230, !4, !"__UNIQUE_ID_author230", i1 false, i1 false}
!4 = !{!"../drivers/gpio/gpio-grgpio.c", i32 476, i32 1}
!5 = !{ptr @__UNIQUE_ID_description231, !6, !"__UNIQUE_ID_description231", i1 false, i1 false}
!6 = !{!"../drivers/gpio/gpio-grgpio.c", i32 477, i32 1}
!7 = !{ptr @__UNIQUE_ID_file232, !8, !"__UNIQUE_ID_file232", i1 false, i1 false}
!8 = !{!"../drivers/gpio/gpio-grgpio.c", i32 478, i32 1}
!9 = !{ptr @__UNIQUE_ID_license233, !8, !"__UNIQUE_ID_license233", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpio/gpio-grgpio.c", i32 468, i32 11}
!12 = !{ptr @grgpio_driver, !13, !"grgpio_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpio/gpio-grgpio.c", i32 466, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpio/gpio-grgpio.c", i32 353, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @grgpio_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @grgpio_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpio/gpio-grgpio.c", i32 363, i32 54}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpio/gpio-grgpio.c", i32 366, i32 33}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpio/gpio-grgpio.c", i32 369, i32 3}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @grgpio_probe.__UNIQUE_ID_ddebug228, !27, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpio/gpio-grgpio.c", i32 379, i32 38}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpio/gpio-grgpio.c", i32 382, i32 4}
!34 = !{ptr @grgpio_probe._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @grgpio_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpio/gpio-grgpio.c", i32 392, i32 4}
!38 = !{ptr @grgpio_probe._entry.14, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @grgpio_probe._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @grgpio_probe.lock_key, !41, !"lock_key", i1 false, i1 false}
!41 = !{!"../drivers/gpio/gpio-grgpio.c", i32 420, i32 8}
!42 = !{ptr @grgpio_probe.request_key, !41, !"request_key", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpio/gpio-grgpio.c", i32 422, i32 3}
!45 = !{ptr @grgpio_probe._entry.17, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @grgpio_probe._entry_ptr.19, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpio/gpio-grgpio.c", i32 428, i32 2}
!49 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @grgpio_probe._entry.20, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @grgpio_probe._entry_ptr.23, !48, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @grgpio_irq_domain_ops, !55, !"grgpio_irq_domain_ops", i1 false, i1 false}
!55 = !{!"../drivers/gpio/gpio-grgpio.c", i32 321, i32 36}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpio/gpio-grgpio.c", i32 247, i32 2}
!58 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @grgpio_irq_map.__UNIQUE_ID_ddebug227, !57, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpio/gpio-grgpio.c", i32 260, i32 4}
!62 = !{ptr @grgpio_irq_map._entry, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @grgpio_irq_map._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.29, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpio/gpio-grgpio.c", i32 221, i32 3}
!66 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @grgpio_irq_handler._entry, !65, !"_entry", i1 false, i1 false}
!69 = !{ptr @grgpio_irq_handler._entry_ptr, !65, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @grgpio_irq_chip, !71, !"grgpio_irq_chip", i1 false, i1 false}
!71 = !{!"../drivers/gpio/gpio-grgpio.c", i32 187, i32 24}
!72 = !{ptr @grgpio_match, !73, !"grgpio_match", i1 false, i1 false}
!73 = !{!"../drivers/gpio/gpio-grgpio.c", i32 458, i32 34}
!74 = !{i32 1, !"wchar_size", i32 2}
!75 = !{i32 1, !"min_enum_size", i32 4}
!76 = !{i32 8, !"branch-target-enforcement", i32 0}
!77 = !{i32 8, !"sign-return-address", i32 0}
!78 = !{i32 8, !"sign-return-address-all", i32 0}
!79 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!80 = !{i32 7, !"uwtable", i32 1}
!81 = !{i32 7, !"frame-pointer", i32 2}
!82 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!83 = !{!"auto-init"}
!84 = !{i64 2148700804, i64 2148700809, i64 2148700822, i64 2148700866, i64 2148700900, i64 2148700921}
!85 = !{!"branch_weights", i32 1, i32 2000}
