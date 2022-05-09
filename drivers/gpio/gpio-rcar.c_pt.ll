; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpio-rcar.c_pt.bc'
source_filename = "../drivers/gpio/gpio-rcar.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.gpio_rcar_info = type { i8, i8, i8, i8 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.gpio_rcar_priv = type { ptr, %struct.spinlock, ptr, %struct.gpio_chip, %struct.irq_chip, i32, %struct.atomic_t, %struct.gpio_rcar_info, %struct.gpio_rcar_bank_info }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.68, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.68 = type { ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.gpio_rcar_bank_info = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_gpio_rcar__230_662_gpio_rcar_device_driver_init6 = internal global ptr @gpio_rcar_device_driver_init, section ".initcall6.init", align 4
@gpio_rcar_device_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @gpio_rcar_probe, ptr @gpio_rcar_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @gpio_rcar_of_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gpio_rcar_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_gpio_rcar_device_driver_exit = internal global ptr @gpio_rcar_device_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author231 = internal constant [29 x i8] c"gpio_rcar.author=Magnus Damm\00", section ".modinfo", align 1
@__UNIQUE_ID_description232 = internal constant [48 x i8] c"gpio_rcar.description=Renesas R-Car GPIO Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file233 = internal constant [38 x i8] c"gpio_rcar.file=drivers/gpio/gpio-rcar\00", section ".modinfo", align 1
@__UNIQUE_ID_license234 = internal constant [25 x i8] c"gpio_rcar.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpio_rcar\00", [22 x i8] zeroinitializer }, align 32
@gpio_rcar_of_table = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,gpio-r8a779a0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gpio_rcar_info_v3u }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen1-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gpio_rcar_info_gen1 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen2-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gpio_rcar_info_gen2 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen3-gpio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gpio_rcar_info_gen3 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,gpio-rcar\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @gpio_rcar_info_gen1 }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@gpio_rcar_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @gpio_rcar_suspend, ptr @gpio_rcar_resume, ptr @gpio_rcar_suspend, ptr @gpio_rcar_resume, ptr @gpio_rcar_suspend, ptr @gpio_rcar_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@gpio_rcar_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&p->lock\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpio-rcar\00", [22 x i8] zeroinitializer }, align 32
@gpio_rcar_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@gpio_rcar_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@gpio_rcar_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 551, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to add GPIO controller\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gpio_rcar_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/gpio/gpio-rcar.c\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@gpio_rcar_probe._entry_ptr = internal global ptr @gpio_rcar_probe._entry, section ".printk_index", align 4
@gpio_rcar_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 558, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to request IRQ\0A\00", [41 x i8] zeroinitializer }, align 32
@gpio_rcar_probe._entry_ptr.10 = internal global ptr @gpio_rcar_probe._entry.8, section ".printk_index", align 4
@gpio_rcar_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.4, ptr @.str.5, i32 568, ptr @.str.13, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"driving %d GPIOs\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@gpio_rcar_probe._entry_ptr.14 = internal global ptr @gpio_rcar_probe._entry.11, section ".printk_index", align 4
@.str.15 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpio-ranges\00", [20 x i8] zeroinitializer }, align 32
@gpio_rcar_parse_dt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.5, i32 459, ptr @.str.18, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Invalid number of gpio lines %u, using %u\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gpio_rcar_parse_dt\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@gpio_rcar_parse_dt._entry_ptr = internal global ptr @gpio_rcar_parse_dt._entry, section ".printk_index", align 4
@gpio_rcar_irq_set_type.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.19, ptr @.str.5, ptr @.str.20, i8 0, i8 38, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"gpio_rcar_irq_set_type\00", [41 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sense irq = %d, type = %d\0A\00", [37 x i8] zeroinitializer }, align 32
@gpio_rcar_irq_set_wake.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.21, ptr @.str.5, ptr @.str.22, i8 0, i8 48, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"gpio_rcar_irq_set_wake\00", [41 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"irq %u doesn't support irq_set_wake\0A\00", [59 x i8] zeroinitializer }, align 32
@gpio_rcar_info_v3u = internal constant { %struct.gpio_rcar_info, [28 x i8] } { %struct.gpio_rcar_info { i8 1, i8 1, i8 1, i8 1 }, [28 x i8] zeroinitializer }, align 32
@gpio_rcar_info_gen1 = internal constant { %struct.gpio_rcar_info, [28 x i8] } zeroinitializer, align 32
@gpio_rcar_info_gen2 = internal constant { %struct.gpio_rcar_info, [28 x i8] } { %struct.gpio_rcar_info { i8 1, i8 1, i8 0, i8 0 }, [28 x i8] zeroinitializer }, align 32
@gpio_rcar_info_gen3 = internal constant { %struct.gpio_rcar_info, [28 x i8] } { %struct.gpio_rcar_info { i8 1, i8 1, i8 1, i8 0 }, [28 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 8]
@___asan_gen_.23 = private unnamed_addr constant [24 x i8] c"gpio_rcar_device_driver\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 652, i32 31 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 656, i32 11 }
@___asan_gen_.29 = private unnamed_addr constant [19 x i8] c"gpio_rcar_of_table\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 421, i32 34 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"gpio_rcar_pm_ops\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 650, i32 8 }
@___asan_gen_.35 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 493, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 532, i32 19 }
@___asan_gen_.44 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 549, i32 8 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 551, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 558, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 568, i32 2 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 454, i32 45 }
@___asan_gen_.86 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 458, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 152, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 192, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant [19 x i8] c"gpio_rcar_info_v3u\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 414, i32 36 }
@___asan_gen_.113 = private unnamed_addr constant [20 x i8] c"gpio_rcar_info_gen1\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 393, i32 36 }
@___asan_gen_.116 = private unnamed_addr constant [20 x i8] c"gpio_rcar_info_gen2\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 400, i32 36 }
@___asan_gen_.119 = private unnamed_addr constant [20 x i8] c"gpio_rcar_info_gen3\00", align 1
@___asan_gen_.120 = private constant [28 x i8] c"../drivers/gpio/gpio-rcar.c\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.120, i32 407, i32 36 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @__UNIQUE_ID_author231, ptr @__UNIQUE_ID_description232, ptr @__UNIQUE_ID_file233, ptr @__UNIQUE_ID_license234, ptr @__exitcall_gpio_rcar_device_driver_exit, ptr @__initcall__kmod_gpio_rcar__230_662_gpio_rcar_device_driver_init6, ptr @gpio_rcar_device_driver_exit, ptr @gpio_rcar_parse_dt._entry, ptr @gpio_rcar_parse_dt._entry_ptr, ptr @gpio_rcar_probe._entry, ptr @gpio_rcar_probe._entry.11, ptr @gpio_rcar_probe._entry.8, ptr @gpio_rcar_probe._entry_ptr, ptr @gpio_rcar_probe._entry_ptr.10, ptr @gpio_rcar_probe._entry_ptr.14, ptr @gpio_rcar_device_driver, ptr @.str, ptr @gpio_rcar_of_table, ptr @gpio_rcar_pm_ops, ptr @gpio_rcar_probe.__key, ptr @.str.1, ptr @.str.2, ptr @gpio_rcar_probe.lock_key, ptr @gpio_rcar_probe.request_key, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @gpio_rcar_info_v3u, ptr @gpio_rcar_info_gen1, ptr @gpio_rcar_info_gen2, ptr @gpio_rcar_info_gen3], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_rcar_device_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_rcar_of_table to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_rcar_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_rcar_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_rcar_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_rcar_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_rcar_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_rcar_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_rcar_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_rcar_parse_dt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_rcar_info_v3u to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_rcar_info_gen1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_rcar_info_gen2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpio_rcar_info_gen3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_rcar_device_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @gpio_rcar_device_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gpio_rcar_device_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @gpio_rcar_device_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_rcar_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ %1, %entry.dev_name.exit_crit_edge ]
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 576, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %dev_name.exit.cleanup_crit_edge, label %if.end

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %dev_name.exit
  %dev3 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev1, ptr %dev3, align 4
  %lock = getelementptr inbounds %struct.gpio_rcar_priv, ptr %call.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @gpio_rcar_probe.__key, i16 noundef signext 3) #7
  %5 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev3, align 4
  %of_node.i = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 27
  %7 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node.i, align 8
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #7
  %9 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i118 = tail call ptr @of_device_get_match_data(ptr noundef %6) #7
  %info2.i = getelementptr inbounds %struct.gpio_rcar_priv, ptr %call.i, i32 0, i32 7
  %10 = ptrtoint ptr %call.i118 to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %11 = load i32, ptr %call.i118, align 1
  %12 = ptrtoint ptr %info2.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %info2.i, align 4
  %call.i.i = call i32 @__of_parse_phandle_with_args(ptr noundef %8, ptr noundef nonnull @.str.15, ptr noundef null, i32 noundef 3, i32 noundef 0, ptr noundef nonnull %args.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.i, label %cond.end.i, label %if.end.gpio_rcar_parse_dt.exit_crit_edge

if.end.gpio_rcar_parse_dt.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %gpio_rcar_parse_dt.exit

cond.end.i:                                       ; preds = %if.end
  %arrayidx.i = getelementptr inbounds %struct.of_phandle_args, ptr %args.i, i32 0, i32 2, i32 2
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %15 = add i32 %14, -33
  call void @__sanitizer_cov_trace_const_cmp4(i32 -32, i32 %15)
  %16 = icmp ult i32 %15, -32
  br i1 %16, label %do.end.i, label %cond.end.i.gpio_rcar_parse_dt.exit_crit_edge

cond.end.i.gpio_rcar_parse_dt.exit_crit_edge:     ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %gpio_rcar_parse_dt.exit

do.end.i:                                         ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %dev3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev3, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %18, ptr noundef nonnull @.str.16, i32 noundef %14, i32 noundef 32) #10
  br label %gpio_rcar_parse_dt.exit

