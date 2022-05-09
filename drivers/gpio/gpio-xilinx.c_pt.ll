; ModuleID = '/llk/IR_all_yes/drivers/gpio/gpio-xilinx.c_pt.bc'
source_filename = "../drivers/gpio/gpio-xilinx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.xgpio_instance = type { %struct.gpio_chip, ptr, [2 x i32], [2 x i32], [2 x i32], [2 x i32], [2 x i32], %struct.spinlock, i32, %struct.irq_chip, [2 x i32], [2 x i32], [2 x i32], ptr }
%struct.gpio_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, i16, ptr, i8, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, i8, i32, %struct.spinlock, i32, i32, %struct.gpio_irq_chip, ptr, ptr, i32, ptr }
%struct.gpio_irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.irq_domain_ops, ptr, i32, ptr, ptr, ptr, %union.anon.68, i32, ptr, ptr, i8, i8, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%union.anon.68 = type { ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.callback_head = type { ptr, ptr }

@__initcall__kmod_gpio_xilinx__232_733_xgpio_init4 = internal global ptr @xgpio_init, section ".initcall4.init", align 4
@xgpio_plat_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @xgpio_probe, ptr @xgpio_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @xgpio_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xgpio_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_xgpio_exit = internal global ptr @xgpio_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author233 = internal constant [32 x i8] c"gpio_xilinx.author=Xilinx, Inc.\00", section ".modinfo", align 1
@__UNIQUE_ID_description234 = internal constant [43 x i8] c"gpio_xilinx.description=Xilinx GPIO driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file235 = internal constant [42 x i8] c"gpio_xilinx.file=drivers/gpio/gpio-xilinx\00", section ".modinfo", align 1
@__UNIQUE_ID_license236 = internal constant [24 x i8] c"gpio_xilinx.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpio-xilinx\00", [20 x i8] zeroinitializer }, align 32
@xgpio_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"xlnx,xps-gpio-1.00.a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@xgpio_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @xgpio_suspend, ptr @xgpio_resume, ptr @xgpio_suspend, ptr @xgpio_resume, ptr @xgpio_suspend, ptr @xgpio_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @xgpio_runtime_suspend, ptr @xgpio_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"xlnx,is-dual\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"xlnx,dout-default\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"xlnx,dout-default-2\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xlnx,tri-default\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"xlnx,tri-default-2\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"#gpio-cells\00", [20 x i8] zeroinitializer }, align 32
@xgpio_probe.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, i8 0, i8 -108, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"gpio_xilinx\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"xgpio_probe\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/gpio/gpio-xilinx.c\00", [37 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Missing gpio-cells property\0A\00", [35 x i8] zeroinitializer }, align 32
@xgpio_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.8, ptr @.str.9, i32 597, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"#gpio-cells mismatch\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@xgpio_probe._entry_ptr = internal global ptr @xgpio_probe._entry, section ".printk_index", align 4
@.str.14 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"xlnx,gpio-width\00", [16 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xlnx,gpio2-width\00", [47 x i8] zeroinitializer }, align 32
@xgpio_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&chip->gpio_lock\00", [47 x i8] zeroinitializer }, align 32
@xgpio_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.8, ptr @.str.9, i32 642, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to ioremap memory resource\0A\00", [61 x i8] zeroinitializer }, align 32
@xgpio_probe._entry_ptr.19 = internal global ptr @xgpio_probe._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"input clock not found.\0A\00", [40 x i8] zeroinitializer }, align 32
@xgpio_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.8, ptr @.str.9, i32 652, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to prepare clk\0A\00", [41 x i8] zeroinitializer }, align 32
@xgpio_probe._entry_ptr.23 = internal global ptr @xgpio_probe._entry.21, section ".printk_index", align 4
@xgpio_probe.lock_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@xgpio_probe.request_key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@xgpio_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.8, ptr @.str.9, i32 697, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to add GPIO chip\0A\00", [39 x i8] zeroinitializer }, align 32
@xgpio_probe._entry_ptr.26 = internal global ptr @xgpio_probe._entry.24, section ".printk_index", align 4
@xgpio_irqhandler.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.27, ptr @.str.9, ptr @.str.28, i8 0, i8 -123, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"xgpio_irqhandler\00", [47 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"IRQ rising %*pb falling %*pb\0A\00", [34 x i8] zeroinitializer }, align 32
@xgpio_suspend.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.29, ptr @.str.9, ptr @.str.30, i8 0, i8 79, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"xgpio_suspend\00", [18 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"IRQ not connected\0A\00", [45 x i8] zeroinitializer }, align 32
@xgpio_resume.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.31, ptr @.str.9, ptr @.str.30, i8 0, i8 90, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"xgpio_resume\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.32 = private unnamed_addr constant [18 x i8] c"xgpio_plat_driver\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 718, i32 31 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 722, i32 12 }
@___asan_gen_.38 = private unnamed_addr constant [15 x i8] c"xgpio_of_match\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 711, i32 34 }
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"xgpio_dev_pm_ops\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 388, i32 32 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 573, i32 27 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 581, i32 27 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 582, i32 27 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 587, i32 27 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 588, i32 27 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 593, i32 31 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 594, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 597, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 605, i32 31 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 611, i32 42 }
@___asan_gen_.92 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 624, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 642, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 648, i32 56 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 652, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant [9 x i8] c"lock_key\00", align 1
@___asan_gen_.116 = private unnamed_addr constant [12 x i8] c"request_key\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 695, i32 11 }
@___asan_gen_.119 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 697, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 535, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 316, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.138 = private constant [30 x i8] c"../drivers/gpio/gpio-xilinx.c\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.138, i32 362, i32 3 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @__UNIQUE_ID_author233, ptr @__UNIQUE_ID_description234, ptr @__UNIQUE_ID_file235, ptr @__UNIQUE_ID_license236, ptr @__exitcall_xgpio_exit, ptr @__initcall__kmod_gpio_xilinx__232_733_xgpio_init4, ptr @xgpio_exit, ptr @xgpio_probe._entry, ptr @xgpio_probe._entry.17, ptr @xgpio_probe._entry.21, ptr @xgpio_probe._entry.24, ptr @xgpio_probe._entry_ptr, ptr @xgpio_probe._entry_ptr.19, ptr @xgpio_probe._entry_ptr.23, ptr @xgpio_probe._entry_ptr.26, ptr @xgpio_plat_driver, ptr @.str, ptr @xgpio_of_match, ptr @xgpio_dev_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @xgpio_probe.__key, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @xgpio_probe.lock_key, ptr @xgpio_probe.request_key, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgpio_plat_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgpio_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgpio_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgpio_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgpio_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgpio_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgpio_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgpio_probe.lock_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgpio_probe.request_key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xgpio_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @xgpio_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @xgpio_plat_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @xgpio_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @xgpio_plat_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgpio_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %is_dual = alloca i32, align 4
  %cells = alloca i32, align 4
  %width = alloca [2 x i32], align 4
  %state = alloca [2 x i32], align 8
  %dir = alloca [2 x i32], align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %is_dual) #9
  %2 = ptrtoint ptr %is_dual to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %is_dual, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %cells) #9
  %3 = ptrtoint ptr %cells to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 2, ptr %cells, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %width) #9
  %4 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %width, align 4, !annotation !87
  %5 = getelementptr inbounds [2 x i32], ptr %width, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !87
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %state) #9
  %7 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %state, align 8, !annotation !87
  %8 = getelementptr inbounds [2 x i32], ptr %state, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %8, align 4, !annotation !87
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dir) #9
  %10 = ptrtoint ptr %dir to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %dir, align 8, !annotation !87
  %11 = getelementptr inbounds [2 x i32], ptr %dir, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %11, align 4, !annotation !87
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 604, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %13 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.1, ptr noundef nonnull %is_dual, i32 noundef 1, i32 noundef 0) #9
  %call.i298 = call ptr @__memset32(ptr noundef nonnull %width, i32 noundef 0, i32 noundef 8) #9
  %call.i299 = call ptr @__memset32(ptr noundef nonnull %state, i32 noundef 0, i32 noundef 8) #9
  %call.i300 = call ptr @__memset32(ptr noundef nonnull %dir, i32 noundef -1, i32 noundef 8) #9
  %call.i.i301 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.2, ptr noundef nonnull %state, i32 noundef 1, i32 noundef 0) #9
  %call.i.i302 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.3, ptr noundef %8, i32 noundef 1, i32 noundef 0) #9
  %state11 = getelementptr inbounds %struct.xgpio_instance, ptr %call.i, i32 0, i32 4
  %14 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %14)
  %15 = load i64, ptr %state, align 8
  %16 = ptrtoint ptr %state11 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 8)
  store i64 %15, ptr %state11, align 4
  %call.i.i303 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef nonnull %dir, i32 noundef 1, i32 noundef 0) #9
  %call.i.i304 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef %11, i32 noundef 1, i32 noundef 0) #9
  %dir18 = getelementptr inbounds %struct.xgpio_instance, ptr %call.i, i32 0, i32 6
  %17 = ptrtoint ptr %dir to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %dir, align 8
  %19 = ptrtoint ptr %dir18 to i32
  call void @__asan_storeN_noabort(i32 %19, i32 8)
  store i64 %18, ptr %dir18, align 4
  %call.i.i305 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef nonnull %cells, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i305)
  %tobool22.not = icmp sgt i32 %call.i.i305, -1
  br i1 %tobool22.not, label %if.end.if.end32_crit_edge, label %do.body

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgpio_probe.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xgpio_probe, %if.end32)) #9
          to label %if.then29 [label %if.end32], !srcloc !88

