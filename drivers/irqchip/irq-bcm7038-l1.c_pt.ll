; ModuleID = '/llk/IR_all_yes/drivers/irqchip/irq-bcm7038-l1.c_pt.bc'
source_filename = "../drivers/irqchip/irq-bcm7038-l1.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.syscore_ops = type { %struct.list_head, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.bcm7038_l1_chip = type { %struct.raw_spinlock, i32, ptr, [4 x ptr], %struct.list_head, [8 x i32], [8 x i32], [256 x i8] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.bcm7038_l1_cpu = type { ptr, [0 x i32] }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.callback_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }

@__initcall__kmod_irq_bcm7038_l1__187_460_bcm7038_l1_driver_init6 = internal global ptr @bcm7038_l1_driver_init, section ".initcall6.init", align 4
@__UNIQUE_ID_description188 = internal constant [78 x i8] c"irq_bcm7038_l1.description=Broadcom STB 7038-style L1/L2 interrupt controller\00", section ".modinfo", align 1
@__UNIQUE_ID_file189 = internal constant [51 x i8] c"irq_bcm7038_l1.file=drivers/irqchip/irq-bcm7038-l1\00", section ".modinfo", align 1
@__UNIQUE_ID_license190 = internal constant [30 x i8] c"irq_bcm7038_l1.license=GPL v2\00", section ".modinfo", align 1
@bcm7038_l1_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @platform_irqchip_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @bcm7038_l1_irqchip_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bcm7038_l1\00", [21 x i8] zeroinitializer }, align 32
@bcm7038_l1_irqchip_match_table = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm7038-l1-intc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @bcm7038_l1_of_init }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@bcm7038_l1_of_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&intc->lock\00", [20 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@bcm7038_l1_of_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 415, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013irq_bcm7038_l1: failed to remap intc L1 registers\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"bcm7038_l1_of_init\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/irqchip/irq-bcm7038-l1.c\00", [63 x i8] zeroinitializer }, align 32
@bcm7038_l1_of_init._entry_ptr = internal global ptr @bcm7038_l1_of_init._entry, section ".printk_index", align 4
@bcm7038_l1_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr @bcm7038_l1_map, ptr null, ptr @irq_domain_xlate_onecell, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@bcm7038_l1_intcs_lock = internal global { %struct.raw_spinlock, [52 x i8] } { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.16, i8 0, i8 2, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@bcm7038_l1_intcs_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @bcm7038_l1_intcs_list, ptr @bcm7038_l1_intcs_list }, [24 x i8] zeroinitializer }, align 32
@bcm7038_l1_syscore_ops = internal global { %struct.syscore_ops, [44 x i8] } { %struct.syscore_ops { %struct.list_head zeroinitializer, ptr @bcm7038_l1_suspend, ptr @bcm7038_l1_resume, ptr null }, [44 x i8] zeroinitializer }, align 32
@bcm7038_l1_of_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.3, ptr @.str.4, i32 439, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\016irq_bcm7038_l1: registered BCM7038 L1 intc (%pOF, IRQs: %d)\0A\00", [33 x i8] zeroinitializer }, align 32
@bcm7038_l1_of_init._entry_ptr.7 = internal global ptr @bcm7038_l1_of_init._entry.5, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"brcm,int-fwd-mask\00", [46 x i8] zeroinitializer }, align 32
@bcm7038_l1_init_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.4, i32 249, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\013irq_bcm7038_l1: invalid brcm,int-fwd-mask property\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"bcm7038_l1_init_one\00", [44 x i8] zeroinitializer }, align 32
@bcm7038_l1_init_one._entry_ptr = internal global ptr @bcm7038_l1_init_one._entry, section ".printk_index", align 4
@bcm7038_l1_init_one._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.4, i32 272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013irq_bcm7038_l1: failed to map parent interrupt %d\0A\00", [43 x i8] zeroinitializer }, align 32
@bcm7038_l1_init_one._entry_ptr.13 = internal global ptr @bcm7038_l1_init_one._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"brcm,irq-can-wake\00", [46 x i8] zeroinitializer }, align 32
@bcm7038_l1_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.15, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bcm7038_l1_mask, ptr null, ptr @bcm7038_l1_unmask, ptr null, ptr null, ptr null, ptr null, ptr @bcm7038_l1_set_wake, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bcm7038-l1\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"bcm7038_l1_intcs_lock\00", [42 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967274]
@___asan_gen_.17 = private unnamed_addr constant [18 x i8] c"bcm7038_l1_driver\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 460, i32 1 }
@___asan_gen_.23 = private unnamed_addr constant [31 x i8] c"bcm7038_l1_irqchip_match_table\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 458, i32 1 }
@___asan_gen_.26 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 409, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 415, i32 4 }
@___asan_gen_.44 = private unnamed_addr constant [22 x i8] c"bcm7038_l1_domain_ops\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 394, i32 36 }
@___asan_gen_.47 = private unnamed_addr constant [22 x i8] c"bcm7038_l1_intcs_lock\00", align 1
@___asan_gen_.50 = private unnamed_addr constant [22 x i8] c"bcm7038_l1_intcs_list\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 293, i32 8 }
@___asan_gen_.53 = private unnamed_addr constant [23 x i8] c"bcm7038_l1_syscore_ops\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 343, i32 27 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 438, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 245, i32 40 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 249, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 272, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 276, i32 32 }
@___asan_gen_.83 = private unnamed_addr constant [20 x i8] c"bcm7038_l1_irq_chip\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 366, i32 24 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 367, i32 12 }
@___asan_gen_.89 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.90 = private constant [36 x i8] c"../drivers/irqchip/irq-bcm7038-l1.c\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 294, i32 8 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__UNIQUE_ID_description188, ptr @__UNIQUE_ID_file189, ptr @__UNIQUE_ID_license190, ptr @__initcall__kmod_irq_bcm7038_l1__187_460_bcm7038_l1_driver_init6, ptr @bcm7038_l1_init_one._entry, ptr @bcm7038_l1_init_one._entry.11, ptr @bcm7038_l1_init_one._entry_ptr, ptr @bcm7038_l1_init_one._entry_ptr.13, ptr @bcm7038_l1_of_init._entry, ptr @bcm7038_l1_of_init._entry.5, ptr @bcm7038_l1_of_init._entry_ptr, ptr @bcm7038_l1_of_init._entry_ptr.7, ptr @bcm7038_l1_driver, ptr @.str, ptr @bcm7038_l1_irqchip_match_table, ptr @bcm7038_l1_of_init.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @bcm7038_l1_domain_ops, ptr @bcm7038_l1_intcs_lock, ptr @bcm7038_l1_intcs_list, ptr @bcm7038_l1_syscore_ops, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @bcm7038_l1_irq_chip, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm7038_l1_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm7038_l1_irqchip_match_table to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm7038_l1_of_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm7038_l1_of_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm7038_l1_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm7038_l1_intcs_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm7038_l1_intcs_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm7038_l1_syscore_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm7038_l1_of_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm7038_l1_init_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm7038_l1_init_one._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bcm7038_l1_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm7038_l1_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @bcm7038_l1_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_irqchip_probe(ptr noundef) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm7038_l1_of_init(ptr noundef %dn, ptr nocapture noundef readnone %parent) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 396) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @bcm7038_l1_of_init.__key, i16 noundef signext 2) #9
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.body
  %idx.0 = phi i32 [ -1, %do.body ], [ %call1, %for.body.for.cond_crit_edge ]
  %call1 = tail call i32 @cpumask_next(i32 noundef %idx.0, ptr noundef nonnull @__cpu_possible_mask) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call1, i32 %1)
  %cmp = icmp ult i32 %call1, %1
  br i1 %cmp, label %for.body, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.cond
  %call2 = tail call fastcc i32 @bcm7038_l1_init_one(ptr noundef %dn, i32 noundef %call1, ptr noundef nonnull %call7.i.i) #14
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.then4, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