gpio_rcar_parse_dt.exit:                          ; preds = %do.end.i, %cond.end.i.gpio_rcar_parse_dt.exit_crit_edge, %if.end.gpio_rcar_parse_dt.exit_crit_edge
  %npins.0 = phi i32 [ %14, %cond.end.i.gpio_rcar_parse_dt.exit_crit_edge ], [ 32, %do.end.i ], [ 32, %if.end.gpio_rcar_parse_dt.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %19 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  call void @pm_runtime_enable(ptr noundef %dev1) #7
  %call8 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %gpio_rcar_parse_dt.exit.err0_crit_edge, label %if.end11

gpio_rcar_parse_dt.exit.err0_crit_edge:           ; preds = %gpio_rcar_parse_dt.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %err0

if.end11:                                         ; preds = %gpio_rcar_parse_dt.exit
  %irq_parent = getelementptr inbounds %struct.gpio_rcar_priv, ptr %call.i, i32 0, i32 5
  %20 = ptrtoint ptr %irq_parent to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call8, ptr %irq_parent, align 4
  %call12 = call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call12, ptr %call.i, align 4
  %cmp.i120 = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i120, label %if.then15, label %if.end18

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %call12 to i32
  br label %err0

if.end18:                                         ; preds = %if.end11
  %gpio_chip19 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %call.i, i32 0, i32 3
  %request = getelementptr inbounds %struct.gpio_rcar_priv, ptr %call.i, i32 0, i32 3, i32 5
  %23 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @gpio_rcar_request, ptr %request, align 4
  %free = getelementptr inbounds %struct.gpio_rcar_priv, ptr %call.i, i32 0, i32 3, i32 6
  %24 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @gpio_rcar_free, ptr %free, align 4
  %get_direction = getelementptr inbounds %struct.gpio_rcar_priv, ptr %call.i, i32 0, i32 3, i32 7
  %25 = ptrtoint ptr %get_direction to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @gpio_rcar_get_direction, ptr %get_direction, align 4
  %direction_input = getelementptr inbounds %struct.gpio_rcar_priv, ptr %call.i, i32 0, i32 3, i32 8
  %26 = ptrtoint ptr %direction_input to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @gpio_rcar_direction_input, ptr %direction_input, align 4
  %get = getelementptr inbounds %struct.gpio_rcar_priv, ptr %call.i, i32 0, i32 3, i32 10
  %27 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @gpio_rcar_get, ptr %get, align 4
  %get_multiple = getelementptr inbounds %struct.gpio_rcar_priv, ptr %call.i, i32 0, i32 3, i32 11
  %28 = ptrtoint ptr %get_multiple to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @gpio_rcar_get_multiple, ptr %get_multiple, align 4
  %direction_output = getelementptr inbounds %struct.gpio_rcar_priv, ptr %call.i, i32 0, i32 3, i32 9
  %29 = ptrtoint ptr %direction_output to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @gpio_rcar_direction_output, ptr %direction_output, align 4
  %set = getelementptr inbounds %struct.gpio_rcar_priv, ptr %call.i, i32 0, i32 3, i32 12
  %30 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @gpio_rcar_set, ptr %set, align 4
  %set_multiple = getelementptr inbounds %struct.gpio_rcar_priv, ptr %call.i, i32 0, i32 3, i32 13
  %31 = ptrtoint ptr %set_multiple to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @gpio_rcar_set_multiple, ptr %set_multiple, align 4
  %32 = ptrtoint ptr %gpio_chip19 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %retval.0.i, ptr %gpio_chip19, align 4
  %parent = getelementptr inbounds %struct.gpio_rcar_priv, ptr %call.i, i32 0, i32 3, i32 2
  %33 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %dev1, ptr %parent, align 4
  %owner = getelementptr inbounds %struct.gpio_rcar_priv, ptr %call.i, i32 0, i32 3, i32 4
  %34 = ptrtoint ptr %owner to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr null, ptr %owner, align 4
  %base20 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %call.i, i32 0, i32 3, i32 19
  %35 = ptrtoint ptr %base20 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %base20, align 4
  %conv = trunc i32 %npins.0 to i16
  %ngpio = getelementptr inbounds %struct.gpio_rcar_priv, ptr %call.i, i32 0, i32 3, i32 20
  %36 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv, ptr %ngpio, align 4
  %irq_chip21 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %call.i, i32 0, i32 4
  %name22 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %call.i, i32 0, i32 4, i32 1
  %37 = ptrtoint ptr %name22 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @.str.2, ptr %name22, align 4
  %38 = ptrtoint ptr %irq_chip21 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %dev1, ptr %irq_chip21, align 4
  %irq_mask = getelementptr inbounds %struct.gpio_rcar_priv, ptr %call.i, i32 0, i32 4, i32 7
  %39 = ptrtoint ptr %irq_mask to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @gpio_rcar_irq_disable, ptr %irq_mask, align 4
  %irq_unmask = getelementptr inbounds %struct.gpio_rcar_priv, ptr %call.i, i32 0, i32 4, i32 9
  %40 = ptrtoint ptr %irq_unmask to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @gpio_rcar_irq_enable, ptr %irq_unmask, align 4
  %irq_set_type = getelementptr inbounds %struct.gpio_rcar_priv, ptr %call.i, i32 0, i32 4, i32 13
  %41 = ptrtoint ptr %irq_set_type to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @gpio_rcar_irq_set_type, ptr %irq_set_type, align 4
  %irq_set_wake = getelementptr inbounds %struct.gpio_rcar_priv, ptr %call.i, i32 0, i32 4, i32 14
  %42 = ptrtoint ptr %irq_set_wake to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @gpio_rcar_irq_set_wake, ptr %irq_set_wake, align 4
  %flags = getelementptr inbounds %struct.gpio_rcar_priv, ptr %call.i, i32 0, i32 4, i32 33
  %43 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 5, ptr %flags, align 4
  %irq = getelementptr inbounds %struct.gpio_rcar_priv, ptr %call.i, i32 0, i32 3, i32 37
  %44 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %irq_chip21, ptr %irq, align 4
  %parent_handler = getelementptr inbounds %struct.gpio_rcar_priv, ptr %call.i, i32 0, i32 3, i32 37, i32 13
  %45 = ptrtoint ptr %parent_handler to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %parent_handler, align 4
  %num_parents = getelementptr inbounds %struct.gpio_rcar_priv, ptr %call.i, i32 0, i32 3, i32 37, i32 15
  %46 = ptrtoint ptr %num_parents to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %num_parents, align 4
  %parents = getelementptr inbounds %struct.gpio_rcar_priv, ptr %call.i, i32 0, i32 3, i32 37, i32 16
  %47 = ptrtoint ptr %parents to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %parents, align 4
  %default_type = getelementptr inbounds %struct.gpio_rcar_priv, ptr %call.i, i32 0, i32 3, i32 37, i32 10
  %48 = ptrtoint ptr %default_type to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %default_type, align 4
  %handler = getelementptr inbounds %struct.gpio_rcar_priv, ptr %call.i, i32 0, i32 3, i32 37, i32 9
  %49 = ptrtoint ptr %handler to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @handle_level_irq, ptr %handler, align 4
  %call23 = call i32 @gpiochip_add_data_with_key(ptr noundef %gpio_chip19, ptr noundef nonnull %call.i, ptr noundef nonnull @gpio_rcar_probe.lock_key, ptr noundef nonnull @gpio_rcar_probe.request_key) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end29, label %do.end28

do.end28:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3) #10
  br label %err0