if.then29:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgpio_probe.__UNIQUE_ID_ddebug231, ptr noundef %dev, ptr noundef nonnull @.str.10) #9
  br label %if.end32

if.end32:                                         ; preds = %if.then29, %do.body, %if.end.if.end32_crit_edge
  %20 = ptrtoint ptr %cells to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cells, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %21)
  %cmp.not = icmp eq i32 %21, 2
  br i1 %cmp.not, label %if.end38, label %do.end36

do.end36:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #12
  br label %cleanup

if.end38:                                         ; preds = %if.end32
  %call.i.i306 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.14, ptr noundef nonnull %width, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i306)
  %tobool41.not = icmp sgt i32 %call.i.i306, -1
  br i1 %tobool41.not, label %if.end44, label %if.end44.thread

if.end44.thread:                                  ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %width to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 32, ptr %width, align 4
  br label %if.end48

if.end44:                                         ; preds = %if.end38
  %23 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pr = load i32, ptr %width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %.pr)
  %cmp46 = icmp ugt i32 %.pr, 32
  br i1 %cmp46, label %if.end44.cleanup_crit_edge, label %if.end44.if.end48_crit_edge

if.end44.if.end48_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end48:                                         ; preds = %if.end44.if.end48_crit_edge, %if.end44.thread
  %24 = ptrtoint ptr %is_dual to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %is_dual, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool49.not = icmp eq i32 %25, 0
  br i1 %tobool49.not, label %if.end48.if.end55_crit_edge, label %land.lhs.true

if.end48.if.end55_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

land.lhs.true:                                    ; preds = %if.end48
  %call.i.i307 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.15, ptr noundef %5, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i307)
  %tobool52.not = icmp sgt i32 %call.i.i307, -1
  br i1 %tobool52.not, label %land.lhs.true.if.end55_crit_edge, label %if.end55.thread

land.lhs.true.if.end55_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.end55.thread:                                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %26 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 32, ptr %5, align 4
  br label %if.end59

if.end55:                                         ; preds = %land.lhs.true.if.end55_crit_edge, %if.end48.if.end55_crit_edge
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %.pr320 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %.pr320)
  %cmp57 = icmp ugt i32 %.pr320, 32
  br i1 %cmp57, label %if.end55.cleanup_crit_edge, label %if.end55.if.end59_crit_edge

if.end55.if.end59_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.end55.cleanup_crit_edge:                       ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end59:                                         ; preds = %if.end55.if.end59_crit_edge, %if.end55.thread
  %28 = phi i32 [ 32, %if.end55.thread ], [ %.pr320, %if.end55.if.end59_crit_edge ]
  %sw_map = getelementptr inbounds %struct.xgpio_instance, ptr %call.i, i32 0, i32 3
  %29 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %width, align 4
  %add = add i32 %30, %28
  call void @__bitmap_set(ptr noundef %sw_map, i32 noundef 0, i32 noundef %add) #9
  %hw_map = getelementptr inbounds %struct.xgpio_instance, ptr %call.i, i32 0, i32 2
  %31 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %width, align 4
  call void @__bitmap_set(ptr noundef %hw_map, i32 noundef 0, i32 noundef %32) #9
  %33 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %5, align 4
  call void @__bitmap_set(ptr noundef %hw_map, i32 noundef 32, i32 noundef %34) #9
  %gpio_lock = getelementptr inbounds %struct.xgpio_instance, ptr %call.i, i32 0, i32 7
  call void @__raw_spin_lock_init(ptr noundef %gpio_lock, ptr noundef nonnull @.str.16, ptr noundef nonnull @xgpio_probe.__key, i16 noundef signext 3) #9
  %base = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 19
  %35 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 -1, ptr %base, align 4
  %call4.i = call i32 @__bitmap_weight(ptr noundef %hw_map, i32 noundef 64) #9
  %conv = trunc i32 %call4.i to i16
  %ngpio = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 20
  %36 = ptrtoint ptr %ngpio to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv, ptr %ngpio, align 4
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 2
  %37 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %dev, ptr %parent, align 4
  %direction_input = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 8
  %38 = ptrtoint ptr %direction_input to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @xgpio_dir_in, ptr %direction_input, align 4
  %direction_output = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 9
  %39 = ptrtoint ptr %direction_output to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @xgpio_dir_out, ptr %direction_output, align 4
  %40 = ptrtoint ptr %cells to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cells, align 4
  %of_gpio_n_cells = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 40
  %42 = ptrtoint ptr %of_gpio_n_cells to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %of_gpio_n_cells, align 4
  %get = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 10
  %43 = ptrtoint ptr %get to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @xgpio_get, ptr %get, align 4
  %set = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 12
  %44 = ptrtoint ptr %set to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @xgpio_set, ptr %set, align 4
  %request = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 5
  %45 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @xgpio_request, ptr %request, align 4
  %free = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 6
  %46 = ptrtoint ptr %free to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @xgpio_free, ptr %free, align 4
  %set_multiple = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 13
  %47 = ptrtoint ptr %set_multiple to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @xgpio_set_multiple, ptr %set_multiple, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %48 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %49, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end59.dev_name.exit_crit_edge

if.end59.dev_name.exit_crit_edge:                 ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end59.dev_name.exit_crit_edge
  %retval.0.i308 = phi ptr [ %51, %if.end.i ], [ %49, %if.end59.dev_name.exit_crit_edge ]
  %52 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %retval.0.i308, ptr %call.i, align 4
  %call89 = call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #9
  %regs = getelementptr inbounds %struct.xgpio_instance, ptr %call.i, i32 0, i32 1
  %53 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call89, ptr %regs, align 4
  %cmp.i309 = icmp ugt ptr %call89, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i309, label %do.end95, label %if.end99

do.end95:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18) #12
  %54 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs, align 4
  %56 = ptrtoint ptr %55 to i32
  br label %cleanup

if.end99:                                         ; preds = %dev_name.exit
  %call101 = call ptr @devm_clk_get_optional(ptr noundef %dev, ptr noundef null) #9
  %clk = getelementptr inbounds %struct.xgpio_instance, ptr %call.i, i32 0, i32 13
  %57 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call101, ptr %clk, align 4
  %cmp.i310 = icmp ugt ptr %call101, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i310, label %if.then104, label %if.end109

if.then104:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #11
  %58 = ptrtoint ptr %call101 to i32
  %call108 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %58, ptr noundef nonnull @.str.20) #9
  br label %cleanup

if.end109:                                        ; preds = %if.end99
  %call.i311 = call i32 @clk_prepare(ptr noundef %call101) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i311)
  %tobool.not.i312 = icmp eq i32 %call.i311, 0
  br i1 %tobool.not.i312, label %if.end.i313, label %if.end109.clk_prepare_enable.exit_crit_edge

if.end109.clk_prepare_enable.exit_crit_edge:      ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #11
  br label %clk_prepare_enable.exit

if.end.i313:                                      ; preds = %if.end109
  %call1.i = call i32 @clk_enable(ptr noundef %call101) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i313.if.end119_crit_edge, label %if.then3.i

if.end.i313.if.end119_crit_edge:                  ; preds = %if.end.i313
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end119

if.then3.i:                                       ; preds = %if.end.i313
  call void @__sanitizer_cov_trace_pc() #11
  call void @clk_unprepare(ptr noundef %call101) #9
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end109.clk_prepare_enable.exit_crit_edge
  %retval.0.i314 = phi i32 [ %call.i311, %if.end109.clk_prepare_enable.exit_crit_edge ], [ %call1.i, %if.then3.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i314)
  %cmp112 = icmp slt i32 %retval.0.i314, 0
  br i1 %cmp112, label %do.end117, label %clk_prepare_enable.exit.if.end119_crit_edge

clk_prepare_enable.exit.if.end119_crit_edge:      ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end119

do.end117:                                        ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22) #12
  br label %cleanup

if.end119:                                        ; preds = %clk_prepare_enable.exit.if.end119_crit_edge, %if.end.i313.if.end119_crit_edge
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #9
  call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #9
  %59 = call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 1, ptr elementtype(i32) %usage_count.i) #9, !srcloc !89
  %call.i315 = call i32 @__pm_runtime_set_status(ptr noundef %dev, i32 noundef 0) #9
  call void @pm_runtime_enable(ptr noundef %dev) #9
  %60 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %ngpio, align 4
  %conv.i.i = zext i16 %61 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -1
  %call.i.i.i316 = call i32 @bitmap_bitremap(i32 noundef %sub.i.i, ptr noundef %sw_map, ptr noundef %hw_map, i32 noundef 64) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i316)
  %cmp.not6.i.i = icmp slt i32 %call.i.i.i316, 0
  br i1 %cmp.not6.i.i, label %if.end119.xgpio_write_ch_all.exit.i_crit_edge, label %if.end119.for.body.i.i_crit_edge