if.then4:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool5.not = icmp eq i32 %call1, 0
  br i1 %tobool5.not, label %do.end10, label %if.then4.for.end_crit_edge

if.then4.for.end_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

do.end10:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #15
  br label %out_free

for.end:                                          ; preds = %if.then4.for.end_crit_edge, %for.cond.for.end_crit_edge
  %n_words = getelementptr inbounds %struct.bcm7038_l1_chip, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %n_words to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_words, align 4
  %mul = shl i32 %3, 5
  %tobool.not.i.i = icmp eq ptr %dn, null
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %dn, i32 0, i32 3
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr null, ptr %fwnode.i.i
  %call1.i = tail call ptr @__irq_domain_add(ptr noundef %spec.select.i.i, i32 noundef %mul, i32 noundef %mul, i32 noundef 0, ptr noundef nonnull @bcm7038_l1_domain_ops, ptr noundef nonnull %call7.i.i) #9
  %domain = getelementptr inbounds %struct.bcm7038_l1_chip, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %domain to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call1.i, ptr %domain, align 8
  %tobool15.not = icmp eq ptr %call1.i, null
  br i1 %tobool15.not, label %for.cond29.preheader, label %if.end17

for.cond29.preheader:                             ; preds = %for.end
  %call3068 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %5 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call3068, i32 %5)
  %cmp3169 = icmp ult i32 %call3068, %5
  br i1 %cmp3169, label %for.cond29.preheader.for.body32_crit_edge, label %for.cond29.preheader.out_free_crit_edge

for.cond29.preheader.out_free_crit_edge:          ; preds = %for.cond29.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free

for.cond29.preheader.for.body32_crit_edge:        ; preds = %for.cond29.preheader
  br label %for.body32

if.end17:                                         ; preds = %for.end
  tail call void @_raw_spin_lock(ptr noundef nonnull @bcm7038_l1_intcs_lock) #9
  %list = getelementptr inbounds %struct.bcm7038_l1_chip, ptr %call7.i.i, i32 0, i32 4
  %6 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @bcm7038_l1_intcs_list, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %6, ptr noundef nonnull @bcm7038_l1_intcs_list) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end17.list_add_tail.exit_crit_edge

if.end17.list_add_tail.exit_crit_edge:            ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  store ptr %list, ptr getelementptr inbounds (%struct.list_head, ptr @bcm7038_l1_intcs_list, i32 0, i32 1), align 4
  %7 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @bcm7038_l1_intcs_list, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.bcm7038_l1_chip, ptr %call7.i.i, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %6, ptr %prev3.i.i, align 8
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %list, ptr %6, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end17.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef nonnull @bcm7038_l1_intcs_lock) #9
  %10 = load volatile ptr, ptr @bcm7038_l1_intcs_list, align 4
  %cmp.i.not.i = icmp eq ptr %10, @bcm7038_l1_intcs_list
  br i1 %cmp.i.not.i, label %list_add_tail.exit.do.end24_crit_edge, label %list_is_singular.exit

