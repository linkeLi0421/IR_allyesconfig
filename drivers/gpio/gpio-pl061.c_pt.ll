; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpio-pl061.c_pt.bc'
source_filename = "../drivers/gpio/gpio-pl061.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.amba_driver = type { %struct.device_driver, ptr, ptr, ptr, ptr }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.amba_id = type { i32, i32, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.amba_device = type { %struct.device, %struct.resource, ptr, %struct.device_dma_parameters, i32, i32, %struct.amba_cs_uci_id, [9 x i32], ptr }
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
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.amba_cs_uci_id = type { i32, i32, i32, ptr }
%struct.pl061 = type { %struct.raw_spinlock, ptr, %struct.gpio_chip, %struct.irq_chip, i32, %struct.pl061_context_save_regs }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.84, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.84 = type { ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.pl061_context_save_regs = type { i8, i8, i8, i8, i8, i8 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.callback_head = type { ptr, ptr }

@__initcall__kmod_gpio_pl061__291_424_pl061_gpio_driver_init6 = internal global ptr @pl061_gpio_driver_init, section ".initcall6.init", align 4
@pl061_gpio_driver = internal global { %struct.amba_driver, [36 x i8] } { %struct.amba_driver { %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pl061_dev_pm_ops, ptr null, ptr null }, ptr @pl061_probe, ptr null, ptr null, ptr @pl061_ids }, [36 x i8] zeroinitializer }, align 32
@__exitcall_pl061_gpio_driver_exit = internal global ptr @pl061_gpio_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file292 = internal constant [40 x i8] c"gpio_pl061.file=drivers/gpio/gpio-pl061\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [26 x i8] c"gpio_pl061.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pl061_gpio\00", [21 x i8] zeroinitializer }, align 32
@pl061_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @pl061_suspend, ptr @pl061_resume, ptr @pl061_suspend, ptr null, ptr null, ptr @pl061_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@pl061_ids = internal constant { [2 x %struct.amba_id], [40 x i8] } { [2 x %struct.amba_id] [%struct.amba_id { i32 266337, i32 1048575, ptr null }, %struct.amba_id zeroinitializer], [40 x i8] zeroinitializer }, align 32
@pl061_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&pl061->lock\00", [19 x i8] zeroinitializer }, align 32
@pl061_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 328, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"IRQ support disabled\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pl061_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/gpio/gpio-pl061.c\00", [38 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@pl061_probe._entry_ptr = internal global ptr @pl061_probe._entry, section ".printk_index", align 4
@pl061_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@pl061_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@pl061_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str.4, i32 348, ptr @.str.9, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"PL061 GPIO chip registered\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@pl061_probe._entry_ptr.10 = internal global ptr @pl061_probe._entry.7, section ".printk_index", align 4
@pl061_irq_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.4, i32 143, ptr @.str.13, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"trying to configure line %d for both level and edge detection, choose one!\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pl061_irq_type\00", [17 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@pl061_irq_type._entry_ptr = internal global ptr @pl061_irq_type._entry, section ".printk_index", align 4
@pl061_irq_type.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.12, ptr @.str.4, ptr @.str.15, i8 0, i8 42, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gpio_pl061\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"line %d: IRQ on %s level\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"HIGH\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"LOW\00", [28 x i8] zeroinitializer }, align 32
@pl061_irq_type.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.12, ptr @.str.4, ptr @.str.18, i8 0, i8 44, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"line %d: IRQ on both edges\0A\00", [36 x i8] zeroinitializer }, align 32
@pl061_irq_type.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.14, ptr @.str.12, ptr @.str.4, ptr @.str.19, i8 0, i8 48, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"line %d: IRQ on %s edge\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"RISING\00", [25 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"FALLING\00", [24 x i8] zeroinitializer }, align 32
@pl061_irq_type._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.12, ptr @.str.4, i32 201, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"no trigger selected for line %d\0A\00", [63 x i8] zeroinitializer }, align 32
@pl061_irq_type._entry_ptr.24 = internal global ptr @pl061_irq_type._entry.22, section ".printk_index", align 4
@___asan_gen_.25 = private unnamed_addr constant [18 x i8] c"pl061_gpio_driver\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 414, i32 27 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 416, i32 11 }
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"pl061_dev_pm_ops\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 397, i32 32 }
@___asan_gen_.34 = private unnamed_addr constant [10 x i8] c"pl061_ids\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 405, i32 29 }
@___asan_gen_.37 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 301, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 328, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 343, i32 8 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 348, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 140, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 167, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 176, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 191, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.115 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.116 = private constant [29 x i8] c"../drivers/gpio/gpio-pl061.c\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 200, i32 3 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_pl061_gpio_driver_exit, ptr @__initcall__kmod_gpio_pl061__291_424_pl061_gpio_driver_init6, ptr @pl061_gpio_driver_exit, ptr @pl061_irq_type._entry, ptr @pl061_irq_type._entry.22, ptr @pl061_irq_type._entry_ptr, ptr @pl061_irq_type._entry_ptr.24, ptr @pl061_probe._entry, ptr @pl061_probe._entry.7, ptr @pl061_probe._entry_ptr, ptr @pl061_probe._entry_ptr.10, ptr @pl061_gpio_driver, ptr @.str, ptr @pl061_dev_pm_ops, ptr @pl061_ids, ptr @pl061_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @pl061_probe.lock_key, ptr @pl061_probe.request_key, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl061_gpio_driver to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl061_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl061_ids to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl061_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl061_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl061_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl061_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl061_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl061_irq_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pl061_irq_type._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pl061_gpio_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @amba_driver_register(ptr noundef nonnull @pl061_gpio_driver) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pl061_gpio_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @amba_driver_unregister(ptr noundef nonnull @pl061_gpio_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @amba_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @amba_driver_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl061_probe(ptr noundef %adev, ptr nocapture noundef readnone %id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %adev, i32 noundef 544, i32 noundef 3520) #5
  %cmp = icmp eq ptr %call.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %res = getelementptr inbounds %struct.amba_device, ptr %adev, i32 0, i32 1
  %call2 = tail call ptr @devm_ioremap_resource(ptr noundef %adev, ptr noundef %res) #5
  %base = getelementptr inbounds %struct.pl061, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %do.body

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %1 = ptrtoint ptr %call2 to i32
  br label %cleanup

