; ModuleID = '/llk/IR_all_yes/drivers/irqchip/irq-imx-irqsteer.c_pt.bc'
source_filename = "../drivers/irqchip/irq-imx-irqsteer.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
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
%struct.irqsteer_data = type { ptr, ptr, [8 x i32], i32, %struct.raw_spinlock, i32, i32, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@__initcall__kmod_irq_imx_irqsteer__187_308_imx_irqsteer_driver_init6 = internal global ptr @imx_irqsteer_driver_init, section ".initcall6.init", align 4
@imx_irqsteer_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @imx_irqsteer_probe, ptr @imx_irqsteer_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @imx_irqsteer_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx_irqsteer_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"imx-irqsteer\00", [19 x i8] zeroinitializer }, align 32
@imx_irqsteer_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx-irqsteer\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@imx_irqsteer_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx_irqsteer_suspend, ptr @imx_irqsteer_resume, ptr @imx_irqsteer_suspend, ptr @imx_irqsteer_resume, ptr @imx_irqsteer_suspend, ptr @imx_irqsteer_resume, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@imx_irqsteer_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 153, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to initialize reg\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"imx_irqsteer_probe\00", [45 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/irqchip/irq-imx-irqsteer.c\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@imx_irqsteer_probe._entry_ptr = internal global ptr @imx_irqsteer_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ipg\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to get ipg clk\0A\00", [41 x i8] zeroinitializer }, align 32
@imx_irqsteer_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fsl,num-irqs\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"fsl,channel\00", [20 x i8] zeroinitializer }, align 32
@imx_irqsteer_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 188, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to enable ipg clk: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@imx_irqsteer_probe._entry_ptr.13 = internal global ptr @imx_irqsteer_probe._entry.11, section ".printk_index", align 4
@imx_irqsteer_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr @imx_irqsteer_irq_map, ptr null, ptr @irq_domain_xlate_onecell, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@imx_irqsteer_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 198, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"failed to create IRQ domain\0A\00", [35 x i8] zeroinitializer }, align 32
@imx_irqsteer_probe._entry_ptr.16 = internal global ptr @imx_irqsteer_probe._entry.14, section ".printk_index", align 4
@imx_irqsteer_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.17, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @imx_irqsteer_irq_mask, ptr null, ptr @imx_irqsteer_irq_unmask, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"irqsteer\00", [23 x i8] zeroinitializer }, align 32
@imx_irqsteer_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.3, i32 118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\014%s: unable to get hwirq base for irq %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"imx_irqsteer_irq_handler\00", [39 x i8] zeroinitializer }, align 32
@imx_irqsteer_irq_handler._entry_ptr = internal global ptr @imx_irqsteer_irq_handler._entry, section ".printk_index", align 4
@imx_irqsteer_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.20, ptr @.str.3, i32 281, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"imx_irqsteer_resume\00", [44 x i8] zeroinitializer }, align 32
@imx_irqsteer_resume._entry_ptr = internal global ptr @imx_irqsteer_resume._entry, section ".printk_index", align 4
@___asan_gen_.21 = private unnamed_addr constant [20 x i8] c"imx_irqsteer_driver\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 299, i32 31 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 301, i32 11 }
@___asan_gen_.27 = private unnamed_addr constant [20 x i8] c"imx_irqsteer_dt_ids\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 294, i32 34 }
@___asan_gen_.30 = private unnamed_addr constant [20 x i8] c"imx_irqsteer_pm_ops\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 290, i32 32 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 153, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 157, i32 43 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 160, i32 10 }
@___asan_gen_.57 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 162, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 164, i32 33 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 167, i32 33 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 188, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant [24 x i8] c"imx_irqsteer_domain_ops\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 89, i32 36 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 198, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [22 x i8] c"imx_irqsteer_irq_chip\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 73, i32 24 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 74, i32 11 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 117, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.102 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.103 = private constant [38 x i8] c"../drivers/irqchip/irq-imx-irqsteer.c\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 281, i32 3 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__initcall__kmod_irq_imx_irqsteer__187_308_imx_irqsteer_driver_init6, ptr @imx_irqsteer_irq_handler._entry, ptr @imx_irqsteer_irq_handler._entry_ptr, ptr @imx_irqsteer_probe._entry, ptr @imx_irqsteer_probe._entry.11, ptr @imx_irqsteer_probe._entry.14, ptr @imx_irqsteer_probe._entry_ptr, ptr @imx_irqsteer_probe._entry_ptr.13, ptr @imx_irqsteer_probe._entry_ptr.16, ptr @imx_irqsteer_resume._entry, ptr @imx_irqsteer_resume._entry_ptr, ptr @imx_irqsteer_driver, ptr @.str, ptr @imx_irqsteer_dt_ids, ptr @imx_irqsteer_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @imx_irqsteer_probe.__key, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @imx_irqsteer_domain_ops, ptr @.str.15, ptr @imx_irqsteer_irq_chip, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_irqsteer_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_irqsteer_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_irqsteer_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_irqsteer_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_irqsteer_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_irqsteer_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_irqsteer_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_irqsteer_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_irqsteer_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_irqsteer_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_irqsteer_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_irqsteer_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @imx_irqsteer_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_irqsteer_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %irqs_num = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irqs_num) #6
  %2 = ptrtoint ptr %irqs_num to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %irqs_num, align 4, !annotation !61
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 104, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #6
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call2, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call.i, align 4
  %6 = ptrtoint ptr %5 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call11 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.6) #6
  %ipg_clk = getelementptr inbounds %struct.irqsteer_data, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %ipg_clk to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call11, ptr %ipg_clk, align 4
  %cmp.i136 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i136, label %if.then14, label %do.body20

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %call11 to i32
  %call18 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %8, ptr noundef nonnull @.str.7) #6
  br label %cleanup

