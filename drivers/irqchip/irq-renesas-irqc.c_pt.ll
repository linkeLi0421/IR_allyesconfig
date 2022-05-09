; ModuleID = '/llk/IR_all_yes/drivers/irqchip/irq-renesas-irqc.c_pt.bc'
source_filename = "../drivers/irqchip/irq-renesas-irqc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.irqc_priv = type { ptr, ptr, [32 x %struct.irqc_irq], i32, ptr, ptr, ptr, %struct.atomic_t }
%struct.irqc_irq = type { i32, i32, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_chip_generic = type { %struct.raw_spinlock, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, %struct.list_head, [0 x %struct.irq_chip_type] }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, ptr, i32, i32, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_chip_regs = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@__initcall__kmod_irq_renesas_irqc__190_262_irqc_init2 = internal global ptr @irqc_init, section ".initcall2.init", align 4
@irqc_device_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @irqc_probe, ptr @irqc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @irqc_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @irqc_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_irqc_exit = internal global ptr @irqc_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author191 = internal constant [36 x i8] c"irq_renesas_irqc.author=Magnus Damm\00", section ".modinfo", align 1
@__UNIQUE_ID_description192 = internal constant [49 x i8] c"irq_renesas_irqc.description=Renesas IRQC Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file193 = internal constant [55 x i8] c"irq_renesas_irqc.file=drivers/irqchip/irq-renesas-irqc\00", section ".modinfo", align 1
@__UNIQUE_ID_license194 = internal constant [32 x i8] c"irq_renesas_irqc.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"renesas_irqc\00", [19 x i8] zeroinitializer }, align 32
@irqc_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,irqc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@irqc_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @irqc_suspend, ptr null, ptr @irqc_suspend, ptr null, ptr @irqc_suspend, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@irqc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 157, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"not enough IRQ resources\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"irqc_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/irqchip/irq-renesas-irqc.c\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@irqc_probe._entry_ptr = internal global ptr @irqc_probe._entry, section ".printk_index", align 4
@irq_generic_chip_ops = external dso_local constant %struct.irq_domain_ops, align 4
@irqc_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 175, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cannot initialize irq domain\0A\00", [34 x i8] zeroinitializer }, align 32
@irqc_probe._entry_ptr.8 = internal global ptr @irqc_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"irqc\00", [27 x i8] zeroinitializer }, align 32
@irqc_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 183, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cannot allocate generic chip\0A\00", [34 x i8] zeroinitializer }, align 32
@irqc_probe._entry_ptr.12 = internal global ptr @irqc_probe._entry.10, section ".printk_index", align 4
@irqc_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 202, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to request IRQ\0A\00", [41 x i8] zeroinitializer }, align 32
@irqc_probe._entry_ptr.15 = internal global ptr @irqc_probe._entry.13, section ".printk_index", align 4
@irqc_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 208, ptr @.str.18, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"driving %d irqs\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@irqc_probe._entry_ptr.19 = internal global ptr @irqc_probe._entry.16, section ".printk_index", align 4
@irqc_sense = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\00\08\04\0C\02\00\00\00\01\00\00\00\00\00\00\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sense\00", [26 x i8] zeroinitializer }, align 32
@irqc_dbg.__UNIQUE_ID_ddebug188 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.21, ptr @.str.22, ptr @.str.3, ptr @.str.23, i8 0, i8 15, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"irq_renesas_irqc\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"irqc_dbg\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s (%d:%d)\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"demux1\00", [25 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"demux2\00", [25 x i8] zeroinitializer }, align 32
@___asan_gen_.26 = private unnamed_addr constant [19 x i8] c"irqc_device_driver\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 248, i32 31 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 252, i32 11 }
@___asan_gen_.32 = private unnamed_addr constant [12 x i8] c"irqc_dt_ids\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 242, i32 34 }
@___asan_gen_.35 = private unnamed_addr constant [12 x i8] c"irqc_pm_ops\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 240, i32 8 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 157, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 175, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 179, i32 8 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 183, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 202, i32 4 }
@___asan_gen_.77 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 208, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant [11 x i8] c"irqc_sense\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 66, i32 22 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 81, i32 28 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 63, i32 2 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 113, i32 14 }
@___asan_gen_.104 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.105 = private constant [38 x i8] c"../drivers/irqchip/irq-renesas-irqc.c\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.105, i32 117, i32 15 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @__UNIQUE_ID_author191, ptr @__UNIQUE_ID_description192, ptr @__UNIQUE_ID_file193, ptr @__UNIQUE_ID_license194, ptr @__exitcall_irqc_exit, ptr @__initcall__kmod_irq_renesas_irqc__190_262_irqc_init2, ptr @irqc_exit, ptr @irqc_probe._entry, ptr @irqc_probe._entry.10, ptr @irqc_probe._entry.13, ptr @irqc_probe._entry.16, ptr @irqc_probe._entry.6, ptr @irqc_probe._entry_ptr, ptr @irqc_probe._entry_ptr.12, ptr @irqc_probe._entry_ptr.15, ptr @irqc_probe._entry_ptr.19, ptr @irqc_probe._entry_ptr.8, ptr @irqc_device_driver, ptr @.str, ptr @irqc_dt_ids, ptr @irqc_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.18, ptr @irqc_sense, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [27 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irqc_device_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irqc_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irqc_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irqc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irqc_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irqc_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irqc_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irqc_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irqc_sense to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @irqc_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @irqc_device_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @irqc_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @irqc_device_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irqc_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.dev_name.exit_crit_edge