list_add_tail.exit.do.end24_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end24

list_is_singular.exit:                            ; preds = %list_add_tail.exit
  %11 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @bcm7038_l1_intcs_list, i32 0, i32 1), align 4
  %cmp.i.not = icmp eq ptr %10, %11
  br i1 %cmp.i.not, label %if.then20, label %list_is_singular.exit.do.end24_crit_edge

list_is_singular.exit.do.end24_crit_edge:         ; preds = %list_is_singular.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end24

if.then20:                                        ; preds = %list_is_singular.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @register_syscore_ops(ptr noundef nonnull @bcm7038_l1_syscore_ops) #9
  br label %do.end24

do.end24:                                         ; preds = %if.then20, %list_is_singular.exit.do.end24_crit_edge, %list_add_tail.exit.do.end24_crit_edge
  %12 = ptrtoint ptr %n_words to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %n_words, align 4
  %mul27 = shl i32 %13, 5
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %dn, i32 noundef %mul27) #15
  br label %cleanup

for.body32:                                       ; preds = %if.end39.for.body32_crit_edge, %for.cond29.preheader.for.body32_crit_edge
  %call3070 = phi i32 [ %call30, %if.end39.for.body32_crit_edge ], [ %call3068, %for.cond29.preheader.for.body32_crit_edge ]
  %arrayidx = getelementptr %struct.bcm7038_l1_chip, ptr %call7.i.i, i32 0, i32 3, i32 %call3070
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %tobool33.not = icmp eq ptr %15, null
  br i1 %tobool33.not, label %for.body32.if.end39_crit_edge, label %if.then34

for.body32.if.end39_crit_edge:                    ; preds = %for.body32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then34:                                        ; preds = %for.body32
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %tobool35.not = icmp eq ptr %17, null
  br i1 %tobool35.not, label %if.then34.if.end38_crit_edge, label %if.then36

if.then34.if.end38_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end38

if.then36:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @iounmap(ptr noundef nonnull %17) #9
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.then34.if.end38_crit_edge
  tail call void @kfree(ptr noundef nonnull %15) #9
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %for.body32.if.end39_crit_edge
  %call30 = tail call i32 @cpumask_next(i32 noundef %call3070, ptr noundef nonnull @__cpu_possible_mask) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %18 = load i32, ptr @nr_cpu_ids, align 4
  %cmp31 = icmp ult i32 %call30, %18
  br i1 %cmp31, label %if.end39.for.body32_crit_edge, label %if.end39.out_free_crit_edge

if.end39.out_free_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %out_free

if.end39.for.body32_crit_edge:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body32

out_free:                                         ; preds = %if.end39.out_free_crit_edge, %for.cond29.preheader.out_free_crit_edge, %do.end10
  %ret.0 = phi i32 [ %call2, %do.end10 ], [ -12, %for.cond29.preheader.out_free_crit_edge ], [ -12, %if.end39.out_free_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %out_free, %do.end24, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end24 ], [ %ret.0, %out_free ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @bcm7038_l1_init_one(ptr noundef %dn, i32 noundef %idx, ptr noundef %intc) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #9
  %0 = call ptr @memset(ptr %res, i32 255, i32 32)
  %call = call i32 @of_address_to_resource(ptr noundef %dn, i32 noundef %idx, ptr noundef nonnull %res) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = getelementptr inbounds %struct.resource, ptr %res, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %4 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %res, align 4
  %sub.i = add i32 %3, 1
  %add.i = sub i32 %sub.i, %5
  %div99 = lshr i32 %add.i, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 143, i32 %add.i)
  %cmp = icmp ugt i32 %add.i, 143
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.else

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else:                                          ; preds = %if.end
  %n_words3 = getelementptr inbounds %struct.bcm7038_l1_chip, ptr %intc, i32 0, i32 1
  %6 = ptrtoint ptr %n_words3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_words3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  br i1 %tobool4.not, label %if.then5, label %if.else7

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %n_words3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %div99, ptr %n_words3, align 4
  br label %if.end13

if.else7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %div99)
  %cmp9.not = icmp eq i32 %7, %div99
  br i1 %cmp9.not, label %if.else7.if.end13_crit_edge, label %if.else7.cleanup_crit_edge

if.else7.cleanup_crit_edge:                       ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else7.if.end13_crit_edge:                      ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.end13:                                         ; preds = %if.else7.if.end13_crit_edge, %if.then5
  %irq_fwd_mask = getelementptr inbounds %struct.bcm7038_l1_chip, ptr %intc, i32 0, i32 6
  %call.i = call i32 @of_property_read_variable_u32_array(ptr noundef %dn, ptr noundef nonnull @.str.8, ptr noundef %irq_fwd_mask, i32 noundef %div99, i32 noundef 0) #9
  %9 = call i32 @llvm.smin.i32(i32 %call.i, i32 0) #9
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values)
  switch i32 %9, label %do.end [
    i32 0, label %if.end13.if.end8.i.i_crit_edge
    i32 -22, label %if.end13.if.end8.i.i_crit_edge109
  ]

if.end13.if.end8.i.i_crit_edge109:                ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i

if.end13.if.end8.i.i_crit_edge:                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i.i

do.end:                                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #15
  br label %cleanup

