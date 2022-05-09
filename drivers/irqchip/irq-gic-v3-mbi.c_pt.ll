; ModuleID = '/llk/IR_all_yes/drivers/irqchip/irq-gic-v3-mbi.c_pt.bc'
source_filename = "../drivers/irqchip/irq-gic-v3-mbi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.msi_domain_info = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.msi_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.mbi_range = type { i32, i32, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.irq_fwspec = type { ptr, i32, [16 x i32] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.msi_msg = type { %union.anon.65, %union.anon.66, %union.anon.67 }
%union.anon.65 = type { i32 }
%union.anon.66 = type { i32 }
%union.anon.67 = type { i32 }

@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"msi-controller\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mbi-ranges\00", [21 x i8] zeroinitializer }, align 32
@mbi_range_nr = internal global { i32, [28 x i8] } zeroinitializer, align 32
@mbi_ranges = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@mbi_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 298, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\016GICv3: MBI range [%d:%d]\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mbi_init\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/irqchip/irq-gic-v3-mbi.c\00", [63 x i8] zeroinitializer }, align 32
@mbi_init._entry_ptr = internal global ptr @mbi_init._entry, section ".printk_index", align 4
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mbi-alias\00", [22 x i8] zeroinitializer }, align 32
@mbi_phys_base = internal global { i32, [28 x i8] } zeroinitializer, align 32
@mbi_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.3, ptr @.str.4, i32 319, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016GICv3: Using MBI frame %pa\0A\00", [34 x i8] zeroinitializer }, align 32
@mbi_init._entry_ptr.8 = internal global ptr @mbi_init._entry.6, section ".printk_index", align 4
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@mbi_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mbi_irq_domain_alloc, ptr @mbi_irq_domain_free, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@mbi_pmsi_domain_info = internal global { %struct.msi_domain_info, [32 x i8] } { %struct.msi_domain_info { i32 67, ptr @mbi_pmsi_ops, ptr @mbi_pmsi_irq_chip, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@mbi_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.9, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @mbi_lock, i64 52), ptr getelementptr (i8, ptr @mbi_lock, i64 52) }, ptr @mbi_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@mbi_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.11, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @irq_chip_mask_parent, ptr null, ptr @irq_chip_unmask_parent, ptr @irq_chip_eoi_parent, ptr @irq_chip_set_affinity_parent, ptr null, ptr @irq_chip_set_type_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mbi_lock.wait_lock\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mbi_lock\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MBI\00", [28 x i8] zeroinitializer }, align 32
@mbi_msi_domain_info = internal global { %struct.msi_domain_info, [32 x i8] } { %struct.msi_domain_info { i32 15, ptr null, ptr @mbi_msi_irq_chip, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@mbi_msi_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.12, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mbi_mask_msi_irq, ptr null, ptr @mbi_unmask_msi_irq, ptr @irq_chip_eoi_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mbi_compose_msi_msg, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MSI\00", [28 x i8] zeroinitializer }, align 32
@mbi_pmsi_ops = internal global { %struct.msi_domain_ops, [32 x i8] } zeroinitializer, align 32
@mbi_pmsi_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.13, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @irq_chip_set_type_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mbi_compose_mbi_msg, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 128 }, [56 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pMSI\00", [27 x i8] zeroinitializer }, align 32
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 270, i32 33 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 273, i32 42 }
@___asan_gen_.20 = private unnamed_addr constant [13 x i8] c"mbi_range_nr\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 30, i32 22 }
@___asan_gen_.23 = private unnamed_addr constant [11 x i8] c"mbi_ranges\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 29, i32 27 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 297, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 301, i32 28 }
@___asan_gen_.41 = private unnamed_addr constant [14 x i8] c"mbi_phys_base\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 28, i32 21 }
@___asan_gen_.44 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 319, i32 2 }
@___asan_gen_.50 = private unnamed_addr constant [15 x i8] c"mbi_domain_ops\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 140, i32 36 }
@___asan_gen_.53 = private unnamed_addr constant [21 x i8] c"mbi_pmsi_domain_info\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 224, i32 31 }
@___asan_gen_.56 = private unnamed_addr constant [9 x i8] c"mbi_lock\00", align 1
@___asan_gen_.59 = private unnamed_addr constant [13 x i8] c"mbi_irq_chip\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 32, i32 24 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 27, i32 8 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 33, i32 12 }
@___asan_gen_.71 = private unnamed_addr constant [20 x i8] c"mbi_msi_domain_info\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 176, i32 31 }
@___asan_gen_.74 = private unnamed_addr constant [17 x i8] c"mbi_msi_irq_chip\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 168, i32 24 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 169, i32 12 }
@___asan_gen_.80 = private unnamed_addr constant [13 x i8] c"mbi_pmsi_ops\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 221, i32 30 }
@___asan_gen_.83 = private unnamed_addr constant [18 x i8] c"mbi_pmsi_irq_chip\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 214, i32 24 }
@___asan_gen_.86 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.87 = private constant [36 x i8] c"../drivers/irqchip/irq-gic-v3-mbi.c\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 215, i32 12 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @mbi_init._entry, ptr @mbi_init._entry.6, ptr @mbi_init._entry_ptr, ptr @mbi_init._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @mbi_range_nr, ptr @mbi_ranges, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @mbi_phys_base, ptr @.str.7, ptr @mbi_domain_ops, ptr @mbi_pmsi_domain_info, ptr @mbi_lock, ptr @mbi_irq_chip, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @mbi_msi_domain_info, ptr @mbi_msi_irq_chip, ptr @.str.12, ptr @mbi_pmsi_ops, ptr @mbi_pmsi_irq_chip, ptr @.str.13], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbi_range_nr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbi_ranges to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbi_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbi_phys_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbi_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbi_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbi_pmsi_domain_info to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbi_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbi_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbi_msi_domain_info to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbi_msi_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbi_pmsi_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mbi_pmsi_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @mbi_init(ptr noundef %fwnode, ptr noundef %parent) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i.i = icmp eq ptr %fwnode, null
  %cmp.i.i = icmp ugt ptr %fwnode, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %entry.is_of_node.exit.thread_crit_edge, label %is_of_node.exit