entry.dev_name.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %entry.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %3, %if.end.i ], [ %1, %entry.dev_name.exit_crit_edge ]
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 412, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %dev_name.exit.cleanup_crit_edge, label %if.end

dev_name.exit.cleanup_crit_edge:                  ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %dev_name.exit
  %dev3 = getelementptr inbounds %struct.irqc_priv, ptr %call.i, i32 0, i32 4
  %4 = ptrtoint ptr %dev3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %dev1, ptr %dev3, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %5 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  tail call void @pm_runtime_enable(ptr noundef %dev1) #6
  %call.i212 = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #6
  br label %for.body

for.end.thread:                                   ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %number_of_irqs215 = getelementptr inbounds %struct.irqc_priv, ptr %call.i, i32 0, i32 3
  %6 = ptrtoint ptr %number_of_irqs215 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 32, ptr %number_of_irqs215, align 4
  br label %if.end20

for.body:                                         ; preds = %if.end11.for.body_crit_edge, %if.end
  %k.0222 = phi i32 [ 0, %if.end ], [ %inc, %if.end11.for.body_crit_edge ]
  %call5 = tail call i32 @platform_get_irq_optional(ptr noundef %pdev, i32 noundef %k.0222) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %call5)
  %cmp6 = icmp eq i32 %call5, -6
  br i1 %cmp6, label %for.end, label %if.end8

if.end8:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp9 = icmp slt i32 %call5, 0
  br i1 %cmp9, label %if.end8.err_runtime_pm_disable_crit_edge, label %if.end11

if.end8.err_runtime_pm_disable_crit_edge:         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_runtime_pm_disable

if.end11:                                         ; preds = %if.end8
  %arrayidx = getelementptr %struct.irqc_priv, ptr %call.i, i32 0, i32 2, i32 %k.0222
  %p12 = getelementptr %struct.irqc_priv, ptr %call.i, i32 0, i32 2, i32 %k.0222, i32 2
  %7 = ptrtoint ptr %p12 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call.i, ptr %p12, align 4
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %k.0222, ptr %arrayidx, align 4
  %requested_irq = getelementptr %struct.irqc_priv, ptr %call.i, i32 0, i32 2, i32 %k.0222, i32 1
  %9 = ptrtoint ptr %requested_irq to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call5, ptr %requested_irq, align 4
  %inc = add nuw nsw i32 %k.0222, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end.thread, label %if.end11.for.body_crit_edge

if.end11.for.body_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  %number_of_irqs = getelementptr inbounds %struct.irqc_priv, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %number_of_irqs to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %k.0222, ptr %number_of_irqs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %k.0222)
  %cmp18 = icmp eq i32 %k.0222, 0
  br i1 %cmp18, label %do.end, label %for.end.if.end20_crit_edge

for.end.if.end20_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #9
  br label %err_runtime_pm_disable

if.end20:                                         ; preds = %for.end.if.end20_crit_edge, %for.end.thread
  %number_of_irqs217 = phi ptr [ %number_of_irqs215, %for.end.thread ], [ %number_of_irqs, %for.end.if.end20_crit_edge ]
  %call21 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %11 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call21, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then24, label %if.end27

if.then24:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %call21 to i32
  br label %err_runtime_pm_disable