do.body20:                                        ; preds = %if.end9
  %lock = getelementptr inbounds %struct.irqsteer_data, ptr %call.i, i32 0, i32 4
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @imx_irqsteer_probe.__key, i16 noundef signext 2) #6
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.9, ptr noundef nonnull %irqs_num, i32 noundef 1, i32 noundef 0) #6
  %9 = call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool24.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool24.not, label %if.end26, label %do.body20.cleanup_crit_edge

do.body20.cleanup_crit_edge:                      ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end26:                                         ; preds = %do.body20
  %channel = getelementptr inbounds %struct.irqsteer_data, ptr %call.i, i32 0, i32 6
  %call.i.i137 = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.10, ptr noundef %channel, i32 noundef 1, i32 noundef 0) #6
  %10 = call i32 @llvm.smin.i32(i32 %call.i.i137, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i137)
  %tobool28.not = icmp sgt i32 %call.i.i137, -1
  br i1 %tobool28.not, label %if.end30, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end30:                                         ; preds = %if.end26
  %11 = ptrtoint ptr %irqs_num to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irqs_num, align 4
  %sub = add i32 %12, 63
  %div134 = lshr i32 %sub, 6
  %irq_count = getelementptr inbounds %struct.irqsteer_data, ptr %call.i, i32 0, i32 3
  %13 = ptrtoint ptr %irq_count to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %div134, ptr %irq_count, align 4
  %div31135 = lshr i32 %12, 5
  %reg_num = getelementptr inbounds %struct.irqsteer_data, ptr %call.i, i32 0, i32 5
  %14 = ptrtoint ptr %reg_num to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %div31135, ptr %reg_num, align 4
  %mul = shl nuw nsw i32 %div31135, 2
  %call.i138 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %mul, i32 noundef 3520) #6
  %saved_reg = getelementptr inbounds %struct.irqsteer_data, ptr %call.i, i32 0, i32 8
  %15 = ptrtoint ptr %saved_reg to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i138, ptr %saved_reg, align 4
  %tobool36.not = icmp eq ptr %call.i138, null
  br i1 %tobool36.not, label %if.end30.cleanup_crit_edge, label %if.end38

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end38:                                         ; preds = %if.end30
  %16 = ptrtoint ptr %ipg_clk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ipg_clk, align 4
  %call.i139 = call i32 @clk_prepare(ptr noundef %17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i139)
  %tobool.not.i = icmp eq i32 %call.i139, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end38.do.end45_crit_edge