entry.is_of_node.exit.thread_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %is_of_node.exit.thread

is_of_node.exit:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ops.i = getelementptr inbounds %struct.fwnode_handle, ptr %fwnode, i32 0, i32 1
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %cmp.i = icmp eq ptr %1, @of_fwnode_ops
  %add.ptr = getelementptr i8, ptr %fwnode, i32 -12
  %spec.select = select i1 %cmp.i, ptr %add.ptr, ptr null
  br label %is_of_node.exit.thread

is_of_node.exit.thread:                           ; preds = %is_of_node.exit, %entry.is_of_node.exit.thread_crit_edge
  %2 = phi ptr [ null, %entry.is_of_node.exit.thread_crit_edge ], [ %spec.select, %is_of_node.exit ]
  %call.i = tail call ptr @of_find_property(ptr noundef %2, ptr noundef nonnull @.str, ptr noundef null) #8
  %tobool.i.not = icmp eq ptr %call.i, null
  br i1 %tobool.i.not, label %is_of_node.exit.thread.cleanup73_crit_edge, label %if.end

is_of_node.exit.thread.cleanup73_crit_edge:       ; preds = %is_of_node.exit.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup73

if.end:                                           ; preds = %is_of_node.exit.thread
  %call3 = tail call i32 @of_property_count_elems_of_size(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp sgt i32 %call3, 0
  %3 = and i32 %call3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  %or.cond = and i1 %cmp, %tobool.not
  br i1 %or.cond, label %if.end5, label %if.end.cleanup73_crit_edge

if.end.cleanup73_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup73

if.end5:                                          ; preds = %if.end
  %div110111 = lshr i32 %call3, 1
  store i32 %div110111, ptr @mbi_range_nr, align 4
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %div110111, i32 12) #8
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !55

kcalloc.exit.thread:                              ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  store ptr null, ptr @mbi_ranges, align 4
  br label %cleanup73

if.end7.i.i:                                      ; preds = %if.end5
  %6 = extractvalue { i32, i1 } %4, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %6, i32 noundef 3520) #11
  store ptr %call8.i.i, ptr @mbi_ranges, align 4
  %tobool7.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool7.not, label %if.end7.i.i.cleanup73_crit_edge, label %for.cond.preheader

if.end7.i.i.cleanup73_crit_edge:                  ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup73