if.end27:                                         ; preds = %if.end20
  %cpu_int_base = getelementptr inbounds %struct.irqc_priv, ptr %call.i, i32 0, i32 1
  %13 = ptrtoint ptr %cpu_int_base to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call21, ptr %cpu_int_base, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %14 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node, align 8
  %16 = ptrtoint ptr %number_of_irqs217 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %number_of_irqs217, align 4
  %tobool.not.i.i = icmp eq ptr %15, null
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %15, i32 0, i32 3
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr null, ptr %fwnode.i.i
  %call1.i = tail call ptr @__irq_domain_add(ptr noundef %spec.select.i.i, i32 noundef %17, i32 noundef %17, i32 noundef 0, ptr noundef nonnull @irq_generic_chip_ops, ptr noundef nonnull %call.i) #6
  %irq_domain = getelementptr inbounds %struct.irqc_priv, ptr %call.i, i32 0, i32 6
  %18 = ptrtoint ptr %irq_domain to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call1.i, ptr %irq_domain, align 4
  %tobool32.not = icmp eq ptr %call1.i, null
  br i1 %tobool32.not, label %if.then33, label %do.body38

if.then33:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #9
  br label %err_runtime_pm_disable

do.body38:                                        ; preds = %if.end27
  %19 = ptrtoint ptr %number_of_irqs217 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %number_of_irqs217, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %20)
  %cmp40 = icmp ugt i32 %20, 32
  br i1 %cmp40, label %do.body57, label %do.end68, !prof !68

do.body57:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/irqchip/irq-renesas-irqc.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 181, 0\0A.popsection", ""() #6, !srcloc !69
  unreachable

do.end68:                                         ; preds = %do.body38
  %call71 = tail call i32 @__irq_alloc_domain_generic_chips(ptr noundef nonnull %call1.i, i32 noundef %20, i32 noundef 1, ptr noundef nonnull @.str.9, ptr noundef nonnull @handle_level_irq, i32 noundef 0, i32 noundef 0, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %tobool72.not = icmp eq i32 %call71, 0
  br i1 %tobool72.not, label %if.end77, label %do.end68.err_remove_domain_crit_edge

do.end68.err_remove_domain_crit_edge:             ; preds = %do.end68
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_remove_domain

if.end77:                                         ; preds = %do.end68
  %21 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %irq_domain, align 4
  %call79 = tail call ptr @irq_get_domain_generic_chip(ptr noundef %22, i32 noundef 0) #6
  %gc = getelementptr inbounds %struct.irqc_priv, ptr %call.i, i32 0, i32 5
  %23 = ptrtoint ptr %gc to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call79, ptr %gc, align 4
  %24 = ptrtoint ptr %cpu_int_base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cpu_int_base, align 4
  %reg_base = getelementptr inbounds %struct.irq_chip_generic, ptr %call79, i32 0, i32 1
  %26 = ptrtoint ptr %reg_base to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %reg_base, align 4
  %27 = load ptr, ptr %gc, align 4
  %regs = getelementptr inbounds %struct.irq_chip_generic, ptr %27, i32 2, i32 0, i32 4
  %28 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 8, ptr %regs, align 4
  %29 = load ptr, ptr %gc, align 4
  %disable = getelementptr inbounds %struct.irq_chip_generic, ptr %29, i32 2, i32 0, i32 4, i32 1
  %30 = ptrtoint ptr %disable to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 4, ptr %disable, align 4
  %31 = load ptr, ptr %gc, align 4
  %chip_types89 = getelementptr inbounds %struct.irq_chip_generic, ptr %31, i32 0, i32 19
  %32 = ptrtoint ptr %chip_types89 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %dev1, ptr %chip_types89, align 4
  %33 = load ptr, ptr %gc, align 4
  %irq_mask = getelementptr inbounds %struct.irq_chip_generic, ptr %33, i32 1, i32 0, i32 4, i32 2
  %34 = ptrtoint ptr %irq_mask to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @irq_gc_mask_disable_reg, ptr %irq_mask, align 4
  %35 = load ptr, ptr %gc, align 4
  %irq_unmask = getelementptr inbounds %struct.irq_chip_generic, ptr %35, i32 1, i32 0, i32 4, i32 6
  %36 = ptrtoint ptr %irq_unmask to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @irq_gc_unmask_enable_reg, ptr %irq_unmask, align 4
  %37 = load ptr, ptr %gc, align 4
  %irq_set_type = getelementptr inbounds %struct.irq_chip_generic, ptr %37, i32 1, i32 3
  %38 = ptrtoint ptr %irq_set_type to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @irqc_irq_set_type, ptr %irq_set_type, align 4
  %39 = load ptr, ptr %gc, align 4
  %irq_set_wake = getelementptr inbounds %struct.irq_chip_generic, ptr %39, i32 1, i32 4
  %40 = ptrtoint ptr %irq_set_wake to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @irqc_irq_set_wake, ptr %irq_set_wake, align 4
  %41 = load ptr, ptr %gc, align 4
  %flags = getelementptr inbounds %struct.irq_chip_generic, ptr %41, i32 2, i32 0, i32 3
  %42 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 4, ptr %flags, align 4
  %43 = ptrtoint ptr %number_of_irqs217 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %number_of_irqs217, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %cmp113223.not = icmp eq i32 %44, 0
  br i1 %cmp113223.not, label %if.end77.do.end133_crit_edge, label %if.end77.for.body115_crit_edge

if.end77.for.body115_crit_edge:                   ; preds = %if.end77
  br label %for.body115

if.end77.do.end133_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end133

for.cond111:                                      ; preds = %for.body115
  %inc129 = add nuw i32 %k.1224, 1
  %45 = ptrtoint ptr %number_of_irqs217 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %number_of_irqs217, align 4
  %cmp113 = icmp ult i32 %inc129, %46
  br i1 %cmp113, label %for.cond111.for.body115_crit_edge, label %for.cond111.do.end133_crit_edge

for.cond111.do.end133_crit_edge:                  ; preds = %for.cond111
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end133

for.cond111.for.body115_crit_edge:                ; preds = %for.cond111
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body115

for.body115:                                      ; preds = %for.cond111.for.body115_crit_edge, %if.end77.for.body115_crit_edge
  %k.1224 = phi i32 [ %inc129, %for.cond111.for.body115_crit_edge ], [ 0, %if.end77.for.body115_crit_edge ]
  %arrayidx117 = getelementptr %struct.irqc_priv, ptr %call.i, i32 0, i32 2, i32 %k.1224
  %requested_irq118 = getelementptr %struct.irqc_priv, ptr %call.i, i32 0, i32 2, i32 %k.1224, i32 1
  %47 = ptrtoint ptr %requested_irq118 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %requested_irq118, align 4
  %call.i213 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %48, ptr noundef nonnull @irqc_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i, ptr noundef %arrayidx117) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i213)
  %tobool122.not = icmp eq i32 %call.i213, 0
  br i1 %tobool122.not, label %for.cond111, label %for.body115.err_remove_domain_crit_edge