if.end8.i.i:                                      ; preds = %if.end13.if.end8.i.i_crit_edge, %if.end13.if.end8.i.i_crit_edge109
  %mul = shl nuw nsw i32 %div99, 2
  %add = add nuw nsw i32 %mul, 4
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #16
  %arrayidx = getelementptr %struct.bcm7038_l1_chip, ptr %intc, i32 0, i32 3, i32 %idx
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call9.i.i, ptr %arrayidx, align 4
  %tobool21.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool21.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end23

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end23:                                         ; preds = %if.end8.i.i
  %12 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %res, align 4
  %call24 = call ptr @ioremap(i32 noundef %13, i32 noundef %add.i) #9
  %14 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call24, ptr %call9.i.i, align 128
  %tobool26.not = icmp eq ptr %call24, null
  br i1 %tobool26.not, label %if.end23.cleanup_crit_edge, label %for.cond.preheader

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end23
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %add.i)
  %cmp29107.not = icmp ult i32 %add.i, 16
  br i1 %cmp29107.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.preheader

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.preheader:                               ; preds = %for.cond.preheader
  %umax = call i32 @llvm.umax.i32(i32 %div99, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %i.0108 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx31 = getelementptr %struct.bcm7038_l1_chip, ptr %intc, i32 0, i32 6, i32 %i.0108
  %15 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx31, align 4
  %neg = xor i32 %16, -1
  %17 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call9.i.i, align 128
  %19 = ptrtoint ptr %n_words3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %n_words3, align 4
  %mul.i = shl i32 %20, 1
  %add.i100 = add i32 %mul.i, %i.0108
  %mul1.i = shl i32 %add.i100, 2
  %add.ptr = getelementptr i8, ptr %18, i32 %mul1.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !59
  call void @arm_heavy_mb() #9
  %21 = call i32 @llvm.bswap.i32(i32 %neg) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %21) #9, !srcloc !60
  %22 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx31, align 4
  %24 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call9.i.i, align 128
  %26 = ptrtoint ptr %n_words3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %n_words3, align 4
  %mul.i102 = mul i32 %27, 3
  %add.i103 = add i32 %mul.i102, %i.0108
  %mul1.i104 = shl i32 %add.i103, 2
  %add.ptr38 = getelementptr i8, ptr %25, i32 %mul1.i104
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !59
  call void @arm_heavy_mb() #9
  %28 = call i32 @llvm.bswap.i32(i32 %23) #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr38, i32 %28) #9, !srcloc !60
  %29 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx31, align 4
  %neg41 = xor i32 %30, -1
  %arrayidx42 = getelementptr %struct.bcm7038_l1_cpu, ptr %call9.i.i, i32 0, i32 1, i32 %i.0108
  %31 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %neg41, ptr %arrayidx42, align 4
  %inc = add nuw nsw i32 %i.0108, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call43 = call i32 @irq_of_parse_and_map(ptr noundef %dn, i32 noundef %idx) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %do.end48, label %if.end51

do.end48:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %call50 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, i32 noundef 0) #15
  br label %cleanup

if.end51:                                         ; preds = %for.end
  %call.i105 = call ptr @of_find_property(ptr noundef %dn, ptr noundef nonnull @.str.14, ptr noundef null) #9
  %tobool.i.not = icmp eq ptr %call.i105, null
  br i1 %tobool.i.not, label %if.end51.if.end55_crit_edge, label %if.then53

if.end51.if.end55_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end55

if.then53:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %call.i106 = call i32 @irq_set_irq_wake(i32 noundef %call43, i32 noundef 1) #9
  br label %if.end55

if.end55:                                         ; preds = %if.then53, %if.end51.if.end55_crit_edge
  call void @irq_set_chained_handler_and_data(i32 noundef %call43, ptr noundef nonnull @bcm7038_l1_irq_handle, ptr noundef %intc) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %do.end48, %if.end23.cleanup_crit_edge, %if.end8.i.i.cleanup_crit_edge, %do.end, %if.else7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end55 ], [ -22, %do.end48 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.else7.cleanup_crit_edge ], [ -12, %if.end8.i.i.cleanup_crit_edge ], [ -12, %if.end23.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #9
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @register_syscore_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm7038_l1_irq_handle(ptr noundef %desc) #7 align 64 {
entry:
  %pending = alloca i32, align 4
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
  %cpus = getelementptr inbounds %struct.bcm7038_l1_chip, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %cpus to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cpus, align 4
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 10
  %6 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.chained_irq_enter.exit_crit_edge

entry.chained_irq_enter.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %entry
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 8
  %8 = ptrtoint ptr %irq_mask_ack.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_mask_ack.i, align 4
  %tobool1.not.i = icmp eq ptr %9, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %9(ptr noundef %irq_data.i) #9
  br label %chained_irq_enter.exit

if.else.i:                                        ; preds = %if.end.i
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 7
  %10 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irq_mask.i, align 4
  %irq_data4.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %11(ptr noundef %irq_data4.i) #9
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 6
  %12 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %irq_ack.i, align 4
  %tobool5.not.i = icmp eq ptr %13, null
  br i1 %tobool5.not.i, label %if.else.i.chained_irq_enter.exit_crit_edge, label %if.then6.i

if.else.i.chained_irq_enter.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %chained_irq_enter.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void %13(ptr noundef %irq_data4.i) #9
  br label %chained_irq_enter.exit

chained_irq_enter.exit:                           ; preds = %if.then6.i, %if.else.i.chained_irq_enter.exit_crit_edge, %if.then2.i, %entry.chained_irq_enter.exit_crit_edge
  %n_words = getelementptr inbounds %struct.bcm7038_l1_chip, ptr %1, i32 0, i32 1
  %14 = ptrtoint ptr %n_words to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %n_words, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp48.not = icmp eq i32 %15, 0
  br i1 %cmp48.not, label %chained_irq_enter.exit.for.end25_crit_edge, label %for.body.lr.ph

chained_irq_enter.exit.for.end25_crit_edge:       ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end25

for.body.lr.ph:                                   ; preds = %chained_irq_enter.exit
  %domain = getelementptr inbounds %struct.bcm7038_l1_chip, ptr %1, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.end.for.body_crit_edge, %for.body.lr.ph
  %idx.049 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.end.for.body_crit_edge ]
  %mul = shl i32 %idx.049, 5
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pending) #9
  %16 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %pending, align 4, !annotation !61
  %call3 = call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #9
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %5, align 4
  %mul1.i = shl i32 %idx.049, 2
  %add.ptr = getelementptr i8, ptr %18, i32 %mul1.i
  %19 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #9, !srcloc !62
  %20 = call i32 @llvm.bswap.i32(i32 %19) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !63
  %arrayidx6 = getelementptr %struct.bcm7038_l1_cpu, ptr %5, i32 0, i32 1, i32 %idx.049
  %21 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx6, align 4
  %neg = xor i32 %22, -1
  %and = and i32 %20, %neg
  %23 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and, ptr %pending, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call3) #9
  %call16 = call i32 @_find_next_bit_be(ptr noundef nonnull %pending, i32 noundef 32, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call16)
  %cmp1846 = icmp slt i32 %call16, 32
  br i1 %cmp1846, label %for.body.for.body20_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body20_crit_edge:                    ; preds = %for.body
  br label %for.body20