if.end119.for.body.i.i_crit_edge:                 ; preds = %if.end119
  br label %for.body.i.i

if.end119.xgpio_write_ch_all.exit.i_crit_edge:    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #11
  br label %xgpio_write_ch_all.exit.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end119.for.body.i.i_crit_edge
  %bit.07.i.i = phi i32 [ %add.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %if.end119.for.body.i.i_crit_edge ]
  %62 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %regs, align 4
  %div.i.i.i = sdiv i32 %bit.07.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %bit.07.i.i)
  %64 = icmp eq i32 %bit.07.i.i, 32
  %switch.select.i.i.i.i = select i1 %64, i32 8, i32 -22
  %bit.off.i.i.i = or i32 %bit.07.i.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %bit.off.i.i.i)
  %65 = icmp ult i32 %bit.off.i.i.i, 63
  %switch.select2.i.i.i.i = select i1 %65, i32 0, i32 %switch.select.i.i.i.i
  %add.ptr1.i.i.i = getelementptr i8, ptr %63, i32 %switch.select2.i.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !90
  call void @arm_heavy_mb() #9
  %arrayidx.i.i.i.i = getelementptr i32, ptr %state11, i32 %div.i.i.i
  %66 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %68 = call i32 @llvm.bswap.i32(i32 %67) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i.i, i32 %68) #9, !srcloc !91
  %add.i.i = add i32 %bit.07.i.i, 32
  %cmp.not.i.i = icmp sgt i32 %add.i.i, %call.i.i.i316
  br i1 %cmp.not.i.i, label %for.body.i.i.xgpio_write_ch_all.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

for.body.i.i.xgpio_write_ch_all.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xgpio_write_ch_all.exit.i

xgpio_write_ch_all.exit.i:                        ; preds = %for.body.i.i.xgpio_write_ch_all.exit.i_crit_edge, %if.end119.xgpio_write_ch_all.exit.i_crit_edge
  %69 = ptrtoint ptr %ngpio to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %ngpio, align 4
  %conv.i6.i = zext i16 %70 to i32
  %sub.i7.i = add nsw i32 %conv.i6.i, -1
  %call.i.i10.i = call i32 @bitmap_bitremap(i32 noundef %sub.i7.i, ptr noundef %sw_map, ptr noundef %hw_map, i32 noundef 64) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i10.i)
  %cmp.not6.i11.i = icmp slt i32 %call.i.i10.i, 0
  br i1 %cmp.not6.i11.i, label %xgpio_write_ch_all.exit.i.xgpio_save_regs.exit_crit_edge, label %xgpio_write_ch_all.exit.i.for.body.i23.i_crit_edge

xgpio_write_ch_all.exit.i.for.body.i23.i_crit_edge: ; preds = %xgpio_write_ch_all.exit.i
  br label %for.body.i23.i

xgpio_write_ch_all.exit.i.xgpio_save_regs.exit_crit_edge: ; preds = %xgpio_write_ch_all.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xgpio_save_regs.exit

for.body.i23.i:                                   ; preds = %for.body.i23.i.for.body.i23.i_crit_edge, %xgpio_write_ch_all.exit.i.for.body.i23.i_crit_edge
  %bit.07.i14.i = phi i32 [ %add.i21.i, %for.body.i23.i.for.body.i23.i_crit_edge ], [ 0, %xgpio_write_ch_all.exit.i.for.body.i23.i_crit_edge ]
  %71 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %regs, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %72, i32 4
  %div.i.i15.i = sdiv i32 %bit.07.i14.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %bit.07.i14.i)
  %73 = icmp eq i32 %bit.07.i14.i, 32
  %switch.select.i.i.i16.i = select i1 %73, i32 8, i32 -22
  %bit.off.i.i17.i = or i32 %bit.07.i14.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %bit.off.i.i17.i)
  %74 = icmp ult i32 %bit.off.i.i17.i, 63
  %switch.select2.i.i.i18.i = select i1 %74, i32 0, i32 %switch.select.i.i.i16.i
  %add.ptr1.i.i19.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %switch.select2.i.i.i18.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !90
  call void @arm_heavy_mb() #9
  %arrayidx.i.i.i20.i = getelementptr i32, ptr %dir18, i32 %div.i.i15.i
  %75 = ptrtoint ptr %arrayidx.i.i.i20.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx.i.i.i20.i, align 4
  %77 = call i32 @llvm.bswap.i32(i32 %76) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i19.i, i32 %77) #9, !srcloc !91
  %add.i21.i = add i32 %bit.07.i14.i, 32
  %cmp.not.i22.i = icmp sgt i32 %add.i21.i, %call.i.i10.i
  br i1 %cmp.not.i22.i, label %for.body.i23.i.xgpio_save_regs.exit_crit_edge, label %for.body.i23.i.for.body.i23.i_crit_edge

for.body.i23.i.for.body.i23.i_crit_edge:          ; preds = %for.body.i23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i23.i

for.body.i23.i.xgpio_save_regs.exit_crit_edge:    ; preds = %for.body.i23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xgpio_save_regs.exit

xgpio_save_regs.exit:                             ; preds = %for.body.i23.i.xgpio_save_regs.exit_crit_edge, %xgpio_write_ch_all.exit.i.xgpio_save_regs.exit_crit_edge
  %call124 = call i32 @platform_get_irq_optional(ptr noundef %pdev, i32 noundef 0) #9
  %irq = getelementptr inbounds %struct.xgpio_instance, ptr %call.i, i32 0, i32 8
  %78 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %call124, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call124)
  %cmp126 = icmp slt i32 %call124, 1
  br i1 %cmp126, label %xgpio_save_regs.exit.skip_irq_crit_edge, label %if.end129

xgpio_save_regs.exit.skip_irq_crit_edge:          ; preds = %xgpio_save_regs.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %skip_irq

if.end129:                                        ; preds = %xgpio_save_regs.exit
  %irqchip = getelementptr inbounds %struct.xgpio_instance, ptr %call.i, i32 0, i32 9
  %name = getelementptr inbounds %struct.xgpio_instance, ptr %call.i, i32 0, i32 9, i32 1
  %79 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @.str, ptr %name, align 4
  %irq_ack = getelementptr inbounds %struct.xgpio_instance, ptr %call.i, i32 0, i32 9, i32 6
  %80 = ptrtoint ptr %irq_ack to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @xgpio_irq_ack, ptr %irq_ack, align 4
  %irq_mask = getelementptr inbounds %struct.xgpio_instance, ptr %call.i, i32 0, i32 9, i32 7
  %81 = ptrtoint ptr %irq_mask to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @xgpio_irq_mask, ptr %irq_mask, align 4
  %irq_unmask = getelementptr inbounds %struct.xgpio_instance, ptr %call.i, i32 0, i32 9, i32 9
  %82 = ptrtoint ptr %irq_unmask to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @xgpio_irq_unmask, ptr %irq_unmask, align 4
  %irq_set_type = getelementptr inbounds %struct.xgpio_instance, ptr %call.i, i32 0, i32 9, i32 13
  %83 = ptrtoint ptr %irq_set_type to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @xgpio_set_irq_type, ptr %irq_set_type, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !92
  call void @arm_heavy_mb() #9
  %84 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %85, i32 296
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #9, !srcloc !91
  %86 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %regs, align 4
  %add.ptr139 = getelementptr i8, ptr %87, i32 288
  %88 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr139) #9, !srcloc !93
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !94
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !95
  call void @arm_heavy_mb() #9
  %89 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %regs, align 4
  %add.ptr147 = getelementptr i8, ptr %90, i32 288
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr147, i32 %88) #9, !srcloc !91
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !96
  call void @arm_heavy_mb() #9
  %91 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %regs, align 4
  %add.ptr152 = getelementptr i8, ptr %92, i32 284
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr152, i32 128) #9, !srcloc !91
  %irq154 = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37
  %93 = ptrtoint ptr %irq154 to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %irqchip, ptr %irq154, align 4
  %parent_handler = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 13
  %94 = ptrtoint ptr %parent_handler to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr @xgpio_irqhandler, ptr %parent_handler, align 4
  %num_parents = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 15
  %95 = ptrtoint ptr %num_parents to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 1, ptr %num_parents, align 4
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 4, i32 noundef 3520) #9
  %parents = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 16
  %96 = ptrtoint ptr %parents to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %call5.i.i, ptr %parents, align 4
  %tobool160.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool160.not, label %if.end129.err_pm_put_crit_edge, label %if.end162

if.end129.err_pm_put_crit_edge:                   ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_pm_put