for.body115.err_remove_domain_crit_edge:          ; preds = %for.body115
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_remove_domain

do.end133:                                        ; preds = %for.cond111.do.end133_crit_edge, %if.end77.do.end133_crit_edge
  %.lcssa = phi i32 [ 0, %if.end77.do.end133_crit_edge ], [ %46, %for.cond111.do.end133_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.17, i32 noundef %.lcssa) #9
  br label %cleanup

err_remove_domain:                                ; preds = %for.body115.err_remove_domain_crit_edge, %do.end68.err_remove_domain_crit_edge
  %.str.14.sink = phi ptr [ @.str.11, %do.end68.err_remove_domain_crit_edge ], [ @.str.14, %for.body115.err_remove_domain_crit_edge ]
  %ret.0 = phi i32 [ %call71, %do.end68.err_remove_domain_crit_edge ], [ -2, %for.body115.err_remove_domain_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull %.str.14.sink) #9
  %49 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %irq_domain, align 4
  tail call void @irq_domain_remove(ptr noundef %50) #6
  br label %err_runtime_pm_disable

err_runtime_pm_disable:                           ; preds = %err_remove_domain, %if.then33, %if.then24, %do.end, %if.end8.err_runtime_pm_disable_crit_edge
  %ret.1 = phi i32 [ -22, %do.end ], [ %12, %if.then24 ], [ %ret.0, %err_remove_domain ], [ -6, %if.then33 ], [ %call5, %if.end8.err_runtime_pm_disable_crit_edge ]
  %call.i214 = tail call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 5) #6
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #6
  br label %cleanup