if.end29:                                         ; preds = %if.end18
  %50 = ptrtoint ptr %irq_parent to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %irq_parent, align 4
  %call.i121 = call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %51, ptr noundef nonnull @gpio_rcar_irq_handler, ptr noundef null, i32 noundef 128, ptr noundef %retval.0.i, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i121)
  %tobool32.not = icmp eq i32 %call.i121, 0
  br i1 %tobool32.not, label %if.end37, label %do.end36

do.end36:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.9) #10
  call void @gpiochip_remove(ptr noundef %gpio_chip19) #7
  br label %err0

if.end37:                                         ; preds = %if.end29
  %has_inen = getelementptr inbounds %struct.gpio_rcar_priv, ptr %call.i, i32 0, i32 7, i32 3
  %52 = ptrtoint ptr %has_inen to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %has_inen, align 1, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool38.not = icmp eq i8 %53, 0
  br i1 %tobool38.not, label %if.end37.do.end45_crit_edge, label %if.then39

if.end37.do.end45_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end45

if.then39:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %call.i122 = call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #7
  call fastcc void @gpio_rcar_enable_inputs(ptr noundef nonnull %call.i)
  %call.i123 = call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 5) #7
  br label %do.end45

do.end45:                                         ; preds = %if.then39, %if.end37.do.end45_crit_edge
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.12, i32 noundef %npins.0) #10
  br label %cleanup

err0:                                             ; preds = %do.end36, %do.end28, %if.then15, %gpio_rcar_parse_dt.exit.err0_crit_edge
  %ret.0 = phi i32 [ %call8, %gpio_rcar_parse_dt.exit.err0_crit_edge ], [ %22, %if.then15 ], [ %call23, %do.end28 ], [ %call.i121, %do.end36 ]
  call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #7
  br label %cleanup