do.body:                                          ; preds = %if.end
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @pl061_probe.__key, i16 noundef signext 2) #5
  %gc = getelementptr inbounds %struct.pl061, ptr %call.i, i32 0, i32 2
  %request = getelementptr inbounds %struct.pl061, ptr %call.i, i32 0, i32 2, i32 5
  %2 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @gpiochip_generic_request, ptr %request, align 4
  %free = getelementptr inbounds %struct.pl061, ptr %call.i, i32 0, i32 2, i32 6
  %3 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @gpiochip_generic_free, ptr %free, align 4
  %base11 = getelementptr inbounds %struct.pl061, ptr %call.i, i32 0, i32 2, i32 19
  %4 = ptrtoint ptr %base11 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %base11, align 4
  %get_direction = getelementptr inbounds %struct.pl061, ptr %call.i, i32 0, i32 2, i32 7
  %5 = ptrtoint ptr %get_direction to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @pl061_get_direction, ptr %get_direction, align 4
  %direction_input = getelementptr inbounds %struct.pl061, ptr %call.i, i32 0, i32 2, i32 8
  %6 = ptrtoint ptr %direction_input to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @pl061_direction_input, ptr %direction_input, align 4
  %direction_output = getelementptr inbounds %struct.pl061, ptr %call.i, i32 0, i32 2, i32 9
  %7 = ptrtoint ptr %direction_output to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @pl061_direction_output, ptr %direction_output, align 4
  %get = getelementptr inbounds %struct.pl061, ptr %call.i, i32 0, i32 2, i32 10
  %8 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @pl061_get_value, ptr %get, align 4
  %set = getelementptr inbounds %struct.pl061, ptr %call.i, i32 0, i32 2, i32 12
  %9 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @pl061_set_value, ptr %set, align 4
  %ngpio = getelementptr inbounds %struct.pl061, ptr %call.i, i32 0, i32 2, i32 20
  %10 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 8, ptr %ngpio, align 4
  %init_name.i = getelementptr inbounds %struct.device, ptr %adev, i32 0, i32 3
  %11 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.end.i114, label %do.body.dev_name.exit116_crit_edge

do.body.dev_name.exit116_crit_edge:               ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit116

if.end.i114:                                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %adev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adev, align 4
  br label %dev_name.exit116

dev_name.exit116:                                 ; preds = %if.end.i114, %do.body.dev_name.exit116_crit_edge
  %storemerge = phi ptr [ %14, %if.end.i114 ], [ %12, %do.body.dev_name.exit116_crit_edge ]
  %15 = ptrtoint ptr %gc to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %storemerge, ptr %gc, align 4
  %16 = getelementptr inbounds %struct.pl061, ptr %call.i, i32 0, i32 2, i32 2
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %adev, ptr %16, align 4
  %18 = getelementptr inbounds %struct.pl061, ptr %call.i, i32 0, i32 2, i32 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %18, align 4
  %irq_chip = getelementptr inbounds %struct.pl061, ptr %call.i, i32 0, i32 3
  %name = getelementptr inbounds %struct.pl061, ptr %call.i, i32 0, i32 3, i32 1
  %20 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %storemerge, ptr %name, align 4
  %irq_ack = getelementptr inbounds %struct.pl061, ptr %call.i, i32 0, i32 3, i32 6
  %21 = ptrtoint ptr %irq_ack to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @pl061_irq_ack, ptr %irq_ack, align 4
  %irq_mask = getelementptr inbounds %struct.pl061, ptr %call.i, i32 0, i32 3, i32 7
  %22 = ptrtoint ptr %irq_mask to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @pl061_irq_mask, ptr %irq_mask, align 4
  %irq_unmask = getelementptr inbounds %struct.pl061, ptr %call.i, i32 0, i32 3, i32 9
  %23 = ptrtoint ptr %irq_unmask to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @pl061_irq_unmask, ptr %irq_unmask, align 4
  %irq_set_type = getelementptr inbounds %struct.pl061, ptr %call.i, i32 0, i32 3, i32 13
  %24 = ptrtoint ptr %irq_set_type to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @pl061_irq_type, ptr %irq_set_type, align 4
  %irq_set_wake = getelementptr inbounds %struct.pl061, ptr %call.i, i32 0, i32 3, i32 14
  %25 = ptrtoint ptr %irq_set_wake to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @pl061_irq_set_wake, ptr %irq_set_wake, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !66
  tail call void @arm_heavy_mb() #5
  %26 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %27, i32 1040
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 0) #5, !srcloc !67
  %irq32 = getelementptr inbounds %struct.amba_device, ptr %adev, i32 0, i32 7
  %28 = ptrtoint ptr %irq32 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irq32, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.not = icmp eq i32 %29, 0
  br i1 %tobool.not, label %do.end36, label %dev_name.exit116.if.end38_crit_edge