cleanup:                                          ; preds = %err_runtime_pm_disable, %do.end133, %dev_name.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %err_runtime_pm_disable ], [ 0, %do.end133 ], [ -12, %dev_name.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irqc_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %irq_domain = getelementptr inbounds %struct.irqc_priv, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_domain, align 4
  tail call void @irq_domain_remove(ptr noundef %3) #6
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #6
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_optional(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_alloc_domain_generic_chips(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_domain_generic_chip(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_mask_disable_reg(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_unmask_enable_reg(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irqc_irq_set_type(ptr nocapture noundef readonly %d, i32 noundef %type) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %domain.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 5
  %0 = ptrtoint ptr %domain.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domain.i, align 4
  %host_data.i = getelementptr inbounds %struct.irq_domain, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %host_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host_data.i, align 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq.i, align 4
  %and = and i32 %type, 15
  %arrayidx = getelementptr [16 x i8], ptr @irqc_sense, i32 0, i32 %and
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irqc_dbg.__UNIQUE_ID_ddebug188, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irqc_irq_set_type, %if.then.i)) #6
          to label %irqc_dbg.exit [label %if.then.i], !srcloc !70

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx2 = getelementptr %struct.irqc_priv, ptr %3, i32 0, i32 2, i32 %5
  %p.i = getelementptr %struct.irqc_priv, ptr %3, i32 0, i32 2, i32 %5, i32 2
  %8 = ptrtoint ptr %p.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %p.i, align 4
  %dev.i = getelementptr inbounds %struct.irqc_priv, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i, align 4
  %requested_irq.i = getelementptr %struct.irqc_priv, ptr %3, i32 0, i32 2, i32 %5, i32 1
  %12 = ptrtoint ptr %requested_irq.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %requested_irq.i, align 4
  %14 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx2, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @irqc_dbg.__UNIQUE_ID_ddebug188, ptr noundef %11, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.20, i32 noundef %13, i32 noundef %15) #6
  br label %irqc_dbg.exit

irqc_dbg.exit:                                    ; preds = %if.then.i, %entry
  %16 = lshr i32 65249, %and
  %17 = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.not = icmp eq i32 %17, 0
  br i1 %tobool.not.not, label %if.end, label %irqc_dbg.exit.cleanup_crit_edge

irqc_dbg.exit.cleanup_crit_edge:                  ; preds = %irqc_dbg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %irqc_dbg.exit
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %3, align 4
  %mul = shl i32 %5, 2
  %add = add i32 %mul, 384
  %add.ptr = getelementptr i8, ptr %19, i32 %add
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !71
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  %21 = and i32 %20, -1056964609
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %conv = zext i8 %7 to i32
  %or = or i32 %22, %conv
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %3, align 4
  %add.ptr8 = getelementptr i8, ptr %24, i32 %add
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  %25 = tail call i32 @llvm.bswap.i32(i32 %or) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %25) #6, !srcloc !74
  br label %cleanup

cleanup:                                          ; preds = %if.end, %irqc_dbg.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %irqc_dbg.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irqc_irq_set_wake(ptr nocapture noundef readonly %d, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %domain.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 5
  %0 = ptrtoint ptr %domain.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domain.i, align 4
  %host_data.i = getelementptr inbounds %struct.irq_domain, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %host_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host_data.i, align 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq.i, align 4
  %requested_irq = getelementptr %struct.irqc_priv, ptr %3, i32 0, i32 2, i32 %5, i32 1
  %6 = ptrtoint ptr %requested_irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %requested_irq, align 4
  %call2 = tail call i32 @irq_set_irq_wake(i32 noundef %7, i32 noundef %on) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  %wakeup_path3 = getelementptr inbounds %struct.irqc_priv, ptr %3, i32 0, i32 7
  %call.i.i8 = tail call zeroext i1 @__kasan_check_write(ptr noundef %wakeup_path3, i32 noundef 4) #6
  tail call void @llvm.prefetch.p0(ptr %wakeup_path3, i32 1, i32 3, i32 1) #6
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %wakeup_path3, ptr %wakeup_path3, i32 1, ptr elementtype(i32) %wakeup_path3) #6, !srcloc !75
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %9 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %wakeup_path3, ptr %wakeup_path3, i32 1, ptr elementtype(i32) %wakeup_path3) #6, !srcloc !76
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irqc_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %p1 = getelementptr inbounds %struct.irqc_irq, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %p1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %p1, align 4
  %2 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dev_id, align 4
  %shl = shl nuw i32 1, %3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irqc_dbg.__UNIQUE_ID_ddebug188, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irqc_irq_handler, %if.then.i)) #6
          to label %irqc_dbg.exit [label %if.then.i], !srcloc !70

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %p1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %p1, align 4
  %dev.i = getelementptr inbounds %struct.irqc_priv, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %requested_irq.i = getelementptr inbounds %struct.irqc_irq, ptr %dev_id, i32 0, i32 1
  %8 = ptrtoint ptr %requested_irq.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %requested_irq.i, align 4
  %10 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dev_id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @irqc_dbg.__UNIQUE_ID_ddebug188, ptr noundef %7, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef %9, i32 noundef %11) #6
  br label %irqc_dbg.exit