cleanup:                                          ; preds = %err0, %do.end45, %dev_name.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err0 ], [ 0, %do.end45 ], [ -12, %dev_name.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_rcar_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %gpio_chip = getelementptr inbounds %struct.gpio_rcar_priv, ptr %1, i32 0, i32 3
  tail call void @gpiochip_remove(ptr noundef %gpio_chip) #7
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_rcar_request(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  %dev = getelementptr inbounds %struct.gpio_rcar_priv, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup.sink.split_crit_edge, label %if.end

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end:                                           ; preds = %entry
  %base = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 19
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base, align 4
  %add = add i32 %3, %offset
  %call4 = tail call i32 @pinctrl_gpio_request(i32 noundef %add) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call.i, %entry.cleanup.sink.split_crit_edge ], [ %call4, %if.end.cleanup.sink.split_crit_edge ]
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %call.i17 = tail call i32 @__pm_runtime_idle(ptr noundef %5, i32 noundef 5) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gpio_rcar_free(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  %base = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 19
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base, align 4
  %add = add i32 %1, %offset
  tail call void @pinctrl_gpio_free(i32 noundef %add) #7
  tail call fastcc void @gpio_rcar_config_general_input_output_mode(ptr noundef %chip, i32 noundef %offset, i1 noundef zeroext false)
  %dev = getelementptr inbounds %struct.gpio_rcar_priv, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %3, i32 noundef 5) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_rcar_get_direction(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  %3 = xor i32 %2, -1
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = lshr i32 %4, %offset
  %6 = and i32 %5, 1
  ret i32 %6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_rcar_direction_input(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @gpio_rcar_config_general_input_output_mode(ptr noundef %chip, i32 noundef %offset, i1 noundef zeroext false)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_rcar_get(ptr noundef %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  %has_always_in = getelementptr inbounds %struct.gpio_rcar_priv, ptr %call, i32 0, i32 7, i32 2
  %0 = ptrtoint ptr %has_always_in to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %has_always_in, align 2, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.else_crit_edge

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %shl = shl nuw i32 1, %offset
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !77
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  %and = and i32 %5, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %land.lhs.true.if.else_crit_edge, label %if.then

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call, align 4
  %add.ptr.i20 = getelementptr i8, ptr %7, i32 8
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i20) #7, !srcloc !77
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %10 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call, align 4
  %add.ptr.i21 = getelementptr i8, ptr %11, i32 12
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i21) #7, !srcloc !77
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %call7.pn = phi i32 [ %13, %if.else ], [ %9, %if.then ]
  %retval.0.in = lshr i32 %call7.pn, %offset
  %retval.0 = and i32 %retval.0.in, 1
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_rcar_get_multiple(ptr noundef %chip, ptr nocapture noundef readonly %mask, ptr nocapture noundef writeonly %bits) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mask, align 4
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 20
  %2 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %3 to i32
  %sub1 = sub nsw i32 32, %conv
  %shr = lshr i32 -1, %sub1
  %and2 = and i32 %shr, %1
  %valid_mask = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 38
  %4 = ptrtoint ptr %valid_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %valid_mask, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %and5 = and i32 %7, %and2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %bankmask.0 = phi i32 [ %and5, %if.then ], [ %and2, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bankmask.0)
  %tobool6.not = icmp eq i32 %bankmask.0, 0
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %has_always_in = getelementptr inbounds %struct.gpio_rcar_priv, ptr %call, i32 0, i32 7, i32 2
  %8 = ptrtoint ptr %has_always_in to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %has_always_in, align 2, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool9.not = icmp eq i8 %9, 0
  br i1 %tobool9.not, label %do.body15, label %if.then10

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 12
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !77
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  %and12 = and i32 %13, %bankmask.0
  br label %cleanup.sink.split

do.body15:                                        ; preds = %if.end8
  %lock = getelementptr inbounds %struct.gpio_rcar_priv, ptr %call, i32 0, i32 1
  %call18 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %14 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call, align 4
  %add.ptr.i62 = getelementptr i8, ptr %15, i32 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i62) #7, !srcloc !77
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  %and22 = and i32 %17, %bankmask.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and22)
  %tobool23.not = icmp eq i32 %and22, 0
  br i1 %tobool23.not, label %do.body15.if.end27_crit_edge, label %if.then24

do.body15.if.end27_crit_edge:                     ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.then24:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call, align 4
  %add.ptr.i63 = getelementptr i8, ptr %19, i32 8
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i63) #7, !srcloc !77
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  %and26 = and i32 %21, %and22
  br label %if.end27

if.end27:                                         ; preds = %if.then24, %do.body15.if.end27_crit_edge
  %val.0 = phi i32 [ %and26, %if.then24 ], [ 0, %do.body15.if.end27_crit_edge ]
  %neg = xor i32 %17, -1
  %and28 = and i32 %bankmask.0, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end27.if.end34_crit_edge, label %if.then30

if.end27.if.end34_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %call, align 4
  %add.ptr.i64 = getelementptr i8, ptr %23, i32 12
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i64) #7, !srcloc !77
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  %and32 = and i32 %25, %and28
  %or33 = or i32 %and32, %val.0
  br label %if.end34

if.end34:                                         ; preds = %if.then30, %if.end27.if.end34_crit_edge
  %val.1 = phi i32 [ %or33, %if.then30 ], [ %val.0, %if.end27.if.end34_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call18) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end34, %if.then10
  %val.1.sink = phi i32 [ %val.1, %if.end34 ], [ %and12, %if.then10 ]
  %26 = ptrtoint ptr %bits to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %val.1.sink, ptr %bits, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_rcar_direction_output(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  %lock.i = getelementptr inbounds %struct.gpio_rcar_priv, ptr %call.i, i32 0, i32 1
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not.i = icmp eq i32 %value, 0
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #7, !srcloc !77
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  %shl.i.i = shl nuw i32 1, %offset
  %or.i.i = or i32 %3, %shl.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %and.i.i = and i32 %3, %neg.i.i
  %tmp.0.i.i = select i1 %tobool.not.i, i32 %and.i.i, i32 %or.i.i
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call.i, align 4
  %add.ptr.i7.i.i = getelementptr i8, ptr %5, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %tmp.0.i.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i.i, i32 %6) #7, !srcloc !80
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #7
  tail call fastcc void @gpio_rcar_config_general_input_output_mode(ptr noundef %chip, i32 noundef %offset, i1 noundef zeroext true)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gpio_rcar_set(ptr noundef %chip, i32 noundef %offset, i32 noundef %value) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  %lock = getelementptr inbounds %struct.gpio_rcar_priv, ptr %call, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %value)
  %tobool.not = icmp eq i32 %value, 0
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !77
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  %shl.i = shl nuw i32 1, %offset
  %or.i = or i32 %3, %shl.i
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %3, %neg.i
  %tmp.0.i = select i1 %tobool.not, i32 %and.i, i32 %or.i
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %5, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %tmp.0.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 %6) #7, !srcloc !80
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gpio_rcar_set_multiple(ptr noundef %chip, ptr nocapture noundef readonly %mask, ptr nocapture noundef readonly %bits) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  %0 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mask, align 4
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 20
  %2 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %3 to i32
  %sub1 = sub nsw i32 32, %conv
  %shr = lshr i32 -1, %sub1
  %and2 = and i32 %shr, %1
  %valid_mask = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 38
  %4 = ptrtoint ptr %valid_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %valid_mask, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %and5 = and i32 %7, %and2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %bankmask.0 = phi i32 [ %and5, %if.then ], [ %and2, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bankmask.0)
  %tobool6.not = icmp eq i32 %bankmask.0, 0
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %do.body9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %lock = getelementptr inbounds %struct.gpio_rcar_priv, ptr %call, i32 0, i32 1
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %8 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %call, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 8
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !77
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  %neg = xor i32 %bankmask.0, -1
  %and16 = and i32 %11, %neg
  %12 = ptrtoint ptr %bits to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bits, align 4
  %and18 = and i32 %13, %bankmask.0
  %or = or i32 %and18, %and16
  %14 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call, align 4
  %add.ptr.i34 = getelementptr i8, ptr %15, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %16 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34, i32 %16) #7, !srcloc !80
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call12) #7
  br label %cleanup

cleanup:                                          ; preds = %do.body9, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gpio_rcar_irq_disable(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #7
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %shl = shl nuw i32 1, %3
  %neg = xor i32 %shl, -1
  %4 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call1, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %neg) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #7, !srcloc !80
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gpio_rcar_irq_enable(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #7
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %shl = shl nuw i32 1, %3
  %4 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call1, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %shl) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #7, !srcloc !80
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_rcar_irq_set_type(ptr nocapture noundef readonly %d, i32 noundef %type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #7
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gpio_rcar_irq_set_type.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gpio_rcar_irq_set_type, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !81

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.gpio_rcar_priv, ptr %call1, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gpio_rcar_irq_set_type.__UNIQUE_ID_ddebug228, ptr noundef %5, ptr noundef nonnull @.str.20, i32 noundef %3, i32 noundef %type) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %and = and i32 %type, 15
  %6 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %do.end.cleanup_crit_edge [
    i32 4, label %sw.bb
    i32 8, label %sw.bb7
    i32 1, label %sw.bb8
    i32 2, label %sw.bb9
    i32 3, label %sw.bb10
  ]

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @gpio_rcar_config_interrupt_input_mode(ptr noundef %call1, i32 noundef %3, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext false)
  br label %cleanup