dev_name.exit116.if.end38_crit_edge:              ; preds = %dev_name.exit116
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

do.end36:                                         ; preds = %dev_name.exit116
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %adev, ptr noundef nonnull @.str.2) #8
  br label %if.end38

if.end38:                                         ; preds = %do.end36, %dev_name.exit116.if.end38_crit_edge
  %parent_irq = getelementptr inbounds %struct.pl061, ptr %call.i, i32 0, i32 4
  %30 = ptrtoint ptr %parent_irq to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %parent_irq, align 4
  %irq40 = getelementptr inbounds %struct.pl061, ptr %call.i, i32 0, i32 2, i32 37
  %31 = ptrtoint ptr %irq40 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %irq_chip, ptr %irq40, align 4
  %parent_handler = getelementptr inbounds %struct.pl061, ptr %call.i, i32 0, i32 2, i32 37, i32 13
  %32 = ptrtoint ptr %parent_handler to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @pl061_irq_handler, ptr %parent_handler, align 4
  %num_parents = getelementptr inbounds %struct.pl061, ptr %call.i, i32 0, i32 2, i32 37, i32 15
  %33 = ptrtoint ptr %num_parents to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %num_parents, align 4
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %adev, i32 noundef 4, i32 noundef 3520) #5
  %parents = getelementptr inbounds %struct.pl061, ptr %call.i, i32 0, i32 2, i32 37, i32 16
  %34 = ptrtoint ptr %parents to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call5.i.i, ptr %parents, align 4
  %tobool44.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool44.not, label %if.end38.cleanup_crit_edge, label %if.end46

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end46:                                         ; preds = %if.end38
  %35 = ptrtoint ptr %call5.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %29, ptr %call5.i.i, align 4
  %default_type = getelementptr inbounds %struct.pl061, ptr %call.i, i32 0, i32 2, i32 37, i32 10
  %36 = ptrtoint ptr %default_type to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %default_type, align 4
  %handler = getelementptr inbounds %struct.pl061, ptr %call.i, i32 0, i32 2, i32 37, i32 9
  %37 = ptrtoint ptr %handler to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @handle_bad_irq, ptr %handler, align 4
  %call50 = tail call i32 @devm_gpiochip_add_data_with_key(ptr noundef %adev, ptr noundef %gc, ptr noundef nonnull %call.i, ptr noundef nonnull @pl061_probe.lock_key, ptr noundef nonnull @pl061_probe.request_key) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %if.end46.cleanup_crit_edge