if.end38.do.end45_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end45

if.end.i:                                         ; preds = %if.end38
  %call1.i = call i32 @clk_enable(ptr noundef %17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end47, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @clk_unprepare(ptr noundef %17) #6
  br label %do.end45

do.end45:                                         ; preds = %if.then3.i, %if.end38.do.end45_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i139, %if.end38.do.end45_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %retval.0.i.ph) #9
  br label %cleanup

if.end47:                                         ; preds = %if.end.i
  %18 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %channel, align 4
  %shl = shl nuw i32 1, %19
  %20 = call i32 @llvm.bswap.i32(i32 %shl)
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %22, i32 %20) #6, !srcloc !62
  %23 = ptrtoint ptr %reg_num to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %reg_num, align 4
  %mul51 = shl i32 %24, 5
  %tobool.not.i.i = icmp eq ptr %1, null
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %1, i32 0, i32 3
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr null, ptr %fwnode.i.i
  %call1.i140 = call ptr @__irq_domain_add(ptr noundef %spec.select.i.i, i32 noundef %mul51, i32 noundef %mul51, i32 noundef 0, ptr noundef nonnull @imx_irqsteer_domain_ops, ptr noundef nonnull %call.i) #6
  %domain = getelementptr inbounds %struct.irqsteer_data, ptr %call.i, i32 0, i32 7
  %25 = ptrtoint ptr %domain to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call1.i140, ptr %domain, align 4
  %tobool54.not = icmp eq ptr %call1.i140, null
  br i1 %tobool54.not, label %do.end58, label %if.end60

do.end58:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.15) #9
  br label %out

if.end60:                                         ; preds = %if.end47
  %26 = ptrtoint ptr %irq_count to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %irq_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool62.not = icmp eq i32 %27, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %27)
  %cmp = icmp sgt i32 %27, 8
  %or.cond = or i1 %tobool62.not, %cmp
  br i1 %or.cond, label %if.end60.out_crit_edge, label %for.cond.preheader

if.end60.out_crit_edge:                           ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

for.cond.preheader:                               ; preds = %if.end60
  %28 = ptrtoint ptr %irq_count to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %irq_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp67144 = icmp sgt i32 %29, 0
  br i1 %cmp67144, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %if.end73.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0145 = phi i32 [ %inc, %if.end73.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call68 = call i32 @irq_of_parse_and_map(ptr noundef %1, i32 noundef %i.0145) #6
  %arrayidx = getelementptr %struct.irqsteer_data, ptr %call.i, i32 0, i32 2, i32 %i.0145
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call68, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool71.not = icmp eq i32 %call68, 0
  br i1 %tobool71.not, label %for.body.out_crit_edge, label %if.end73

for.body.out_crit_edge:                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end73:                                         ; preds = %for.body
  call void @irq_set_chained_handler_and_data(i32 noundef %call68, ptr noundef nonnull @imx_irqsteer_irq_handler, ptr noundef nonnull %call.i) #6
  %inc = add nuw nsw i32 %i.0145, 1
  %31 = ptrtoint ptr %irq_count to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %irq_count, align 4
  %cmp67 = icmp slt i32 %inc, %32
  br i1 %cmp67, label %if.end73.for.body_crit_edge, label %if.end73.for.end_crit_edge

if.end73.for.end_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

if.end73.for.body_crit_edge:                      ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %if.end73.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %33 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  br label %cleanup

out:                                              ; preds = %for.body.out_crit_edge, %if.end60.out_crit_edge, %do.end58
  %ret.0 = phi i32 [ -12, %do.end58 ], [ -22, %if.end60.out_crit_edge ], [ -22, %for.body.out_crit_edge ]
  %34 = ptrtoint ptr %ipg_clk to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ipg_clk, align 4
  call void @clk_disable(ptr noundef %35) #6
  call void @clk_unprepare(ptr noundef %35) #6
  br label %cleanup

cleanup:                                          ; preds = %out, %for.end, %do.end45, %if.end30.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %do.body20.cleanup_crit_edge, %if.then14, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %6, %do.end ], [ %call18, %if.then14 ], [ %retval.0.i.ph, %do.end45 ], [ %ret.0, %out ], [ 0, %for.end ], [ -12, %entry.cleanup_crit_edge ], [ %9, %do.body20.cleanup_crit_edge ], [ %10, %if.end26.cleanup_crit_edge ], [ -12, %if.end30.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irqs_num) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_irqsteer_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %irq_count = getelementptr inbounds %struct.irqsteer_data, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %irq_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp6 = icmp sgt i32 %3, 0
  br i1 %cmp6, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.07 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.irqsteer_data, ptr %1, i32 0, i32 2, i32 %i.07
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  tail call void @irq_set_chained_handler_and_data(i32 noundef %5, ptr noundef null, ptr noundef null) #6
  %inc = add nuw nsw i32 %i.07, 1
  %6 = ptrtoint ptr %irq_count to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq_count, align 4
  %cmp = icmp slt i32 %inc, %7
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %domain = getelementptr inbounds %struct.irqsteer_data, ptr %1, i32 0, i32 7
  %8 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %domain, align 4
  tail call void @irq_domain_remove(ptr noundef %9) #6
  %ipg_clk = getelementptr inbounds %struct.irqsteer_data, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %ipg_clk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ipg_clk, align 4
  tail call void @clk_disable(ptr noundef %11) #6
  tail call void @clk_unprepare(ptr noundef %11) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx_irqsteer_irq_handler(ptr noundef %desc) #2 align 64 {