for.cond.preheader:                               ; preds = %if.end7.i.i
  %7 = load i32, ptr @mbi_range_nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp10112.not = icmp eq i32 %7, 0
  br i1 %cmp10112.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %do.end.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %n.0113 = phi i32 [ %inc, %do.end.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %mul = shl i32 %n.0113, 1
  %8 = load ptr, ptr @mbi_ranges, align 4
  %arrayidx = getelementptr %struct.mbi_range, ptr %8, i32 %n.0113
  %call11 = tail call i32 @of_property_read_u32_index(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef %mul, ptr noundef %arrayidx) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %for.body.err_free_mbithread-pre-split_crit_edge

for.body.err_free_mbithread-pre-split_crit_edge:  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_mbithread-pre-split

if.end14:                                         ; preds = %for.body
  %add = or i32 %mul, 1
  %9 = load ptr, ptr @mbi_ranges, align 4
  %nr_spis = getelementptr %struct.mbi_range, ptr %9, i32 %n.0113, i32 1
  %call17 = tail call i32 @of_property_read_u32_index(ptr noundef %2, ptr noundef nonnull @.str.1, i32 noundef %add, ptr noundef %nr_spis) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %if.end14.err_free_mbithread-pre-split_crit_edge

if.end14.err_free_mbithread-pre-split_crit_edge:  ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_mbithread-pre-split

if.end20:                                         ; preds = %if.end14
  %10 = load ptr, ptr @mbi_ranges, align 4
  %nr_spis22 = getelementptr %struct.mbi_range, ptr %10, i32 %n.0113, i32 1
  %11 = ptrtoint ptr %nr_spis22 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr_spis22, align 4
  %call23 = tail call ptr @bitmap_zalloc(i32 noundef %12, i32 noundef 3264) #8
  %13 = load ptr, ptr @mbi_ranges, align 4
  %bm = getelementptr %struct.mbi_range, ptr %13, i32 %n.0113, i32 2
  %14 = ptrtoint ptr %bm to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call23, ptr %bm, align 4
  %tobool27.not = icmp eq ptr %call23, null
  br i1 %tobool27.not, label %if.end20.err_free_mbi_crit_edge, label %do.end

if.end20.err_free_mbi_crit_edge:                  ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_mbi

do.end:                                           ; preds = %if.end20
  %arrayidx25 = getelementptr %struct.mbi_range, ptr %13, i32 %n.0113
  %15 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx25, align 4
  %nr_spis36 = getelementptr %struct.mbi_range, ptr %13, i32 %n.0113, i32 1
  %17 = ptrtoint ptr %nr_spis36 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nr_spis36, align 4
  %add37 = add i32 %16, -1
  %sub = add i32 %add37, %18
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %16, i32 noundef %sub) #12
  %inc = add nuw i32 %n.0113, 1
  %19 = load i32, ptr @mbi_range_nr, align 4
  %cmp10 = icmp ult i32 %inc, %19
  br i1 %cmp10, label %do.end.for.body_crit_edge, label %do.end.for.end_crit_edge

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

do.end.for.body_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %do.end.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call39 = tail call ptr @of_get_property(ptr noundef %2, ptr noundef nonnull @.str.5, ptr noundef null) #8
  %tobool40.not = icmp eq ptr %call39, null
  br i1 %tobool40.not, label %if.else, label %if.then41

if.then41:                                        ; preds = %for.end
  %call42 = tail call i64 @of_translate_address(ptr noundef %2, ptr noundef nonnull %call39) #8
  %conv = trunc i64 %call42 to i32
  store i32 %conv, ptr @mbi_phys_base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %conv)
  %cmp43 = icmp eq i32 %conv, -1
  br i1 %cmp43, label %if.then41.err_free_mbithread-pre-split_crit_edge, label %if.then41.do.end54_crit_edge

if.then41.do.end54_crit_edge:                     ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end54

if.then41.err_free_mbithread-pre-split_crit_edge: ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_mbithread-pre-split

if.else:                                          ; preds = %for.end
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #8
  %20 = call ptr @memset(ptr %res, i32 255, i32 32)
  %call47 = call i32 @of_address_to_resource(ptr noundef %2, i32 noundef 0, ptr noundef nonnull %res) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %res, align 4
  store i32 %22, ptr @mbi_phys_base, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #8
  br label %do.end54

cleanup:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #8
  br label %err_free_mbithread-pre-split

do.end54:                                         ; preds = %cleanup.thread, %if.then41.do.end54_crit_edge
  %call56 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @mbi_phys_base) #12
  %call57 = call fastcc i32 @mbi_allocate_domains(ptr noundef %parent)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %do.end54.cleanup73_crit_edge, label %do.end54.err_free_mbithread-pre-split_crit_edge

do.end54.err_free_mbithread-pre-split_crit_edge:  ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_mbithread-pre-split

do.end54.cleanup73_crit_edge:                     ; preds = %do.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup73

err_free_mbithread-pre-split:                     ; preds = %do.end54.err_free_mbithread-pre-split_crit_edge, %cleanup, %if.then41.err_free_mbithread-pre-split_crit_edge, %if.end14.err_free_mbithread-pre-split_crit_edge, %for.body.err_free_mbithread-pre-split_crit_edge
  %ret.2.ph = phi i32 [ -6, %if.then41.err_free_mbithread-pre-split_crit_edge ], [ -6, %cleanup ], [ %call57, %do.end54.err_free_mbithread-pre-split_crit_edge ], [ %call11, %for.body.err_free_mbithread-pre-split_crit_edge ], [ %call17, %if.end14.err_free_mbithread-pre-split_crit_edge ]
  %.pr = load ptr, ptr @mbi_ranges, align 4
  br label %err_free_mbi