if.end46.cleanup_crit_edge:                       ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end53:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i = getelementptr inbounds %struct.device, ptr %adev, i32 0, i32 8
  %38 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call.i, ptr %driver_data.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %adev, ptr noundef nonnull @.str.8) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %if.end46.cleanup_crit_edge, %if.end38.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then5 ], [ 0, %if.end53 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end38.cleanup_crit_edge ], [ %call50, %if.end46.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl061_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %csave_regs = getelementptr inbounds %struct.pl061, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %csave_regs to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %csave_regs, align 4
  %base = getelementptr inbounds %struct.pl061, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 1024
  %5 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #5, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !69
  %gpio_dir = getelementptr inbounds %struct.pl061, ptr %1, i32 0, i32 5, i32 1
  %6 = ptrtoint ptr %gpio_dir to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %gpio_dir, align 1
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 4
  %add.ptr7 = getelementptr i8, ptr %8, i32 1028
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr7) #5, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !70
  %gpio_is = getelementptr inbounds %struct.pl061, ptr %1, i32 0, i32 5, i32 2
  %10 = ptrtoint ptr %gpio_is to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %gpio_is, align 2
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base, align 4
  %add.ptr15 = getelementptr i8, ptr %12, i32 1032
  %13 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr15) #5, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !71
  %gpio_ibe = getelementptr inbounds %struct.pl061, ptr %1, i32 0, i32 5, i32 3
  %14 = ptrtoint ptr %gpio_ibe to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %gpio_ibe, align 1
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base, align 4
  %add.ptr23 = getelementptr i8, ptr %16, i32 1036
  %17 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr23) #5, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !72
  %gpio_iev = getelementptr inbounds %struct.pl061, ptr %1, i32 0, i32 5, i32 4
  %18 = ptrtoint ptr %gpio_iev to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %gpio_iev, align 4
  %19 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base, align 4
  %add.ptr31 = getelementptr i8, ptr %20, i32 1040
  %21 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr31) #5, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !73
  %gpio_ie = getelementptr inbounds %struct.pl061, ptr %1, i32 0, i32 5, i32 5
  %22 = ptrtoint ptr %gpio_ie to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %21, ptr %gpio_ie, align 1
  %gc = getelementptr inbounds %struct.pl061, ptr %1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %offset.061 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %23 = ptrtoint ptr %gpio_dir to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %gpio_dir, align 1
  %conv = zext i8 %24 to i32
  %shl = shl nuw nsw i32 1, %offset.061
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %gc) #5
  %base.i = getelementptr inbounds %struct.pl061, ptr %call.i, i32 0, i32 1
  %25 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i, align 4
  %shl.i = shl i32 4, %offset.061
  %add.ptr.i = getelementptr i8, ptr %26, i32 %shl.i
  %27 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i) #5, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.i = icmp ne i8 %27, 0
  %lnot.ext.i = zext i1 %tobool.i to i32
  %shl39 = shl nuw nsw i32 %lnot.ext.i, %offset.061
  %28 = ptrtoint ptr %csave_regs to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %csave_regs, align 4
  %30 = trunc i32 %shl39 to i8
  %conv43 = or i8 %29, %30
  store i8 %conv43, ptr %csave_regs, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %offset.061, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl061_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %gpio_dir = getelementptr inbounds %struct.pl061, ptr %1, i32 0, i32 5, i32 1
  %csave_regs = getelementptr inbounds %struct.pl061, ptr %1, i32 0, i32 5
  %gc = getelementptr inbounds %struct.pl061, ptr %1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %offset.049 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %gpio_dir to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %gpio_dir, align 1
  %conv = zext i8 %3 to i32
  %shl = shl nuw nsw i32 1, %offset.049
  %and = and i32 %shl, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %csave_regs to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %csave_regs, align 4
  %conv2 = zext i8 %5 to i32
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %gc) #5
  %call1.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %call.i) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !75
  tail call void @arm_heavy_mb() #5
  %6 = lshr i32 %conv2, %offset.049
  %7 = and i32 %6, 1
  %shl.i = shl nuw nsw i32 %7, %offset.049
  %conv6.i = trunc i32 %shl.i to i8
  %base.i = getelementptr inbounds %struct.pl061, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %shl7.i = shl i32 4, %offset.049
  %add.ptr.i = getelementptr i8, ptr %9, i32 %shl7.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %conv6.i) #5, !srcloc !67
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %11, i32 1024
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr9.i) #5, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !76
  %13 = trunc i32 %shl to i8
  %conv15.i = or i8 %12, %13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !77
  tail call void @arm_heavy_mb() #5
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %add.ptr20.i = getelementptr i8, ptr %15, i32 1024
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr20.i, i8 %conv15.i) #5, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  tail call void @arm_heavy_mb() #5
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  %add.ptr34.i = getelementptr i8, ptr %17, i32 %shl7.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr34.i, i8 %conv6.i) #5, !srcloc !67
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %call.i, i32 noundef %call1.i) #5
  br label %for.inc

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %call.i43 = tail call ptr @gpiochip_get_data(ptr noundef %gc) #5
  %call1.i44 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %call.i43) #5
  %base.i45 = getelementptr inbounds %struct.pl061, ptr %call.i43, i32 0, i32 1
  %18 = ptrtoint ptr %base.i45 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i45, align 4
  %add.ptr.i46 = getelementptr i8, ptr %19, i32 1024
  %20 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr.i46) #5, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  %21 = trunc i32 %shl to i8
  %22 = xor i8 %21, -1
  %conv6.i48 = and i8 %20, %22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !80
  tail call void @arm_heavy_mb() #5
  %23 = ptrtoint ptr %base.i45 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i45, align 4
  %add.ptr11.i = getelementptr i8, ptr %24, i32 1024
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr11.i, i8 %conv6.i48) #5, !srcloc !67
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %call.i43, i32 noundef %call1.i44) #5
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then
  %inc = add nuw nsw i32 %offset.049, 1
  %exitcond.not = icmp eq i32 %inc, 8
  br i1 %exitcond.not, label %do.body, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