entry:
  %irqmap = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data.i, align 4
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %entry
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 8
  %6 = ptrtoint ptr %irq_mask_ack.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_mask_ack.i, align 4
  %tobool1.not.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %7(ptr noundef %irq_data.i) #6
  br label %chained_irq_enter.exit

if.else.i:                                        ; preds = %if.end.i
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 7
  %8 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_mask.i, align 4
  %irq_data4.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %9(ptr noundef %irq_data4.i) #6
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irq_ack.i, align 4
  %tobool5.not.i = icmp eq ptr %11, null
  br i1 %tobool5.not.i, label %if.else.i.chained_irq_enter.exit_crit_edge, label %if.then6.i

if.else.i.chained_irq_enter.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %chained_irq_enter.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void %11(ptr noundef %irq_data4.i) #6
  br label %chained_irq_enter.exit

chained_irq_enter.exit:                           ; preds = %if.then6.i, %if.else.i.chained_irq_enter.exit_crit_edge, %if.then2.i, %entry.chained_irq_enter.exit_crit_edge
  %irq.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %irq.i, align 4
  %irq_count.i = getelementptr inbounds %struct.irqsteer_data, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %irq_count.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %irq_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp8.i = icmp sgt i32 %15, 0
  br i1 %cmp8.i, label %chained_irq_enter.exit.for.body.i_crit_edge, label %chained_irq_enter.exit.do.end_crit_edge

chained_irq_enter.exit.do.end_crit_edge:          ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

chained_irq_enter.exit.for.body.i_crit_edge:      ; preds = %chained_irq_enter.exit
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %chained_irq_enter.exit.for.body.i_crit_edge
  %i.09.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %chained_irq_enter.exit.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.irqsteer_data, ptr %1, i32 0, i32 2, i32 %i.09.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %13)
  %cmp2.i = icmp eq i32 %17, %13
  br i1 %cmp2.i, label %imx_irqsteer_get_hwirq_base.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %15
  br i1 %exitcond.not.i, label %for.inc.i.do.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.inc.i.do.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

imx_irqsteer_get_hwirq_base.exit:                 ; preds = %for.body.i
  %mul.i = shl i32 %i.09.i, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %cmp = icmp slt i32 %mul.i, 0
  br i1 %cmp, label %imx_irqsteer_get_hwirq_base.exit.do.end_crit_edge, label %for.cond.preheader

imx_irqsteer_get_hwirq_base.exit.do.end_crit_edge: ; preds = %imx_irqsteer_get_hwirq_base.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

