; ModuleID = '/llk/IR_all_yes/drivers/irqchip/irq-bcm7120-l2.c_pt.bc'
source_filename = "../drivers/irqchip/irq-bcm7120-l2.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bcm7120_l2_intc_data = type { i32, [8 x ptr], [4 x ptr], [4 x i32], [4 x i32], ptr, i8, [4 x i32], ptr, i32, ptr }
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
%struct.bcm7120_l1_intc_data = type { ptr, [4 x i32] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.irq_chip_generic = type { %struct.raw_spinlock, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, %struct.list_head, [0 x %struct.irq_chip_type] }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, ptr, i32, i32, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_chip_regs = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.callback_head = type { ptr, ptr }

@__initcall__kmod_irq_bcm7120_l2__190_362_bcm7120_l2_driver_init6 = internal global ptr @bcm7120_l2_driver_init, section ".initcall6.init", align 4
@__UNIQUE_ID_description191 = internal constant [82 x i8] c"irq_bcm7120_l2.description=Broadcom STB 7120-style L2 interrupt controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file192 = internal constant [51 x i8] c"irq_bcm7120_l2.file=drivers/irqchip/irq-bcm7120-l2\00", section ".modinfo", align 1
@__UNIQUE_ID_license193 = internal constant [30 x i8] c"irq_bcm7120_l2.license=GPL v2\00", section ".modinfo", align 1
@bcm7120_l2_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @platform_irqchip_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @bcm7120_l2_irqchip_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bcm7120_l2\00", [21 x i8] zeroinitializer }, align 32
@bcm7120_l2_irqchip_match_table = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7120-l2-intc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm7120_l2_intc_probe_7120 }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm3380-l2-intc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm7120_l2_intc_probe_3380 }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"BCM7120 L2\00", [21 x i8] zeroinitializer }, align 32
@bcm7120_l2_intc_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 243, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013irq_bcm7120_l2: invalid number of parent interrupts\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bcm7120_l2_intc_probe\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/irqchip/irq-bcm7120-l2.c\00", [63 x i8] zeroinitializer }, align 32
@bcm7120_l2_intc_probe._entry_ptr = internal global ptr @bcm7120_l2_intc_probe._entry, section ".printk_index", align 4
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"brcm,irq-can-wake\00", [46 x i8] zeroinitializer }, align 32
@irq_generic_chip_ops = external dso_local constant %struct.irq_domain_ops, align 4
@bcm7120_l2_intc_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.3, ptr @.str.4, i32 284, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\013irq_bcm7120_l2: failed to allocate generic irq chip\0A\00", [41 x i8] zeroinitializer }, align 32
@bcm7120_l2_intc_probe._entry_ptr.8 = internal global ptr @bcm7120_l2_intc_probe._entry.6, section ".printk_index", align 4
@bcm7120_l2_intc_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.3, ptr @.str.4, i32 327, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\016irq_bcm7120_l2: registered %s intc (%pOF, parent IRQ(s): %d)\0A\00", [32 x i8] zeroinitializer }, align 32
@bcm7120_l2_intc_probe._entry_ptr.11 = internal global ptr @bcm7120_l2_intc_probe._entry.9, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@bcm7120_l2_intc_init_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.4, i32 116, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013irq_bcm7120_l2: failed to map interrupt %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bcm7120_l2_intc_init_one\00", [39 x i8] zeroinitializer }, align 32
@bcm7120_l2_intc_init_one._entry_ptr = internal global ptr @bcm7120_l2_intc_init_one._entry, section ".printk_index", align 4
@bcm7120_l2_intc_iomap_7120._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.4, i32 157, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013irq_bcm7120_l2: unable to map registers\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bcm7120_l2_intc_iomap_7120\00", [37 x i8] zeroinitializer }, align 32
@bcm7120_l2_intc_iomap_7120._entry_ptr = internal global ptr @bcm7120_l2_intc_iomap_7120._entry, section ".printk_index", align 4
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"brcm,int-fwd-mask\00", [46 x i8] zeroinitializer }, align 32
@bcm7120_l2_intc_iomap_7120._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.15, ptr @.str.4, i32 170, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013irq_bcm7120_l2: invalid brcm,int-fwd-mask property\0A\00", [42 x i8] zeroinitializer }, align 32
@bcm7120_l2_intc_iomap_7120._entry_ptr.19 = internal global ptr @bcm7120_l2_intc_iomap_7120._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"brcm,int-map-mask\00", [46 x i8] zeroinitializer }, align 32
@bcm7120_l2_intc_iomap_7120._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.15, ptr @.str.4, i32 177, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013irq_bcm7120_l2: invalid brcm,int-map-mask property\0A\00", [42 x i8] zeroinitializer }, align 32
@bcm7120_l2_intc_iomap_7120._entry_ptr.23 = internal global ptr @bcm7120_l2_intc_iomap_7120._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"BCM3380 L2\00", [21 x i8] zeroinitializer }, align 32
@bcm7120_l2_intc_iomap_3380._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.25, ptr @.str.4, i32 207, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"bcm7120_l2_intc_iomap_3380\00", [37 x i8] zeroinitializer }, align 32
@bcm7120_l2_intc_iomap_3380._entry_ptr = internal global ptr @bcm7120_l2_intc_iomap_3380._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@___asan_gen_.26 = private unnamed_addr constant [18 x i8] c"bcm7120_l2_driver\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 362, i32 1 }
@___asan_gen_.32 = private unnamed_addr constant [31 x i8] c"bcm7120_l2_irqchip_match_table\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 359, i32 1 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 349, i32 10 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 243, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 259, i32 45 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 284, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 326, i32 2 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 116, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 157, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 166, i32 39 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 170, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 174, i32 44 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 177, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 356, i32 10 }
@___asan_gen_.104 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.107 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.108 = private constant [36 x i8] c"../drivers/irqchip/irq-bcm7120-l2.c\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 207, i32 3 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @__UNIQUE_ID_description191, ptr @__UNIQUE_ID_file192, ptr @__UNIQUE_ID_license193, ptr @__initcall__kmod_irq_bcm7120_l2__190_362_bcm7120_l2_driver_init6, ptr @bcm7120_l2_intc_init_one._entry, ptr @bcm7120_l2_intc_init_one._entry_ptr, ptr @bcm7120_l2_intc_iomap_3380._entry, ptr @bcm7120_l2_intc_iomap_3380._entry_ptr, ptr @bcm7120_l2_intc_iomap_7120._entry, ptr @bcm7120_l2_intc_iomap_7120._entry.17, ptr @bcm7120_l2_intc_iomap_7120._entry.21, ptr @bcm7120_l2_intc_iomap_7120._entry_ptr, ptr @bcm7120_l2_intc_iomap_7120._entry_ptr.19, ptr @bcm7120_l2_intc_iomap_7120._entry_ptr.23, ptr @bcm7120_l2_intc_probe._entry, ptr @bcm7120_l2_intc_probe._entry.6, ptr @bcm7120_l2_intc_probe._entry.9, ptr @bcm7120_l2_intc_probe._entry_ptr, ptr @bcm7120_l2_intc_probe._entry_ptr.11, ptr @bcm7120_l2_intc_probe._entry_ptr.8, ptr @bcm7120_l2_driver, ptr @.str, ptr @bcm7120_l2_irqchip_match_table, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm7120_l2_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm7120_l2_irqchip_match_table to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm7120_l2_intc_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm7120_l2_intc_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm7120_l2_intc_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm7120_l2_intc_init_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm7120_l2_intc_iomap_7120._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm7120_l2_intc_iomap_7120._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm7120_l2_intc_iomap_7120._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm7120_l2_intc_iomap_3380._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm7120_l2_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcm7120_l2_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_irqchip_probe(ptr noundef) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm7120_l2_intc_probe_7120(ptr noundef %dn, ptr nocapture noundef readnone %parent) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @bcm7120_l2_intc_probe(ptr noundef %dn, ptr noundef nonnull @bcm7120_l2_intc_iomap_7120, ptr noundef nonnull @.str.1) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm7120_l2_intc_probe_3380(ptr noundef %dn, ptr nocapture noundef readnone %parent) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @bcm7120_l2_intc_probe(ptr noundef %dn, ptr noundef nonnull @bcm7120_l2_intc_iomap_3380, ptr noundef nonnull @.str.24) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bcm7120_l2_intc_probe(ptr noundef %dn, ptr nocapture noundef readonly %iomap_regs_fn, ptr noundef %intc_name) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %valid_mask = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %valid_mask) #8
  %0 = call ptr @memset(ptr %valid_mask, i32 0, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 120) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @of_find_device_by_node(ptr noundef %dn) #8
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.out_free_data_crit_edge, label %if.end4