do.body:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !81
  tail call void @arm_heavy_mb() #5
  %gpio_is = getelementptr inbounds %struct.pl061, ptr %1, i32 0, i32 5, i32 2
  %25 = ptrtoint ptr %gpio_is to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %gpio_is, align 2
  %base = getelementptr inbounds %struct.pl061, ptr %1, i32 0, i32 1
  %27 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %28, i32 1028
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %26) #5, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !82
  tail call void @arm_heavy_mb() #5
  %gpio_ibe = getelementptr inbounds %struct.pl061, ptr %1, i32 0, i32 5, i32 3
  %29 = ptrtoint ptr %gpio_ibe to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %gpio_ibe, align 1
  %31 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base, align 4
  %add.ptr14 = getelementptr i8, ptr %32, i32 1032
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr14, i8 %30) #5, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !83
  tail call void @arm_heavy_mb() #5
  %gpio_iev = getelementptr inbounds %struct.pl061, ptr %1, i32 0, i32 5, i32 4
  %33 = ptrtoint ptr %gpio_iev to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %gpio_iev, align 4
  %35 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base, align 4
  %add.ptr20 = getelementptr i8, ptr %36, i32 1036
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr20, i8 %34) #5, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !84
  tail call void @arm_heavy_mb() #5
  %gpio_ie = getelementptr inbounds %struct.pl061, ptr %1, i32 0, i32 5, i32 5
  %37 = ptrtoint ptr %gpio_ie to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %gpio_ie, align 1
  %39 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base, align 4
  %add.ptr26 = getelementptr i8, ptr %40, i32 1040
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr26, i8 %38) #5, !srcloc !67
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl061_get_value(ptr noundef %gc, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #5
  %base = getelementptr inbounds %struct.pl061, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add = add i32 %offset, 2
  %shl = shl nuw i32 1, %add
  %add.ptr = getelementptr i8, ptr %1, i32 %shl
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #5, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !74
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool = icmp ne i8 %2, 0
  %lnot.ext = zext i1 %tobool to i32
  ret i32 %lnot.ext
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl061_direction_output(ptr noundef %gc, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #5
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %call) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !75
  tail call void @arm_heavy_mb() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool = icmp ne i32 %value, 0
  %lnot.ext = zext i1 %tobool to i32
  %shl = shl nuw i32 %lnot.ext, %offset
  %conv6 = trunc i32 %shl to i8
  %base = getelementptr inbounds %struct.pl061, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add = add i32 %offset, 2
  %shl7 = shl nuw i32 1, %add
  %add.ptr = getelementptr i8, ptr %1, i32 %shl7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv6) #5, !srcloc !67
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr9 = getelementptr i8, ptr %3, i32 1024
  %4 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr9) #5, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !76
  %shl13 = shl nuw i32 1, %offset
  %5 = trunc i32 %shl13 to i8
  %conv15 = or i8 %4, %5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !77
  tail call void @arm_heavy_mb() #5
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr20 = getelementptr i8, ptr %7, i32 1024
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr20, i8 %conv15) #5, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !78
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr34 = getelementptr i8, ptr %9, i32 %shl7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr34, i8 %conv6) #5, !srcloc !67
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %call, i32 noundef %call1) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl061_direction_input(ptr noundef %gc, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #5
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %call) #5
  %base = getelementptr inbounds %struct.pl061, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 1024
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #5, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !79
  %shl = shl nuw i32 1, %offset
  %3 = trunc i32 %shl to i8
  %4 = xor i8 %3, -1
  %conv6 = and i8 %2, %4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !80
  tail call void @arm_heavy_mb() #5
  %5 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base, align 4
  %add.ptr11 = getelementptr i8, ptr %6, i32 1024
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr11, i8 %conv6) #5, !srcloc !67
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %call, i32 noundef %call1) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_generic_request(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_generic_free(ptr noundef, i32 noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl061_get_direction(ptr noundef %gc, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #5
  %base = getelementptr inbounds %struct.pl061, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 1024
  %2 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #5, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !85
  %conv = zext i8 %2 to i32
  %3 = xor i32 %conv, -1
  %4 = lshr i32 %3, %offset
  %5 = and i32 %4, 1
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pl061_set_value(ptr noundef %gc, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !86
  tail call void @arm_heavy_mb() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool = icmp ne i32 %value, 0
  %lnot.ext = zext i1 %tobool to i32
  %shl = shl nuw i32 %lnot.ext, %offset
  %conv = trunc i32 %shl to i8
  %base = getelementptr inbounds %struct.pl061, ptr %call, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add = add i32 %offset, 2
  %shl2 = shl nuw i32 1, %add
  %add.ptr = getelementptr i8, ptr %1, i32 %shl2
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv) #5, !srcloc !67
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pl061_irq_ack(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #5
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %rem = and i32 %3, 7
  %shl = shl nuw nsw i32 1, %rem
  %conv = trunc i32 %shl to i8
  tail call void @_raw_spin_lock(ptr noundef %call1) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !87
  tail call void @arm_heavy_mb() #5
  %base = getelementptr inbounds %struct.pl061, ptr %call1, i32 0, i32 1
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 1052
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv) #5, !srcloc !67
  tail call void @_raw_spin_unlock(ptr noundef %call1) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pl061_irq_mask(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #5
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %rem = and i32 %3, 7
  %shl = shl nuw nsw i32 1, %rem
  tail call void @_raw_spin_lock(ptr noundef %call1) #5
  %base = getelementptr inbounds %struct.pl061, ptr %call1, i32 0, i32 1
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 1040
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #5, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !88
  %7 = trunc i32 %shl to i8
  %8 = xor i8 %7, -1
  %conv7 = and i8 %6, %8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !89
  tail call void @arm_heavy_mb() #5
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base, align 4
  %add.ptr9 = getelementptr i8, ptr %10, i32 1040
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr9, i8 %conv7) #5, !srcloc !67
  tail call void @_raw_spin_unlock(ptr noundef %call1) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pl061_irq_unmask(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #5
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %rem = and i32 %3, 7
  %shl = shl nuw nsw i32 1, %rem
  tail call void @_raw_spin_lock(ptr noundef %call1) #5
  %base = getelementptr inbounds %struct.pl061, ptr %call1, i32 0, i32 1
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 1040
  %6 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #5, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !90
  %7 = trunc i32 %shl to i8
  %conv7 = or i8 %6, %7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !91
  tail call void @arm_heavy_mb() #5
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr9 = getelementptr i8, ptr %9, i32 1040
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr9, i8 %conv7) #5, !srcloc !67
  tail call void @_raw_spin_unlock(ptr noundef %call1) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl061_irq_type(ptr nocapture noundef readonly %d, i32 noundef %trigger) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #5
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %shl = shl nuw i32 1, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %3)
  %4 = icmp ugt i32 %3, 7
  br i1 %4, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %trigger, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and6 = and i32 %trigger, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  %or.cond272 = or i1 %tobool.not, %tobool7.not
  br i1 %or.cond272, label %do.body10, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %parent, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.11, i32 noundef %3) #8
  br label %cleanup

do.body10:                                        ; preds = %if.end
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %call1) #5
  %base = getelementptr inbounds %struct.pl061, ptr %call1, i32 0, i32 1
  %7 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 1036
  %9 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #5, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !92
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %add.ptr22 = getelementptr i8, ptr %11, i32 1028
  %12 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr22) #5, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !93
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 4
  %add.ptr29 = getelementptr i8, ptr %14, i32 1032
  %15 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr29) #5, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !94
  br i1 %tobool.not, label %if.else72, label %if.then35