err_free_mbi:                                     ; preds = %err_free_mbithread-pre-split, %if.end20.err_free_mbi_crit_edge
  %23 = phi ptr [ %.pr, %err_free_mbithread-pre-split ], [ %13, %if.end20.err_free_mbi_crit_edge ]
  %ret.2 = phi i32 [ %ret.2.ph, %err_free_mbithread-pre-split ], [ -12, %if.end20.err_free_mbi_crit_edge ]
  %tobool61.not = icmp eq ptr %23, null
  br i1 %tobool61.not, label %err_free_mbi.cleanup73_crit_edge, label %for.cond63.preheader

err_free_mbi.cleanup73_crit_edge:                 ; preds = %err_free_mbi
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup73

for.cond63.preheader:                             ; preds = %err_free_mbi
  %24 = load i32, ptr @mbi_range_nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp64114.not = icmp eq i32 %24, 0
  br i1 %cmp64114.not, label %for.cond63.preheader.for.end71_crit_edge, label %for.cond63.preheader.for.body66_crit_edge

for.cond63.preheader.for.body66_crit_edge:        ; preds = %for.cond63.preheader
  br label %for.body66

for.cond63.preheader.for.end71_crit_edge:         ; preds = %for.cond63.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end71

for.body66:                                       ; preds = %for.body66.for.body66_crit_edge, %for.cond63.preheader.for.body66_crit_edge
  %n.1115 = phi i32 [ %inc70, %for.body66.for.body66_crit_edge ], [ 0, %for.cond63.preheader.for.body66_crit_edge ]
  %25 = load ptr, ptr @mbi_ranges, align 4
  %bm68 = getelementptr %struct.mbi_range, ptr %25, i32 %n.1115, i32 2
  %26 = ptrtoint ptr %bm68 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bm68, align 4
  call void @bitmap_free(ptr noundef %27) #8
  %inc70 = add nuw i32 %n.1115, 1
  %28 = load i32, ptr @mbi_range_nr, align 4
  %cmp64 = icmp ult i32 %inc70, %28
  br i1 %cmp64, label %for.body66.for.body66_crit_edge, label %for.body66.for.end71_crit_edge

for.body66.for.end71_crit_edge:                   ; preds = %for.body66
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end71

for.body66.for.body66_crit_edge:                  ; preds = %for.body66
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body66

for.end71:                                        ; preds = %for.body66.for.end71_crit_edge, %for.cond63.preheader.for.end71_crit_edge
  %29 = load ptr, ptr @mbi_ranges, align 4
  call void @kfree(ptr noundef %29) #8
  br label %cleanup73