if.end162:                                        ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #11
  %97 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %irq, align 4
  %99 = ptrtoint ptr %call5.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %call5.i.i, align 4
  %default_type = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 10
  %100 = ptrtoint ptr %default_type to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 0, ptr %default_type, align 4
  %handler = getelementptr inbounds %struct.gpio_chip, ptr %call.i, i32 0, i32 37, i32 9
  %101 = ptrtoint ptr %handler to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr @handle_bad_irq, ptr %handler, align 4
  br label %skip_irq

skip_irq:                                         ; preds = %if.end162, %xgpio_save_regs.exit.skip_irq_crit_edge
  %call169 = call i32 @devm_gpiochip_add_data_with_key(ptr noundef %dev, ptr noundef nonnull %call.i, ptr noundef nonnull %call.i, ptr noundef nonnull @xgpio_probe.lock_key, ptr noundef nonnull @xgpio_probe.request_key) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call169)
  %tobool170.not = icmp eq i32 %call169, 0
  br i1 %tobool170.not, label %if.end176, label %do.end174

do.end174:                                        ; preds = %skip_irq
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25) #12
  br label %err_pm_put

if.end176:                                        ; preds = %skip_irq
  call void @__sanitizer_cov_trace_pc() #11
  %call.i317 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #9
  br label %cleanup

err_pm_put:                                       ; preds = %do.end174, %if.end129.err_pm_put_crit_edge
  %status.0 = phi i32 [ %call169, %do.end174 ], [ -12, %if.end129.err_pm_put_crit_edge ]
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #9
  call fastcc void @pm_runtime_put_noidle(ptr noundef %dev)
  %102 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %clk, align 4
  call void @clk_disable(ptr noundef %103) #9
  call void @clk_unprepare(ptr noundef %103) #9
  br label %cleanup

cleanup:                                          ; preds = %err_pm_put, %if.end176, %do.end117, %if.then104, %do.end95, %if.end55.cleanup_crit_edge, %if.end44.cleanup_crit_edge, %do.end36, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end36 ], [ %56, %do.end95 ], [ %call108, %if.then104 ], [ %retval.0.i314, %do.end117 ], [ %status.0, %err_pm_put ], [ 0, %if.end176 ], [ -12, %entry.cleanup_crit_edge ], [ -22, %if.end44.cleanup_crit_edge ], [ -22, %if.end55.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dir) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %state) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %width) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %cells) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %is_dual) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgpio_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #9
  %usage_count.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !97
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #9, !srcloc !98
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %entry.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

entry.pm_runtime_put_noidle.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !99
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %entry.pm_runtime_put_noidle.exit_crit_edge
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #9
  %clk = getelementptr inbounds %struct.xgpio_instance, ptr %1, i32 0, i32 13
  %3 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %4) #9
  tail call void @clk_unprepare(ptr noundef %4) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgpio_dir_in(ptr noundef %gc, i32 noundef %gpio) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #9
  %sw_map.i = getelementptr inbounds %struct.xgpio_instance, ptr %call, i32 0, i32 3
  %hw_map.i = getelementptr inbounds %struct.xgpio_instance, ptr %call, i32 0, i32 2
  %call.i = tail call i32 @bitmap_bitremap(i32 noundef %gpio, ptr noundef %sw_map.i, ptr noundef %hw_map.i, i32 noundef 64) #9
  %gpio_lock = getelementptr inbounds %struct.xgpio_instance, ptr %call, i32 0, i32 7
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %gpio_lock) #9
  %dir = getelementptr inbounds %struct.xgpio_instance, ptr %call, i32 0, i32 6
  %rem.i = and i32 %call.i, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %call.i, 5
  %add.ptr.i = getelementptr i32, ptr %dir, i32 %div2.i
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %1, %shl.i
  store i32 %or.i, ptr %add.ptr.i, align 4
  %regs.i = getelementptr inbounds %struct.xgpio_instance, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i16 = getelementptr i8, ptr %3, i32 4
  %div.i = sdiv i32 %call.i, 32
  %4 = and i32 %call.i, -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %4)
  %5 = icmp eq i32 %4, 32
  %switch.select.i.i = select i1 %5, i32 8, i32 -22
  %bit.off.i = add i32 %call.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %bit.off.i)
  %6 = icmp ult i32 %bit.off.i, 63
  %switch.select2.i.i = select i1 %6, i32 0, i32 %switch.select.i.i
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i16, i32 %switch.select2.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !90
  tail call void @arm_heavy_mb() #9
  %arrayidx.i.i = getelementptr i32, ptr %dir, i32 %div.i
  %7 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx.i.i, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %9) #9, !srcloc !91
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %gpio_lock, i32 noundef %call4) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgpio_dir_out(ptr noundef %gc, i32 noundef %gpio, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #9
  %sw_map.i = getelementptr inbounds %struct.xgpio_instance, ptr %call, i32 0, i32 3
  %hw_map.i = getelementptr inbounds %struct.xgpio_instance, ptr %call, i32 0, i32 2
  %call.i = tail call i32 @bitmap_bitremap(i32 noundef %gpio, ptr noundef %sw_map.i, ptr noundef %hw_map.i, i32 noundef 64) #9
  %gpio_lock = getelementptr inbounds %struct.xgpio_instance, ptr %call, i32 0, i32 7
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %gpio_lock) #9
  %state = getelementptr inbounds %struct.xgpio_instance, ptr %call, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  %rem.i.i = and i32 %call.i, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %call.i, 5
  %add.ptr.i.i = getelementptr i32, ptr %state, i32 %div2.i.i
  br i1 %tobool.not, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %1, %shl.i.i
  %.pre = xor i32 %shl.i.i, -1
  br label %__assign_bit.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %neg.i.i = xor i32 %shl.i.i, -1
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i = and i32 %3, %neg.i.i
  br label %__assign_bit.exit

__assign_bit.exit:                                ; preds = %if.else.i, %if.then.i
  %neg.i.pre-phi = phi i32 [ %.pre, %if.then.i ], [ %neg.i.i, %if.else.i ]
  %and.i.sink.i = phi i32 [ %or.i.i, %if.then.i ], [ %and.i.i, %if.else.i ]
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and.i.sink.i, ptr %add.ptr.i.i, align 4
  %regs.i = getelementptr inbounds %struct.xgpio_instance, ptr %call, i32 0, i32 1
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i, align 4
  %div.i = sdiv i32 %call.i, 32
  %7 = and i32 %call.i, -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %7)
  %8 = icmp eq i32 %7, 32
  %switch.select.i.i = select i1 %8, i32 8, i32 -22
  %bit.off.i = add i32 %call.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %bit.off.i)
  %9 = icmp ult i32 %bit.off.i, 63
  %switch.select2.i.i = select i1 %9, i32 0, i32 %switch.select.i.i
  %add.ptr1.i = getelementptr i8, ptr %6, i32 %switch.select2.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !90
  tail call void @arm_heavy_mb() #9
  %arrayidx.i.i = getelementptr i32, ptr %state, i32 %div.i
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %12) #9, !srcloc !91
  %dir = getelementptr inbounds %struct.xgpio_instance, ptr %call, i32 0, i32 6
  %add.ptr.i = getelementptr i32, ptr %dir, i32 %div2.i.i
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i, align 4
  %and.i = and i32 %14, %neg.i.pre-phi
  store i32 %and.i, ptr %add.ptr.i, align 4
  %15 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i, align 4
  %add.ptr.i25 = getelementptr i8, ptr %16, i32 4
  %add.ptr1.i30 = getelementptr i8, ptr %add.ptr.i25, i32 %switch.select2.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !90
  tail call void @arm_heavy_mb() #9
  %arrayidx.i.i31 = getelementptr i32, ptr %dir, i32 %div.i
  %17 = ptrtoint ptr %arrayidx.i.i31 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i.i31, align 4
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i30, i32 %19) #9, !srcloc !91
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %gpio_lock, i32 noundef %call4) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgpio_get(ptr noundef %gc, i32 noundef %gpio) #2 align 64 {
entry:
  %state = alloca [2 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #9
  %sw_map.i = getelementptr inbounds %struct.xgpio_instance, ptr %call, i32 0, i32 3
  %hw_map.i = getelementptr inbounds %struct.xgpio_instance, ptr %call, i32 0, i32 2
  %call.i = tail call i32 @bitmap_bitremap(i32 noundef %gpio, ptr noundef %sw_map.i, ptr noundef %hw_map.i, i32 noundef 64) #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %state) #9
  %0 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %state, align 4, !annotation !87
  %1 = getelementptr inbounds [2 x i32], ptr %state, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !87
  %regs.i = getelementptr inbounds %struct.xgpio_instance, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regs.i, align 4
  %div.i = sdiv i32 %call.i, 32
  %5 = and i32 %call.i, -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %5)
  %6 = icmp eq i32 %5, 32
  %switch.select.i.i = select i1 %6, i32 8, i32 -22
  %bit.off.i = add i32 %call.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %bit.off.i)
  %7 = icmp ult i32 %bit.off.i, 63
  %switch.select2.i.i = select i1 %7, i32 0, i32 %switch.select.i.i
  %add.ptr1.i = getelementptr i8, ptr %4, i32 %switch.select2.i.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #9, !srcloc !93
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  %arrayidx.i.i = getelementptr i32, ptr %state, i32 %div.i
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %arrayidx.i.i, align 4
  %div3.i = lshr i32 %call.i, 5
  %arrayidx.i = getelementptr i32, ptr %state, i32 %div3.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %call.i, 31
  %shr.i = lshr i32 %12, %and.i
  %and1.i = and i32 %shr.i, 1
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %state) #9
  ret i32 %and1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgpio_set(ptr noundef %gc, i32 noundef %gpio, i32 noundef %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #9
  %sw_map.i = getelementptr inbounds %struct.xgpio_instance, ptr %call, i32 0, i32 3
  %hw_map.i = getelementptr inbounds %struct.xgpio_instance, ptr %call, i32 0, i32 2
  %call.i = tail call i32 @bitmap_bitremap(i32 noundef %gpio, ptr noundef %sw_map.i, ptr noundef %hw_map.i, i32 noundef 64) #9
  %gpio_lock = getelementptr inbounds %struct.xgpio_instance, ptr %call, i32 0, i32 7
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %gpio_lock) #9
  %state = getelementptr inbounds %struct.xgpio_instance, ptr %call, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val)
  %tobool.not = icmp eq i32 %val, 0
  %rem.i.i = and i32 %call.i, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %call.i, 5
  %add.ptr.i.i = getelementptr i32, ptr %state, i32 %div2.i.i
  br i1 %tobool.not, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %1, %shl.i.i
  br label %__assign_bit.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %neg.i.i = xor i32 %shl.i.i, -1
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i = and i32 %3, %neg.i.i
  br label %__assign_bit.exit