for.body20:                                       ; preds = %for.body20.for.body20_crit_edge, %for.body.for.body20_crit_edge
  %hwirq.047 = phi i32 [ %call23, %for.body20.for.body20_crit_edge ], [ %call16, %for.body.for.body20_crit_edge ]
  %24 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %domain, align 4
  %add = add i32 %hwirq.047, %mul
  %call21 = call i32 @generic_handle_domain_irq(ptr noundef %25, i32 noundef %add) #9
  %add22 = add nsw i32 %hwirq.047, 1
  %call23 = call i32 @_find_next_bit_be(ptr noundef nonnull %pending, i32 noundef 32, i32 noundef %add22) #9
  %cmp18 = icmp slt i32 %call23, 32
  br i1 %cmp18, label %for.body20.for.body20_crit_edge, label %for.body20.for.end_crit_edge

for.body20.for.end_crit_edge:                     ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body20.for.body20_crit_edge:                  ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body20

for.end:                                          ; preds = %for.body20.for.end_crit_edge, %for.body.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pending) #9
  %inc = add nuw i32 %idx.049, 1
  %26 = ptrtoint ptr %n_words to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %n_words, align 4
  %cmp = icmp ult i32 %inc, %27
  br i1 %cmp, label %for.end.for.body_crit_edge, label %for.end.for.end25_crit_edge

for.end.for.end25_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end25

for.end.for.body_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end25:                                        ; preds = %for.end.for.end25_crit_edge, %chained_irq_enter.exit.for.end25_crit_edge
  %28 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i43 = icmp eq ptr %29, null
  br i1 %tobool.not.i43, label %if.else.i44, label %for.end25.chained_irq_exit.exit_crit_edge

for.end25.chained_irq_exit.exit_crit_edge:        ; preds = %for.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %chained_irq_exit.exit