if.end.out_free_data_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_data

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @platform_irq_count(ptr noundef nonnull %call1) #8
  %num_parent_irqs = getelementptr inbounds %struct.bcm7120_l2_intc_data, ptr %call7.i.i, i32 0, i32 9
  %2 = ptrtoint ptr %num_parent_irqs to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call5, ptr %num_parent_irqs, align 8
  %dev = getelementptr inbounds %struct.platform_device, ptr %call1, i32 0, i32 3
  tail call void @put_device(ptr noundef %dev) #8
  %3 = ptrtoint ptr %num_parent_irqs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %num_parent_irqs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %cmp = icmp slt i32 %4, 1
  br i1 %cmp, label %do.end, label %if.end9

do.end:                                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #13
  br label %out_unmap

if.end9:                                          ; preds = %if.end4
  %5 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %4, i32 20) #8
  %6 = extractvalue { i32, i1 } %5, 1
  br i1 %6, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !66

kcalloc.exit.thread:                              ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %l1_data12 = getelementptr inbounds %struct.bcm7120_l2_intc_data, ptr %call7.i.i, i32 0, i32 8
  %7 = ptrtoint ptr %l1_data12 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %l1_data12, align 4
  br label %out_free_l1_data

if.end7.i.i:                                      ; preds = %if.end9
  %8 = extractvalue { i32, i1 } %5, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %8, i32 noundef 3520) #14
  %l1_data = getelementptr inbounds %struct.bcm7120_l2_intc_data, ptr %call7.i.i, i32 0, i32 8
  %9 = ptrtoint ptr %l1_data to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call8.i.i, ptr %l1_data, align 4
  %tobool13.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool13.not, label %if.end7.i.i.out_free_l1_data_crit_edge, label %if.end15

if.end7.i.i.out_free_l1_data_crit_edge:           ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_l1_data

if.end15:                                         ; preds = %if.end7.i.i
  %call16 = tail call i32 %iomap_regs_fn(ptr noundef %dn, ptr noundef nonnull %call7.i.i) #8, !callees !67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %if.end15.out_free_l1_data_crit_edge, label %if.end19

if.end15.out_free_l1_data_crit_edge:              ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_l1_data

if.end19:                                         ; preds = %if.end15
  %call.i = tail call ptr @of_find_property(ptr noundef %dn, ptr noundef nonnull @.str.5, ptr noundef null) #8
  %tobool.i = icmp ne ptr %call.i, null
  %can_wake = getelementptr inbounds %struct.bcm7120_l2_intc_data, ptr %call7.i.i, i32 0, i32 6
  %frombool = zext i1 %tobool.i to i8
  %10 = ptrtoint ptr %can_wake to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %frombool, ptr %can_wake, align 8
  %11 = ptrtoint ptr %num_parent_irqs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_parent_irqs, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp2223.not = icmp eq i32 %12, 0
  br i1 %cmp2223.not, label %if.end19.for.end_crit_edge, label %for.body.lr.ph

if.end19.for.end_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end19
  %map_mask_prop.i = getelementptr inbounds %struct.bcm7120_l2_intc_data, ptr %call7.i.i, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %irq.024 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %13 = ptrtoint ptr %l1_data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %l1_data, align 4
  %arrayidx.i = getelementptr %struct.bcm7120_l1_intc_data, ptr %14, i32 %irq.024
  %call.i1 = tail call i32 @irq_of_parse_and_map(ptr noundef %dn, i32 noundef %irq.024) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i1)
  %tobool.not.i = icmp eq i32 %call.i1, 0
  br i1 %tobool.not.i, label %bcm7120_l2_intc_init_one.exit, label %for.cond.preheader.i