__assign_bit.exit:                                ; preds = %if.else.i, %if.then.i
  %and.i.sink.i = phi i32 [ %and.i.i, %if.else.i ], [ %or.i.i, %if.then.i ]
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %and.i.sink.i, ptr %add.ptr.i.i, align 4
  %regs.i = getelementptr inbounds %struct.xgpio_instance, ptr %call, i32 0, i32 1
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i, align 4
  %div.i = sdiv i32 %call.i, 32
  %7 = and i32 %call.i, -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %7)
  %8 = icmp eq i32 %7, 32
  %switch.select.i.i = select i1 %8, i32 8, i32 -22
  %bit.off.i = add i32 %call.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %bit.off.i)
  %9 = icmp ult i32 %bit.off.i, 63
  %switch.select2.i.i = select i1 %9, i32 0, i32 %switch.select.i.i
  %add.ptr1.i = getelementptr i8, ptr %6, i32 %switch.select2.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !90
  tail call void @arm_heavy_mb() #9
  %arrayidx.i.i = getelementptr i32, ptr %state, i32 %div.i
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i, align 4
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %12) #9, !srcloc !91
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %gpio_lock, i32 noundef %call4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgpio_request(ptr nocapture noundef readonly %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 2
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %1, i32 noundef 4) #9
  %2 = tail call i32 @llvm.smin.i32(i32 %call.i, i32 0)
  ret i32 %2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgpio_free(ptr nocapture noundef readonly %chip, i32 noundef %offset) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %chip, i32 0, i32 2
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %1, i32 noundef 5) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgpio_set_multiple(ptr noundef %gc, ptr noundef %mask, ptr noundef %bits) #2 align 64 {
entry:
  %hw_mask = alloca [2 x i32], align 4
  %hw_bits = alloca [2 x i32], align 4
  %state = alloca [2 x i32], align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %hw_mask) #9
  %0 = ptrtoint ptr %hw_mask to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %hw_mask, align 4, !annotation !87
  %1 = getelementptr inbounds [2 x i32], ptr %hw_mask, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !87
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %hw_bits) #9
  %3 = ptrtoint ptr %hw_bits to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %hw_bits, align 4, !annotation !87
  %4 = getelementptr inbounds [2 x i32], ptr %hw_bits, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !87
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %state) #9
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %state, align 8, !annotation !87
  %7 = getelementptr inbounds [2 x i32], ptr %state, i32 0, i32 1
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4, !annotation !87
  %call = tail call ptr @gpiochip_get_data(ptr noundef %gc) #9
  %sw_map = getelementptr inbounds %struct.xgpio_instance, ptr %call, i32 0, i32 3
  %hw_map = getelementptr inbounds %struct.xgpio_instance, ptr %call, i32 0, i32 2
  call void @bitmap_remap(ptr noundef nonnull %hw_mask, ptr noundef %mask, ptr noundef %sw_map, ptr noundef %hw_map, i32 noundef 64) #9
  call void @bitmap_remap(ptr noundef nonnull %hw_bits, ptr noundef %bits, ptr noundef %sw_map, ptr noundef %hw_map, i32 noundef 64) #9
  %gpio_lock = getelementptr inbounds %struct.xgpio_instance, ptr %call, i32 0, i32 7
  %call10 = call i32 @_raw_spin_lock_irqsave(ptr noundef %gpio_lock) #9
  %state14 = getelementptr inbounds %struct.xgpio_instance, ptr %call, i32 0, i32 4
  call void @__bitmap_replace(ptr noundef nonnull %state, ptr noundef %state14, ptr noundef nonnull %hw_bits, ptr noundef nonnull %hw_mask, i32 noundef 64) #9
  %ngpio.i = getelementptr inbounds %struct.gpio_chip, ptr %call, i32 0, i32 20
  %9 = ptrtoint ptr %ngpio.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %ngpio.i, align 4
  %conv.i = zext i16 %10 to i32
  %sub.i = add nsw i32 %conv.i, -1
  %call.i.i = call i32 @bitmap_bitremap(i32 noundef %sub.i, ptr noundef %sw_map, ptr noundef %hw_map, i32 noundef 64) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not6.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.not6.i, label %entry.xgpio_write_ch_all.exit_crit_edge, label %for.body.lr.ph.i

entry.xgpio_write_ch_all.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %xgpio_write_ch_all.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %regs.i.i = getelementptr inbounds %struct.xgpio_instance, ptr %call, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %bit.07.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add.i, %for.body.i.for.body.i_crit_edge ]
  %11 = ptrtoint ptr %regs.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i.i, align 4
  %div.i.i = sdiv i32 %bit.07.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %bit.07.i)
  %13 = icmp eq i32 %bit.07.i, 32
  %switch.select.i.i.i = select i1 %13, i32 8, i32 -22
  %bit.off.i.i = or i32 %bit.07.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %bit.off.i.i)
  %14 = icmp ult i32 %bit.off.i.i, 63
  %switch.select2.i.i.i = select i1 %14, i32 0, i32 %switch.select.i.i.i
  %add.ptr1.i.i = getelementptr i8, ptr %12, i32 %switch.select2.i.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !90
  call void @arm_heavy_mb() #9
  %arrayidx.i.i.i = getelementptr i32, ptr %state, i32 %div.i.i
  %15 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx.i.i.i, align 4
  %17 = call i32 @llvm.bswap.i32(i32 %16) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 %17) #9, !srcloc !91
  %add.i = add i32 %bit.07.i, 32
  %cmp.not.i = icmp sgt i32 %add.i, %call.i.i
  br i1 %cmp.not.i, label %for.body.i.xgpio_write_ch_all.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.xgpio_write_ch_all.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xgpio_write_ch_all.exit