if.then35:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #7
  %and36 = and i32 %trigger, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  %16 = trunc i32 %shl to i8
  %17 = xor i8 %16, -1
  %conv41 = and i8 %15, %17
  %conv44 = or i8 %12, %16
  %conv50 = or i8 %9, %16
  %conv55 = and i8 %9, %17
  %gpioiev.0 = select i1 %tobool37.not, i8 %conv55, i8 %conv50
  %common.i.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 3
  %18 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %common.i.i, align 4
  %handle_irq.i = getelementptr inbounds %struct.irq_desc, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %handle_irq.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @handle_level_irq, ptr %handle_irq.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl061_irq_type.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pl061_irq_type, %do.body183)) #5
          to label %if.then65 [label %do.body183], !srcloc !95

if.then65:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #7
  %parent66 = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 2
  %21 = ptrtoint ptr %parent66 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %parent66, align 4
  %cond = select i1 %tobool37.not, ptr @.str.17, ptr @.str.16
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl061_irq_type.__UNIQUE_ID_ddebug288, ptr noundef %22, ptr noundef nonnull @.str.15, i32 noundef %3, ptr noundef nonnull %cond) #5
  br label %do.body183

if.else72:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and6)
  %cmp74 = icmp eq i32 %and6, 3
  br i1 %cmp74, label %if.then76, label %if.else105

if.then76:                                        ; preds = %if.else72
  call void @__sanitizer_cov_trace_pc() #7
  %23 = trunc i32 %shl to i8
  %24 = xor i8 %23, -1
  %conv81 = and i8 %12, %24
  %conv85 = or i8 %15, %23
  %common.i.i280 = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 3
  %25 = ptrtoint ptr %common.i.i280 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %common.i.i280, align 4
  %handle_irq.i281 = getelementptr inbounds %struct.irq_desc, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %handle_irq.i281 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @handle_edge_irq, ptr %handle_irq.i281, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl061_irq_type.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pl061_irq_type, %do.body183)) #5
          to label %if.then100 [label %do.body183], !srcloc !95

if.then100:                                       ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #7
  %parent101 = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 2
  %28 = ptrtoint ptr %parent101 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %parent101, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl061_irq_type.__UNIQUE_ID_ddebug289, ptr noundef %29, ptr noundef nonnull @.str.18, i32 noundef %3) #5
  br label %do.body183

if.else105:                                       ; preds = %if.else72
  %and106 = and i32 %trigger, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and106)
  %tobool107.not = icmp eq i32 %and106, 0
  %30 = trunc i32 %shl to i8
  %31 = xor i8 %30, -1
  %conv165 = and i8 %12, %31
  %conv170 = and i8 %15, %31
  br i1 %tobool7.not, label %if.else160, label %if.then111

if.then111:                                       ; preds = %if.else105
  call void @__sanitizer_cov_trace_pc() #7
  %conv130 = or i8 %9, %30
  %conv136 = and i8 %9, %31
  %gpioiev.1 = select i1 %tobool107.not, i8 %conv136, i8 %conv130
  %common.i.i282 = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 3
  %32 = ptrtoint ptr %common.i.i282 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %common.i.i282, align 4
  %handle_irq.i283 = getelementptr inbounds %struct.irq_desc, ptr %33, i32 0, i32 3
  %34 = ptrtoint ptr %handle_irq.i283 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @handle_edge_irq, ptr %handle_irq.i283, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @pl061_irq_type.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@pl061_irq_type, %do.body183)) #5
          to label %if.then152 [label %do.body183], !srcloc !95

if.then152:                                       ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #7
  %parent153 = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 2
  %35 = ptrtoint ptr %parent153 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %parent153, align 4
  %cond156 = select i1 %tobool107.not, ptr @.str.21, ptr @.str.20
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @pl061_irq_type.__UNIQUE_ID_ddebug290, ptr noundef %36, ptr noundef nonnull @.str.19, i32 noundef %3, ptr noundef nonnull %cond156) #5
  br label %do.body183

if.else160:                                       ; preds = %if.else105
  call void @__sanitizer_cov_trace_pc() #7
  %conv175 = and i8 %9, %31
  %common.i.i284 = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 3
  %37 = ptrtoint ptr %common.i.i284 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %common.i.i284, align 4
  %handle_irq.i285 = getelementptr inbounds %struct.irq_desc, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %handle_irq.i285 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @handle_bad_irq, ptr %handle_irq.i285, align 4
  %parent179 = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 2
  %40 = ptrtoint ptr %parent179 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %parent179, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %41, ptr noundef nonnull @.str.23, i32 noundef %3) #8
  br label %do.body183