for.cond.preheader.i:                             ; preds = %for.body
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp45.not.i = icmp eq i32 %16, 0
  br i1 %cmp45.not.i, label %for.cond.preheader.i.for.end.i_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

for.body.i:                                       ; preds = %if.end12.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %17 = phi i32 [ %30, %if.end12.i.for.body.i_crit_edge ], [ %16, %for.cond.preheader.i.for.body.i_crit_edge ]
  %idx.046.i = phi i32 [ %inc.i, %if.end12.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %18 = ptrtoint ptr %map_mask_prop.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %map_mask_prop.i, align 4
  %tobool3.not.i = icmp eq ptr %19, null
  br i1 %tobool3.not.i, label %if.else.i, label %if.then4.i

if.then4.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %mul.i = mul i32 %17, %irq.024
  %add.ptr.i = getelementptr i32, ptr %19, i32 %mul.i
  %add.ptr7.i = getelementptr i32, ptr %add.ptr.i, i32 %idx.046.i
  %20 = ptrtoint ptr %add.ptr7.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr7.i, align 4
  %arrayidx9.i = getelementptr %struct.bcm7120_l1_intc_data, ptr %14, i32 %irq.024, i32 1, i32 %idx.046.i
  %22 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx9.i, align 4
  %or.i = or i32 %23, %21
  store i32 %or.i, ptr %arrayidx9.i, align 4
  br label %if.end12.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx11.i = getelementptr %struct.bcm7120_l1_intc_data, ptr %14, i32 %irq.024, i32 1, i32 %idx.046.i
  %24 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %arrayidx11.i, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.else.i, %if.then4.i
  %arrayidx14.i = getelementptr %struct.bcm7120_l1_intc_data, ptr %14, i32 %irq.024, i32 1, i32 %idx.046.i
  %25 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx14.i, align 4
  %arrayidx15.i = getelementptr i32, ptr %valid_mask, i32 %idx.046.i
  %27 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx15.i, align 4
  %or16.i = or i32 %28, %26
  store i32 %or16.i, ptr %arrayidx15.i, align 4
  %inc.i = add nuw i32 %idx.046.i, 1
  %29 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %call7.i.i, align 8
  %cmp.i = icmp ult i32 %inc.i, %30
  br i1 %cmp.i, label %if.end12.i.for.body.i_crit_edge, label %if.end12.i.for.end.i_crit_edge

if.end12.i.for.end.i_crit_edge:                   ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.i

if.end12.i.for.body.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.i:                                        ; preds = %if.end12.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %31 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call7.i.i, ptr %arrayidx.i, align 4
  tail call void @irq_set_chained_handler_and_data(i32 noundef %call.i1, ptr noundef nonnull @bcm7120_l2_intc_irq_handle, ptr noundef %arrayidx.i) #8
  %32 = ptrtoint ptr %can_wake to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %can_wake, align 8, !range !68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool17.not.i = icmp eq i8 %33, 0
  br i1 %tobool17.not.i, label %for.end.i.for.inc_crit_edge, label %if.then18.i

for.end.i.for.inc_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then18.i:                                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i = tail call i32 @irq_set_irq_wake(i32 noundef %call.i1, i32 noundef 1) #8
  br label %for.inc

bcm7120_l2_intc_init_one.exit:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef %irq.024) #13
  br label %out_free_l1_data

for.inc:                                          ; preds = %if.then18.i, %for.end.i.for.inc_crit_edge
  %inc = add nuw i32 %irq.024, 1
  %34 = ptrtoint ptr %num_parent_irqs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_parent_irqs, align 8
  %cmp22 = icmp ult i32 %inc, %35
  br i1 %cmp22, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end19.for.end_crit_edge
  %36 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %call7.i.i, align 8
  %mul = shl i32 %37, 5
  %tobool.not.i.i = icmp eq ptr %dn, null
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %dn, i32 0, i32 3
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr null, ptr %fwnode.i.i
  %call1.i = tail call ptr @__irq_domain_add(ptr noundef %spec.select.i.i, i32 noundef %mul, i32 noundef %mul, i32 noundef 0, ptr noundef nonnull @irq_generic_chip_ops, ptr noundef null) #8
  %domain = getelementptr inbounds %struct.bcm7120_l2_intc_data, ptr %call7.i.i, i32 0, i32 5
  %38 = ptrtoint ptr %domain to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call1.i, ptr %domain, align 4
  %tobool29.not = icmp eq ptr %call1.i, null
  br i1 %tobool29.not, label %for.end.out_free_l1_data_crit_edge, label %if.end31

for.end.out_free_l1_data_crit_edge:               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_l1_data