if.else.i44:                                      ; preds = %for.end25
  call void @__sanitizer_cov_trace_pc() #11
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 9
  %30 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i44, %for.end25.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %31, %if.else.i44 ], [ %29, %for.end25.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  call void %.sink.i(ptr noundef %irq_data2.i) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_irq_wake(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm7038_l1_map(ptr nocapture noundef readonly %d, i32 noundef %virq, i32 noundef %hw_irq) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %d, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %rem = and i32 %hw_irq, 31
  %shl = shl nuw i32 1, %rem
  %div9 = lshr i32 %hw_irq, 5
  %arrayidx = getelementptr %struct.bcm7038_l1_chip, ptr %1, i32 0, i32 6, i32 %div9
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %and = and i32 %3, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @irq_set_chip_and_handler_name(i32 noundef %virq, ptr noundef nonnull @bcm7038_l1_irq_chip, ptr noundef nonnull @handle_level_irq, ptr noundef null) #9
  %4 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %host_data, align 4
  %call = tail call i32 @irq_set_chip_data(i32 noundef %virq, ptr noundef %5) #9
  %call2 = tail call ptr @irq_get_irq_data(i32 noundef %virq) #9
  %common.i = getelementptr inbounds %struct.irq_data, ptr %call2, i32 0, i32 3
  %6 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %common.i, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %7, align 4
  %or.i = or i32 %9, 16777216
  store i32 %or.i, ptr %7, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_xlate_onecell(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm7038_l1_mask(ptr nocapture noundef readonly %d) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #9
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %arrayidx = getelementptr %struct.bcm7038_l1_chip, ptr %1, i32 0, i32 7, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv2 = zext i8 %5 to i32
  %6 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip_data.i, align 4
  %div13.i = lshr i32 %3, 5
  %rem.i = and i32 %3, 31
  %shl.i = shl nuw i32 1, %rem.i
  %arrayidx.i = getelementptr %struct.bcm7038_l1_chip, ptr %7, i32 0, i32 3, i32 %conv2
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx2.i = getelementptr %struct.bcm7038_l1_cpu, ptr %9, i32 0, i32 1, i32 %div13.i
  %10 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx2.i, align 4
  %or.i = or i32 %11, %shl.i
  store i32 %or.i, ptr %arrayidx2.i, align 4
  %12 = load ptr, ptr %arrayidx.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %n_words.i.i = getelementptr inbounds %struct.bcm7038_l1_chip, ptr %7, i32 0, i32 1
  %15 = ptrtoint ptr %n_words.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %n_words.i.i, align 4
  %mul.i.i = shl i32 %16, 1
  %add.i.i = add i32 %mul.i.i, %div13.i
  %mul1.i.i = shl i32 %add.i.i, 2
  %add.ptr.i = getelementptr i8, ptr %14, i32 %mul1.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !59
  tail call void @arm_heavy_mb() #9
  %17 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %17) #9, !srcloc !60
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm7038_l1_unmask(ptr nocapture noundef readonly %d) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %call1 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #9
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %arrayidx = getelementptr %struct.bcm7038_l1_chip, ptr %1, i32 0, i32 7, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx, align 1
  %conv2 = zext i8 %5 to i32
  %6 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chip_data.i, align 4
  %div13.i = lshr i32 %3, 5
  %rem.i = and i32 %3, 31
  %shl.i = shl nuw i32 1, %rem.i
  %neg.i = xor i32 %shl.i, -1
  %arrayidx.i = getelementptr %struct.bcm7038_l1_chip, ptr %7, i32 0, i32 3, i32 %conv2
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx2.i = getelementptr %struct.bcm7038_l1_cpu, ptr %9, i32 0, i32 1, i32 %div13.i
  %10 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx2.i, align 4
  %and.i = and i32 %11, %neg.i
  store i32 %and.i, ptr %arrayidx2.i, align 4
  %12 = load ptr, ptr %arrayidx.i, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %n_words.i.i = getelementptr inbounds %struct.bcm7038_l1_chip, ptr %7, i32 0, i32 1
  %15 = ptrtoint ptr %n_words.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %n_words.i.i, align 4
  %mul.i.i = mul i32 %16, 3
  %add.i.i = add i32 %mul.i.i, %div13.i
  %mul1.i.i = shl i32 %add.i.i, 2
  %add.ptr.i = getelementptr i8, ptr %14, i32 %mul1.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !59
  tail call void @arm_heavy_mb() #9
  %17 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %17) #9, !srcloc !60
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call1) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm7038_l1_set_wake(ptr nocapture noundef readonly %d, i32 noundef %on) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %div21 = lshr i32 %3, 5
  %rem = and i32 %3, 31
  %shl = shl nuw i32 1, %rem
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool.not = icmp eq i32 %on, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.bcm7038_l1_chip, ptr %1, i32 0, i32 5, i32 %div21
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %or = or i32 %5, %shl
  store i32 %or, ptr %arrayidx, align 4
  br label %do.body5

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %neg = xor i32 %shl, -1
  %arrayidx4 = getelementptr %struct.bcm7038_l1_chip, ptr %1, i32 0, i32 5, i32 %div21
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx4, align 4
  %and = and i32 %7, %neg
  store i32 %and, ptr %arrayidx4, align 4
  br label %do.body5

do.body5:                                         ; preds = %if.else, %if.then
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %1, i32 noundef %call2) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bcm7038_l1_suspend() #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %.pn39 = load ptr, ptr @bcm7038_l1_intcs_list, align 4
  %cmp.not40 = icmp eq ptr %.pn39, @bcm7038_l1_intcs_list
  br i1 %cmp.not40, label %entry.for.end17_crit_edge, label %entry.for.cond1.preheader_crit_edge

entry.for.cond1.preheader_crit_edge:              ; preds = %entry
  br label %for.cond1.preheader

entry.for.end17_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end17

for.cond.loopexit:                                ; preds = %for.body3.for.cond.loopexit_crit_edge, %for.cond1.preheader.for.cond.loopexit_crit_edge
  %0 = ptrtoint ptr %.pn41 to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn41, align 4
  %cmp.not = icmp eq ptr %.pn, @bcm7038_l1_intcs_list
  br i1 %cmp.not, label %for.cond.loopexit.for.end17_crit_edge, label %for.cond.loopexit.for.cond1.preheader_crit_edge

for.cond.loopexit.for.cond1.preheader_crit_edge:  ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond1.preheader

for.cond.loopexit.for.end17_crit_edge:            ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end17

for.cond1.preheader:                              ; preds = %for.cond.loopexit.for.cond1.preheader_crit_edge, %entry.for.cond1.preheader_crit_edge
  %.pn41 = phi ptr [ %.pn, %for.cond.loopexit.for.cond1.preheader_crit_edge ], [ %.pn39, %entry.for.cond1.preheader_crit_edge ]
  %n_words = getelementptr i8, ptr %.pn41, i32 -24
  %1 = ptrtoint ptr %n_words to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %n_words, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp237.not = icmp eq i32 %2, 0
  br i1 %cmp237.not, label %for.cond1.preheader.for.cond.loopexit_crit_edge, label %for.body3.lr.ph

for.cond1.preheader.for.cond.loopexit_crit_edge:  ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.loopexit

for.body3.lr.ph:                                  ; preds = %for.cond1.preheader
  %wake_mask = getelementptr i8, ptr %.pn41, i32 8
  %irq_fwd_mask = getelementptr i8, ptr %.pn41, i32 40
  %cpus = getelementptr i8, ptr %.pn41, i32 -16
  br label %for.body3