sw.bb7:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @gpio_rcar_config_interrupt_input_mode(ptr noundef %call1, i32 noundef %3, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false)
  br label %cleanup

sw.bb8:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @gpio_rcar_config_interrupt_input_mode(ptr noundef %call1, i32 noundef %3, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %cleanup

sw.bb9:                                           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @gpio_rcar_config_interrupt_input_mode(ptr noundef %call1, i32 noundef %3, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %cleanup

sw.bb10:                                          ; preds = %do.end
  %has_both_edge_trigger = getelementptr inbounds %struct.gpio_rcar_priv, ptr %call1, i32 0, i32 7, i32 1
  %7 = ptrtoint ptr %has_both_edge_trigger to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %has_both_edge_trigger, align 1, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool11.not = icmp eq i8 %8, 0
  br i1 %tobool11.not, label %sw.bb10.cleanup_crit_edge, label %if.end13

sw.bb10.cleanup_crit_edge:                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @gpio_rcar_config_interrupt_input_mode(ptr noundef %call1, i32 noundef %3, i1 noundef zeroext true, i1 noundef zeroext false, i1 noundef zeroext true)
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %sw.bb10.cleanup_crit_edge, %sw.bb9, %sw.bb8, %sw.bb7, %sw.bb, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb10.cleanup_crit_edge ], [ -22, %do.end.cleanup_crit_edge ], [ 0, %if.end13 ], [ 0, %sw.bb9 ], [ 0, %sw.bb8 ], [ 0, %sw.bb7 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_rcar_irq_set_wake(ptr nocapture noundef readonly %d, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call ptr @gpiochip_get_data(ptr noundef %1) #7
  %irq_parent = getelementptr inbounds %struct.gpio_rcar_priv, ptr %call1, i32 0, i32 5
  %2 = ptrtoint ptr %irq_parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq_parent, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end15_crit_edge, label %if.then

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then:                                          ; preds = %entry
  %call3 = tail call i32 @irq_set_irq_wake(i32 noundef %3, i32 noundef %on) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then.if.end15_crit_edge, label %do.body

if.then.if.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

do.body:                                          ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gpio_rcar_irq_set_wake.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gpio_rcar_irq_set_wake, %do.end)) #7
          to label %if.then11 [label %do.end], !srcloc !81

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.gpio_rcar_priv, ptr %call1, i32 0, i32 2
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %6 = ptrtoint ptr %irq_parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq_parent, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @gpio_rcar_irq_set_wake.__UNIQUE_ID_ddebug229, ptr noundef %5, ptr noundef nonnull @.str.22, i32 noundef %7) #7
  br label %do.end

do.end:                                           ; preds = %if.then11, %do.body
  %8 = ptrtoint ptr %irq_parent to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %irq_parent, align 4
  br label %if.end15

if.end15:                                         ; preds = %do.end, %if.then.if.end15_crit_edge, %entry.if.end15_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool16.not = icmp eq i32 %on, 0
  %wakeup_path18 = getelementptr inbounds %struct.gpio_rcar_priv, ptr %call1, i32 0, i32 6
  %call.i.i27 = tail call zeroext i1 @__kasan_check_write(ptr noundef %wakeup_path18, i32 noundef 4) #7
  tail call void @llvm.prefetch.p0(ptr %wakeup_path18, i32 1, i32 3, i32 1) #7
  br i1 %tobool16.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %wakeup_path18, ptr %wakeup_path18, i32 1, ptr elementtype(i32) %wakeup_path18) #7, !srcloc !82
  br label %if.end19

if.else:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %10 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %wakeup_path18, ptr %wakeup_path18, i32 1, ptr elementtype(i32) %wakeup_path18) #7, !srcloc !83
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.then17
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_rcar_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev_id, align 4
  %add.ptr.i13 = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i13) #7, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  %3 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev_id, align 4
  %add.ptr.i1114 = getelementptr i8, ptr %4, i32 24
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i1114) #7, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  %6 = and i32 %5, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not15 = icmp eq i32 %6, 0
  br i1 %tobool.not15, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %domain = getelementptr inbounds %struct.gpio_rcar_priv, ptr %dev_id, i32 0, i32 3, i32 37, i32 1
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %7 = phi i32 [ %6, %while.body.lr.ph ], [ %21, %while.body.while.body_crit_edge ]
  %irqs_handled.016 = phi i32 [ 0, %while.body.lr.ph ], [ %inc, %while.body.while.body_crit_edge ]
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %9 = tail call i32 @llvm.cttz.i32(i32 %8, i1 false) #7, !range !84
  %shl = shl nuw i32 1, %9
  %10 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev_id, align 4
  %add.ptr.i12 = getelementptr i8, ptr %11, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %12 = tail call i32 @llvm.bswap.i32(i32 %shl) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 %12) #7, !srcloc !80
  %13 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %domain, align 4
  %call4 = tail call i32 @generic_handle_domain_irq(ptr noundef %14, i32 noundef %9) #7
  %inc = add i32 %irqs_handled.016, 1
  %15 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev_id, align 4
  %add.ptr.i = getelementptr i8, ptr %16, i32 16
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  %18 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_id, align 4
  %add.ptr.i11 = getelementptr i8, ptr %19, i32 24
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11) #7, !srcloc !77
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  %21 = and i32 %20, %17
  %tobool.not = icmp eq i32 %21, 0
  br i1 %tobool.not, label %while.end.loopexit, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end.loopexit:                               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc)
  %phi.cmp = icmp ne i32 %inc, 0
  %phi.cast = zext i1 %phi.cmp to i32
  br label %while.end

while.end:                                        ; preds = %while.end.loopexit, %entry.while.end_crit_edge
  %irqs_handled.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %phi.cast, %while.end.loopexit ]
  ret i32 %irqs_handled.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gpio_rcar_enable_inputs(ptr nocapture noundef readonly %p) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ngpio = getelementptr inbounds %struct.gpio_rcar_priv, ptr %p, i32 0, i32 3, i32 20
  %0 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %1 to i32
  %sub1 = sub nsw i32 32, %conv
  %shr = lshr i32 -1, %sub1
  %valid_mask = getelementptr inbounds %struct.gpio_rcar_priv, ptr %p, i32 0, i32 3, i32 38
  %2 = ptrtoint ptr %valid_mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %valid_mask, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.then7_crit_edge, label %if.end

entry.if.then7_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %and5 = and i32 %5, %shr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool6.not = icmp eq i32 %and5, 0
  br i1 %tobool6.not, label %if.end.if.end8_crit_edge, label %if.end.if.then7_crit_edge