if.end31:                                         ; preds = %for.end
  %full_name = getelementptr inbounds %struct.device_node, ptr %dn, i32 0, i32 2
  %39 = ptrtoint ptr %full_name to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %full_name, align 4
  %call40 = tail call i32 @__irq_alloc_domain_generic_chips(ptr noundef nonnull %call1.i, i32 noundef 32, i32 noundef 1, ptr noundef %40, ptr noundef nonnull @handle_level_irq, i32 noundef 7168, i32 noundef 0, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %for.cond49.preheader, label %do.end45

for.cond49.preheader:                             ; preds = %if.end31
  %41 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %call7.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp5126.not = icmp eq i32 %42, 0
  br i1 %cmp5126.not, label %for.cond49.preheader.do.end81_crit_edge, label %for.cond49.preheader.for.body52_crit_edge

for.cond49.preheader.for.body52_crit_edge:        ; preds = %for.cond49.preheader
  br label %for.body52

for.cond49.preheader.do.end81_crit_edge:          ; preds = %for.cond49.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end81

do.end45:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #10
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #13
  %43 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %domain, align 4
  tail call void @irq_domain_remove(ptr noundef %44) #8
  br label %out_free_l1_data

for.body52:                                       ; preds = %for.inc76.for.body52_crit_edge, %for.cond49.preheader.for.body52_crit_edge
  %idx.027 = phi i32 [ %inc77, %for.inc76.for.body52_crit_edge ], [ 0, %for.cond49.preheader.for.body52_crit_edge ]
  %mul53 = shl i32 %idx.027, 5
  %45 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %domain, align 4
  %call55 = tail call ptr @irq_get_domain_generic_chip(ptr noundef %46, i32 noundef %mul53) #8
  %arrayidx = getelementptr [4 x i32], ptr %valid_mask, i32 0, i32 %idx.027
  %47 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx, align 4
  %neg = xor i32 %48, -1
  %unused = getelementptr inbounds %struct.irq_chip_generic, ptr %call55, i32 0, i32 16
  %49 = ptrtoint ptr %unused to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %neg, ptr %unused, align 4
  %private = getelementptr inbounds %struct.irq_chip_generic, ptr %call55, i32 0, i32 14
  %50 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call7.i.i, ptr %private, align 4
  %arrayidx57 = getelementptr %struct.bcm7120_l2_intc_data, ptr %call7.i.i, i32 0, i32 2, i32 %idx.027
  %51 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx57, align 4
  %reg_base = getelementptr inbounds %struct.irq_chip_generic, ptr %call55, i32 0, i32 1
  %53 = ptrtoint ptr %reg_base to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %52, ptr %reg_base, align 4
  %arrayidx58 = getelementptr %struct.bcm7120_l2_intc_data, ptr %call7.i.i, i32 0, i32 3, i32 %idx.027
  %54 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx58, align 4
  %mask = getelementptr inbounds %struct.irq_chip_generic, ptr %call55, i32 2, i32 0, i32 4, i32 1, i32 1
  %56 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %mask, align 4
  %arrayidx59 = getelementptr %struct.bcm7120_l2_intc_data, ptr %call7.i.i, i32 0, i32 7, i32 %idx.027
  %57 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx59, align 4
  %59 = load i32, ptr %arrayidx58, align 4
  %reg_writel.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call55, i32 0, i32 3
  %60 = ptrtoint ptr %reg_writel.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %reg_writel.i, align 4
  %tobool.not.i2 = icmp eq ptr %61, null
  br i1 %tobool.not.i2, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i3 = getelementptr i8, ptr %52, i32 %59
  tail call void %61(i32 noundef %58, ptr noundef %add.ptr.i3) #8
  br label %irq_reg_writel.exit

do.body.i:                                        ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !69
  tail call void @arm_heavy_mb() #8
  %62 = tail call i32 @llvm.bswap.i32(i32 %58) #8
  %63 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %reg_base, align 4
  %add.ptr3.i = getelementptr i8, ptr %64, i32 %59
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %62) #8, !srcloc !70
  br label %irq_reg_writel.exit

irq_reg_writel.exit:                              ; preds = %do.body.i, %if.then.i
  %irq_mask = getelementptr inbounds %struct.irq_chip_generic, ptr %call55, i32 1, i32 0, i32 4, i32 2
  %65 = ptrtoint ptr %irq_mask to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @irq_gc_mask_clr_bit, ptr %irq_mask, align 4
  %irq_unmask = getelementptr inbounds %struct.irq_chip_generic, ptr %call55, i32 1, i32 0, i32 4, i32 6
  %66 = ptrtoint ptr %irq_unmask to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @irq_gc_mask_set_bit, ptr %irq_unmask, align 4
  %irq_ack = getelementptr inbounds %struct.irq_chip_generic, ptr %call55, i32 1, i32 0, i32 4, i32 1, i32 1
  %67 = ptrtoint ptr %irq_ack to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @irq_gc_noop, ptr %irq_ack, align 4
  %suspend = getelementptr inbounds %struct.irq_chip_generic, ptr %call55, i32 0, i32 4
  %68 = ptrtoint ptr %suspend to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @bcm7120_l2_intc_suspend, ptr %suspend, align 4
  %resume = getelementptr inbounds %struct.irq_chip_generic, ptr %call55, i32 0, i32 5
  %69 = ptrtoint ptr %resume to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @bcm7120_l2_intc_resume, ptr %resume, align 4
  %70 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %mask, align 4
  %reg_readl.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call55, i32 0, i32 2
  %72 = ptrtoint ptr %reg_readl.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %reg_readl.i, align 4
  %tobool.not.i4 = icmp eq ptr %73, null
  %74 = ptrtoint ptr %reg_base to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %reg_base, align 4
  %add.ptr3.i6 = getelementptr i8, ptr %75, i32 %71
  br i1 %tobool.not.i4, label %if.else.i9, label %if.then.i8

if.then.i8:                                       ; preds = %irq_reg_writel.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call.i7 = tail call i32 %73(ptr noundef %add.ptr3.i6) #8
  br label %irq_reg_readl.exit

if.else.i9:                                       ; preds = %irq_reg_writel.exit
  call void @__sanitizer_cov_trace_pc() #10
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i6) #8, !srcloc !71
  %77 = tail call i32 @llvm.bswap.i32(i32 %76) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !72
  br label %irq_reg_readl.exit

irq_reg_readl.exit:                               ; preds = %if.else.i9, %if.then.i8
  %retval.0.i10 = phi i32 [ %call.i7, %if.then.i8 ], [ %77, %if.else.i9 ]
  %mask_cache = getelementptr inbounds %struct.irq_chip_generic, ptr %call55, i32 0, i32 8
  %78 = ptrtoint ptr %mask_cache to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %retval.0.i10, ptr %mask_cache, align 4
  %79 = ptrtoint ptr %can_wake to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %can_wake, align 8, !range !68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool68.not = icmp eq i8 %80, 0
  br i1 %tobool68.not, label %irq_reg_readl.exit.for.inc76_crit_edge, label %if.then69

irq_reg_readl.exit.for.inc76_crit_edge:           ; preds = %irq_reg_readl.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc76

if.then69:                                        ; preds = %irq_reg_readl.exit
  call void @__sanitizer_cov_trace_pc() #10
  %wake_enabled = getelementptr inbounds %struct.irq_chip_generic, ptr %call55, i32 0, i32 11
  %81 = ptrtoint ptr %unused to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %unused, align 4
  %neg71 = xor i32 %82, -1
  %83 = ptrtoint ptr %wake_enabled to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %neg71, ptr %wake_enabled, align 4
  %irq_set_wake = getelementptr inbounds %struct.irq_chip_generic, ptr %call55, i32 1, i32 4
  %84 = ptrtoint ptr %irq_set_wake to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @irq_gc_set_wake, ptr %irq_set_wake, align 4
  br label %for.inc76