do.body183:                                       ; preds = %if.else160, %if.then152, %if.then111, %if.then100, %if.then76, %if.then65, %if.then35
  %gpioiev.2 = phi i8 [ %9, %if.then100 ], [ %conv175, %if.else160 ], [ %gpioiev.0, %if.then65 ], [ %gpioiev.1, %if.then152 ], [ %gpioiev.0, %if.then35 ], [ %9, %if.then76 ], [ %gpioiev.1, %if.then111 ]
  %gpioibe.0 = phi i8 [ %conv85, %if.then100 ], [ %conv170, %if.else160 ], [ %conv41, %if.then65 ], [ %conv170, %if.then152 ], [ %conv41, %if.then35 ], [ %conv85, %if.then76 ], [ %conv170, %if.then111 ]
  %gpiois.0 = phi i8 [ %conv81, %if.then100 ], [ %conv165, %if.else160 ], [ %conv44, %if.then65 ], [ %conv165, %if.then152 ], [ %conv44, %if.then35 ], [ %conv81, %if.then76 ], [ %conv165, %if.then111 ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !96
  tail call void @arm_heavy_mb() #5
  %42 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base, align 4
  %add.ptr187 = getelementptr i8, ptr %43, i32 1028
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr187, i8 %gpiois.0) #5, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !97
  tail call void @arm_heavy_mb() #5
  %44 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %base, align 4
  %add.ptr192 = getelementptr i8, ptr %45, i32 1032
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr192, i8 %gpioibe.0) #5, !srcloc !67
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !98
  tail call void @arm_heavy_mb() #5
  %46 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base, align 4
  %add.ptr197 = getelementptr i8, ptr %47, i32 1036
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr197, i8 %gpioiev.2) #5, !srcloc !67
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %call1, i32 noundef %call13) #5
  br label %cleanup

cleanup:                                          ; preds = %do.body183, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %do.body183 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pl061_irq_set_wake(ptr nocapture noundef readonly %d, i32 noundef %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #5
  %parent_irq = getelementptr inbounds %struct.pl061, ptr %call1, i32 0, i32 4
  %2 = ptrtoint ptr %parent_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %parent_irq, align 4
  %call2 = tail call i32 @irq_set_irq_wake(i32 noundef %3, i32 noundef %state) #5
  ret i32 %call2
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pl061_irq_handler(ptr noundef %desc) #2 align 64 {
entry:
  %pending = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pending) #5
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #5
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip.i, align 8
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 10
  %4 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.chained_irq_enter.exit_crit_edge

entry.chained_irq_enter.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %entry
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %irq_mask_ack.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_mask_ack.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %7(ptr noundef %irq_data.i) #5
  br label %chained_irq_enter.exit

if.else.i:                                        ; preds = %if.end.i
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_mask.i, align 4
  %irq_data4.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %9(ptr noundef %irq_data4.i) #5
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irq_ack.i, align 4
  %tobool5.not.i = icmp eq ptr %11, null
  br i1 %tobool5.not.i, label %if.else.i.chained_irq_enter.exit_crit_edge, label %if.then6.i

if.else.i.chained_irq_enter.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %chained_irq_enter.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void %11(ptr noundef %irq_data4.i) #5
  br label %chained_irq_enter.exit

chained_irq_enter.exit:                           ; preds = %if.then6.i, %if.else.i.chained_irq_enter.exit_crit_edge, %if.then2.i, %entry.chained_irq_enter.exit_crit_edge
  %base = getelementptr inbounds %struct.pl061, ptr %call1, i32 0, i32 1
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 1048
  %14 = tail call i8 asm sideeffect "ldrb $0, $1", "=r,*Qo"(ptr elementtype(i8) %add.ptr) #5, !srcloc !68
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !99
  %conv = zext i8 %14 to i32
  %15 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv, ptr %pending, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not = icmp eq i8 %14, 0
  br i1 %tobool.not, label %chained_irq_enter.exit.if.end_crit_edge, label %if.then

chained_irq_enter.exit.if.end_crit_edge:          ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %chained_irq_enter.exit
  %call5 = call i32 @_find_next_bit_be(ptr noundef nonnull %pending, i32 noundef 8, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call5)
  %cmp20 = icmp slt i32 %call5, 8
  br i1 %cmp20, label %for.body.lr.ph, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

for.body.lr.ph:                                   ; preds = %if.then
  %domain = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 37, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %offset.021 = phi i32 [ %call5, %for.body.lr.ph ], [ %call8, %for.body.for.body_crit_edge ]
  %16 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %domain, align 4
  %call7 = call i32 @generic_handle_domain_irq(ptr noundef %17, i32 noundef %offset.021) #5
  %add = add nsw i32 %offset.021, 1
  %call8 = call i32 @_find_next_bit_be(ptr noundef nonnull %pending, i32 noundef 8, i32 noundef %add) #5
  %cmp = icmp slt i32 %call8, 8
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

if.end:                                           ; preds = %for.body.if.end_crit_edge, %if.then.if.end_crit_edge, %chained_irq_enter.exit.if.end_crit_edge
  %18 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i17 = icmp eq ptr %19, null
  br i1 %tobool.not.i17, label %if.else.i18, label %if.end.chained_irq_exit.exit_crit_edge