for.cond.preheader:                               ; preds = %imx_irqsteer_get_hwirq_base.exit
  %reg_num.i = getelementptr inbounds %struct.irqsteer_data, ptr %1, i32 0, i32 5
  %domain = getelementptr inbounds %struct.irqsteer_data, ptr %1, i32 0, i32 7
  %18 = ptrtoint ptr %reg_num.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %reg_num.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irqmap) #6
  %mul = shl i32 %19, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %mul)
  %cmp7.not = icmp slt i32 %mul.i, %mul
  br i1 %cmp7.not, label %if.end9, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end:                                           ; preds = %imx_irqsteer_get_hwirq_base.exit.do.end_crit_edge, %for.inc.i.do.end_crit_edge, %chained_irq_enter.exit.do.end_crit_edge
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, i32 noundef %13) #9
  br label %cleanup31

if.end9:                                          ; preds = %for.cond.preheader
  %div2.i = lshr exact i32 %mul.i, 5
  %20 = xor i32 %div2.i, -1
  %sub1.i = add i32 %19, %20
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %mul12 = shl i32 %19, 3
  %mul13 = shl i32 %sub1.i, 2
  %add = or i32 %mul12, 4
  %add14 = add i32 %add, %mul13
  %add.ptr = getelementptr i8, ptr %22, i32 %add14
  %23 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !63
  %24 = call i32 @llvm.bswap.i32(i32 %23)
  %25 = ptrtoint ptr %irqmap to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %irqmap, align 4
  %call17 = call i32 @_find_next_bit_be(ptr noundef nonnull %irqmap, i32 noundef 32, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call17)
  %cmp1965 = icmp slt i32 %call17, 32
  br i1 %cmp1965, label %if.end9.for.body20_crit_edge, label %if.end9.for.inc27_crit_edge

if.end9.for.inc27_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc27

if.end9.for.body20_crit_edge:                     ; preds = %if.end9
  br label %for.body20

for.body20:                                       ; preds = %for.body20.for.body20_crit_edge, %if.end9.for.body20_crit_edge
  %pos.066 = phi i32 [ %call24, %for.body20.for.body20_crit_edge ], [ %call17, %if.end9.for.body20_crit_edge ]
  %26 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %domain, align 4
  %add21 = add i32 %pos.066, %mul.i
  %call22 = call i32 @generic_handle_domain_irq(ptr noundef %27, i32 noundef %add21) #6
  %add23 = add nsw i32 %pos.066, 1
  %call24 = call i32 @_find_next_bit_be(ptr noundef nonnull %irqmap, i32 noundef 32, i32 noundef %add23) #6
  %cmp19 = icmp slt i32 %call24, 32
  br i1 %cmp19, label %for.body20.for.body20_crit_edge, label %for.body20.for.inc27_crit_edge

for.body20.for.inc27_crit_edge:                   ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc27

for.body20.for.body20_crit_edge:                  ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body20

cleanup:                                          ; preds = %for.inc27.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irqmap) #6
  br label %for.end29

for.inc27:                                        ; preds = %for.body20.for.inc27_crit_edge, %if.end9.for.inc27_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irqmap) #6
  %add28 = or i32 %mul.i, 32
  %28 = ptrtoint ptr %reg_num.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %reg_num.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irqmap) #6
  %30 = ptrtoint ptr %irqmap to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %irqmap, align 4, !annotation !61
  %mul.1 = shl i32 %29, 5
  call void @__sanitizer_cov_trace_cmp4(i32 %add28, i32 %mul.1)
  %cmp7.not.1 = icmp slt i32 %add28, %mul.1
  br i1 %cmp7.not.1, label %if.end9.1, label %for.inc27.cleanup_crit_edge