for.inc76:                                        ; preds = %if.then69, %irq_reg_readl.exit.for.inc76_crit_edge
  %inc77 = add nuw i32 %idx.027, 1
  %85 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %call7.i.i, align 8
  %cmp51 = icmp ult i32 %inc77, %86
  br i1 %cmp51, label %for.inc76.for.body52_crit_edge, label %for.inc76.do.end81_crit_edge

for.inc76.do.end81_crit_edge:                     ; preds = %for.inc76
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end81

for.inc76.for.body52_crit_edge:                   ; preds = %for.inc76
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body52

do.end81:                                         ; preds = %for.inc76.do.end81_crit_edge, %for.cond49.preheader.do.end81_crit_edge
  %87 = ptrtoint ptr %num_parent_irqs to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %num_parent_irqs, align 8
  %call84 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, ptr noundef %intc_name, ptr noundef %dn, i32 noundef %88) #13
  br label %cleanup

out_free_l1_data:                                 ; preds = %do.end45, %for.end.out_free_l1_data_crit_edge, %bcm7120_l2_intc_init_one.exit, %if.end15.out_free_l1_data_crit_edge, %if.end7.i.i.out_free_l1_data_crit_edge, %kcalloc.exit.thread
  %l1_data14 = phi ptr [ %l1_data, %if.end15.out_free_l1_data_crit_edge ], [ %l1_data, %bcm7120_l2_intc_init_one.exit ], [ %l1_data, %do.end45 ], [ %l1_data, %if.end7.i.i.out_free_l1_data_crit_edge ], [ %l1_data, %for.end.out_free_l1_data_crit_edge ], [ %l1_data12, %kcalloc.exit.thread ]
  %ret.0 = phi i32 [ %call16, %if.end15.out_free_l1_data_crit_edge ], [ -22, %bcm7120_l2_intc_init_one.exit ], [ %call40, %do.end45 ], [ -12, %if.end7.i.i.out_free_l1_data_crit_edge ], [ -12, %for.end.out_free_l1_data_crit_edge ], [ -12, %kcalloc.exit.thread ]
  %89 = ptrtoint ptr %l1_data14 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %l1_data14, align 4
  tail call void @kfree(ptr noundef %90) #8
  br label %out_unmap

out_unmap:                                        ; preds = %out_free_l1_data, %do.end
  %ret.1 = phi i32 [ -12, %do.end ], [ %ret.0, %out_free_l1_data ]
  br label %for.body89

for.body89:                                       ; preds = %for.inc96.for.body89_crit_edge, %out_unmap
  %idx.128 = phi i32 [ 0, %out_unmap ], [ %inc97, %for.inc96.for.body89_crit_edge ]
  %arrayidx90 = getelementptr %struct.bcm7120_l2_intc_data, ptr %call7.i.i, i32 0, i32 1, i32 %idx.128
  %91 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx90, align 4
  %tobool91.not = icmp eq ptr %92, null
  br i1 %tobool91.not, label %for.body89.for.inc96_crit_edge, label %if.then92

for.body89.for.inc96_crit_edge:                   ; preds = %for.body89
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc96

if.then92:                                        ; preds = %for.body89
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @iounmap(ptr noundef nonnull %92) #8
  br label %for.inc96

for.inc96:                                        ; preds = %if.then92, %for.body89.for.inc96_crit_edge
  %inc97 = add nuw nsw i32 %idx.128, 1
  %exitcond.not = icmp eq i32 %inc97, 8
  br i1 %exitcond.not, label %for.inc96.out_free_data_crit_edge, label %for.inc96.for.body89_crit_edge

for.inc96.for.body89_crit_edge:                   ; preds = %for.inc96
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body89

for.inc96.out_free_data_crit_edge:                ; preds = %for.inc96
  call void @__sanitizer_cov_trace_pc() #10
  br label %out_free_data

out_free_data:                                    ; preds = %for.inc96.out_free_data_crit_edge, %if.end.out_free_data_crit_edge
  %ret.2 = phi i32 [ -19, %if.end.out_free_data_crit_edge ], [ %ret.1, %for.inc96.out_free_data_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %out_free_data, %do.end81, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %out_free_data ], [ 0, %do.end81 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %valid_mask) #8
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm7120_l2_intc_iomap_7120(ptr noundef %dn, ptr noundef %data) #0 section ".init.text" align 64 {
entry:
  %ret = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #8
  %call = tail call ptr @of_iomap(ptr noundef %dn, i32 noundef 0) #8
  %map_base = getelementptr inbounds %struct.bcm7120_l2_intc_data, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %map_base to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %map_base, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %pair_base = getelementptr inbounds %struct.bcm7120_l2_intc_data, ptr %data, i32 0, i32 2
  %1 = ptrtoint ptr %pair_base to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %pair_base, align 4
  %en_offset = getelementptr inbounds %struct.bcm7120_l2_intc_data, ptr %data, i32 0, i32 3
  %2 = ptrtoint ptr %en_offset to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %en_offset, align 4
  %stat_offset = getelementptr inbounds %struct.bcm7120_l2_intc_data, ptr %data, i32 0, i32 4
  %3 = ptrtoint ptr %stat_offset to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 4, ptr %stat_offset, align 4
  %4 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 1, ptr %data, align 4
  %irq_fwd_mask = getelementptr inbounds %struct.bcm7120_l2_intc_data, ptr %data, i32 0, i32 7
  %call.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %dn, ptr noundef nonnull @.str.16, ptr noundef %irq_fwd_mask, i32 noundef 1, i32 noundef 0) #8
  %5 = tail call i32 @llvm.smin.i32(i32 %call.i, i32 0) #8
  %6 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %ret, align 4
  %7 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %do.end15 [
    i32 0, label %if.end.if.end18_crit_edge
    i32 -22, label %if.end.if.end18_crit_edge46
  ]

if.end.if.end18_crit_edge46:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

do.end15:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call17 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #13
  br label %cleanup

if.end18:                                         ; preds = %if.end.if.end18_crit_edge, %if.end.if.end18_crit_edge46
  %call19 = call ptr @of_get_property(ptr noundef %dn, ptr noundef nonnull @.str.20, ptr noundef nonnull %ret) #8
  %map_mask_prop = getelementptr inbounds %struct.bcm7120_l2_intc_data, ptr %data, i32 0, i32 10
  %8 = ptrtoint ptr %map_mask_prop to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call19, ptr %map_mask_prop, align 4
  %tobool21.not = icmp eq ptr %call19, null
  br i1 %tobool21.not, label %if.end18.do.end28_crit_edge, label %lor.lhs.false