if.end.if.then7_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then7:                                         ; preds = %if.end.if.then7_crit_edge, %entry.if.then7_crit_edge
  %mask.018 = phi i32 [ %and5, %if.end.if.then7_crit_edge ], [ %shr, %entry.if.then7_crit_edge ]
  %6 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %p, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 80
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !77
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  %or = or i32 %9, %mask.018
  %10 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %p, align 4
  %add.ptr.i15 = getelementptr i8, ptr %11, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %12 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15, i32 %12) #7, !srcloc !80
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end.if.end8_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiochip_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pinctrl_gpio_request(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pinctrl_gpio_free(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gpio_rcar_config_general_input_output_mode(ptr noundef %chip, i32 noundef %gpio, i1 noundef zeroext %output) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %chip) #7
  %lock = getelementptr inbounds %struct.gpio_rcar_priv, ptr %call, i32 0, i32 1
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 32
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !77
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  %shl.i = shl nuw i32 1, %gpio
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %3, %neg.i
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %5, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %and.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 %6) #7, !srcloc !80
  %7 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call, align 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %8) #7, !srcloc !77
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  %and.i24 = and i32 %10, %neg.i
  %11 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %13 = tail call i32 @llvm.bswap.i32(i32 %and.i24) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %12, i32 %13) #7, !srcloc !80
  %14 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call, align 4
  %add.ptr.i.i25 = getelementptr i8, ptr %15, i32 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i25) #7, !srcloc !77
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  %or.i27 = or i32 %17, %shl.i
  %and.i29 = and i32 %17, %neg.i
  %tmp.0.i = select i1 %output, i32 %or.i27, i32 %and.i29
  %18 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call, align 4
  %add.ptr.i7.i30 = getelementptr i8, ptr %19, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %20 = tail call i32 @llvm.bswap.i32(i32 %tmp.0.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i30, i32 %20) #7, !srcloc !80
  %info = getelementptr inbounds %struct.gpio_rcar_priv, ptr %call, i32 0, i32 7
  %21 = ptrtoint ptr %info to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %info, align 4, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool6.not = icmp ne i8 %22, 0
  %23 = and i1 %tobool6.not, %output
  br i1 %23, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call, align 4
  %add.ptr.i.i31 = getelementptr i8, ptr %25, i32 64
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i31) #7, !srcloc !77
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  %and.i35 = and i32 %27, %neg.i
  %28 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call, align 4
  %add.ptr.i7.i36 = getelementptr i8, ptr %29, i32 64
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %30 = tail call i32 @llvm.bswap.i32(i32 %and.i35) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i36, i32 %30) #7, !srcloc !80
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gpio_rcar_config_interrupt_input_mode(ptr noundef %p, i32 noundef %hwirq, i1 noundef zeroext %active_high_rising_edge, i1 noundef zeroext %level_trigger, i1 noundef zeroext %both) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.gpio_rcar_priv, ptr %p, i32 0, i32 1
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %0 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 32
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !77
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  %shl.i = shl nuw i32 1, %hwirq
  %or.i = or i32 %3, %shl.i
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %3, %neg.i
  %tmp.0.i = select i1 %active_high_rising_edge, i32 %and.i, i32 %or.i
  %4 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %p, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %5, i32 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %6 = tail call i32 @llvm.bswap.i32(i32 %tmp.0.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i, i32 %6) #7, !srcloc !80
  %7 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %p, align 4
  %add.ptr.i.i27 = getelementptr i8, ptr %8, i32 36
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i27) #7, !srcloc !77
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  %or.i29 = or i32 %10, %shl.i
  %and.i31 = and i32 %10, %neg.i
  %tmp.0.i32 = select i1 %level_trigger, i32 %and.i31, i32 %or.i29
  %11 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %p, align 4
  %add.ptr.i7.i33 = getelementptr i8, ptr %12, i32 36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %13 = tail call i32 @llvm.bswap.i32(i32 %tmp.0.i32) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i33, i32 %13) #7, !srcloc !80
  %has_both_edge_trigger = getelementptr inbounds %struct.gpio_rcar_priv, ptr %p, i32 0, i32 7, i32 1
  %14 = ptrtoint ptr %has_both_edge_trigger to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %has_both_edge_trigger, align 1, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool9.not = icmp eq i8 %15, 0
  br i1 %tobool9.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %p, align 4
  %add.ptr.i.i34 = getelementptr i8, ptr %17, i32 76
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i34) #7, !srcloc !77
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  %or.i36 = or i32 %19, %shl.i
  %and.i38 = and i32 %19, %neg.i
  %tmp.0.i39 = select i1 %both, i32 %or.i36, i32 %and.i38
  %20 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %p, align 4
  %add.ptr.i7.i40 = getelementptr i8, ptr %21, i32 76
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %22 = tail call i32 @llvm.bswap.i32(i32 %tmp.0.i39) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i40, i32 %22) #7, !srcloc !80
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %23 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %p, align 4
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #7, !srcloc !77
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  %or.i42 = or i32 %26, %shl.i
  %27 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %p, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %29 = tail call i32 @llvm.bswap.i32(i32 %or.i42) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %29) #7, !srcloc !80
  br i1 %level_trigger, label %if.end.if.end13_crit_edge, label %if.then12

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %p, align 4
  %add.ptr.i = getelementptr i8, ptr %31, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %32 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %32) #7, !srcloc !80
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end.if.end13_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_rcar_suspend(ptr nocapture noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #7, !srcloc !77
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  %bank_info = getelementptr inbounds %struct.gpio_rcar_priv, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %bank_info to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %bank_info, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !77
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  %inoutsel = getelementptr inbounds %struct.gpio_rcar_priv, ptr %1, i32 0, i32 8, i32 1
  %11 = ptrtoint ptr %inoutsel to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %inoutsel, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %add.ptr.i34 = getelementptr i8, ptr %13, i32 8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i34) #7, !srcloc !77
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  %outdt = getelementptr inbounds %struct.gpio_rcar_priv, ptr %1, i32 0, i32 8, i32 2
  %16 = ptrtoint ptr %outdt to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %outdt, align 4
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %add.ptr.i35 = getelementptr i8, ptr %18, i32 24
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i35) #7, !srcloc !77
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  %intmsk = getelementptr inbounds %struct.gpio_rcar_priv, ptr %1, i32 0, i32 8, i32 6
  %21 = ptrtoint ptr %intmsk to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %intmsk, align 4
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  %add.ptr.i36 = getelementptr i8, ptr %23, i32 32
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i36) #7, !srcloc !77
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  %posneg = getelementptr inbounds %struct.gpio_rcar_priv, ptr %1, i32 0, i32 8, i32 3
  %26 = ptrtoint ptr %posneg to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %posneg, align 4
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %add.ptr.i37 = getelementptr i8, ptr %28, i32 36
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i37) #7, !srcloc !77
  %30 = tail call i32 @llvm.bswap.i32(i32 %29) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  %edglevel = getelementptr inbounds %struct.gpio_rcar_priv, ptr %1, i32 0, i32 8, i32 4
  %31 = ptrtoint ptr %edglevel to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %edglevel, align 4
  %has_both_edge_trigger = getelementptr inbounds %struct.gpio_rcar_priv, ptr %1, i32 0, i32 7, i32 1
  %32 = ptrtoint ptr %has_both_edge_trigger to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %has_both_edge_trigger, align 1, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not = icmp eq i8 %33, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  %add.ptr.i38 = getelementptr i8, ptr %35, i32 76
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i38) #7, !srcloc !77
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  %bothedge = getelementptr inbounds %struct.gpio_rcar_priv, ptr %1, i32 0, i32 8, i32 5
  %38 = ptrtoint ptr %bothedge to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %bothedge, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %wakeup_path = getelementptr inbounds %struct.gpio_rcar_priv, ptr %1, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %wakeup_path, i32 noundef 4) #7
  %39 = ptrtoint ptr %wakeup_path to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %wakeup_path, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool15.not = icmp eq i32 %40, 0
  br i1 %tobool15.not, label %if.end.if.end17_crit_edge, label %if.then16

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %wakeup_path.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 7
  %41 = ptrtoint ptr %wakeup_path.i to i32
  call void @__asan_load1_noabort(i32 %41)
  %bf.load.i = load i8, ptr %wakeup_path.i, align 4
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %wakeup_path.i, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then16, %if.end.if.end17_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gpio_rcar_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %gpio_chip = getelementptr inbounds %struct.gpio_rcar_priv, ptr %1, i32 0, i32 3
  %ngpio = getelementptr inbounds %struct.gpio_rcar_priv, ptr %1, i32 0, i32 3, i32 20
  %2 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %ngpio, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %cmp73.not = icmp eq i16 %3, 0
  br i1 %cmp73.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %bank_info = getelementptr inbounds %struct.gpio_rcar_priv, ptr %1, i32 0, i32 8
  %posneg = getelementptr inbounds %struct.gpio_rcar_priv, ptr %1, i32 0, i32 8, i32 3
  %edglevel = getelementptr inbounds %struct.gpio_rcar_priv, ptr %1, i32 0, i32 8, i32 4
  %bothedge = getelementptr inbounds %struct.gpio_rcar_priv, ptr %1, i32 0, i32 8, i32 5
  %intmsk = getelementptr inbounds %struct.gpio_rcar_priv, ptr %1, i32 0, i32 8, i32 6
  %inoutsel = getelementptr inbounds %struct.gpio_rcar_priv, ptr %1, i32 0, i32 8, i32 1
  %outdt = getelementptr inbounds %struct.gpio_rcar_priv, ptr %1, i32 0, i32 8, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %offset.074 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %call3 = tail call zeroext i1 @gpiochip_line_is_valid(ptr noundef %gpio_chip, i32 noundef %offset.074) #7
  br i1 %call3, label %if.end, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end:                                           ; preds = %for.body
  %shl = shl nuw i32 1, %offset.074
  %4 = ptrtoint ptr %bank_info to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bank_info, align 4
  %and = and i32 %5, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.then4, label %if.else18