cleanup73:                                        ; preds = %for.end71, %err_free_mbi.cleanup73_crit_edge, %do.end54.cleanup73_crit_edge, %if.end7.i.i.cleanup73_crit_edge, %kcalloc.exit.thread, %if.end.cleanup73_crit_edge, %is_of_node.exit.thread.cleanup73_crit_edge
  %retval.0 = phi i32 [ 0, %is_of_node.exit.thread.cleanup73_crit_edge ], [ -22, %if.end.cleanup73_crit_edge ], [ -12, %if.end7.i.i.cleanup73_crit_edge ], [ 0, %do.end54.cleanup73_crit_edge ], [ %ret.2, %for.end71 ], [ %ret.2, %err_free_mbi.cleanup73_crit_edge ], [ -12, %kcalloc.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_zalloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @of_translate_address(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mbi_allocate_domains(ptr noundef %parent) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fwnode = getelementptr inbounds %struct.irq_domain, ptr %parent, i32 0, i32 6
  %0 = ptrtoint ptr %fwnode to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fwnode, align 4
  %call.i = tail call ptr @__irq_domain_add(ptr noundef %1, i32 noundef 0, i32 noundef -1, i32 noundef 0, ptr noundef nonnull @mbi_domain_ops, ptr noundef null) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @irq_domain_update_bus_token(ptr noundef nonnull %call.i, i32 noundef 5) #8
  %parent1 = getelementptr inbounds %struct.irq_domain, ptr %call.i, i32 0, i32 9
  %2 = ptrtoint ptr %parent1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %parent, ptr %parent1, align 4
  %3 = ptrtoint ptr %fwnode to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fwnode, align 4
  %call.i27 = tail call ptr @pci_msi_create_irq_domain(ptr noundef %4, ptr noundef nonnull @mbi_msi_domain_info, ptr noundef nonnull %call.i) #8
  %tobool.not.i = icmp eq ptr %call.i27, null
  %5 = ptrtoint ptr %fwnode to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %fwnode, align 4
  %call4 = tail call ptr @platform_msi_create_irq_domain(ptr noundef %6, ptr noundef nonnull @mbi_pmsi_domain_info, ptr noundef nonnull %call.i) #8
  %tobool6.not = icmp eq ptr %call4, null
  %or.cond = select i1 %tobool.not.i, i1 true, i1 %tobool6.not
  br i1 %or.cond, label %if.then7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then7:                                         ; preds = %if.end
  br i1 %tobool6.not, label %if.then7.if.end10_crit_edge, label %if.then9

if.then7.if.end10_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then9:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @irq_domain_remove(ptr noundef nonnull %call4) #8
  br label %if.end10

if.end10:                                         ; preds = %if.then9, %if.then7.if.end10_crit_edge
  br i1 %tobool.not.i, label %if.end10.if.end13_crit_edge, label %if.then12

if.end10.if.end13_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end13

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @irq_domain_remove(ptr noundef nonnull %call.i27) #8
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end10.if.end13_crit_edge
  tail call void @irq_domain_remove(ptr noundef nonnull %call.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end13 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_update_bus_token(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_msi_create_irq_domain(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mbi_irq_domain_alloc(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs, ptr nocapture noundef readnone %args) #4 align 64 {
entry:
  %fwspec.i = alloca %struct.irq_fwspec, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @mbi_lock, i32 noundef 0) #8
  %0 = load i32, ptr @mbi_range_nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp70.not = icmp eq i32 %0, 0
  br i1 %cmp70.not, label %entry.for.end.thread_crit_edge, label %for.body.lr.ph

entry.for.end.thread_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread

for.body.lr.ph:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_irqs)
  %cmp.i = icmp eq i32 %nr_irqs, 0
  %dec.i = add i32 %nr_irqs, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i.i = icmp eq i32 %dec.i, 0
  %1 = tail call i32 @llvm.ctlz.i32(i32 %dec.i, i1 true) #8, !range !56
  %sub.i.i = sub nuw nsw i32 32, %1
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.i
  %spec.select = select i1 %cmp.i, i32 -1, i32 %cond.i.i
  br label %for.body

for.end.thread:                                   ; preds = %for.inc.for.end.thread_crit_edge, %entry.for.end.thread_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @mbi_lock) #8
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.071 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %2 = load ptr, ptr @mbi_ranges, align 4
  %bm = getelementptr %struct.mbi_range, ptr %2, i32 %i.071, i32 2
  %3 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bm, align 4
  %nr_spis = getelementptr %struct.mbi_range, ptr %2, i32 %i.071, i32 1
  %5 = ptrtoint ptr %nr_spis to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nr_spis, align 4
  %call2 = tail call i32 @bitmap_find_free_region(ptr noundef %4, i32 noundef %6, i32 noundef %spec.select) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2)
  %cmp3 = icmp sgt i32 %call2, -1
  br i1 %cmp3, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.071, 1
  %7 = load i32, ptr @mbi_range_nr, align 4
  %cmp = icmp ult i32 %inc, %7
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end.thread_crit_edge

for.inc.for.end.thread_crit_edge:                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body
  %8 = load ptr, ptr @mbi_ranges, align 4
  %arrayidx4 = getelementptr %struct.mbi_range, ptr %8, i32 %i.071
  tail call void @mutex_unlock(ptr noundef nonnull @mbi_lock) #8
  %tobool.not = icmp eq ptr %arrayidx4, null
  br i1 %tobool.not, label %for.end.cleanup_crit_edge, label %if.end6

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %for.end
  %9 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx4, align 4
  %add = add i32 %10, %call2
  br i1 %cmp.i, label %if.end6.cleanup_crit_edge, label %for.body14.lr.ph

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body14.lr.ph:                                 ; preds = %if.end6
  %11 = getelementptr inbounds i8, ptr %fwspec.i, i32 20
  %parent.i = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 9
  %param_count.i = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec.i, i32 0, i32 1
  %param.i = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec.i, i32 0, i32 2
  %arrayidx5.i = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec.i, i32 0, i32 2, i32 1
  %arrayidx7.i = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec.i, i32 0, i32 2, i32 2
  br label %for.body14

for.body14:                                       ; preds = %if.end20.for.body14_crit_edge, %for.body14.lr.ph
  %i.173 = phi i32 [ 0, %for.body14.lr.ph ], [ %inc25, %if.end20.for.body14_crit_edge ]
  %add15 = add i32 %i.173, %virq
  %add16 = add i32 %i.173, %add
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %fwspec.i) #8
  %12 = call ptr @memset(ptr %11, i32 255, i32 52)
  %13 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %parent.i, align 4
  %fwnode.i = getelementptr inbounds %struct.irq_domain, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %fwnode.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fwnode.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %16, null
  %cmp.i.i.i = icmp ugt ptr %16, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.i = or i1 %tobool.not.i.i.i, %cmp.i.i.i
  br i1 %spec.select.i.i.i, label %for.body14.mbi_irq_gic_domain_alloc.exit.thread_crit_edge, label %is_of_node.exit.i