if.end18.do.end28_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end28

lor.lhs.false:                                    ; preds = %if.end18
  %9 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ret, align 4
  %num_parent_irqs = getelementptr inbounds %struct.bcm7120_l2_intc_data, ptr %data, i32 0, i32 9
  %11 = ptrtoint ptr %num_parent_irqs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_parent_irqs, align 4
  %mul = shl i32 %12, 2
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %data, align 4
  %mul23 = mul i32 %mul, %14
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %mul23)
  %cmp24.not = icmp eq i32 %10, %mul23
  br i1 %cmp24.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.do.end28_crit_edge

lor.lhs.false.do.end28_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end28

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end28:                                         ; preds = %lor.lhs.false.do.end28_crit_edge, %if.end18.do.end28_crit_edge
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end28, %lor.lhs.false.cleanup_crit_edge, %do.end15, %do.end
  %retval.0 = phi i32 [ -22, %do.end15 ], [ -22, %do.end28 ], [ -12, %do.end ], [ 0, %lor.lhs.false.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_irq_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @put_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_alloc_domain_generic_chips(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_domain_generic_chip(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_mask_clr_bit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_mask_set_bit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_noop(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm7120_l2_intc_suspend(ptr noundef %gc) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.irq_chip_generic, ptr %gc, i32 0, i32 14
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  tail call void @_raw_spin_lock(ptr noundef %gc) #8
  %can_wake = getelementptr inbounds %struct.bcm7120_l2_intc_data, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %can_wake to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %can_wake, align 4, !range !68
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  %mask_cache = getelementptr inbounds %struct.irq_chip_generic, ptr %gc, i32 0, i32 8
  %4 = ptrtoint ptr %mask_cache to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mask_cache, align 4
  %wake_active = getelementptr inbounds %struct.irq_chip_generic, ptr %gc, i32 0, i32 12
  %6 = ptrtoint ptr %wake_active to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %wake_active, align 4
  %or = or i32 %7, %5
  %mask = getelementptr inbounds %struct.irq_chip_generic, ptr %gc, i32 2, i32 0, i32 4, i32 1, i32 1
  %8 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mask, align 4
  %reg_writel.i = getelementptr inbounds %struct.irq_chip_generic, ptr %gc, i32 0, i32 3
  %10 = ptrtoint ptr %reg_writel.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_writel.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %reg_base.i = getelementptr inbounds %struct.irq_chip_generic, ptr %gc, i32 0, i32 1
  %12 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 %9
  tail call void %11(i32 noundef %or, ptr noundef %add.ptr.i) #8
  br label %if.end

do.body.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !69
  tail call void @arm_heavy_mb() #8
  %14 = tail call i32 @llvm.bswap.i32(i32 %or) #8
  %reg_base2.i = getelementptr inbounds %struct.irq_chip_generic, ptr %gc, i32 0, i32 1
  %15 = ptrtoint ptr %reg_base2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_base2.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %16, i32 %9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %14) #8, !srcloc !70
  br label %if.end

if.end:                                           ; preds = %do.body.i, %if.then.i, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %gc) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm7120_l2_intc_resume(ptr noundef %gc) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef %gc) #8
  %mask_cache = getelementptr inbounds %struct.irq_chip_generic, ptr %gc, i32 0, i32 8
  %0 = ptrtoint ptr %mask_cache to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mask_cache, align 4
  %mask = getelementptr inbounds %struct.irq_chip_generic, ptr %gc, i32 2, i32 0, i32 4, i32 1, i32 1
  %2 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %mask, align 4
  %reg_writel.i = getelementptr inbounds %struct.irq_chip_generic, ptr %gc, i32 0, i32 3
  %4 = ptrtoint ptr %reg_writel.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_writel.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %do.body.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %reg_base.i = getelementptr inbounds %struct.irq_chip_generic, ptr %gc, i32 0, i32 1
  %6 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 %3
  tail call void %5(i32 noundef %1, ptr noundef %add.ptr.i) #8
  br label %irq_reg_writel.exit

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !69
  tail call void @arm_heavy_mb() #8
  %8 = tail call i32 @llvm.bswap.i32(i32 %1) #8
  %reg_base2.i = getelementptr inbounds %struct.irq_chip_generic, ptr %gc, i32 0, i32 1
  %9 = ptrtoint ptr %reg_base2.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %reg_base2.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %10, i32 %3
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %8) #8, !srcloc !70
  br label %irq_reg_writel.exit