for.inc27.cleanup_crit_edge:                      ; preds = %for.inc27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9.1:                                        ; preds = %for.inc27
  %div2.i.1 = lshr exact i32 %add28, 5
  %31 = xor i32 %div2.i.1, -1
  %sub1.i.1 = add i32 %29, %31
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  %mul12.1 = shl i32 %29, 3
  %mul13.1 = shl i32 %sub1.i.1, 2
  %add.1 = or i32 %mul12.1, 4
  %add14.1 = add i32 %add.1, %mul13.1
  %add.ptr.1 = getelementptr i8, ptr %33, i32 %add14.1
  %34 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.1) #6, !srcloc !63
  %35 = call i32 @llvm.bswap.i32(i32 %34)
  %36 = ptrtoint ptr %irqmap to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %irqmap, align 4
  %call17.1 = call i32 @_find_next_bit_be(ptr noundef nonnull %irqmap, i32 noundef 32, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call17.1)
  %cmp1965.1 = icmp slt i32 %call17.1, 32
  br i1 %cmp1965.1, label %if.end9.1.for.body20.1_crit_edge, label %if.end9.1.for.inc27.1_crit_edge

if.end9.1.for.inc27.1_crit_edge:                  ; preds = %if.end9.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc27.1

if.end9.1.for.body20.1_crit_edge:                 ; preds = %if.end9.1
  br label %for.body20.1

for.body20.1:                                     ; preds = %for.body20.1.for.body20.1_crit_edge, %if.end9.1.for.body20.1_crit_edge
  %pos.066.1 = phi i32 [ %call24.1, %for.body20.1.for.body20.1_crit_edge ], [ %call17.1, %if.end9.1.for.body20.1_crit_edge ]
  %37 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %domain, align 4
  %add21.1 = add i32 %pos.066.1, %add28
  %call22.1 = call i32 @generic_handle_domain_irq(ptr noundef %38, i32 noundef %add21.1) #6
  %add23.1 = add nsw i32 %pos.066.1, 1
  %call24.1 = call i32 @_find_next_bit_be(ptr noundef nonnull %irqmap, i32 noundef 32, i32 noundef %add23.1) #6
  %cmp19.1 = icmp slt i32 %call24.1, 32
  br i1 %cmp19.1, label %for.body20.1.for.body20.1_crit_edge, label %for.body20.1.for.inc27.1_crit_edge

for.body20.1.for.inc27.1_crit_edge:               ; preds = %for.body20.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc27.1

for.body20.1.for.body20.1_crit_edge:              ; preds = %for.body20.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body20.1

for.inc27.1:                                      ; preds = %for.body20.1.for.inc27.1_crit_edge, %if.end9.1.for.inc27.1_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irqmap) #6
  br label %for.end29

for.end29:                                        ; preds = %for.inc27.1, %cleanup
  %39 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %chip.i, align 8
  %irq_eoi.i56 = getelementptr inbounds %struct.irq_chip, ptr %40, i32 0, i32 10
  %41 = ptrtoint ptr %irq_eoi.i56 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %irq_eoi.i56, align 4
  %tobool.not.i57 = icmp eq ptr %42, null
  br i1 %tobool.not.i57, label %if.else.i58, label %for.end29.chained_irq_exit.exit_crit_edge

for.end29.chained_irq_exit.exit_crit_edge:        ; preds = %for.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %chained_irq_exit.exit