irqc_dbg.exit:                                    ; preds = %if.then.i, %entry
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %add.ptr = getelementptr i8, ptr %13, i32 256
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !71
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !72
  %and = and i32 %15, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %irqc_dbg.exit.cleanup_crit_edge, label %if.then

irqc_dbg.exit.cleanup_crit_edge:                  ; preds = %irqc_dbg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then:                                          ; preds = %irqc_dbg.exit
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %add.ptr3 = getelementptr i8, ptr %17, i32 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !73
  tail call void @arm_heavy_mb() #6
  %18 = tail call i32 @llvm.bswap.i32(i32 %shl) #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %18) #6, !srcloc !74
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @irqc_dbg.__UNIQUE_ID_ddebug188, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@irqc_irq_handler, %if.then.i18)) #6
          to label %irqc_dbg.exit19 [label %if.then.i18], !srcloc !70

if.then.i18:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %19 = ptrtoint ptr %p1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %p1, align 4
  %dev.i16 = getelementptr inbounds %struct.irqc_priv, ptr %20, i32 0, i32 4
  %21 = ptrtoint ptr %dev.i16 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i16, align 4
  %requested_irq.i17 = getelementptr inbounds %struct.irqc_irq, ptr %dev_id, i32 0, i32 1
  %23 = ptrtoint ptr %requested_irq.i17 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %requested_irq.i17, align 4
  %25 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dev_id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @irqc_dbg.__UNIQUE_ID_ddebug188, ptr noundef %22, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.25, i32 noundef %24, i32 noundef %26) #6
  br label %irqc_dbg.exit19

irqc_dbg.exit19:                                  ; preds = %if.then.i18, %if.then
  %irq_domain = getelementptr inbounds %struct.irqc_priv, ptr %1, i32 0, i32 6
  %27 = ptrtoint ptr %irq_domain to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %irq_domain, align 4
  %29 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dev_id, align 4
  %call5 = tail call i32 @generic_handle_domain_irq(ptr noundef %28, i32 noundef %30) #6
  br label %cleanup

cleanup:                                          ; preds = %irqc_dbg.exit19, %irqc_dbg.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %irqc_dbg.exit19 ], [ 0, %irqc_dbg.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irqc_suspend(ptr nocapture noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %wakeup_path = getelementptr inbounds %struct.irqc_priv, ptr %1, i32 0, i32 7
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %wakeup_path, i32 noundef 4) #6
  %2 = ptrtoint ptr %wakeup_path to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %wakeup_path, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %wakeup_path.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 7
  %4 = ptrtoint ptr %wakeup_path.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load.i = load i8, ptr %wakeup_path.i, align 4
  %bf.set.i = or i8 %bf.load.i, -128
  store i8 %bf.set.i, ptr %wakeup_path.i, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 27)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !27, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !42, !44, !46, !48, !49, !50, !51, !53, !55, !57}
!llvm.module.flags = !{!59, !60, !61, !62, !63, !64, !65, !66}
!llvm.ident = !{!67}