if.then4:                                         ; preds = %if.end
  %6 = ptrtoint ptr %inoutsel to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %inoutsel, align 4
  %and6 = and i32 %7, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %outdt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %outdt, align 4
  %call.i.i = tail call ptr @gpiochip_get_data(ptr noundef %gpio_chip) #7
  %lock.i.i = getelementptr inbounds %struct.gpio_rcar_priv, ptr %call.i.i, i32 0, i32 1
  %call3.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i.i) #7
  %10 = and i32 %9, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i = icmp eq i32 %10, 0
  %11 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %12, i32 8
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #7, !srcloc !77
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  %or.i.i.i = or i32 %14, %shl
  %neg.i.i.i = xor i32 %shl, -1
  %and.i.i.i = and i32 %14, %neg.i.i.i
  %tmp.0.i.i.i = select i1 %tobool.not.i.i, i32 %and.i.i.i, i32 %or.i.i.i
  %15 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call.i.i, align 4
  %add.ptr.i7.i.i.i = getelementptr i8, ptr %16, i32 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %17 = tail call i32 @llvm.bswap.i32(i32 %tmp.0.i.i.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i7.i.i.i, i32 %17) #7, !srcloc !80
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i.i, i32 noundef %call3.i.i) #7
  tail call fastcc void @gpio_rcar_config_general_input_output_mode(ptr noundef %gpio_chip, i32 noundef %offset.074, i1 noundef zeroext true) #7
  br label %for.inc

if.else:                                          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @gpio_rcar_config_general_input_output_mode(ptr noundef %gpio_chip, i32 noundef %offset.074, i1 noundef zeroext false) #7
  br label %for.inc

if.else18:                                        ; preds = %if.end
  %18 = ptrtoint ptr %posneg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %posneg, align 4
  %and20 = and i32 %19, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  %20 = ptrtoint ptr %edglevel to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %edglevel, align 4
  %and25 = and i32 %21, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25)
  %tobool26.not = icmp eq i32 %and25, 0
  %22 = ptrtoint ptr %bothedge to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bothedge, align 4
  %and30 = and i32 %23, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31 = icmp ne i32 %and30, 0
  tail call fastcc void @gpio_rcar_config_interrupt_input_mode(ptr noundef %1, i32 noundef %offset.074, i1 noundef zeroext %tobool21.not, i1 noundef zeroext %tobool26.not, i1 noundef zeroext %tobool31)
  %24 = ptrtoint ptr %intmsk to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %intmsk, align 4
  %and37 = and i32 %25, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.else18.for.inc_crit_edge, label %if.then39

if.else18.for.inc_crit_edge:                      ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then39:                                        ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #9
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %27, i32 28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %28 = tail call i32 @llvm.bswap.i32(i32 %shl) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %28) #7, !srcloc !80
  br label %for.inc

for.inc:                                          ; preds = %if.then39, %if.else18.for.inc_crit_edge, %if.else, %if.then8, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %offset.074, 1
  %29 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %ngpio, align 4
  %conv = zext i16 %30 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end.loopexit

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end.loopexit:                                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %phi.cast = zext i16 %30 to i32
  %phi.bo = sub nsw i32 32, %phi.cast
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry.for.end_crit_edge
  %.lcssa = phi i32 [ 32, %entry.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  %has_inen = getelementptr inbounds %struct.gpio_rcar_priv, ptr %1, i32 0, i32 7, i32 3
  %31 = ptrtoint ptr %has_inen to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %has_inen, align 1, !range !76
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool42.not = icmp eq i8 %32, 0
  br i1 %tobool42.not, label %for.end.if.end44_crit_edge, label %if.then43

for.end.if.end44_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

if.then43:                                        ; preds = %for.end
  %shr.i = lshr i32 -1, %.lcssa
  %valid_mask.i = getelementptr inbounds %struct.gpio_rcar_priv, ptr %1, i32 0, i32 3, i32 38
  %33 = ptrtoint ptr %valid_mask.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %valid_mask.i, align 4
  %tobool.not.i = icmp eq ptr %34, null
  br i1 %tobool.not.i, label %if.then43.if.then7.i_crit_edge, label %if.end.i

if.then43.if.then7.i_crit_edge:                   ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7.i

if.end.i:                                         ; preds = %if.then43
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %34, align 4
  %and5.i = and i32 %36, %shr.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5.i)
  %tobool6.not.i = icmp eq i32 %and5.i, 0
  br i1 %tobool6.not.i, label %if.end.i.if.end44_crit_edge, label %if.end.i.if.then7.i_crit_edge