for.body3:                                        ; preds = %for.body3.for.body3_crit_edge, %for.body3.lr.ph
  %word.038 = phi i32 [ 0, %for.body3.lr.ph ], [ %inc, %for.body3.for.body3_crit_edge ]
  %arrayidx = getelementptr [8 x i32], ptr %wake_mask, i32 0, i32 %word.038
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %arrayidx4 = getelementptr [8 x i32], ptr %irq_fwd_mask, i32 0, i32 %word.038
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx4, align 4
  %or = or i32 %6, %4
  %neg = xor i32 %or, -1
  %7 = ptrtoint ptr %cpus to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cpus, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %11 = ptrtoint ptr %n_words to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %n_words, align 4
  %mul.i = shl i32 %12, 1
  %add.i = add i32 %mul.i, %word.038
  %mul1.i = shl i32 %add.i, 2
  %add.ptr6 = getelementptr i8, ptr %10, i32 %mul1.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !59
  tail call void @arm_heavy_mb() #9
  %13 = tail call i32 @llvm.bswap.i32(i32 %neg) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %13) #9, !srcloc !60
  %14 = ptrtoint ptr %cpus to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cpus, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %18 = ptrtoint ptr %n_words to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %n_words, align 4
  %mul.i34 = mul i32 %19, 3
  %add.i35 = add i32 %mul.i34, %word.038
  %mul1.i36 = shl i32 %add.i35, 2
  %add.ptr11 = getelementptr i8, ptr %17, i32 %mul1.i36
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !59
  tail call void @arm_heavy_mb() #9
  %20 = tail call i32 @llvm.bswap.i32(i32 %or) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %20) #9, !srcloc !60
  %inc = add nuw i32 %word.038, 1
  %21 = ptrtoint ptr %n_words to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %n_words, align 4
  %cmp2 = icmp ult i32 %inc, %22
  br i1 %cmp2, label %for.body3.for.body3_crit_edge, label %for.body3.for.cond.loopexit_crit_edge

for.body3.for.cond.loopexit_crit_edge:            ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.loopexit

for.body3.for.body3_crit_edge:                    ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body3

for.end17:                                        ; preds = %for.cond.loopexit.for.end17_crit_edge, %entry.for.end17_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @bcm7038_l1_resume() #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %.pn45 = load ptr, ptr @bcm7038_l1_intcs_list, align 4
  %cmp.not46 = icmp eq ptr %.pn45, @bcm7038_l1_intcs_list
  br i1 %cmp.not46, label %entry.for.end22_crit_edge, label %entry.for.cond1.preheader_crit_edge

entry.for.cond1.preheader_crit_edge:              ; preds = %entry
  br label %for.cond1.preheader

entry.for.end22_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end22

for.cond.loopexit:                                ; preds = %for.body3.for.cond.loopexit_crit_edge, %for.cond1.preheader.for.cond.loopexit_crit_edge
  %0 = ptrtoint ptr %.pn47 to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn47, align 4
  %cmp.not = icmp eq ptr %.pn, @bcm7038_l1_intcs_list
  br i1 %cmp.not, label %for.cond.loopexit.for.end22_crit_edge, label %for.cond.loopexit.for.cond1.preheader_crit_edge

for.cond.loopexit.for.cond1.preheader_crit_edge:  ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond1.preheader

for.cond.loopexit.for.end22_crit_edge:            ; preds = %for.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end22

for.cond1.preheader:                              ; preds = %for.cond.loopexit.for.cond1.preheader_crit_edge, %entry.for.cond1.preheader_crit_edge
  %.pn47 = phi ptr [ %.pn, %for.cond.loopexit.for.cond1.preheader_crit_edge ], [ %.pn45, %entry.for.cond1.preheader_crit_edge ]
  %n_words = getelementptr i8, ptr %.pn47, i32 -24
  %1 = ptrtoint ptr %n_words to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %n_words, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp243.not = icmp eq i32 %2, 0
  br i1 %cmp243.not, label %for.cond1.preheader.for.cond.loopexit_crit_edge, label %for.body3.lr.ph

for.cond1.preheader.for.cond.loopexit_crit_edge:  ; preds = %for.cond1.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.loopexit

for.body3.lr.ph:                                  ; preds = %for.cond1.preheader
  %cpus = getelementptr i8, ptr %.pn47, i32 -16
  br label %for.body3