!0 = !{ptr @__initcall__kmod_irq_renesas_irqc__190_262_irqc_init2, !1, !"__initcall__kmod_irq_renesas_irqc__190_262_irqc_init2", i1 false, i1 false}
!1 = !{!"../drivers/irqchip/irq-renesas-irqc.c", i32 262, i32 1}
!2 = !{ptr @__exitcall_irqc_exit, !3, !"__exitcall_irqc_exit", i1 false, i1 false}
!3 = !{!"../drivers/irqchip/irq-renesas-irqc.c", i32 268, i32 1}
!4 = !{ptr @__UNIQUE_ID_author191, !5, !"__UNIQUE_ID_author191", i1 false, i1 false}
!5 = !{!"../drivers/irqchip/irq-renesas-irqc.c", i32 270, i32 1}
!6 = !{ptr @__UNIQUE_ID_description192, !7, !"__UNIQUE_ID_description192", i1 false, i1 false}
!7 = !{!"../drivers/irqchip/irq-renesas-irqc.c", i32 271, i32 1}
!8 = !{ptr @__UNIQUE_ID_file193, !9, !"__UNIQUE_ID_file193", i1 false, i1 false}
!9 = !{!"../drivers/irqchip/irq-renesas-irqc.c", i32 272, i32 1}
!10 = !{ptr @__UNIQUE_ID_license194, !9, !"__UNIQUE_ID_license194", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/irqchip/irq-renesas-irqc.c", i32 252, i32 11}
!13 = !{ptr @irqc_device_driver, !14, !"irqc_device_driver", i1 false, i1 false}
!14 = !{!"../drivers/irqchip/irq-renesas-irqc.c", i32 248, i32 31}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/irqchip/irq-renesas-irqc.c", i32 157, i32 3}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @irqc_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @irqc_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/irqchip/irq-renesas-irqc.c", i32 175, i32 3}
!25 = !{ptr @irqc_probe._entry.6, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @irqc_probe._entry_ptr.8, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/irqchip/irq-renesas-irqc.c", i32 179, i32 8}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/irqchip/irq-renesas-irqc.c", i32 183, i32 3}
!31 = !{ptr @irqc_probe._entry.10, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @irqc_probe._entry_ptr.12, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/irqchip/irq-renesas-irqc.c", i32 202, i32 4}
!35 = !{ptr @irqc_probe._entry.13, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @irqc_probe._entry_ptr.15, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/irqchip/irq-renesas-irqc.c", i32 208, i32 2}
!39 = !{ptr @.str.18, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @irqc_probe._entry.16, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @irqc_probe._entry_ptr.19, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/irqchip/irq-renesas-irqc.c", i32 81, i32 28}
!44 = !{ptr @irqc_sense, !45, !"irqc_sense", i1 false, i1 false}
!45 = !{!"../drivers/irqchip/irq-renesas-irqc.c", i32 66, i32 22}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/irqchip/irq-renesas-irqc.c", i32 63, i32 2}
!48 = !{ptr @.str.22, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @irqc_dbg.__UNIQUE_ID_ddebug188, !47, !"__UNIQUE_ID_ddebug188", i1 false, i1 false}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/irqchip/irq-renesas-irqc.c", i32 113, i32 14}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/irqchip/irq-renesas-irqc.c", i32 117, i32 15}
!55 = !{ptr @irqc_dt_ids, !56, !"irqc_dt_ids", i1 false, i1 false}
!56 = !{!"../drivers/irqchip/irq-renesas-irqc.c", i32 242, i32 34}
!57 = !{ptr @irqc_pm_ops, !58, !"irqc_pm_ops", i1 false, i1 false}
!58 = !{!"../drivers/irqchip/irq-renesas-irqc.c", i32 240, i32 8}
!59 = !{i32 1, !"wchar_size", i32 2}
!60 = !{i32 1, !"min_enum_size", i32 4}
!61 = !{i32 8, !"branch-target-enforcement", i32 0}
!62 = !{i32 8, !"sign-return-address", i32 0}
!63 = !{i32 8, !"sign-return-address-all", i32 0}
!64 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!65 = !{i32 7, !"uwtable", i32 1}
!66 = !{i32 7, !"frame-pointer", i32 2}
!67 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!68 = !{!"branch_weights", i32 1, i32 2000}
!69 = !{i64 2153144393, i64 2153144892, i64 2153144430, i64 2153144486, i64 2153144520, i64 2153144544, i64 2153144585, i64 2153144606, i64 2153144634, i64 2153144668}
!70 = !{i64 2148295153, i64 2148295158, i64 2148295171, i64 2148295215, i64 2148295249, i64 2148295270}
!71 = !{i64 4877874}
!72 = !{i64 2152418223}
!73 = !{i64 2152419578}
!74 = !{i64 4877456}
!75 = !{i64 2148481760, i64 2148481786, i64 2148481815, i64 2148481849, i64 2148481880, i64 2148481903}
!76 = !{i64 2148484225, i64 2148484251, i64 2148484280, i64 2148484314, i64 2148484345, i64 2148484368}