if.else.i58:                                      ; preds = %for.end29
  call void @__sanitizer_cov_trace_pc() #8
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %40, i32 0, i32 9
  %43 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i58, %for.end29.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %44, %if.else.i58 ], [ %42, %for.end29.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  call void %.sink.i(ptr noundef %irq_data2.i) #6
  br label %cleanup31

cleanup31:                                        ; preds = %chained_irq_exit.exit, %do.end
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_irqsteer_irq_map(ptr nocapture noundef readonly %h, i32 noundef %irq, i32 noundef %hwirq) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @irq_modify_status(i32 noundef %irq, i32 noundef 0, i32 noundef 256) #6
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %h, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %call = tail call i32 @irq_set_chip_data(i32 noundef %irq, ptr noundef %1) #6
  tail call void @irq_set_chip_and_handler_name(i32 noundef %irq, ptr noundef nonnull @imx_irqsteer_irq_chip, ptr noundef nonnull @handle_level_irq, ptr noundef null) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_xlate_onecell(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx_irqsteer_irq_mask(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %reg_num.i = getelementptr inbounds %struct.irqsteer_data, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %reg_num.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reg_num.i, align 4
  %div2.i = lshr i32 %3, 5
  %6 = xor i32 %div2.i, -1
  %sub1.i = add i32 %5, %6
  %lock = getelementptr inbounds %struct.irqsteer_data, ptr %1, i32 0, i32 4
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %mul3 = shl i32 %sub1.i, 2
  %add4 = add i32 %mul3, 4
  %add.ptr = getelementptr i8, ptr %8, i32 %add4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !63
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hwirq, align 4
  %rem = and i32 %12, 31
  %shl = shl nuw i32 1, %rem
  %neg = xor i32 %shl, -1
  %and = and i32 %10, %neg
  %13 = tail call i32 @llvm.bswap.i32(i32 %and)
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %add.ptr15 = getelementptr i8, ptr %15, i32 %add4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %13) #6, !srcloc !62
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call1) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx_irqsteer_irq_unmask(ptr nocapture noundef readonly %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %reg_num.i = getelementptr inbounds %struct.irqsteer_data, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %reg_num.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reg_num.i, align 4
  %div2.i = lshr i32 %3, 5
  %6 = xor i32 %div2.i, -1
  %sub1.i = add i32 %5, %6
  %lock = getelementptr inbounds %struct.irqsteer_data, ptr %1, i32 0, i32 4
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #6
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %mul3 = shl i32 %sub1.i, 2
  %add4 = add i32 %mul3, 4
  %add.ptr = getelementptr i8, ptr %8, i32 %add4
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !63
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %hwirq, align 4
  %rem = and i32 %12, 31
  %shl = shl nuw i32 1, %rem
  %or = or i32 %shl, %10
  %13 = tail call i32 @llvm.bswap.i32(i32 %or)
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %add.ptr15 = getelementptr i8, ptr %15, i32 %add4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %13) #6, !srcloc !62
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_irqsteer_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %reg_num.i = getelementptr inbounds %struct.irqsteer_data, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %reg_num.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp11.i = icmp sgt i32 %3, 0
  br i1 %cmp11.i, label %for.body.lr.ph.i, label %entry.imx_irqsteer_save_regs.exit_crit_edge

entry.imx_irqsteer_save_regs.exit_crit_edge:      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %imx_irqsteer_save_regs.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %saved_reg.i = getelementptr inbounds %struct.irqsteer_data, ptr %1, i32 0, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.012.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %mul3.i = shl i32 %i.012.i, 2
  %add4.i = add i32 %mul3.i, 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %add4.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !63
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #6
  %8 = ptrtoint ptr %saved_reg.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %saved_reg.i, align 4
  %arrayidx.i = getelementptr i32, ptr %9, i32 %i.012.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %7, ptr %arrayidx.i, align 4
  %inc.i = add nuw nsw i32 %i.012.i, 1
  %11 = ptrtoint ptr %reg_num.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reg_num.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %12
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.imx_irqsteer_save_regs.exit_crit_edge

for.body.i.imx_irqsteer_save_regs.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %imx_irqsteer_save_regs.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

imx_irqsteer_save_regs.exit:                      ; preds = %for.body.i.imx_irqsteer_save_regs.exit_crit_edge, %entry.imx_irqsteer_save_regs.exit_crit_edge
  %ipg_clk = getelementptr inbounds %struct.irqsteer_data, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %ipg_clk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ipg_clk, align 4
  tail call void @clk_disable(ptr noundef %14) #6
  tail call void @clk_unprepare(ptr noundef %14) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imx_irqsteer_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ipg_clk = getelementptr inbounds %struct.irqsteer_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ipg_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ipg_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unprepare(ptr noundef %3) #6
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %retval.0.i.ph) #9
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %channel.i = getelementptr inbounds %struct.irqsteer_data, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel.i, align 4
  %shl.i = shl nuw i32 1, %5
  %6 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #6
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 %6) #6, !srcloc !62
  %reg_num.i = getelementptr inbounds %struct.irqsteer_data, ptr %1, i32 0, i32 5
  %9 = ptrtoint ptr %reg_num.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %reg_num.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp15.i = icmp sgt i32 %10, 0
  br i1 %cmp15.i, label %for.body.lr.ph.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end
  %saved_reg.i = getelementptr inbounds %struct.irqsteer_data, ptr %1, i32 0, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.016.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %11 = ptrtoint ptr %saved_reg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %saved_reg.i, align 4
  %arrayidx.i = getelementptr i32, ptr %12, i32 %i.016.i
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #6
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %mul4.i = shl i32 %i.016.i, 2
  %add5.i = add i32 %mul4.i, 4
  %add.ptr6.i = getelementptr i8, ptr %17, i32 %add5.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6.i, i32 %15) #6, !srcloc !62
  %inc.i = add nuw nsw i32 %i.016.i, 1
  %18 = ptrtoint ptr %reg_num.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %reg_num.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %19
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.cleanup_crit_edge

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