irq_reg_writel.exit:                              ; preds = %do.body.i, %if.then.i
  tail call void @_raw_spin_unlock(ptr noundef %gc) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_gc_set_wake(ptr noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm7120_l2_intc_irq_handle(ptr noundef %desc) #4 align 64 {
entry:
  %pending = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %handler_data.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %4 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip.i, align 8
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.chained_irq_enter.exit_crit_edge

entry.chained_irq_enter.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %entry
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 8
  %8 = ptrtoint ptr %irq_mask_ack.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_mask_ack.i, align 4
  %tobool1.not.i = icmp eq ptr %9, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %9(ptr noundef %irq_data.i) #8
  br label %chained_irq_enter.exit

if.else.i:                                        ; preds = %if.end.i
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 7
  %10 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irq_mask.i, align 4
  %irq_data4.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %11(ptr noundef %irq_data4.i) #8
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 6
  %12 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %irq_ack.i, align 4
  %tobool5.not.i = icmp eq ptr %13, null
  br i1 %tobool5.not.i, label %if.else.i.chained_irq_enter.exit_crit_edge, label %if.then6.i

if.else.i.chained_irq_enter.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %chained_irq_enter.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %13(ptr noundef %irq_data4.i) #8
  br label %chained_irq_enter.exit

chained_irq_enter.exit:                           ; preds = %if.then6.i, %if.else.i.chained_irq_enter.exit_crit_edge, %if.then2.i, %entry.chained_irq_enter.exit_crit_edge
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp43.not = icmp eq i32 %15, 0
  br i1 %cmp43.not, label %chained_irq_enter.exit.for.end16_crit_edge, label %for.body.lr.ph

chained_irq_enter.exit.for.end16_crit_edge:       ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end16

for.body.lr.ph:                                   ; preds = %chained_irq_enter.exit
  %domain = getelementptr inbounds %struct.bcm7120_l2_intc_data, ptr %3, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %idx.044 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.end.for.body_crit_edge ]
  %mul = shl i32 %idx.044, 5
  %16 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %domain, align 4
  %call3 = call ptr @irq_get_domain_generic_chip(ptr noundef %17, i32 noundef %mul) #8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pending) #8
  %18 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %pending, align 4, !annotation !73
  call void @_raw_spin_lock(ptr noundef %call3) #8
  %arrayidx = getelementptr %struct.bcm7120_l2_intc_data, ptr %3, i32 0, i32 4, i32 %idx.044
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx, align 4
  %reg_readl.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call3, i32 0, i32 2
  %21 = ptrtoint ptr %reg_readl.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg_readl.i, align 4
  %tobool.not.i35 = icmp eq ptr %22, null
  %reg_base2.i = getelementptr inbounds %struct.irq_chip_generic, ptr %call3, i32 0, i32 1
  %23 = ptrtoint ptr %reg_base2.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_base2.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %24, i32 %20
  br i1 %tobool.not.i35, label %if.else.i36, label %if.then.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = call i32 %22(ptr noundef %add.ptr3.i) #8
  br label %irq_reg_readl.exit

if.else.i36:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %25 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #8, !srcloc !71
  %26 = call i32 @llvm.bswap.i32(i32 %25) #8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !72
  br label %irq_reg_readl.exit

irq_reg_readl.exit:                               ; preds = %if.else.i36, %if.then.i
  %retval.0.i = phi i32 [ %call.i, %if.then.i ], [ %26, %if.else.i36 ]
  %mask_cache = getelementptr inbounds %struct.irq_chip_generic, ptr %call3, i32 0, i32 8
  %27 = ptrtoint ptr %mask_cache to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mask_cache, align 4
  %and = and i32 %28, %retval.0.i
  %arrayidx5 = getelementptr %struct.bcm7120_l1_intc_data, ptr %1, i32 0, i32 1, i32 %idx.044
  %29 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx5, align 4
  %and6 = and i32 %and, %30
  %31 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %and6, ptr %pending, align 4
  call void @_raw_spin_unlock(ptr noundef %call3) #8
  %call7 = call i32 @_find_next_bit_be(ptr noundef nonnull %pending, i32 noundef 32, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call7)
  %cmp941 = icmp slt i32 %call7, 32
  br i1 %cmp941, label %irq_reg_readl.exit.for.body10_crit_edge, label %irq_reg_readl.exit.for.end_crit_edge

irq_reg_readl.exit.for.end_crit_edge:             ; preds = %irq_reg_readl.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

irq_reg_readl.exit.for.body10_crit_edge:          ; preds = %irq_reg_readl.exit
  br label %for.body10

for.body10:                                       ; preds = %for.body10.for.body10_crit_edge, %irq_reg_readl.exit.for.body10_crit_edge
  %hwirq.042 = phi i32 [ %call14, %for.body10.for.body10_crit_edge ], [ %call7, %irq_reg_readl.exit.for.body10_crit_edge ]
  %32 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %domain, align 4
  %add = add i32 %hwirq.042, %mul
  %call12 = call i32 @generic_handle_domain_irq(ptr noundef %33, i32 noundef %add) #8
  %add13 = add nsw i32 %hwirq.042, 1
  %call14 = call i32 @_find_next_bit_be(ptr noundef nonnull %pending, i32 noundef 32, i32 noundef %add13) #8
  %cmp9 = icmp slt i32 %call14, 32
  br i1 %cmp9, label %for.body10.for.body10_crit_edge, label %for.body10.for.end_crit_edge

for.body10.for.end_crit_edge:                     ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body10.for.body10_crit_edge:                  ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body10

for.end:                                          ; preds = %for.body10.for.end_crit_edge, %irq_reg_readl.exit.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pending) #8
  %inc = add nuw i32 %idx.044, 1
  %34 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %3, align 4
  %cmp = icmp ult i32 %inc, %35
  br i1 %cmp, label %for.end.for.body_crit_edge, label %for.end.for.end16_crit_edge

for.end.for.end16_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end16

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end16:                                        ; preds = %for.end.for.end16_crit_edge, %chained_irq_enter.exit.for.end16_crit_edge
  %36 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i38 = icmp eq ptr %37, null
  br i1 %tobool.not.i38, label %if.else.i39, label %for.end16.chained_irq_exit.exit_crit_edge

for.end16.chained_irq_exit.exit_crit_edge:        ; preds = %for.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %chained_irq_exit.exit

if.else.i39:                                      ; preds = %for.end16
  call void @__sanitizer_cov_trace_pc() #10
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %5, i32 0, i32 9
  %38 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i39, %for.end16.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %39, %if.else.i39 ], [ %37, %for.end16.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  call void %.sink.i(ptr noundef %irq_data2.i) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm7120_l2_intc_iomap_3380(ptr noundef %dn, ptr nocapture noundef writeonly %data) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %gc_idx.053 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %mul = shl nuw nsw i32 %gc_idx.053, 1
  %call = tail call ptr @of_iomap(ptr noundef %dn, i32 noundef %mul) #8
  %add1 = or i32 %mul, 1
  %call2 = tail call ptr @of_iomap(ptr noundef %dn, i32 noundef %add1) #8
  %cmp3 = icmp ult ptr %call, %call2
  %call.call2 = select i1 %cmp3, ptr %call, ptr %call2
  %arrayidx = getelementptr %struct.bcm7120_l2_intc_data, ptr %data, i32 0, i32 1, i32 %mul
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %arrayidx, align 4
  %arrayidx7 = getelementptr %struct.bcm7120_l2_intc_data, ptr %data, i32 0, i32 1, i32 %add1
  %1 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2, ptr %arrayidx7, align 4
  %tobool.not = icmp eq ptr %call.call2, null
  br i1 %tobool.not, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body
  %arrayidx8 = getelementptr %struct.bcm7120_l2_intc_data, ptr %data, i32 0, i32 2, i32 %gc_idx.053
  %2 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call.call2, ptr %arrayidx8, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %call to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %call.call2 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %arrayidx9 = getelementptr %struct.bcm7120_l2_intc_data, ptr %data, i32 0, i32 3, i32 %gc_idx.053
  %3 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %sub.ptr.sub, ptr %arrayidx9, align 4
  %sub.ptr.lhs.cast10 = ptrtoint ptr %call2 to i32
  %sub.ptr.sub12 = sub i32 %sub.ptr.lhs.cast10, %sub.ptr.rhs.cast
  %arrayidx13 = getelementptr %struct.bcm7120_l2_intc_data, ptr %data, i32 0, i32 4, i32 %gc_idx.053
  %4 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %sub.ptr.sub12, ptr %arrayidx13, align 4
  %inc = add nuw nsw i32 %gc_idx.053, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.inc.if.end21_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.if.end21_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %gc_idx.053)
  %tobool17.not = icmp eq i32 %gc_idx.053, 0
  br i1 %tobool17.not, label %do.end, label %for.end.if.end21_crit_edge