for.body14.mbi_irq_gic_domain_alloc.exit.thread_crit_edge: ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #10
  br label %mbi_irq_gic_domain_alloc.exit.thread

is_of_node.exit.i:                                ; preds = %for.body14
  %ops.i.i = getelementptr inbounds %struct.fwnode_handle, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops.i.i, align 4
  %cmp.i.i = icmp eq ptr %18, @of_fwnode_ops
  br i1 %cmp.i.i, label %if.end.i58, label %is_of_node.exit.i.mbi_irq_gic_domain_alloc.exit.thread_crit_edge

is_of_node.exit.i.mbi_irq_gic_domain_alloc.exit.thread_crit_edge: ; preds = %is_of_node.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mbi_irq_gic_domain_alloc.exit.thread

if.end.i58:                                       ; preds = %is_of_node.exit.i
  %19 = ptrtoint ptr %fwspec.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %fwspec.i, align 4
  %20 = ptrtoint ptr %param_count.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 3, ptr %param_count.i, align 4
  %21 = ptrtoint ptr %param.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %param.i, align 4
  %sub.i = add i32 %add16, -32
  %22 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %sub.i, ptr %arrayidx5.i, align 4
  %23 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 1, ptr %arrayidx7.i, align 4
  %call8.i = call i32 @irq_domain_alloc_irqs_parent(ptr noundef %domain, i32 noundef %add15, i32 noundef 1, ptr noundef nonnull %fwspec.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool.not.i, label %mbi_irq_gic_domain_alloc.exit, label %if.end.i58.mbi_irq_gic_domain_alloc.exit.thread_crit_edge

if.end.i58.mbi_irq_gic_domain_alloc.exit.thread_crit_edge: ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_pc() #10
  br label %mbi_irq_gic_domain_alloc.exit.thread

mbi_irq_gic_domain_alloc.exit.thread:             ; preds = %if.end.i58.mbi_irq_gic_domain_alloc.exit.thread_crit_edge, %is_of_node.exit.i.mbi_irq_gic_domain_alloc.exit.thread_crit_edge, %for.body14.mbi_irq_gic_domain_alloc.exit.thread_crit_edge
  %retval.0.i59.ph = phi i32 [ -22, %for.body14.mbi_irq_gic_domain_alloc.exit.thread_crit_edge ], [ %call8.i, %if.end.i58.mbi_irq_gic_domain_alloc.exit.thread_crit_edge ], [ -22, %is_of_node.exit.i.mbi_irq_gic_domain_alloc.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fwspec.i) #8
  br label %mbi_free_msi.exit

mbi_irq_gic_domain_alloc.exit:                    ; preds = %if.end.i58
  %24 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %parent.i, align 4
  %call12.i = call ptr @irq_domain_get_irq_data(ptr noundef %25, i32 noundef %add15) #8
  %chip.i = getelementptr inbounds %struct.irq_data, ptr %call12.i, i32 0, i32 4
  %26 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %chip.i, align 4
  %irq_set_type.i = getelementptr inbounds %struct.irq_chip, ptr %27, i32 0, i32 13
  %28 = ptrtoint ptr %irq_set_type.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %irq_set_type.i, align 4
  %call13.i = call i32 %29(ptr noundef %call12.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fwspec.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool18.not = icmp eq i32 %call13.i, 0
  br i1 %tobool18.not, label %if.end20, label %mbi_irq_gic_domain_alloc.exit.mbi_free_msi.exit_crit_edge

mbi_irq_gic_domain_alloc.exit.mbi_free_msi.exit_crit_edge: ; preds = %mbi_irq_gic_domain_alloc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %mbi_free_msi.exit

if.end20:                                         ; preds = %mbi_irq_gic_domain_alloc.exit
  %call23 = call i32 @irq_domain_set_hwirq_and_chip(ptr noundef %domain, i32 noundef %add15, i32 noundef %add16, ptr noundef nonnull @mbi_irq_chip, ptr noundef nonnull %arrayidx4) #8
  %inc25 = add nuw i32 %i.173, 1
  %exitcond.not = icmp eq i32 %inc25, %nr_irqs
  br i1 %exitcond.not, label %if.end20.cleanup_crit_edge, label %if.end20.for.body14_crit_edge

if.end20.for.body14_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body14

if.end20.cleanup_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

mbi_free_msi.exit:                                ; preds = %mbi_irq_gic_domain_alloc.exit.mbi_free_msi.exit_crit_edge, %mbi_irq_gic_domain_alloc.exit.thread
  %retval.0.i5968 = phi i32 [ %retval.0.i59.ph, %mbi_irq_gic_domain_alloc.exit.thread ], [ %call13.i, %mbi_irq_gic_domain_alloc.exit.mbi_free_msi.exit_crit_edge ]
  call void @irq_domain_free_irqs_parent(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs) #8
  call void @mutex_lock_nested(ptr noundef nonnull @mbi_lock, i32 noundef 0) #8
  %bm.i = getelementptr %struct.mbi_range, ptr %8, i32 %i.071, i32 2
  %30 = ptrtoint ptr %bm.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %bm.i, align 4
  %32 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx4, align 4
  %sub.i62 = sub i32 %add, %33
  call void @bitmap_release_region(ptr noundef %31, i32 noundef %sub.i62, i32 noundef %cond.i.i) #8
  call void @mutex_unlock(ptr noundef nonnull @mbi_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %mbi_free_msi.exit, %if.end20.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %for.end.cleanup_crit_edge, %for.end.thread
  %retval.0 = phi i32 [ %retval.0.i5968, %mbi_free_msi.exit ], [ -28, %for.end.cleanup_crit_edge ], [ -28, %for.end.thread ], [ 0, %if.end6.cleanup_crit_edge ], [ 0, %if.end20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mbi_irq_domain_free(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @irq_domain_get_irq_data(ptr noundef %domain, i32 noundef %virq) #8
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @mbi_lock, i32 noundef 0) #8
  %bm.i = getelementptr inbounds %struct.mbi_range, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %bm.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bm.i, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_irqs)
  %cmp.i.i = icmp eq i32 %nr_irqs, 0
  br i1 %cmp.i.i, label %entry.mbi_free_msi.exit_crit_edge, label %if.end.i.i

entry.mbi_free_msi.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %mbi_free_msi.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dec.i.i = add i32 %nr_irqs, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %tobool.not.i.i.i = icmp eq i32 %dec.i.i, 0
  %8 = tail call i32 @llvm.ctlz.i32(i32 %dec.i.i, i1 true) #8, !range !56
  %sub.i.i.i = sub nuw nsw i32 32, %8
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 0, i32 %sub.i.i.i
  br label %mbi_free_msi.exit

mbi_free_msi.exit:                                ; preds = %if.end.i.i, %entry.mbi_free_msi.exit_crit_edge
  %retval.0.i.i = phi i32 [ %cond.i.i.i, %if.end.i.i ], [ -1, %entry.mbi_free_msi.exit_crit_edge ]
  %sub.i = sub i32 %3, %7
  tail call void @bitmap_release_region(ptr noundef %5, i32 noundef %sub.i, i32 noundef %retval.0.i.i) #8
  tail call void @mutex_unlock(ptr noundef nonnull @mbi_lock) #8
  tail call void @irq_domain_free_irqs_parent(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_find_free_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_set_hwirq_and_chip(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs_parent(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_alloc_irqs_parent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_get_irq_data(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_mask_parent(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_unmask_parent(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_eoi_parent(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_affinity_parent(ptr noundef, ptr noundef, i1 noundef zeroext) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_type_parent(ptr noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_msi_create_irq_domain(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mbi_mask_msi_irq(ptr noundef %d) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @pci_msi_mask_irq(ptr noundef %d) #8
  tail call void @irq_chip_mask_parent(ptr noundef %d) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mbi_unmask_msi_irq(ptr noundef %d) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @pci_msi_unmask_irq(ptr noundef %d) #8
  tail call void @irq_chip_unmask_parent(ptr noundef %d) #8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mbi_compose_msi_msg(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %msg) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.msi_msg, ptr %msg, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %0, align 4
  %2 = load i32, ptr @mbi_phys_base, align 4
  %add2 = add i32 %2, 64
  %3 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %add2, ptr %msg, align 4
  %parent_data = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 6
  %4 = ptrtoint ptr %parent_data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent_data, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hwirq, align 4
  %8 = getelementptr inbounds %struct.msi_msg, ptr %msg, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %7, ptr %8, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_msi_mask_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_msi_unmask_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @mbi_compose_mbi_msg(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %msg) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.msi_msg, ptr %msg, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %0, align 4
  %2 = load i32, ptr @mbi_phys_base, align 4
  %add2.i = add i32 %2, 64
  %3 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %add2.i, ptr %msg, align 4
  %parent_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 6
  %4 = ptrtoint ptr %parent_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent_data.i, align 4
  %hwirq.i = getelementptr inbounds %struct.irq_data, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %hwirq.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hwirq.i, align 4
  %8 = getelementptr inbounds %struct.msi_msg, ptr %msg, i32 0, i32 2
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %7, ptr %8, align 4
  %arrayidx = getelementptr %struct.msi_msg, ptr %msg, i32 1
  %10 = getelementptr %struct.msi_msg, ptr %msg, i32 1, i32 1
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %10, align 4
  %12 = load i32, ptr @mbi_phys_base, align 4
  %add2 = add i32 %12, 72
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %add2, ptr %arrayidx, align 4
  %14 = load ptr, ptr %parent_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %hwirq, align 4
  %17 = getelementptr %struct.msi_msg, ptr %msg, i32 1, i32 2
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %16, ptr %17, align 4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !14, !15, !16, !18, !20, !22, !24, !26, !27, !28, !30, !32, !34, !36, !38, !40, !42, !44}
!llvm.module.flags = !{!46, !47, !48, !49, !50, !51, !52, !53}
!llvm.ident = !{!54}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/irqchip/irq-gic-v3-mbi.c", i32 270, i32 33}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/irqchip/irq-gic-v3-mbi.c", i32 273, i32 42}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/irqchip/irq-gic-v3-mbi.c", i32 297, i32 3}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @mbi_init._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @mbi_init._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/irqchip/irq-gic-v3-mbi.c", i32 301, i32 28}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/irqchip/irq-gic-v3-mbi.c", i32 319, i32 2}
!14 = !{ptr @mbi_init._entry.6, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @mbi_init._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @mbi_phys_base, !17, !"mbi_phys_base", i1 false, i1 false}
!17 = !{!"../drivers/irqchip/irq-gic-v3-mbi.c", i32 28, i32 21}
!18 = !{ptr @mbi_ranges, !19, !"mbi_ranges", i1 false, i1 false}
!19 = !{!"../drivers/irqchip/irq-gic-v3-mbi.c", i32 29, i32 27}
!20 = !{ptr @mbi_range_nr, !21, !"mbi_range_nr", i1 false, i1 false}
!21 = !{!"../drivers/irqchip/irq-gic-v3-mbi.c", i32 30, i32 22}
!22 = !{ptr @mbi_domain_ops, !23, !"mbi_domain_ops", i1 false, i1 false}
!23 = !{!"../drivers/irqchip/irq-gic-v3-mbi.c", i32 140, i32 36}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/irqchip/irq-gic-v3-mbi.c", i32 27, i32 8}
!26 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @mbi_lock, !25, !"mbi_lock", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/irqchip/irq-gic-v3-mbi.c", i32 33, i32 12}
!30 = !{ptr @mbi_irq_chip, !31, !"mbi_irq_chip", i1 false, i1 false}
!31 = !{!"../drivers/irqchip/irq-gic-v3-mbi.c", i32 32, i32 24}
!32 = !{ptr @mbi_msi_domain_info, !33, !"mbi_msi_domain_info", i1 false, i1 false}
!33 = !{!"../drivers/irqchip/irq-gic-v3-mbi.c", i32 176, i32 31}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/irqchip/irq-gic-v3-mbi.c", i32 169, i32 12}
!36 = !{ptr @mbi_msi_irq_chip, !37, !"mbi_msi_irq_chip", i1 false, i1 false}
!37 = !{!"../drivers/irqchip/irq-gic-v3-mbi.c", i32 168, i32 24}
!38 = !{ptr @mbi_pmsi_domain_info, !39, !"mbi_pmsi_domain_info", i1 false, i1 false}
!39 = !{!"../drivers/irqchip/irq-gic-v3-mbi.c", i32 224, i32 31}
!40 = !{ptr @mbi_pmsi_ops, !41, !"mbi_pmsi_ops", i1 false, i1 false}
!41 = !{!"../drivers/irqchip/irq-gic-v3-mbi.c", i32 221, i32 30}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/irqchip/irq-gic-v3-mbi.c", i32 215, i32 12}
!44 = !{ptr @mbi_pmsi_irq_chip, !45, !"mbi_pmsi_irq_chip", i1 false, i1 false}
!45 = !{!"../drivers/irqchip/irq-gic-v3-mbi.c", i32 214, i32 24}
!46 = !{i32 1, !"wchar_size", i32 2}
!47 = !{i32 1, !"min_enum_size", i32 4}
!48 = !{i32 8, !"branch-target-enforcement", i32 0}
!49 = !{i32 8, !"sign-return-address", i32 0}
!50 = !{i32 8, !"sign-return-address-all", i32 0}
!51 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!52 = !{i32 7, !"uwtable", i32 1}
!53 = !{i32 7, !"frame-pointer", i32 2}
!54 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!55 = !{!"branch_weights", i32 1, i32 2000}
!56 = !{i32 0, i32 33}