cleanup:                                          ; preds = %for.body.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !18, !20, !21, !23, !25, !27, !28, !29, !31, !32, !33, !35, !37, !39, !41, !42, !43, !44, !46, !48, !50, !51}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @__initcall__kmod_irq_imx_irqsteer__187_308_imx_irqsteer_driver_init6, !1, !"__initcall__kmod_irq_imx_irqsteer__187_308_imx_irqsteer_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/irqchip/irq-imx-irqsteer.c", i32 308, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/irqchip/irq-imx-irqsteer.c", i32 301, i32 11}
!4 = !{ptr @imx_irqsteer_driver, !5, !"imx_irqsteer_driver", i1 false, i1 false}
!5 = !{!"../drivers/irqchip/irq-imx-irqsteer.c", i32 299, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/irqchip/irq-imx-irqsteer.c", i32 153, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @imx_irqsteer_probe._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @imx_irqsteer_probe._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/irqchip/irq-imx-irqsteer.c", i32 157, i32 43}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/irqchip/irq-imx-irqsteer.c", i32 160, i32 10}
!18 = !{ptr @imx_irqsteer_probe.__key, !19, !"__key", i1 false, i1 false}
!19 = !{!"../drivers/irqchip/irq-imx-irqsteer.c", i32 162, i32 2}
!20 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/irqchip/irq-imx-irqsteer.c", i32 164, i32 33}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/irqchip/irq-imx-irqsteer.c", i32 167, i32 33}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/irqchip/irq-imx-irqsteer.c", i32 188, i32 3}
!27 = !{ptr @imx_irqsteer_probe._entry.11, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @imx_irqsteer_probe._entry_ptr.13, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.15, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/irqchip/irq-imx-irqsteer.c", i32 198, i32 3}
!31 = !{ptr @imx_irqsteer_probe._entry.14, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @imx_irqsteer_probe._entry_ptr.16, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @imx_irqsteer_domain_ops, !34, !"imx_irqsteer_domain_ops", i1 false, i1 false}
!34 = !{!"../drivers/irqchip/irq-imx-irqsteer.c", i32 89, i32 36}
!35 = !{ptr @.str.17, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/irqchip/irq-imx-irqsteer.c", i32 74, i32 11}
!37 = !{ptr @imx_irqsteer_irq_chip, !38, !"imx_irqsteer_irq_chip", i1 false, i1 false}
!38 = !{!"../drivers/irqchip/irq-imx-irqsteer.c", i32 73, i32 24}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/irqchip/irq-imx-irqsteer.c", i32 117, i32 3}
!41 = !{ptr @.str.19, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @imx_irqsteer_irq_handler._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @imx_irqsteer_irq_handler._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @imx_irqsteer_dt_ids, !45, !"imx_irqsteer_dt_ids", i1 false, i1 false}
!45 = !{!"../drivers/irqchip/irq-imx-irqsteer.c", i32 294, i32 34}
!46 = !{ptr @imx_irqsteer_pm_ops, !47, !"imx_irqsteer_pm_ops", i1 false, i1 false}
!47 = !{!"../drivers/irqchip/irq-imx-irqsteer.c", i32 290, i32 32}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/irqchip/irq-imx-irqsteer.c", i32 281, i32 3}
!50 = !{ptr @imx_irqsteer_resume._entry, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @imx_irqsteer_resume._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!61 = !{!"auto-init"}
!62 = !{i64 4235275}
!63 = !{i64 4235693}