for.body3:                                        ; preds = %for.body3.for.body3_crit_edge, %for.body3.lr.ph
  %word.044 = phi i32 [ 0, %for.body3.lr.ph ], [ %inc, %for.body3.for.body3_crit_edge ]
  %3 = ptrtoint ptr %cpus to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cpus, align 4
  %arrayidx4 = getelementptr %struct.bcm7038_l1_cpu, ptr %4, i32 0, i32 1, i32 %word.044
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx4, align 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %4, align 4
  %9 = ptrtoint ptr %n_words to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %n_words, align 4
  %mul.i = shl i32 %10, 1
  %add.i = add i32 %mul.i, %word.044
  %mul1.i = shl i32 %add.i, 2
  %add.ptr7 = getelementptr i8, ptr %8, i32 %mul1.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !59
  tail call void @arm_heavy_mb() #9
  %11 = tail call i32 @llvm.bswap.i32(i32 %6) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %11) #9, !srcloc !60
  %12 = ptrtoint ptr %cpus to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cpus, align 4
  %arrayidx11 = getelementptr %struct.bcm7038_l1_cpu, ptr %13, i32 0, i32 1, i32 %word.044
  %14 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx11, align 4
  %neg = xor i32 %15, -1
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %13, align 4
  %18 = ptrtoint ptr %n_words to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %n_words, align 4
  %mul.i40 = mul i32 %19, 3
  %add.i41 = add i32 %mul.i40, %word.044
  %mul1.i42 = shl i32 %add.i41, 2
  %add.ptr16 = getelementptr i8, ptr %17, i32 %mul1.i42
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !59
  tail call void @arm_heavy_mb() #9
  %20 = tail call i32 @llvm.bswap.i32(i32 %neg) #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %20) #9, !srcloc !60
  %inc = add nuw i32 %word.044, 1
  %21 = ptrtoint ptr %n_words to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %n_words, align 4
  %cmp2 = icmp ult i32 %inc, %22
  br i1 %cmp2, label %for.body3.for.body3_crit_edge, label %for.body3.for.cond.loopexit_crit_edge

for.body3.for.cond.loopexit_crit_edge:            ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.loopexit

for.body3.for.body3_crit_edge:                    ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body3

for.end22:                                        ; preds = %for.cond.loopexit.for.end22_crit_edge, %entry.for.end22_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind readonly willreturn }
attributes #14 = { cold }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !11, !13, !14, !16, !17, !18, !19, !20, !22, !23, !24, !26, !28, !29, !30, !31, !33, !34, !35, !37, !39, !41, !43, !45, !46, !48}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @__initcall__kmod_irq_bcm7038_l1__187_460_bcm7038_l1_driver_init6, !1, !"__initcall__kmod_irq_bcm7038_l1__187_460_bcm7038_l1_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/irqchip/irq-bcm7038-l1.c", i32 460, i32 1}
!2 = !{ptr @__UNIQUE_ID_description188, !3, !"__UNIQUE_ID_description188", i1 false, i1 false}
!3 = !{!"../drivers/irqchip/irq-bcm7038-l1.c", i32 461, i32 1}
!4 = !{ptr @__UNIQUE_ID_file189, !5, !"__UNIQUE_ID_file189", i1 false, i1 false}
!5 = !{!"../drivers/irqchip/irq-bcm7038-l1.c", i32 462, i32 1}
!6 = !{ptr @__UNIQUE_ID_license190, !5, !"__UNIQUE_ID_license190", i1 false, i1 false}
!7 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @bcm7038_l1_driver, !1, !"bcm7038_l1_driver", i1 false, i1 false}
!9 = !{ptr @bcm7038_l1_irqchip_match_table, !10, !"bcm7038_l1_irqchip_match_table", i1 false, i1 false}
!10 = !{!"../drivers/irqchip/irq-bcm7038-l1.c", i32 458, i32 1}
!11 = !{ptr @bcm7038_l1_of_init.__key, !12, !"__key", i1 false, i1 false}
!12 = !{!"../drivers/irqchip/irq-bcm7038-l1.c", i32 409, i32 2}
!13 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/irqchip/irq-bcm7038-l1.c", i32 415, i32 4}
!16 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @bcm7038_l1_of_init._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @bcm7038_l1_of_init._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/irqchip/irq-bcm7038-l1.c", i32 438, i32 2}
!22 = !{ptr @bcm7038_l1_of_init._entry.5, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @bcm7038_l1_of_init._entry_ptr.7, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/irqchip/irq-bcm7038-l1.c", i32 245, i32 40}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/irqchip/irq-bcm7038-l1.c", i32 249, i32 3}
!28 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @bcm7038_l1_init_one._entry, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @bcm7038_l1_init_one._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/irqchip/irq-bcm7038-l1.c", i32 272, i32 3}
!33 = !{ptr @bcm7038_l1_init_one._entry.11, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @bcm7038_l1_init_one._entry_ptr.13, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/irqchip/irq-bcm7038-l1.c", i32 276, i32 32}
!37 = !{ptr @bcm7038_l1_domain_ops, !38, !"bcm7038_l1_domain_ops", i1 false, i1 false}
!38 = !{!"../drivers/irqchip/irq-bcm7038-l1.c", i32 394, i32 36}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/irqchip/irq-bcm7038-l1.c", i32 367, i32 12}
!41 = !{ptr @bcm7038_l1_irq_chip, !42, !"bcm7038_l1_irq_chip", i1 false, i1 false}
!42 = !{!"../drivers/irqchip/irq-bcm7038-l1.c", i32 366, i32 24}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/irqchip/irq-bcm7038-l1.c", i32 294, i32 8}
!45 = !{ptr @bcm7038_l1_intcs_lock, !44, !"bcm7038_l1_intcs_lock", i1 false, i1 false}
!46 = !{ptr @bcm7038_l1_intcs_list, !47, !"bcm7038_l1_intcs_list", i1 false, i1 false}
!47 = !{!"../drivers/irqchip/irq-bcm7038-l1.c", i32 293, i32 8}
!48 = !{ptr @bcm7038_l1_syscore_ops, !49, !"bcm7038_l1_syscore_ops", i1 false, i1 false}
!49 = !{!"../drivers/irqchip/irq-bcm7038-l1.c", i32 343, i32 27}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{i64 2153655466}
!60 = !{i64 4207983}
!61 = !{!"auto-init"}
!62 = !{i64 4208401}
!63 = !{i64 2153653574}