xgpio_write_ch_all.exit:                          ; preds = %for.body.i.xgpio_write_ch_all.exit_crit_edge, %entry.xgpio_write_ch_all.exit_crit_edge
  %18 = ptrtoint ptr %state to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %state, align 8
  %20 = ptrtoint ptr %state14 to i32
  call void @__asan_storeN_noabort(i32 %20, i32 8)
  store i64 %19, ptr %state14, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %gpio_lock, i32 noundef %call10) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %state) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %hw_bits) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %hw_mask) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get_optional(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_optional(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @xgpio_irq_ack(ptr nocapture noundef %irq_data) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgpio_irq_mask(ptr nocapture noundef readonly %irq_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %irq_data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %irq_data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %sw_map.i = getelementptr inbounds %struct.xgpio_instance, ptr %1, i32 0, i32 3
  %hw_map.i = getelementptr inbounds %struct.xgpio_instance, ptr %1, i32 0, i32 2
  %call.i = tail call i32 @bitmap_bitremap(i32 noundef %3, ptr noundef %sw_map.i, ptr noundef %hw_map.i, i32 noundef 64) #9
  %gpio_lock = getelementptr inbounds %struct.xgpio_instance, ptr %1, i32 0, i32 7
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %gpio_lock) #9
  %enable = getelementptr inbounds %struct.xgpio_instance, ptr %1, i32 0, i32 10
  %rem.i = and i32 %call.i, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %call.i, 5
  %add.ptr.i = getelementptr i32, ptr %enable, i32 %div2.i
  %neg.i = xor i32 %shl.i, -1
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  %and.i = and i32 %5, %neg.i
  store i32 %and.i, ptr %add.ptr.i, align 4
  %div.i = sdiv i32 %call.i, 32
  %arrayidx.i = getelementptr i32, ptr %enable, i32 %div.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp11 = icmp eq i32 %7, 0
  br i1 %cmp11, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %shl = shl nuw i32 1, %div.i
  %regs = getelementptr inbounds %struct.xgpio_instance, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 296
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !93
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !101
  %neg = xor i32 %shl, -1
  %and = and i32 %11, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !102
  tail call void @arm_heavy_mb() #9
  %12 = tail call i32 @llvm.bswap.i32(i32 %and)
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 4
  %add.ptr20 = getelementptr i8, ptr %14, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %12) #9, !srcloc !91
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %gpio_lock, i32 noundef %call5) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgpio_irq_unmask(ptr nocapture noundef readonly %irq_data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %irq_data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %irq_data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %sw_map.i = getelementptr inbounds %struct.xgpio_instance, ptr %1, i32 0, i32 3
  %hw_map.i = getelementptr inbounds %struct.xgpio_instance, ptr %1, i32 0, i32 2
  %call.i = tail call i32 @bitmap_bitremap(i32 noundef %3, ptr noundef %sw_map.i, ptr noundef %hw_map.i, i32 noundef 64) #9
  %enable = getelementptr inbounds %struct.xgpio_instance, ptr %1, i32 0, i32 10
  %div.i = sdiv i32 %call.i, 32
  %arrayidx.i = getelementptr i32, ptr %enable, i32 %div.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i, align 4
  %gpio_lock = getelementptr inbounds %struct.xgpio_instance, ptr %1, i32 0, i32 7
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %gpio_lock) #9
  %rem.i = and i32 %call.i, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %call.i, 5
  %add.ptr.i = getelementptr i32, ptr %enable, i32 %div2.i
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %7, %shl.i
  store i32 %or.i, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp11 = icmp eq i32 %5, 0
  br i1 %cmp11, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %shl = shl nuw i32 1, %div.i
  %regs = getelementptr inbounds %struct.xgpio_instance, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %9, i32 288
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !93
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !103
  %and = and i32 %11, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !104
  tail call void @arm_heavy_mb() #9
  %12 = tail call i32 @llvm.bswap.i32(i32 %and)
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 4
  %add.ptr20 = getelementptr i8, ptr %14, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %12) #9, !srcloc !91
  %last_irq_read = getelementptr inbounds %struct.xgpio_instance, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs, align 4
  %17 = and i32 %call.i, -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %17)
  %18 = icmp eq i32 %17, 32
  %switch.select.i.i = select i1 %18, i32 8, i32 -22
  %bit.off.i = add i32 %call.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %bit.off.i)
  %19 = icmp ult i32 %bit.off.i, 63
  %switch.select2.i.i = select i1 %19, i32 0, i32 %switch.select.i.i
  %add.ptr1.i = getelementptr i8, ptr %16, i32 %switch.select2.i.i
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #9, !srcloc !93
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  %arrayidx.i.i = getelementptr i32, ptr %last_irq_read, i32 %div.i
  %22 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %arrayidx.i.i, align 4
  %23 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs, align 4
  %add.ptr25 = getelementptr i8, ptr %24, i32 296
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25) #9, !srcloc !93
  %26 = tail call i32 @llvm.bswap.i32(i32 %25)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !105
  %or = or i32 %26, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !106
  tail call void @arm_heavy_mb() #9
  %27 = tail call i32 @llvm.bswap.i32(i32 %or)
  %28 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs, align 4
  %add.ptr33 = getelementptr i8, ptr %29, i32 296
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 %27) #9, !srcloc !91
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %gpio_lock, i32 noundef %call6) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgpio_set_irq_type(ptr nocapture noundef readonly %irq_data, i32 noundef %type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %irq_data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %irq_data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq.i, align 4
  %sw_map.i = getelementptr inbounds %struct.xgpio_instance, ptr %1, i32 0, i32 3
  %hw_map.i = getelementptr inbounds %struct.xgpio_instance, ptr %1, i32 0, i32 2
  %call.i = tail call i32 @bitmap_bitremap(i32 noundef %3, ptr noundef %sw_map.i, ptr noundef %hw_map.i, i32 noundef 64) #9
  %and = and i32 %type, 15
  %4 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %entry.cleanup_crit_edge [
    i32 3, label %sw.bb
    i32 1, label %sw.bb4
    i32 2, label %sw.bb9
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %rising_edge = getelementptr inbounds %struct.xgpio_instance, ptr %1, i32 0, i32 11
  %rem.i = and i32 %call.i, 31
  %shl.i = shl nuw i32 1, %rem.i
  %div2.i = lshr i32 %call.i, 5
  %add.ptr.i = getelementptr i32, ptr %rising_edge, i32 %div2.i
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr.i, align 4
  %or.i = or i32 %6, %shl.i
  store i32 %or.i, ptr %add.ptr.i, align 4
  %falling_edge = getelementptr inbounds %struct.xgpio_instance, ptr %1, i32 0, i32 12
  %add.ptr.i32 = getelementptr i32, ptr %falling_edge, i32 %div2.i
  %7 = ptrtoint ptr %add.ptr.i32 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i32, align 4
  %or.i33 = or i32 %8, %shl.i
  store i32 %or.i33, ptr %add.ptr.i32, align 4
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %rising_edge5 = getelementptr inbounds %struct.xgpio_instance, ptr %1, i32 0, i32 11
  %rem.i34 = and i32 %call.i, 31
  %shl.i35 = shl nuw i32 1, %rem.i34
  %div2.i36 = lshr i32 %call.i, 5
  %add.ptr.i37 = getelementptr i32, ptr %rising_edge5, i32 %div2.i36
  %9 = ptrtoint ptr %add.ptr.i37 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i37, align 4
  %or.i38 = or i32 %10, %shl.i35
  store i32 %or.i38, ptr %add.ptr.i37, align 4
  %falling_edge7 = getelementptr inbounds %struct.xgpio_instance, ptr %1, i32 0, i32 12
  %add.ptr.i42 = getelementptr i32, ptr %falling_edge7, i32 %div2.i36
  %neg.i = xor i32 %shl.i35, -1
  %11 = ptrtoint ptr %add.ptr.i42 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.i42, align 4
  %and.i = and i32 %12, %neg.i
  store i32 %and.i, ptr %add.ptr.i42, align 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %rising_edge10 = getelementptr inbounds %struct.xgpio_instance, ptr %1, i32 0, i32 11
  %rem.i43 = and i32 %call.i, 31
  %shl.i44 = shl nuw i32 1, %rem.i43
  %div2.i45 = lshr i32 %call.i, 5
  %add.ptr.i46 = getelementptr i32, ptr %rising_edge10, i32 %div2.i45
  %neg.i47 = xor i32 %shl.i44, -1
  %13 = ptrtoint ptr %add.ptr.i46 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i46, align 4
  %and.i48 = and i32 %14, %neg.i47
  store i32 %and.i48, ptr %add.ptr.i46, align 4
  %falling_edge12 = getelementptr inbounds %struct.xgpio_instance, ptr %1, i32 0, i32 12
  %add.ptr.i52 = getelementptr i32, ptr %falling_edge12, i32 %div2.i45
  %15 = ptrtoint ptr %add.ptr.i52 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr.i52, align 4
  %or.i53 = or i32 %16, %shl.i44
  store i32 %or.i53, ptr %add.ptr.i52, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb4, %sw.bb
  %common.i.i = getelementptr inbounds %struct.irq_data, ptr %irq_data, i32 0, i32 3
  %17 = ptrtoint ptr %common.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %common.i.i, align 4
  %handle_irq.i = getelementptr inbounds %struct.irq_desc, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %handle_irq.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @handle_edge_irq, ptr %handle_irq.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xgpio_irqhandler(ptr noundef %desc) #2 align 64 {
entry:
  %rising = alloca [2 x i32], align 4
  %falling = alloca [2 x i32], align 4
  %all = alloca [2 x i32], align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data.i, align 4
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip.i, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %rising) #9
  %4 = ptrtoint ptr %rising to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %rising, align 4, !annotation !87
  %5 = getelementptr inbounds [2 x i32], ptr %rising, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4, !annotation !87
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %falling) #9
  %7 = ptrtoint ptr %falling to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %falling, align 4, !annotation !87
  %8 = getelementptr inbounds [2 x i32], ptr %falling, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %8, align 4, !annotation !87
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %all) #9
  %10 = ptrtoint ptr %all to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %all, align 8, !annotation !87
  %11 = getelementptr inbounds [2 x i32], ptr %all, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %11, align 4, !annotation !87
  %regs = getelementptr inbounds %struct.xgpio_instance, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 288
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !108
  tail call void @arm_heavy_mb() #9
  %16 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs, align 4
  %add.ptr6 = getelementptr i8, ptr %17, i32 288
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %15) #9, !srcloc !91
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 10
  %18 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i = icmp eq ptr %19, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.chained_irq_enter.exit_crit_edge