for.end.if.end21_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #13
  br label %cleanup22

if.end21:                                         ; preds = %for.end.if.end21_crit_edge, %for.inc.if.end21_crit_edge
  %gc_idx.052 = phi i32 [ %gc_idx.053, %for.end.if.end21_crit_edge ], [ 4, %for.inc.if.end21_crit_edge ]
  %5 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %gc_idx.052, ptr %data, align 4
  br label %cleanup22

cleanup22:                                        ; preds = %if.end21, %do.end
  %retval.0 = phi i32 [ 0, %if.end21 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

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

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !11, !13, !15, !16, !17, !18, !19, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !39, !41, !43, !44, !45, !47, !49, !50, !51, !53, !55, !56}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !{ptr @__initcall__kmod_irq_bcm7120_l2__190_362_bcm7120_l2_driver_init6, !1, !"__initcall__kmod_irq_bcm7120_l2__190_362_bcm7120_l2_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/irqchip/irq-bcm7120-l2.c", i32 362, i32 1}
!2 = !{ptr @__UNIQUE_ID_description191, !3, !"__UNIQUE_ID_description191", i1 false, i1 false}
!3 = !{!"../drivers/irqchip/irq-bcm7120-l2.c", i32 363, i32 1}
!4 = !{ptr @__UNIQUE_ID_file192, !5, !"__UNIQUE_ID_file192", i1 false, i1 false}
!5 = !{!"../drivers/irqchip/irq-bcm7120-l2.c", i32 364, i32 1}
!6 = !{ptr @__UNIQUE_ID_license193, !5, !"__UNIQUE_ID_license193", i1 false, i1 false}
!7 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @bcm7120_l2_driver, !1, !"bcm7120_l2_driver", i1 false, i1 false}
!9 = !{ptr @bcm7120_l2_irqchip_match_table, !10, !"bcm7120_l2_irqchip_match_table", i1 false, i1 false}
!10 = !{!"../drivers/irqchip/irq-bcm7120-l2.c", i32 359, i32 1}
!11 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/irqchip/irq-bcm7120-l2.c", i32 349, i32 10}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/irqchip/irq-bcm7120-l2.c", i32 243, i32 3}
!15 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @bcm7120_l2_intc_probe._entry, !14, !"_entry", i1 false, i1 false}
!18 = !{ptr @bcm7120_l2_intc_probe._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/irqchip/irq-bcm7120-l2.c", i32 259, i32 45}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/irqchip/irq-bcm7120-l2.c", i32 284, i32 3}
!23 = !{ptr @bcm7120_l2_intc_probe._entry.6, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @bcm7120_l2_intc_probe._entry_ptr.8, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/irqchip/irq-bcm7120-l2.c", i32 326, i32 2}
!27 = !{ptr @bcm7120_l2_intc_probe._entry.9, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @bcm7120_l2_intc_probe._entry_ptr.11, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/irqchip/irq-bcm7120-l2.c", i32 116, i32 3}
!31 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @bcm7120_l2_intc_init_one._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @bcm7120_l2_intc_init_one._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/irqchip/irq-bcm7120-l2.c", i32 157, i32 3}
!36 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @bcm7120_l2_intc_iomap_7120._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @bcm7120_l2_intc_iomap_7120._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/irqchip/irq-bcm7120-l2.c", i32 166, i32 39}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/irqchip/irq-bcm7120-l2.c", i32 170, i32 3}
!43 = !{ptr @bcm7120_l2_intc_iomap_7120._entry.17, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @bcm7120_l2_intc_iomap_7120._entry_ptr.19, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/irqchip/irq-bcm7120-l2.c", i32 174, i32 44}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/irqchip/irq-bcm7120-l2.c", i32 177, i32 3}
!49 = !{ptr @bcm7120_l2_intc_iomap_7120._entry.21, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @bcm7120_l2_intc_iomap_7120._entry_ptr.23, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/irqchip/irq-bcm7120-l2.c", i32 356, i32 10}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/irqchip/irq-bcm7120-l2.c", i32 207, i32 3}
!55 = !{ptr @bcm7120_l2_intc_iomap_3380._entry, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @bcm7120_l2_intc_iomap_3380._entry_ptr, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{i32 1, !"wchar_size", i32 2}
!58 = !{i32 1, !"min_enum_size", i32 4}
!59 = !{i32 8, !"branch-target-enforcement", i32 0}
!60 = !{i32 8, !"sign-return-address", i32 0}
!61 = !{i32 8, !"sign-return-address-all", i32 0}
!62 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!63 = !{i32 7, !"uwtable", i32 1}
!64 = !{i32 7, !"frame-pointer", i32 2}
!65 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!66 = !{!"branch_weights", i32 1, i32 2000}
!67 = !{ptr @bcm7120_l2_intc_iomap_3380, ptr @bcm7120_l2_intc_iomap_7120}
!68 = !{i8 0, i8 2}
!69 = !{i64 2152948301}
!70 = !{i64 5346899}
!71 = !{i64 5347317}
!72 = !{i64 2152949171}
!73 = !{!"auto-init"}