if.end.i.if.then7.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7.i

if.end.i.if.end44_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end44

if.then7.i:                                       ; preds = %if.end.i.if.then7.i_crit_edge, %if.then43.if.then7.i_crit_edge
  %mask.018.i = phi i32 [ %and5.i, %if.end.i.if.then7.i_crit_edge ], [ %shr.i, %if.then43.if.then7.i_crit_edge ]
  %37 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %1, align 4
  %add.ptr.i.i = getelementptr i8, ptr %38, i32 80
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !77
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !78
  %or.i = or i32 %40, %mask.018.i
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %42, i32 80
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !79
  tail call void @arm_heavy_mb() #7
  %43 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i15.i, i32 %43) #7, !srcloc !80
  br label %if.end44

if.end44:                                         ; preds = %if.then7.i, %if.end.i.if.end44_crit_edge, %for.end.if.end44_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @gpiochip_line_is_valid(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !22, !24, !25, !26, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !39, !41, !43, !44, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !59, !61, !63, !65}
!llvm.module.flags = !{!67, !68, !69, !70, !71, !72, !73, !74}
!llvm.ident = !{!75}

!0 = !{ptr @__initcall__kmod_gpio_rcar__230_662_gpio_rcar_device_driver_init6, !1, !"__initcall__kmod_gpio_rcar__230_662_gpio_rcar_device_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpio-rcar.c", i32 662, i32 1}
!2 = !{ptr @__exitcall_gpio_rcar_device_driver_exit, !1, !"__exitcall_gpio_rcar_device_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author231, !4, !"__UNIQUE_ID_author231", i1 false, i1 false}
!4 = !{!"../drivers/gpio/gpio-rcar.c", i32 664, i32 1}
!5 = !{ptr @__UNIQUE_ID_description232, !6, !"__UNIQUE_ID_description232", i1 false, i1 false}
!6 = !{!"../drivers/gpio/gpio-rcar.c", i32 665, i32 1}
!7 = !{ptr @__UNIQUE_ID_file233, !8, !"__UNIQUE_ID_file233", i1 false, i1 false}
!8 = !{!"../drivers/gpio/gpio-rcar.c", i32 666, i32 1}
!9 = !{ptr @__UNIQUE_ID_license234, !8, !"__UNIQUE_ID_license234", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpio/gpio-rcar.c", i32 656, i32 11}
!12 = !{ptr @gpio_rcar_device_driver, !13, !"gpio_rcar_device_driver", i1 false, i1 false}
!13 = !{!"../drivers/gpio/gpio-rcar.c", i32 652, i32 31}
!14 = !{ptr @gpio_rcar_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/gpio/gpio-rcar.c", i32 493, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpio/gpio-rcar.c", i32 532, i32 19}
!19 = !{ptr @gpio_rcar_probe.lock_key, !20, !"lock_key", i1 false, i1 false}
!20 = !{!"../drivers/gpio/gpio-rcar.c", i32 549, i32 8}
!21 = !{ptr @gpio_rcar_probe.request_key, !20, !"request_key", i1 false, i1 false}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpio/gpio-rcar.c", i32 551, i32 3}
!24 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @gpio_rcar_probe._entry, !23, !"_entry", i1 false, i1 false}
!29 = !{ptr @gpio_rcar_probe._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpio/gpio-rcar.c", i32 558, i32 3}
!32 = !{ptr @gpio_rcar_probe._entry.8, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @gpio_rcar_probe._entry_ptr.10, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpio/gpio-rcar.c", i32 568, i32 2}
!36 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @gpio_rcar_probe._entry.11, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @gpio_rcar_probe._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpio/gpio-rcar.c", i32 454, i32 45}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpio/gpio-rcar.c", i32 458, i32 3}
!43 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @gpio_rcar_parse_dt._entry, !42, !"_entry", i1 false, i1 false}
!46 = !{ptr @gpio_rcar_parse_dt._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpio/gpio-rcar.c", i32 152, i32 2}
!49 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @gpio_rcar_irq_set_type.__UNIQUE_ID_ddebug228, !48, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpio/gpio-rcar.c", i32 192, i32 4}
!53 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @gpio_rcar_irq_set_wake.__UNIQUE_ID_ddebug229, !52, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!55 = !{ptr @gpio_rcar_of_table, !56, !"gpio_rcar_of_table", i1 false, i1 false}
!56 = !{!"../drivers/gpio/gpio-rcar.c", i32 421, i32 34}
!57 = !{ptr @gpio_rcar_info_v3u, !58, !"gpio_rcar_info_v3u", i1 false, i1 false}
!58 = !{!"../drivers/gpio/gpio-rcar.c", i32 414, i32 36}
!59 = !{ptr @gpio_rcar_info_gen1, !60, !"gpio_rcar_info_gen1", i1 false, i1 false}
!60 = !{!"../drivers/gpio/gpio-rcar.c", i32 393, i32 36}
!61 = !{ptr @gpio_rcar_info_gen2, !62, !"gpio_rcar_info_gen2", i1 false, i1 false}
!62 = !{!"../drivers/gpio/gpio-rcar.c", i32 400, i32 36}
!63 = !{ptr @gpio_rcar_info_gen3, !64, !"gpio_rcar_info_gen3", i1 false, i1 false}
!64 = !{!"../drivers/gpio/gpio-rcar.c", i32 407, i32 36}
!65 = !{ptr @gpio_rcar_pm_ops, !66, !"gpio_rcar_pm_ops", i1 false, i1 false}
!66 = !{!"../drivers/gpio/gpio-rcar.c", i32 650, i32 8}
!67 = !{i32 1, !"wchar_size", i32 2}
!68 = !{i32 1, !"min_enum_size", i32 4}
!69 = !{i32 8, !"branch-target-enforcement", i32 0}
!70 = !{i32 8, !"sign-return-address", i32 0}
!71 = !{i32 8, !"sign-return-address-all", i32 0}
!72 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!73 = !{i32 7, !"uwtable", i32 1}
!74 = !{i32 7, !"frame-pointer", i32 2}
!75 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!76 = !{i8 0, i8 2}
!77 = !{i64 4854611}
!78 = !{i64 2152394960}
!79 = !{i64 2152396315}
!80 = !{i64 4854193}
!81 = !{i64 2148326863, i64 2148326868, i64 2148326881, i64 2148326925, i64 2148326959, i64 2148326980}
!82 = !{i64 2148513470, i64 2148513496, i64 2148513525, i64 2148513559, i64 2148513590, i64 2148513613}
!83 = !{i64 2148515935, i64 2148515961, i64 2148515990, i64 2148516024, i64 2148516055, i64 2148516078}
!84 = !{i32 0, i32 33}