if.end.chained_irq_exit.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %chained_irq_exit.exit

if.else.i18:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 9
  %20 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i18, %if.end.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %21, %if.else.i18 ], [ %19, %if.end.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  call void %.sink.i(ptr noundef %irq_data2.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pending) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_bad_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

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

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !28, !29, !30, !31, !33, !34, !35, !36, !37, !39, !40, !41, !42, !43, !45, !46, !48, !49, !50, !51, !53, !54, !55}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !{ptr @__initcall__kmod_gpio_pl061__291_424_pl061_gpio_driver_init6, !1, !"__initcall__kmod_gpio_pl061__291_424_pl061_gpio_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpio-pl061.c", i32 424, i32 1}
!2 = !{ptr @__exitcall_pl061_gpio_driver_exit, !1, !"__exitcall_pl061_gpio_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file292, !4, !"__UNIQUE_ID_file292", i1 false, i1 false}
!4 = !{!"../drivers/gpio/gpio-pl061.c", i32 426, i32 1}
!5 = !{ptr @__UNIQUE_ID_license293, !4, !"__UNIQUE_ID_license293", i1 false, i1 false}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpio/gpio-pl061.c", i32 416, i32 11}
!8 = !{ptr @pl061_gpio_driver, !9, !"pl061_gpio_driver", i1 false, i1 false}
!9 = !{!"../drivers/gpio/gpio-pl061.c", i32 414, i32 27}
!10 = !{ptr @pl061_dev_pm_ops, !11, !"pl061_dev_pm_ops", i1 false, i1 false}
!11 = !{!"../drivers/gpio/gpio-pl061.c", i32 397, i32 32}
!12 = !{ptr @pl061_probe.__key, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/gpio/gpio-pl061.c", i32 301, i32 2}
!14 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpio/gpio-pl061.c", i32 328, i32 3}
!17 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @pl061_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @pl061_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @pl061_probe.lock_key, !24, !"lock_key", i1 false, i1 false}
!24 = !{!"../drivers/gpio/gpio-pl061.c", i32 343, i32 8}
!25 = !{ptr @pl061_probe.request_key, !24, !"request_key", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpio/gpio-pl061.c", i32 348, i32 2}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @pl061_probe._entry.7, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @pl061_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpio/gpio-pl061.c", i32 140, i32 3}
!33 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @pl061_irq_type._entry, !32, !"_entry", i1 false, i1 false}
!36 = !{ptr @pl061_irq_type._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpio/gpio-pl061.c", i32 167, i32 3}
!39 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @pl061_irq_type.__UNIQUE_ID_ddebug288, !38, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!41 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpio/gpio-pl061.c", i32 176, i32 3}
!45 = !{ptr @pl061_irq_type.__UNIQUE_ID_ddebug289, !44, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpio/gpio-pl061.c", i32 191, i32 3}
!48 = !{ptr @pl061_irq_type.__UNIQUE_ID_ddebug290, !47, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!49 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpio/gpio-pl061.c", i32 200, i32 3}
!53 = !{ptr @pl061_irq_type._entry.22, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @pl061_irq_type._entry_ptr.24, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @pl061_ids, !56, !"pl061_ids", i1 false, i1 false}
!56 = !{!"../drivers/gpio/gpio-pl061.c", i32 405, i32 29}
!57 = !{i32 1, !"wchar_size", i32 2}
!58 = !{i32 1, !"min_enum_size", i32 4}
!59 = !{i32 8, !"branch-target-enforcement", i32 0}
!60 = !{i32 8, !"sign-return-address", i32 0}
!61 = !{i32 8, !"sign-return-address-all", i32 0}
!62 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!63 = !{i32 7, !"uwtable", i32 1}
!64 = !{i32 7, !"frame-pointer", i32 2}
!65 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!66 = !{i64 2155101893}
!67 = !{i64 1720773}
!68 = !{i64 1721168}
!69 = !{i64 2155105820}
!70 = !{i64 2155106062}
!71 = !{i64 2155106304}
!72 = !{i64 2155106546}
!73 = !{i64 2155106788}
!74 = !{i64 2155081240}
!75 = !{i64 2155079444}
!76 = !{i64 2155079790}
!77 = !{i64 2155080096}
!78 = !{i64 2155080504}
!79 = !{i64 2155078252}
!80 = !{i64 2155078558}
!81 = !{i64 2155107276}
!82 = !{i64 2155107598}
!83 = !{i64 2155107921}
!84 = !{i64 2155108243}
!85 = !{i64 2155077690}
!86 = !{i64 2155081589}
!87 = !{i64 2155101190}
!88 = !{i64 2155099827}
!89 = !{i64 2155100052}
!90 = !{i64 2155100518}
!91 = !{i64 2155100743}
!92 = !{i64 2155084361}
!93 = !{i64 2155084603}
!94 = !{i64 2155084845}
!95 = !{i64 2148311065, i64 2148311070, i64 2148311083, i64 2148311127, i64 2148311161, i64 2148311182}
!96 = !{i64 2155098044}
!97 = !{i64 2155098328}
!98 = !{i64 2155098613}
!99 = !{i64 2155099156}