entry.chained_irq_enter.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %entry
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 8
  %20 = ptrtoint ptr %irq_mask_ack.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %irq_mask_ack.i, align 4
  %tobool1.not.i = icmp eq ptr %21, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %21(ptr noundef %irq_data.i) #9
  br label %chained_irq_enter.exit

if.else.i:                                        ; preds = %if.end.i
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 7
  %22 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %irq_mask.i, align 4
  %irq_data4.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %23(ptr noundef %irq_data4.i) #9
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 6
  %24 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %irq_ack.i, align 4
  %tobool5.not.i = icmp eq ptr %25, null
  br i1 %tobool5.not.i, label %if.else.i.chained_irq_enter.exit_crit_edge, label %if.then6.i

if.else.i.chained_irq_enter.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %chained_irq_enter.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %25(ptr noundef %irq_data4.i) #9
  br label %chained_irq_enter.exit

chained_irq_enter.exit:                           ; preds = %if.then6.i, %if.else.i.chained_irq_enter.exit_crit_edge, %if.then2.i, %entry.chained_irq_enter.exit_crit_edge
  %gpio_lock = getelementptr inbounds %struct.xgpio_instance, ptr %1, i32 0, i32 7
  tail call void @_raw_spin_lock(ptr noundef %gpio_lock) #9
  %ngpio.i = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 20
  %26 = ptrtoint ptr %ngpio.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %ngpio.i, align 4
  %conv.i = zext i16 %27 to i32
  %sub.i = add nsw i32 %conv.i, -1
  %sw_map.i.i = getelementptr inbounds %struct.xgpio_instance, ptr %1, i32 0, i32 3
  %hw_map.i.i = getelementptr inbounds %struct.xgpio_instance, ptr %1, i32 0, i32 2
  %call.i.i = tail call i32 @bitmap_bitremap(i32 noundef %sub.i, ptr noundef %sw_map.i.i, ptr noundef %hw_map.i.i, i32 noundef 64) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not1.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp.not1.i, label %chained_irq_enter.exit.xgpio_read_ch_all.exit_crit_edge, label %chained_irq_enter.exit.for.body.i_crit_edge

chained_irq_enter.exit.for.body.i_crit_edge:      ; preds = %chained_irq_enter.exit
  br label %for.body.i

chained_irq_enter.exit.xgpio_read_ch_all.exit_crit_edge: ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %xgpio_read_ch_all.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %chained_irq_enter.exit.for.body.i_crit_edge
  %bit.02.i = phi i32 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %chained_irq_enter.exit.for.body.i_crit_edge ]
  %28 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs, align 4
  %div.i.i = sdiv i32 %bit.02.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %bit.02.i)
  %30 = icmp eq i32 %bit.02.i, 32
  %switch.select.i.i.i = select i1 %30, i32 8, i32 -22
  %bit.off.i.i = or i32 %bit.02.i, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %bit.off.i.i)
  %31 = icmp ult i32 %bit.off.i.i, 63
  %switch.select2.i.i.i = select i1 %31, i32 0, i32 %switch.select.i.i.i
  %add.ptr1.i.i = getelementptr i8, ptr %29, i32 %switch.select2.i.i.i
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i.i) #9, !srcloc !93
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !100
  %arrayidx.i.i.i = getelementptr i32, ptr %all, i32 %div.i.i
  %34 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %arrayidx.i.i.i, align 4
  %add.i = add i32 %bit.02.i, 32
  %cmp.not.i = icmp sgt i32 %add.i, %call.i.i
  br i1 %cmp.not.i, label %for.body.i.xgpio_read_ch_all.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.xgpio_read_ch_all.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %xgpio_read_ch_all.exit

xgpio_read_ch_all.exit:                           ; preds = %for.body.i.xgpio_read_ch_all.exit_crit_edge, %chained_irq_enter.exit.xgpio_read_ch_all.exit_crit_edge
  %last_irq_read = getelementptr inbounds %struct.xgpio_instance, ptr %1, i32 0, i32 5
  call void @__bitmap_complement(ptr noundef nonnull %rising, ptr noundef %last_irq_read, i32 noundef 64) #9
  %call.i = call i32 @__bitmap_and(ptr noundef nonnull %rising, ptr noundef nonnull %rising, ptr noundef nonnull %all, i32 noundef 64) #9
  %enable = getelementptr inbounds %struct.xgpio_instance, ptr %1, i32 0, i32 10
  %call.i80 = call i32 @__bitmap_and(ptr noundef nonnull %rising, ptr noundef nonnull %rising, ptr noundef %enable, i32 noundef 64) #9
  %rising_edge = getelementptr inbounds %struct.xgpio_instance, ptr %1, i32 0, i32 11
  %call.i81 = call i32 @__bitmap_and(ptr noundef nonnull %rising, ptr noundef nonnull %rising, ptr noundef %rising_edge, i32 noundef 64) #9
  call void @__bitmap_complement(ptr noundef nonnull %falling, ptr noundef nonnull %all, i32 noundef 64) #9
  %call.i82 = call i32 @__bitmap_and(ptr noundef nonnull %falling, ptr noundef nonnull %falling, ptr noundef %last_irq_read, i32 noundef 64) #9
  %call.i83 = call i32 @__bitmap_and(ptr noundef nonnull %falling, ptr noundef nonnull %falling, ptr noundef %enable, i32 noundef 64) #9
  %falling_edge = getelementptr inbounds %struct.xgpio_instance, ptr %1, i32 0, i32 12
  %call.i84 = call i32 @__bitmap_and(ptr noundef nonnull %falling, ptr noundef nonnull %falling, ptr noundef %falling_edge, i32 noundef 64) #9
  %35 = ptrtoint ptr %all to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %all, align 8
  %37 = ptrtoint ptr %last_irq_read to i32
  call void @__asan_storeN_noabort(i32 %37, i32 8)
  store i64 %36, ptr %last_irq_read, align 4
  call void @__bitmap_or(ptr noundef nonnull %all, ptr noundef nonnull %rising, ptr noundef nonnull %falling, i32 noundef 64) #9
  call void @_raw_spin_unlock(ptr noundef %gpio_lock) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgpio_irqhandler.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xgpio_irqhandler, %do.end53)) #9
          to label %if.then [label %do.end53], !srcloc !88

if.then:                                          ; preds = %xgpio_read_ch_all.exit
  call void @__sanitizer_cov_trace_pc() #11
  %parent = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 2
  %38 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %parent, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgpio_irqhandler.__UNIQUE_ID_ddebug230, ptr noundef %39, ptr noundef nonnull @.str.28, i32 noundef 64, ptr noundef nonnull %rising, i32 noundef 64, ptr noundef nonnull %falling) #9
  br label %do.end53

do.end53:                                         ; preds = %if.then, %xgpio_read_ch_all.exit
  %call55 = call i32 @_find_next_bit_be(ptr noundef nonnull %all, i32 noundef 64, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %call55)
  %cmp91 = icmp ult i32 %call55, 64
  br i1 %cmp91, label %for.body.lr.ph, label %do.end53.for.end_crit_edge

do.end53.for.end_crit_edge:                       ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end53
  %domain = getelementptr inbounds %struct.gpio_chip, ptr %1, i32 0, i32 37, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %bit.092 = phi i32 [ %call55, %for.body.lr.ph ], [ %call59, %for.body.for.body_crit_edge ]
  %call.i85 = call i32 @bitmap_bitremap(i32 noundef %bit.092, ptr noundef %hw_map.i.i, ptr noundef %sw_map.i.i, i32 noundef 64) #9
  %40 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %domain, align 4
  %call57 = call i32 @generic_handle_domain_irq(ptr noundef %41, i32 noundef %call.i85) #9
  %add = add nuw nsw i32 %bit.092, 1
  %call59 = call i32 @_find_next_bit_be(ptr noundef nonnull %all, i32 noundef 64, i32 noundef %add) #9
  %cmp = icmp ult i32 %call59, 64
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end53.for.end_crit_edge
  %42 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i87 = icmp eq ptr %43, null
  br i1 %tobool.not.i87, label %if.else.i88, label %for.end.chained_irq_exit.exit_crit_edge

for.end.chained_irq_exit.exit_crit_edge:          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %chained_irq_exit.exit

if.else.i88:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 9
  %44 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i88, %for.end.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %45, %if.else.i88 ], [ %43, %for.end.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  call void %.sink.i(ptr noundef %irq_data2.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %all) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %falling) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %rising) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_bad_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpiochip_add_data_with_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pm_runtime_put_noidle(ptr noundef %dev) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %usage_count = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !97
  tail call void @llvm.prefetch.p0(ptr %usage_count, i32 1, i32 3, i32 1) #9
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count, ptr %usage_count, i32 0, i32 -1, ptr elementtype(i32) %usage_count) #9, !srcloc !98
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %entry.atomic_add_unless.exit_crit_edge, label %do.end11.i.i.i

entry.atomic_add_unless.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %atomic_add_unless.exit

do.end11.i.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !99
  br label %atomic_add_unless.exit

atomic_add_unless.exit:                           ; preds = %do.end11.i.i.i, %entry.atomic_add_unless.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__memset32(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpiochip_get_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_bitremap(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_remap(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_replace(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_set_status(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_complement(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_and(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_or(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgpio_suspend(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %irq = getelementptr inbounds %struct.xgpio_instance, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call1 = tail call ptr @irq_get_irq_data(i32 noundef %3) #9
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.body, label %if.end9

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgpio_suspend.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xgpio_suspend, %cleanup.sink.split)) #9
          to label %if.then7 [label %cleanup.sink.split], !srcloc !88

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgpio_suspend.__UNIQUE_ID_ddebug228, ptr noundef %dev, ptr noundef nonnull @.str.30) #9
  br label %cleanup.sink.split

if.end9:                                          ; preds = %entry
  %common.i = getelementptr inbounds %struct.irq_data, ptr %call1, i32 0, i32 3
  %4 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %common.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %and.i = and i32 %7, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end9.cleanup.sink.split_crit_edge, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9.cleanup.sink.split_crit_edge:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end9.cleanup.sink.split_crit_edge, %if.then7, %do.body
  %call12 = tail call i32 @pm_runtime_force_suspend(ptr noundef %dev) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end9.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9.cleanup_crit_edge ], [ %call12, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgpio_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %irq = getelementptr inbounds %struct.xgpio_instance, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call1 = tail call ptr @irq_get_irq_data(i32 noundef %3) #9
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.body, label %if.end9

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xgpio_resume.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xgpio_resume, %cleanup.sink.split)) #9
          to label %if.then7 [label %cleanup.sink.split], !srcloc !88

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xgpio_resume.__UNIQUE_ID_ddebug229, ptr noundef %dev, ptr noundef nonnull @.str.30) #9
  br label %cleanup.sink.split

if.end9:                                          ; preds = %entry
  %common.i = getelementptr inbounds %struct.irq_data, ptr %call1, i32 0, i32 3
  %4 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %common.i, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %and.i = and i32 %7, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end9.cleanup.sink.split_crit_edge, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9.cleanup.sink.split_crit_edge:             ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end9.cleanup.sink.split_crit_edge, %if.then7, %do.body
  %call12 = tail call i32 @pm_runtime_force_resume(ptr noundef %dev) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end9.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9.cleanup_crit_edge ], [ %call12, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgpio_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.xgpio_instance, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %3) #9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xgpio_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.xgpio_instance, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call1 = tail call i32 @clk_enable(ptr noundef %3) #9
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !30, !31, !32, !33, !35, !36, !37, !38, !39, !41, !43, !45, !46, !48, !49, !50, !52, !54, !55, !56, !58, !59, !61, !62, !63, !65, !66, !67, !69, !71, !73, !74, !75, !77}
!llvm.module.flags = !{!78, !79, !80, !81, !82, !83, !84, !85}
!llvm.ident = !{!86}

!0 = !{ptr @__initcall__kmod_gpio_xilinx__232_733_xgpio_init4, !1, !"__initcall__kmod_gpio_xilinx__232_733_xgpio_init4", i1 false, i1 false}
!1 = !{!"../drivers/gpio/gpio-xilinx.c", i32 733, i32 1}
!2 = !{ptr @__exitcall_xgpio_exit, !3, !"__exitcall_xgpio_exit", i1 false, i1 false}
!3 = !{!"../drivers/gpio/gpio-xilinx.c", i32 739, i32 1}
!4 = !{ptr @__UNIQUE_ID_author233, !5, !"__UNIQUE_ID_author233", i1 false, i1 false}
!5 = !{!"../drivers/gpio/gpio-xilinx.c", i32 741, i32 1}
!6 = !{ptr @__UNIQUE_ID_description234, !7, !"__UNIQUE_ID_description234", i1 false, i1 false}
!7 = !{!"../drivers/gpio/gpio-xilinx.c", i32 742, i32 1}
!8 = !{ptr @__UNIQUE_ID_file235, !9, !"__UNIQUE_ID_file235", i1 false, i1 false}
!9 = !{!"../drivers/gpio/gpio-xilinx.c", i32 743, i32 1}
!10 = !{ptr @__UNIQUE_ID_license236, !9, !"__UNIQUE_ID_license236", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpio/gpio-xilinx.c", i32 722, i32 12}
!13 = !{ptr @xgpio_plat_driver, !14, !"xgpio_plat_driver", i1 false, i1 false}
!14 = !{!"../drivers/gpio/gpio-xilinx.c", i32 718, i32 31}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpio/gpio-xilinx.c", i32 573, i32 27}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpio/gpio-xilinx.c", i32 581, i32 27}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpio/gpio-xilinx.c", i32 582, i32 27}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpio/gpio-xilinx.c", i32 587, i32 27}
!23 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpio/gpio-xilinx.c", i32 588, i32 27}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpio/gpio-xilinx.c", i32 593, i32 31}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpio/gpio-xilinx.c", i32 594, i32 3}
!29 = !{ptr @.str.8, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @xgpio_probe.__UNIQUE_ID_ddebug231, !28, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpio/gpio-xilinx.c", i32 597, i32 3}
!35 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @xgpio_probe._entry, !34, !"_entry", i1 false, i1 false}
!38 = !{ptr @xgpio_probe._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpio/gpio-xilinx.c", i32 605, i32 31}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpio/gpio-xilinx.c", i32 611, i32 42}
!43 = !{ptr @xgpio_probe.__key, !44, !"__key", i1 false, i1 false}
!44 = !{!"../drivers/gpio/gpio-xilinx.c", i32 624, i32 2}
!45 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpio/gpio-xilinx.c", i32 642, i32 3}
!48 = !{ptr @xgpio_probe._entry.17, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @xgpio_probe._entry_ptr.19, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.20, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpio/gpio-xilinx.c", i32 648, i32 56}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpio/gpio-xilinx.c", i32 652, i32 3}
!54 = !{ptr @xgpio_probe._entry.21, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @xgpio_probe._entry_ptr.23, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @xgpio_probe.lock_key, !57, !"lock_key", i1 false, i1 false}
!57 = !{!"../drivers/gpio/gpio-xilinx.c", i32 695, i32 11}
!58 = !{ptr @xgpio_probe.request_key, !57, !"request_key", i1 false, i1 false}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpio/gpio-xilinx.c", i32 697, i32 3}
!61 = !{ptr @xgpio_probe._entry.24, !60, !"_entry", i1 false, i1 false}
!62 = !{ptr @xgpio_probe._entry_ptr.26, !60, !"_entry_ptr", i1 false, i1 false}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpio/gpio-xilinx.c", i32 535, i32 2}
!65 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @xgpio_irqhandler.__UNIQUE_ID_ddebug230, !64, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!67 = !{ptr @xgpio_of_match, !68, !"xgpio_of_match", i1 false, i1 false}
!68 = !{!"../drivers/gpio/gpio-xilinx.c", i32 711, i32 34}
!69 = !{ptr @xgpio_dev_pm_ops, !70, !"xgpio_dev_pm_ops", i1 false, i1 false}
!70 = !{!"../drivers/gpio/gpio-xilinx.c", i32 388, i32 32}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpio/gpio-xilinx.c", i32 316, i32 3}
!73 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @xgpio_suspend.__UNIQUE_ID_ddebug228, !72, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!75 = !{ptr @.str.31, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpio/gpio-xilinx.c", i32 362, i32 3}
!77 = !{ptr @xgpio_resume.__UNIQUE_ID_ddebug229, !76, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!78 = !{i32 1, !"wchar_size", i32 2}
!79 = !{i32 1, !"min_enum_size", i32 4}
!80 = !{i32 8, !"branch-target-enforcement", i32 0}
!81 = !{i32 8, !"sign-return-address", i32 0}
!82 = !{i32 8, !"sign-return-address-all", i32 0}
!83 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!84 = !{i32 7, !"uwtable", i32 1}
!85 = !{i32 7, !"frame-pointer", i32 2}
!86 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!87 = !{!"auto-init"}
!88 = !{i64 2148799341, i64 2148799346, i64 2148799359, i64 2148799403, i64 2148799437, i64 2148799458}
!89 = !{i64 2148202816, i64 2148202842, i64 2148202871, i64 2148202905, i64 2148202936, i64 2148202959}
!90 = !{i64 2154042986}
!91 = !{i64 4889494}
!92 = !{i64 2154071929}
!93 = !{i64 4889912}
!94 = !{i64 2154072628}
!95 = !{i64 2154072894}
!96 = !{i64 2154073471}
!97 = !{i64 2148202235}
!98 = !{i64 687058, i64 687083, i64 687105, i64 687121, i64 687133, i64 687153, i64 687177, i64 687193, i64 687205}
!99 = !{i64 2148202423}
!100 = !{i64 2154042712}
!101 = !{i64 2154055657}
!102 = !{i64 2154055923}
!103 = !{i64 2154057092}
!104 = !{i64 2154057356}
!105 = !{i64 2154058067}
!106 = !{i64 2154058331}
!107 = !{i64 2154059758}
!108 = !{i64 2154060028}
