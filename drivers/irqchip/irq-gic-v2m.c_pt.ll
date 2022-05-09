; ModuleID = '/llk/IR_all_yes/drivers/irqchip/irq-gic-v2m.c_pt.bc'
source_filename = "../drivers/irqchip/irq-gic-v2m.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.msi_domain_info = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.msi_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.v2m_data = type { %struct.list_head, ptr, %struct.resource, ptr, i32, i32, i32, ptr, i32 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.irq_fwspec = type { ptr, i32, [16 x i32] }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.msi_msg = type { %union.anon.67, %union.anon.68, %union.anon.69 }
%union.anon.67 = type { i32 }
%union.anon.68 = type { i32 }
%union.anon.69 = type { i32 }

@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@gicv2m_device_id = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"arm,gic-v2m-frame\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"msi-controller\00", [17 x i8] zeroinitializer }, align 32
@gicv2m_of_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 429, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013GICv2m: Failed to allocate v2m resource.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gicv2m_of_init\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/irqchip/irq-gic-v2m.c\00", [34 x i8] zeroinitializer }, align 32
@gicv2m_of_init._entry_ptr = internal global ptr @gicv2m_of_init._entry, section ".printk_index", align 4
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"arm,msi-base-spi\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"arm,msi-num-spis\00", [47 x i8] zeroinitializer }, align 32
@gicv2m_of_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 437, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\016GICv2m: DT overriding V2M MSI_TYPER (base:%u, num:%u)\0A\00", [39 x i8] zeroinitializer }, align 32
@gicv2m_of_init._entry_ptr.8 = internal global ptr @gicv2m_of_init._entry.6, section ".printk_index", align 4
@gicv2m_init_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 336, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013GICv2m: Failed to map GICv2m resource\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gicv2m_init_one\00", [16 x i8] zeroinitializer }, align 32
@gicv2m_init_one._entry_ptr = internal global ptr @gicv2m_init_one._entry, section ".printk_index", align 4
@v2m_nodes = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @v2m_nodes, ptr @v2m_nodes }, [24 x i8] zeroinitializer }, align 32
@gicv2m_init_one._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.3, i32 397, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\016GICv2m: range%pR, SPI[%d:%d]\0A\00", [32 x i8] zeroinitializer }, align 32
@gicv2m_init_one._entry_ptr.13 = internal global ptr @gicv2m_init_one._entry.11, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@is_msi_spi_valid._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.3, i32 239, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013GICv2m: Invalid MSI base SPI (base:%u)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"is_msi_spi_valid\00", [47 x i8] zeroinitializer }, align 32
@is_msi_spi_valid._entry_ptr = internal global ptr @is_msi_spi_valid._entry, section ".printk_index", align 4
@is_msi_spi_valid._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.15, ptr @.str.3, i32 245, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013GICv2m: Number of SPIs (%u) exceed maximum (%u)\0A\00", [45 x i8] zeroinitializer }, align 32
@is_msi_spi_valid._entry_ptr.18 = internal global ptr @is_msi_spi_valid._entry.16, section ".printk_index", align 4
@gicv2m_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gicv2m_irq_domain_alloc, ptr @gicv2m_irq_domain_free, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@gicv2m_allocate_domains._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.3, i32 292, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013GICv2m: Failed to create GICv2m domain\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"gicv2m_allocate_domains\00", [40 x i8] zeroinitializer }, align 32
@gicv2m_allocate_domains._entry_ptr = internal global ptr @gicv2m_allocate_domains._entry, section ".printk_index", align 4
@gicv2m_msi_domain_info = internal global { %struct.msi_domain_info, [32 x i8] } { %struct.msi_domain_info { i32 15, ptr null, ptr @gicv2m_msi_irq_chip, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@gicv2m_pmsi_domain_info = internal global { %struct.msi_domain_info, [32 x i8] } { %struct.msi_domain_info { i32 3, ptr @gicv2m_pmsi_ops, ptr @gicv2m_pmsi_irq_chip, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@gicv2m_allocate_domains._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str.3, i32 305, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013GICv2m: Failed to create MSI domains\0A\00", [56 x i8] zeroinitializer }, align 32
@gicv2m_allocate_domains._entry_ptr.23 = internal global ptr @gicv2m_allocate_domains._entry.21, section ".printk_index", align 4
@v2m_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.24, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@gicv2m_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.25, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @irq_chip_mask_parent, ptr null, ptr @irq_chip_unmask_parent, ptr @irq_chip_eoi_parent, ptr @irq_chip_set_affinity_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gicv2m_compose_msi_msg, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"v2m_lock\00", [23 x i8] zeroinitializer }, align 32
@irqchip_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"GICv2m\00", [25 x i8] zeroinitializer }, align 32
@gicv2m_msi_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.26, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @gicv2m_mask_msi_irq, ptr null, ptr @gicv2m_unmask_msi_irq, ptr @irq_chip_eoi_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MSI\00", [28 x i8] zeroinitializer }, align 32
@gicv2m_pmsi_ops = internal global { %struct.msi_domain_ops, [32 x i8] } zeroinitializer, align 32
@gicv2m_pmsi_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.27, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pMSI\00", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 319, i64 100663664]
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"gicv2m_device_id\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 407, i32 34 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 424, i32 32 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 429, i32 4 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 433, i32 36 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 435, i32 36 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 436, i32 4 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 336, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant [10 x i8] c"v2m_nodes\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 59, i32 8 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 396, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 239, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 244, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant [18 x i8] c"gicv2m_domain_ops\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 231, i32 36 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 292, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant [23 x i8] c"gicv2m_msi_domain_info\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 93, i32 31 }
@___asan_gen_.106 = private unnamed_addr constant [24 x i8] c"gicv2m_pmsi_domain_info\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 259, i32 31 }
@___asan_gen_.109 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 305, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant [9 x i8] c"v2m_lock\00", align 1
@___asan_gen_.118 = private unnamed_addr constant [16 x i8] c"gicv2m_irq_chip\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 125, i32 24 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 60, i32 8 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 126, i32 12 }
@___asan_gen_.127 = private unnamed_addr constant [20 x i8] c"gicv2m_msi_irq_chip\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 86, i32 24 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 87, i32 12 }
@___asan_gen_.133 = private unnamed_addr constant [16 x i8] c"gicv2m_pmsi_ops\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 256, i32 30 }
@___asan_gen_.136 = private unnamed_addr constant [21 x i8] c"gicv2m_pmsi_irq_chip\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 252, i32 24 }
@___asan_gen_.139 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.140 = private constant [33 x i8] c"../drivers/irqchip/irq-gic-v2m.c\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 253, i32 12 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @gicv2m_allocate_domains._entry, ptr @gicv2m_allocate_domains._entry.21, ptr @gicv2m_allocate_domains._entry_ptr, ptr @gicv2m_allocate_domains._entry_ptr.23, ptr @gicv2m_init_one._entry, ptr @gicv2m_init_one._entry.11, ptr @gicv2m_init_one._entry_ptr, ptr @gicv2m_init_one._entry_ptr.13, ptr @gicv2m_of_init._entry, ptr @gicv2m_of_init._entry.6, ptr @gicv2m_of_init._entry_ptr, ptr @gicv2m_of_init._entry_ptr.8, ptr @is_msi_spi_valid._entry, ptr @is_msi_spi_valid._entry.16, ptr @is_msi_spi_valid._entry_ptr, ptr @is_msi_spi_valid._entry_ptr.18, ptr @gicv2m_device_id, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @v2m_nodes, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @gicv2m_domain_ops, ptr @.str.19, ptr @.str.20, ptr @gicv2m_msi_domain_info, ptr @gicv2m_pmsi_domain_info, ptr @.str.22, ptr @v2m_lock, ptr @gicv2m_irq_chip, ptr @.str.24, ptr @.str.25, ptr @gicv2m_msi_irq_chip, ptr @.str.26, ptr @gicv2m_pmsi_ops, ptr @gicv2m_pmsi_irq_chip, ptr @.str.27], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gicv2m_device_id to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gicv2m_of_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gicv2m_of_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gicv2m_init_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v2m_nodes to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gicv2m_init_one._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is_msi_spi_valid._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is_msi_spi_valid._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gicv2m_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gicv2m_allocate_domains._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gicv2m_msi_domain_info to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gicv2m_pmsi_domain_info to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gicv2m_allocate_domains._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @v2m_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gicv2m_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gicv2m_msi_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gicv2m_pmsi_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gicv2m_pmsi_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gicv2m_init(ptr noundef %parent_handle, ptr noundef %parent) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i.i = icmp eq ptr %parent_handle, null
  %cmp.i.i = icmp ugt ptr %parent_handle, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %entry.return_crit_edge, label %is_of_node.exit

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

is_of_node.exit:                                  ; preds = %entry
  %ops.i = getelementptr inbounds %struct.fwnode_handle, ptr %parent_handle, i32 0, i32 1
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %cmp.i = icmp eq ptr %1, @of_fwnode_ops
  br i1 %cmp.i, label %if.then, label %is_of_node.exit.return_crit_edge

is_of_node.exit.return_crit_edge:                 ; preds = %is_of_node.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.then:                                          ; preds = %is_of_node.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call fastcc i32 @gicv2m_of_init(ptr noundef nonnull %parent_handle, ptr noundef %parent) #11
  br label %return

return:                                           ; preds = %if.then, %is_of_node.exit.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then ], [ -22, %is_of_node.exit.return_crit_edge ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gicv2m_of_init(ptr noundef %parent_handle, ptr noundef %parent) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %spi_start = alloca i32, align 4
  %nr_spis = alloca i32, align 4
  %res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i.i = icmp eq ptr %parent_handle, null
  %cmp.i.i = icmp ugt ptr %parent_handle, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %entry.is_of_node.exit.thread_crit_edge, label %is_of_node.exit

entry.is_of_node.exit.thread_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %is_of_node.exit.thread

is_of_node.exit:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %ops.i = getelementptr inbounds %struct.fwnode_handle, ptr %parent_handle, i32 0, i32 1
  %0 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ops.i, align 4
  %cmp.i = icmp eq ptr %1, @of_fwnode_ops
  %add.ptr = getelementptr i8, ptr %parent_handle, i32 -12
  %spec.select = select i1 %cmp.i, ptr %add.ptr, ptr null
  br label %is_of_node.exit.thread

is_of_node.exit.thread:                           ; preds = %is_of_node.exit, %entry.is_of_node.exit.thread_crit_edge
  %2 = phi ptr [ null, %entry.is_of_node.exit.thread_crit_edge ], [ %spec.select, %is_of_node.exit ]
  %call.i = tail call ptr @of_find_matching_node_and_match(ptr noundef %2, ptr noundef nonnull @gicv2m_device_id, ptr noundef null) #8
  %tobool.not73 = icmp eq ptr %call.i, null
  br i1 %tobool.not73, label %is_of_node.exit.thread.if.then30_crit_edge, label %is_of_node.exit.thread.for.body_crit_edge

is_of_node.exit.thread.for.body_crit_edge:        ; preds = %is_of_node.exit.thread
  br label %for.body

is_of_node.exit.thread.if.then30_crit_edge:       ; preds = %is_of_node.exit.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then30

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %is_of_node.exit.thread.for.body_crit_edge
  %child.074 = phi ptr [ %call.i52, %for.inc.for.body_crit_edge ], [ %call.i, %is_of_node.exit.thread.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %spi_start) #8
  %3 = ptrtoint ptr %spi_start to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %spi_start, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nr_spis) #8
  %4 = ptrtoint ptr %nr_spis to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %nr_spis, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #8
  %5 = call ptr @memset(ptr %res, i32 255, i32 32)
  %call3 = call ptr @of_find_property(ptr noundef nonnull %child.074, ptr noundef nonnull @.str, ptr noundef null) #8
  %tobool4.not = icmp eq ptr %call3, null
  br i1 %tobool4.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end:                                           ; preds = %for.body
  %call5 = call i32 @of_address_to_resource(ptr noundef nonnull %child.074, i32 noundef 0, ptr noundef nonnull %res) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %if.end10, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #12
  br label %for.end.thread

if.end10:                                         ; preds = %if.end
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.074, ptr noundef nonnull @.str.4, ptr noundef nonnull %spi_start, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool12.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool12.not, label %land.lhs.true, label %if.end10.if.end21_crit_edge

if.end10.if.end21_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

land.lhs.true:                                    ; preds = %if.end10
  %call.i.i51 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %child.074, ptr noundef nonnull @.str.5, ptr noundef nonnull %nr_spis, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i51)
  %tobool14.not = icmp sgt i32 %call.i.i51, -1
  br i1 %tobool14.not, label %do.end18, label %land.lhs.true.if.end21_crit_edge

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

do.end18:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %spi_start to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %spi_start, align 4
  %8 = ptrtoint ptr %nr_spis to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_spis, align 4
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %7, i32 noundef %9) #12
  br label %if.end21

if.end21:                                         ; preds = %do.end18, %land.lhs.true.if.end21_crit_edge, %if.end10.if.end21_crit_edge
  %fwnode = getelementptr inbounds %struct.device_node, ptr %child.074, i32 0, i32 3
  %10 = ptrtoint ptr %spi_start to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %spi_start, align 4
  %12 = ptrtoint ptr %nr_spis to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %nr_spis, align 4
  %call22 = call fastcc i32 @gicv2m_init_one(ptr noundef %fwnode, i32 noundef %11, i32 noundef %13, ptr noundef nonnull %res) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end21.for.inc_crit_edge, label %if.then24

if.end21.for.inc_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  call void @of_node_put(ptr noundef nonnull %child.074) #8
  br label %for.end.thread

for.end.thread:                                   ; preds = %if.then24, %do.end
  %ret.1.ph = phi i32 [ %call22, %if.then24 ], [ %call5, %do.end ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_spis) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %spi_start) #8
  br label %if.then34

for.inc:                                          ; preds = %if.end21.for.inc_crit_edge, %for.body.for.inc_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_spis) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %spi_start) #8
  %call.i52 = call ptr @of_find_matching_node_and_match(ptr noundef nonnull %child.074, ptr noundef nonnull @gicv2m_device_id, ptr noundef null) #8
  %tobool.not = icmp eq ptr %call.i52, null
  br i1 %tobool.not, label %for.inc.if.then30_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.if.then30_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then30

if.then30:                                        ; preds = %for.inc.if.then30_crit_edge, %is_of_node.exit.thread.if.then30_crit_edge
  %14 = load volatile ptr, ptr @v2m_nodes, align 4
  %cmp.not.i = icmp eq ptr %14, @v2m_nodes
  %tobool.not49.i = icmp eq ptr %14, null
  %tobool.not.i = or i1 %cmp.not.i, %tobool.not49.i
  br i1 %tobool.not.i, label %if.then30.if.end35_crit_edge, label %if.end.i

if.then30.if.end35_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.end.i:                                         ; preds = %if.then30
  %fwnode.i = getelementptr inbounds %struct.v2m_data, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %fwnode.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fwnode.i, align 4
  %call.i.i53 = call ptr @__irq_domain_add(ptr noundef %16, i32 noundef 0, i32 noundef -1, i32 noundef 0, ptr noundef nonnull @gicv2m_domain_ops, ptr noundef nonnull %14) #8
  %tobool3.not.i = icmp eq ptr %call.i.i53, null
  br i1 %tobool3.not.i, label %do.end7.i, label %if.end10.i

do.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19) #12
  br label %if.then34

if.end10.i:                                       ; preds = %if.end.i
  call void @irq_domain_update_bus_token(ptr noundef nonnull %call.i.i53, i32 noundef 5) #8
  %parent11.i = getelementptr inbounds %struct.irq_domain, ptr %call.i.i53, i32 0, i32 9
  %17 = ptrtoint ptr %parent11.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %parent, ptr %parent11.i, align 4
  %18 = ptrtoint ptr %fwnode.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fwnode.i, align 4
  %call13.i = call ptr @pci_msi_create_irq_domain(ptr noundef %19, ptr noundef nonnull @gicv2m_msi_domain_info, ptr noundef nonnull %call.i.i53) #8
  %20 = ptrtoint ptr %fwnode.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fwnode.i, align 4
  %call15.i = call ptr @platform_msi_create_irq_domain(ptr noundef %21, ptr noundef nonnull @gicv2m_pmsi_domain_info, ptr noundef nonnull %call.i.i53) #8
  %tobool16.not.i = icmp eq ptr %call13.i, null
  %tobool17.not.i = icmp eq ptr %call15.i, null
  %or.cond.i = select i1 %tobool16.not.i, i1 true, i1 %tobool17.not.i
  br i1 %or.cond.i, label %do.end21.i, label %if.end10.i.if.end35_crit_edge

if.end10.i.if.end35_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

do.end21.i:                                       ; preds = %if.end10.i
  %call23.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #12
  br i1 %tobool17.not.i, label %do.end21.i.if.end26.i_crit_edge, label %if.then25.i

do.end21.i.if.end26.i_crit_edge:                  ; preds = %do.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.i

if.then25.i:                                      ; preds = %do.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @irq_domain_remove(ptr noundef nonnull %call15.i) #8
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.then25.i, %do.end21.i.if.end26.i_crit_edge
  br i1 %tobool16.not.i, label %if.end26.i.if.end29.i_crit_edge, label %if.then28.i

if.end26.i.if.end29.i_crit_edge:                  ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29.i

if.then28.i:                                      ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @irq_domain_remove(ptr noundef nonnull %call13.i) #8
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then28.i, %if.end26.i.if.end29.i_crit_edge
  call void @irq_domain_remove(ptr noundef nonnull %call.i.i53) #8
  br label %if.then34

if.then34:                                        ; preds = %if.end29.i, %do.end7.i, %for.end.thread
  %ret.3.ph = phi i32 [ -12, %do.end7.i ], [ -12, %if.end29.i ], [ %ret.1.ph, %for.end.thread ]
  %22 = load ptr, ptr @v2m_nodes, align 4
  %cmp.not35.i = icmp eq ptr %22, @v2m_nodes
  br i1 %cmp.not35.i, label %if.then34.if.end35_crit_edge, label %if.then34.for.body.i_crit_edge

if.then34.for.body.i_crit_edge:                   ; preds = %if.then34
  br label %for.body.i

if.then34.if.end35_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

for.body.i:                                       ; preds = %if.end.i58.for.body.i_crit_edge, %if.then34.for.body.i_crit_edge
  %v2m.036.i = phi ptr [ %tmp.038.i, %if.end.i58.for.body.i_crit_edge ], [ %22, %if.then34.for.body.i_crit_edge ]
  %23 = ptrtoint ptr %v2m.036.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %tmp.038.i = load ptr, ptr %v2m.036.i, align 4
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %v2m.036.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %v2m.036.i, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i.i, align 4
  %26 = ptrtoint ptr %v2m.036.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %v2m.036.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %30 = ptrtoint ptr %v2m.036.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 256 to ptr), ptr %v2m.036.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %v2m.036.i, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %bm.i = getelementptr inbounds %struct.v2m_data, ptr %v2m.036.i, i32 0, i32 7
  %32 = ptrtoint ptr %bm.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %bm.i, align 4
  call void @bitmap_free(ptr noundef %33) #8
  %base.i = getelementptr inbounds %struct.v2m_data, ptr %v2m.036.i, i32 0, i32 3
  %34 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i, align 4
  call void @iounmap(ptr noundef %35) #8
  %fwnode.i54 = getelementptr inbounds %struct.v2m_data, ptr %v2m.036.i, i32 0, i32 1
  %36 = ptrtoint ptr %fwnode.i54 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %fwnode.i54, align 4
  %tobool.not.i.i.i = icmp eq ptr %37, null
  %cmp.i.i.i = icmp ugt ptr %37, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.i = or i1 %tobool.not.i.i.i, %cmp.i.i.i
  br i1 %spec.select.i.i.i, label %list_del.exit.i.is_of_node.exit.thread.i_crit_edge, label %is_of_node.exit.i

list_del.exit.i.is_of_node.exit.thread.i_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %is_of_node.exit.thread.i

is_of_node.exit.i:                                ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %ops.i.i = getelementptr inbounds %struct.fwnode_handle, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ops.i.i, align 4
  %cmp.i.i55 = icmp eq ptr %39, @of_fwnode_ops
  %add.ptr11.i = getelementptr i8, ptr %37, i32 -12
  %spec.select.i = select i1 %cmp.i.i55, ptr %add.ptr11.i, ptr null
  br label %is_of_node.exit.thread.i

is_of_node.exit.thread.i:                         ; preds = %is_of_node.exit.i, %list_del.exit.i.is_of_node.exit.thread.i_crit_edge
  %40 = phi ptr [ null, %list_del.exit.i.is_of_node.exit.thread.i_crit_edge ], [ %spec.select.i, %is_of_node.exit.i ]
  call void @of_node_put(ptr noundef %40) #8
  %41 = ptrtoint ptr %fwnode.i54 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %fwnode.i54, align 4
  %tobool.not.i.i56 = icmp eq ptr %42, null
  br i1 %tobool.not.i.i56, label %is_of_node.exit.thread.i.if.end.i58_crit_edge, label %is_fwnode_irqchip.exit.i

is_of_node.exit.thread.i.if.end.i58_crit_edge:    ; preds = %is_of_node.exit.thread.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i58

is_fwnode_irqchip.exit.i:                         ; preds = %is_of_node.exit.thread.i
  %ops.i30.i = getelementptr inbounds %struct.fwnode_handle, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %ops.i30.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ops.i30.i, align 4
  %cmp.i31.i = icmp eq ptr %44, @irqchip_fwnode_ops
  br i1 %cmp.i31.i, label %if.then.i, label %is_fwnode_irqchip.exit.i.if.end.i58_crit_edge

is_fwnode_irqchip.exit.i.if.end.i58_crit_edge:    ; preds = %is_fwnode_irqchip.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i58

if.then.i:                                        ; preds = %is_fwnode_irqchip.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @irq_domain_free_fwnode(ptr noundef nonnull %42) #8
  br label %if.end.i58

if.end.i58:                                       ; preds = %if.then.i, %is_fwnode_irqchip.exit.i.if.end.i58_crit_edge, %is_of_node.exit.thread.i.if.end.i58_crit_edge
  call void @kfree(ptr noundef %v2m.036.i) #8
  %cmp.not.i57 = icmp eq ptr %tmp.038.i, @v2m_nodes
  br i1 %cmp.not.i57, label %if.end.i58.if.end35_crit_edge, label %if.end.i58.for.body.i_crit_edge

if.end.i58.for.body.i_crit_edge:                  ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end.i58.if.end35_crit_edge:                    ; preds = %if.end.i58
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.end35:                                         ; preds = %if.end.i58.if.end35_crit_edge, %if.then34.if.end35_crit_edge, %if.end10.i.if.end35_crit_edge, %if.then30.if.end35_crit_edge
  %ret.369 = phi i32 [ 0, %if.then30.if.end35_crit_edge ], [ 0, %if.end10.i.if.end35_crit_edge ], [ %ret.3.ph, %if.then34.if.end35_crit_edge ], [ %ret.3.ph, %if.end.i58.if.end35_crit_edge ]
  ret i32 %ret.369
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gicv2m_init_one(ptr noundef %fwnode, i32 noundef %spi_start, i32 noundef %nr_spis, ptr noundef %res) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 68) #13
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup68_crit_edge, label %if.end

entry.cleanup68_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup68

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %fwnode2 = getelementptr inbounds %struct.v2m_data, ptr %call7.i.i, i32 0, i32 1
  %3 = ptrtoint ptr %fwnode2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %fwnode, ptr %fwnode2, align 8
  %flags3 = getelementptr inbounds %struct.v2m_data, ptr %call7.i.i, i32 0, i32 8
  %4 = ptrtoint ptr %flags3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %flags3, align 8
  %res4 = getelementptr inbounds %struct.v2m_data, ptr %call7.i.i, i32 0, i32 2
  %5 = call ptr @memcpy(ptr %res4, ptr %res, i32 32)
  %6 = ptrtoint ptr %res4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %res4, align 4
  %end.i = getelementptr inbounds %struct.v2m_data, ptr %call7.i.i, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %end.i, align 8
  %sub.i = sub i32 1, %7
  %add.i = add i32 %sub.i, %9
  %call8 = tail call ptr @ioremap(i32 noundef %7, i32 noundef %add.i) #8
  %base = getelementptr inbounds %struct.v2m_data, ptr %call7.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call8, ptr %base, align 4
  %tobool10.not = icmp eq ptr %call8, null
  br i1 %tobool10.not, label %do.end, label %if.end13

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call12 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #12
  br label %err_free_v2m

if.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spi_start)
  %tobool14.not = icmp eq i32 %spi_start, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_spis)
  %tobool15.not = icmp eq i32 %nr_spis, 0
  %or.cond = or i1 %tobool14.not, %tobool15.not
  br i1 %or.cond, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #10
  %spi_start17 = getelementptr inbounds %struct.v2m_data, ptr %call7.i.i, i32 0, i32 4
  %11 = ptrtoint ptr %spi_start17 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %spi_start, ptr %spi_start17, align 8
  br label %if.end30

if.else:                                          ; preds = %if.end13
  %12 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags3, align 8
  %and = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool20.not = icmp eq i32 %and, 0
  br i1 %tobool20.not, label %cleanup.thread, label %if.else.err_iounmap_crit_edge

if.else.err_iounmap_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_iounmap

cleanup.thread:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr = getelementptr i8, ptr %call8, i32 8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !79
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %shr = lshr i32 %15, 16
  %and26 = and i32 %shr, 1023
  %spi_start27 = getelementptr inbounds %struct.v2m_data, ptr %call7.i.i, i32 0, i32 4
  %16 = ptrtoint ptr %spi_start27 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and26, ptr %spi_start27, align 8
  %and28 = and i32 %15, 1023
  br label %if.end30

if.end30:                                         ; preds = %cleanup.thread, %if.then16
  %and28.sink = phi i32 [ %and28, %cleanup.thread ], [ %nr_spis, %if.then16 ]
  %nr_spis29 = getelementptr inbounds %struct.v2m_data, ptr %call7.i.i, i32 0, i32 5
  %17 = ptrtoint ptr %nr_spis29 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %and28.sink, ptr %nr_spis29, align 4
  %spi_start31 = getelementptr inbounds %struct.v2m_data, ptr %call7.i.i, i32 0, i32 4
  %18 = ptrtoint ptr %spi_start31 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %spi_start31, align 8
  %nr_spis32 = getelementptr inbounds %struct.v2m_data, ptr %call7.i.i, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %19)
  %cmp.i = icmp ult i32 %19, 32
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %19) #12
  br label %err_iounmap

if.end.i:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28.sink)
  %cmp1.i = icmp eq i32 %and28.sink, 0
  %add.i1 = add i32 %and28.sink, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 1019, i32 %add.i1)
  %cmp2.i = icmp ugt i32 %add.i1, 1019
  %or.cond.i = or i1 %cmp1.i, %cmp2.i
  br i1 %or.cond.i, label %do.end5.i, label %if.end35

do.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %call7.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %and28.sink, i32 noundef 988) #12
  br label %err_iounmap

if.end35:                                         ; preds = %if.end.i
  %20 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %flags3, align 8
  %and37 = and i32 %21, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.then39, label %if.end35.if.end51_crit_edge

if.end35.if.end51_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.then39:                                        ; preds = %if.end35
  %22 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base, align 4
  %add.ptr42 = getelementptr i8, ptr %23, i32 4044
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr42) #8, !srcloc !79
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i32 %25, label %if.then39.if.end51_crit_edge [
    i32 100663664, label %sw.bb
    i32 319, label %sw.bb47
  ]

if.then39.if.end51_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

sw.bb:                                            ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags3, align 8
  %or = or i32 %28, 1
  store i32 %or, ptr %flags3, align 8
  %29 = ptrtoint ptr %spi_start31 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %spi_start31, align 8
  br label %if.end51.sink.split

sw.bb47:                                          ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags3, align 8
  %or49 = or i32 %32, 1
  store i32 %or49, ptr %flags3, align 8
  br label %if.end51.sink.split

if.end51.sink.split:                              ; preds = %sw.bb47, %sw.bb
  %.sink = phi i32 [ %30, %sw.bb ], [ 32, %sw.bb47 ]
  %spi_offset = getelementptr inbounds %struct.v2m_data, ptr %call7.i.i, i32 0, i32 6
  %33 = ptrtoint ptr %spi_offset to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %.sink, ptr %spi_offset, align 8
  br label %if.end51

if.end51:                                         ; preds = %if.end51.sink.split, %if.then39.if.end51_crit_edge, %if.end35.if.end51_crit_edge
  %34 = ptrtoint ptr %nr_spis32 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %nr_spis32, align 4
  %call53 = tail call ptr @bitmap_zalloc(i32 noundef %35, i32 noundef 3264) #8
  %bm = getelementptr inbounds %struct.v2m_data, ptr %call7.i.i, i32 0, i32 7
  %36 = ptrtoint ptr %bm to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call53, ptr %bm, align 4
  %tobool55.not = icmp eq ptr %call53, null
  br i1 %tobool55.not, label %if.end51.err_iounmap_crit_edge, label %if.end57

if.end51.err_iounmap_crit_edge:                   ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_iounmap

if.end57:                                         ; preds = %if.end51
  %37 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @v2m_nodes, i32 0, i32 1), align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %37, ptr noundef nonnull @v2m_nodes) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end57.list_add_tail.exit_crit_edge

if.end57.list_add_tail.exit_crit_edge:            ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  store ptr %call7.i.i, ptr getelementptr inbounds (%struct.list_head, ptr @v2m_nodes, i32 0, i32 1), align 4
  %38 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @v2m_nodes, ptr %call7.i.i, align 8
  %39 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %37, ptr %prev.i, align 4
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %call7.i.i, ptr %37, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end57.list_add_tail.exit_crit_edge
  %41 = ptrtoint ptr %spi_start31 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %spi_start31, align 8
  %43 = ptrtoint ptr %nr_spis32 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %nr_spis32, align 4
  %add = add i32 %42, -1
  %sub = add i32 %add, %44
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef %res, i32 noundef %42, i32 noundef %sub) #12
  br label %cleanup68

err_iounmap:                                      ; preds = %if.end51.err_iounmap_crit_edge, %do.end5.i, %do.end.i, %if.else.err_iounmap_crit_edge
  %ret.1 = phi i32 [ -12, %if.end51.err_iounmap_crit_edge ], [ -22, %if.else.err_iounmap_crit_edge ], [ -22, %do.end.i ], [ -22, %do.end5.i ]
  %45 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base, align 4
  tail call void @iounmap(ptr noundef %46) #8
  br label %err_free_v2m

err_free_v2m:                                     ; preds = %err_iounmap, %do.end
  %ret.2 = phi i32 [ %ret.1, %err_iounmap ], [ -12, %do.end ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup68

cleanup68:                                        ; preds = %err_free_v2m, %list_add_tail.exit, %entry.cleanup68_crit_edge
  %retval.0 = phi i32 [ 0, %list_add_tail.exit ], [ %ret.2, %err_free_v2m ], [ -12, %entry.cleanup68_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_zalloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_update_bus_token(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_msi_create_irq_domain(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_msi_create_irq_domain(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gicv2m_irq_domain_alloc(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs, ptr nocapture noundef readnone %args) #6 align 64 {
entry:
  %fwspec.i = alloca %struct.irq_fwspec, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @_raw_spin_lock(ptr noundef nonnull @v2m_lock) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_irqs)
  %cmp.i = icmp eq i32 %nr_irqs, 0
  %dec.i = add i32 %nr_irqs, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i.i = icmp eq i32 %dec.i, 0
  %0 = tail call i32 @llvm.ctlz.i32(i32 %dec.i, i1 true) #8, !range !80
  %sub.i.i = sub nuw nsw i32 32, %0
  %cond.i.i = select i1 %tobool.not.i.i, i32 0, i32 %sub.i.i
  %spec.select = select i1 %cmp.i, i32 -1, i32 %cond.i.i
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %tmp.0.in = phi ptr [ @v2m_nodes, %entry ], [ %tmp.0, %for.body.for.cond_crit_edge ]
  %1 = ptrtoint ptr %tmp.0.in to i32
  call void @__asan_load4_noabort(i32 %1)
  %tmp.0 = load ptr, ptr %tmp.0.in, align 4
  %cmp.not = icmp eq ptr %tmp.0, @v2m_nodes
  br i1 %cmp.not, label %for.end.thread, label %for.body

for.end.thread:                                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock(ptr noundef nonnull @v2m_lock) #8
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %bm = getelementptr inbounds %struct.v2m_data, ptr %tmp.0, i32 0, i32 7
  %2 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %bm, align 4
  %nr_spis = getelementptr inbounds %struct.v2m_data, ptr %tmp.0, i32 0, i32 5
  %4 = ptrtoint ptr %nr_spis to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_spis, align 4
  %call3 = tail call i32 @bitmap_find_free_region(ptr noundef %3, i32 noundef %5, i32 noundef %spec.select) #8
  %cmp4 = icmp sgt i32 %call3, -1
  br i1 %cmp4, label %for.end, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

for.end:                                          ; preds = %for.body
  %bm.le = getelementptr inbounds %struct.v2m_data, ptr %tmp.0, i32 0, i32 7
  tail call void @_raw_spin_unlock(ptr noundef nonnull @v2m_lock) #8
  %tobool.not = icmp eq ptr %tmp.0, null
  br i1 %tobool.not, label %for.end.cleanup_crit_edge, label %if.end10

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %for.end
  %spi_start = getelementptr inbounds %struct.v2m_data, ptr %tmp.0, i32 0, i32 4
  %6 = ptrtoint ptr %spi_start to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %spi_start, align 4
  %add = add i32 %7, %call3
  br i1 %cmp.i, label %if.end10.cleanup_crit_edge, label %for.body18.lr.ph

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body18.lr.ph:                                 ; preds = %if.end10
  %parent.i = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 9
  %param_count.i = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec.i, i32 0, i32 1
  %param.i = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec.i, i32 0, i32 2
  %arrayidx5.i = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec.i, i32 0, i32 2, i32 1
  %arrayidx7.i = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec.i, i32 0, i32 2, i32 2
  br label %for.body18

for.body18:                                       ; preds = %if.end24.for.body18_crit_edge, %for.body18.lr.ph
  %i.079 = phi i32 [ 0, %for.body18.lr.ph ], [ %inc, %if.end24.for.body18_crit_edge ]
  %add19 = add i32 %i.079, %virq
  %add20 = add i32 %i.079, %add
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %fwspec.i) #8
  %8 = call ptr @memset(ptr %fwspec.i, i32 255, i32 72)
  %9 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %parent.i, align 4
  %fwnode.i = getelementptr inbounds %struct.irq_domain, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %fwnode.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fwnode.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %12, null
  %cmp.i.i.i = icmp ugt ptr %12, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.i = or i1 %tobool.not.i.i.i, %cmp.i.i.i
  br i1 %spec.select.i.i.i, label %for.body18.if.else.i_crit_edge, label %is_of_node.exit.i

for.body18.if.else.i_crit_edge:                   ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

is_of_node.exit.i:                                ; preds = %for.body18
  %ops.i.i = getelementptr inbounds %struct.fwnode_handle, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops.i.i, align 4
  %cmp.i.i = icmp eq ptr %14, @of_fwnode_ops
  br i1 %cmp.i.i, label %if.then.i, label %is_of_node.exit.i.if.else.i_crit_edge

is_of_node.exit.i.if.else.i_crit_edge:            ; preds = %is_of_node.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else.i

if.then.i:                                        ; preds = %is_of_node.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %fwspec.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %fwspec.i, align 4
  %16 = ptrtoint ptr %param_count.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 3, ptr %param_count.i, align 4
  %17 = ptrtoint ptr %param.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %param.i, align 4
  %sub.i64 = add i32 %add20, -32
  %18 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub.i64, ptr %arrayidx5.i, align 4
  br label %if.end21.i

if.else.i:                                        ; preds = %is_of_node.exit.i.if.else.i_crit_edge, %for.body18.if.else.i_crit_edge
  br i1 %tobool.not.i.i.i, label %if.else.i.gicv2m_unalloc_msi.exit_crit_edge, label %is_fwnode_irqchip.exit.i

if.else.i.gicv2m_unalloc_msi.exit_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gicv2m_unalloc_msi.exit

is_fwnode_irqchip.exit.i:                         ; preds = %if.else.i
  %ops.i39.i = getelementptr inbounds %struct.fwnode_handle, ptr %12, i32 0, i32 1
  %19 = ptrtoint ptr %ops.i39.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ops.i39.i, align 4
  %cmp.i40.i = icmp eq ptr %20, @irqchip_fwnode_ops
  br i1 %cmp.i40.i, label %if.then11.i, label %is_fwnode_irqchip.exit.i.gicv2m_unalloc_msi.exit_crit_edge

is_fwnode_irqchip.exit.i.gicv2m_unalloc_msi.exit_crit_edge: ; preds = %is_fwnode_irqchip.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gicv2m_unalloc_msi.exit

if.then11.i:                                      ; preds = %is_fwnode_irqchip.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %21 = ptrtoint ptr %fwspec.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %12, ptr %fwspec.i, align 4
  %22 = ptrtoint ptr %param_count.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 2, ptr %param_count.i, align 4
  %23 = ptrtoint ptr %param.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add20, ptr %param.i, align 4
  br label %if.end21.i

if.end21.i:                                       ; preds = %if.then11.i, %if.then.i
  %arrayidx19.sink.i = phi ptr [ %arrayidx5.i, %if.then11.i ], [ %arrayidx7.i, %if.then.i ]
  %24 = ptrtoint ptr %arrayidx19.sink.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %arrayidx19.sink.i, align 4
  %call22.i = call i32 @irq_domain_alloc_irqs_parent(ptr noundef %domain, i32 noundef %add19, i32 noundef 1, ptr noundef nonnull %fwspec.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool.not.i65 = icmp eq i32 %call22.i, 0
  br i1 %tobool.not.i65, label %if.end24, label %if.end21.i.gicv2m_unalloc_msi.exit_crit_edge

if.end21.i.gicv2m_unalloc_msi.exit_crit_edge:     ; preds = %if.end21.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %gicv2m_unalloc_msi.exit

if.end24:                                         ; preds = %if.end21.i
  %25 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %parent.i, align 4
  %call26.i = call ptr @irq_domain_get_irq_data(ptr noundef %26, i32 noundef %add19) #8
  %chip.i = getelementptr inbounds %struct.irq_data, ptr %call26.i, i32 0, i32 4
  %27 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %chip.i, align 4
  %irq_set_type.i = getelementptr inbounds %struct.irq_chip, ptr %28, i32 0, i32 13
  %29 = ptrtoint ptr %irq_set_type.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %irq_set_type.i, align 4
  %call27.i = call i32 %30(ptr noundef %call26.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fwspec.i) #8
  %call27 = call i32 @irq_domain_set_hwirq_and_chip(ptr noundef %domain, i32 noundef %add19, i32 noundef %add20, ptr noundef nonnull @gicv2m_irq_chip, ptr noundef nonnull %tmp.0) #8
  %inc = add nuw i32 %i.079, 1
  %exitcond.not = icmp eq i32 %inc, %nr_irqs
  br i1 %exitcond.not, label %if.end24.cleanup_crit_edge, label %if.end24.for.body18_crit_edge

if.end24.for.body18_crit_edge:                    ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body18

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

gicv2m_unalloc_msi.exit:                          ; preds = %if.end21.i.gicv2m_unalloc_msi.exit_crit_edge, %is_fwnode_irqchip.exit.i.gicv2m_unalloc_msi.exit_crit_edge, %if.else.i.gicv2m_unalloc_msi.exit_crit_edge
  %retval.0.i66.ph = phi i32 [ -22, %if.else.i.gicv2m_unalloc_msi.exit_crit_edge ], [ %call22.i, %if.end21.i.gicv2m_unalloc_msi.exit_crit_edge ], [ -22, %is_fwnode_irqchip.exit.i.gicv2m_unalloc_msi.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fwspec.i) #8
  call void @irq_domain_free_irqs_parent(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs) #8
  call void @_raw_spin_lock(ptr noundef nonnull @v2m_lock) #8
  %31 = ptrtoint ptr %bm.le to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bm.le, align 4
  %33 = ptrtoint ptr %spi_start to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %spi_start, align 4
  %sub.i69 = sub i32 %add, %34
  call void @bitmap_release_region(ptr noundef %32, i32 noundef %sub.i69, i32 noundef %cond.i.i) #8
  call void @_raw_spin_unlock(ptr noundef nonnull @v2m_lock) #8
  br label %cleanup

cleanup:                                          ; preds = %gicv2m_unalloc_msi.exit, %if.end24.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %for.end.cleanup_crit_edge, %for.end.thread
  %retval.0 = phi i32 [ %retval.0.i66.ph, %gicv2m_unalloc_msi.exit ], [ -28, %for.end.cleanup_crit_edge ], [ -28, %for.end.thread ], [ 0, %if.end10.cleanup_crit_edge ], [ 0, %if.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gicv2m_irq_domain_free(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs) #6 align 64 {
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
  tail call void @_raw_spin_lock(ptr noundef nonnull @v2m_lock) #8
  %bm.i = getelementptr inbounds %struct.v2m_data, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %bm.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bm.i, align 4
  %spi_start.i = getelementptr inbounds %struct.v2m_data, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %spi_start.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %spi_start.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_irqs)
  %cmp.i.i = icmp eq i32 %nr_irqs, 0
  br i1 %cmp.i.i, label %entry.gicv2m_unalloc_msi.exit_crit_edge, label %if.end.i.i

entry.gicv2m_unalloc_msi.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %gicv2m_unalloc_msi.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dec.i.i = add i32 %nr_irqs, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i)
  %tobool.not.i.i.i = icmp eq i32 %dec.i.i, 0
  %8 = tail call i32 @llvm.ctlz.i32(i32 %dec.i.i, i1 true) #8, !range !80
  %sub.i.i.i = sub nuw nsw i32 32, %8
  %cond.i.i.i = select i1 %tobool.not.i.i.i, i32 0, i32 %sub.i.i.i
  br label %gicv2m_unalloc_msi.exit

gicv2m_unalloc_msi.exit:                          ; preds = %if.end.i.i, %entry.gicv2m_unalloc_msi.exit_crit_edge
  %retval.0.i.i = phi i32 [ %cond.i.i.i, %if.end.i.i ], [ -1, %entry.gicv2m_unalloc_msi.exit_crit_edge ]
  %sub.i = sub i32 %3, %7
  tail call void @bitmap_release_region(ptr noundef %5, i32 noundef %sub.i, i32 noundef %retval.0.i.i) #8
  tail call void @_raw_spin_unlock(ptr noundef nonnull @v2m_lock) #8
  tail call void @irq_domain_free_irqs_parent(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_find_free_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_set_hwirq_and_chip(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs_parent(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

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

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @gicv2m_compose_msi_msg(ptr nocapture noundef readonly %data, ptr nocapture noundef %msg) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %flags.i = getelementptr inbounds %struct.v2m_data, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %res1.i = getelementptr inbounds %struct.v2m_data, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %res1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %res1.i, align 4
  %sub.i = shl i32 %3, 3
  %shl.i = add i32 %sub.i, -256
  %or.i = or i32 %7, %shl.i
  %add.i = add i32 %7, 64
  %retval.0.i = select i1 %tobool.not.i, i32 %add.i, i32 %or.i
  %8 = getelementptr inbounds %struct.msi_msg, ptr %msg, i32 0, i32 1
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %8, align 4
  %10 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %retval.0.i, ptr %msg, align 4
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i, align 4
  %and3 = and i32 %12, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  br i1 %tobool.not, label %if.else, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hwirq, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %.sink = phi i32 [ %14, %if.else ], [ 0, %entry.if.end_crit_edge ]
  %15 = getelementptr inbounds %struct.msi_msg, ptr %msg, i32 0, i32 2
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %.sink, ptr %15, align 4
  %17 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags.i, align 4
  %and6 = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool7.not = icmp eq i32 %and6, 0
  br i1 %tobool7.not, label %if.end.if.end9_crit_edge, label %if.then8

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %spi_offset = getelementptr inbounds %struct.v2m_data, ptr %1, i32 0, i32 6
  %19 = ptrtoint ptr %spi_offset to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %spi_offset, align 4
  %21 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %15, align 4
  %sub = sub i32 %22, %20
  store i32 %sub, ptr %15, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end.if.end9_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gicv2m_mask_msi_irq(ptr noundef %d) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @pci_msi_mask_irq(ptr noundef %d) #8
  tail call void @irq_chip_mask_parent(ptr noundef %d) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @gicv2m_unmask_msi_irq(ptr noundef %d) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @pci_msi_unmask_irq(ptr noundef %d) #8
  tail call void @irq_chip_unmask_parent(ptr noundef %d) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_msi_mask_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_msi_unmask_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_fwnode(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !12, !14, !15, !16, !18, !20, !21, !22, !23, !25, !26, !27, !29, !30, !31, !32, !34, !35, !36, !38, !40, !41, !42, !43, !45, !46, !47, !49, !51, !52, !54, !56, !58, !60, !62, !64, !66, !68}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/irqchip/irq-gic-v2m.c", i32 424, i32 32}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/irqchip/irq-gic-v2m.c", i32 429, i32 4}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @gicv2m_of_init._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @gicv2m_of_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/irqchip/irq-gic-v2m.c", i32 433, i32 36}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/irqchip/irq-gic-v2m.c", i32 435, i32 36}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/irqchip/irq-gic-v2m.c", i32 436, i32 4}
!14 = !{ptr @gicv2m_of_init._entry.6, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @gicv2m_of_init._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @gicv2m_device_id, !17, !"gicv2m_device_id", i1 false, i1 false}
!17 = !{!"../drivers/irqchip/irq-gic-v2m.c", i32 407, i32 34}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/irqchip/irq-gic-v2m.c", i32 336, i32 3}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @gicv2m_init_one._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @gicv2m_init_one._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/irqchip/irq-gic-v2m.c", i32 396, i32 2}
!25 = !{ptr @gicv2m_init_one._entry.11, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @gicv2m_init_one._entry_ptr.13, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/irqchip/irq-gic-v2m.c", i32 239, i32 3}
!29 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @is_msi_spi_valid._entry, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @is_msi_spi_valid._entry_ptr, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.17, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/irqchip/irq-gic-v2m.c", i32 244, i32 3}
!34 = !{ptr @is_msi_spi_valid._entry.16, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @is_msi_spi_valid._entry_ptr.18, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @v2m_nodes, !37, !"v2m_nodes", i1 false, i1 false}
!37 = !{!"../drivers/irqchip/irq-gic-v2m.c", i32 59, i32 8}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/irqchip/irq-gic-v2m.c", i32 292, i32 3}
!40 = !{ptr @.str.20, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @gicv2m_allocate_domains._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @gicv2m_allocate_domains._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/irqchip/irq-gic-v2m.c", i32 305, i32 3}
!45 = !{ptr @gicv2m_allocate_domains._entry.21, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @gicv2m_allocate_domains._entry_ptr.23, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @gicv2m_domain_ops, !48, !"gicv2m_domain_ops", i1 false, i1 false}
!48 = !{!"../drivers/irqchip/irq-gic-v2m.c", i32 231, i32 36}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/irqchip/irq-gic-v2m.c", i32 60, i32 8}
!51 = !{ptr @v2m_lock, !50, !"v2m_lock", i1 false, i1 false}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/irqchip/irq-gic-v2m.c", i32 126, i32 12}
!54 = !{ptr @gicv2m_irq_chip, !55, !"gicv2m_irq_chip", i1 false, i1 false}
!55 = !{!"../drivers/irqchip/irq-gic-v2m.c", i32 125, i32 24}
!56 = !{ptr @gicv2m_msi_domain_info, !57, !"gicv2m_msi_domain_info", i1 false, i1 false}
!57 = !{!"../drivers/irqchip/irq-gic-v2m.c", i32 93, i32 31}
!58 = !{ptr @.str.26, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/irqchip/irq-gic-v2m.c", i32 87, i32 12}
!60 = !{ptr @gicv2m_msi_irq_chip, !61, !"gicv2m_msi_irq_chip", i1 false, i1 false}
!61 = !{!"../drivers/irqchip/irq-gic-v2m.c", i32 86, i32 24}
!62 = !{ptr @gicv2m_pmsi_domain_info, !63, !"gicv2m_pmsi_domain_info", i1 false, i1 false}
!63 = !{!"../drivers/irqchip/irq-gic-v2m.c", i32 259, i32 31}
!64 = !{ptr @gicv2m_pmsi_ops, !65, !"gicv2m_pmsi_ops", i1 false, i1 false}
!65 = !{!"../drivers/irqchip/irq-gic-v2m.c", i32 256, i32 30}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/irqchip/irq-gic-v2m.c", i32 253, i32 12}
!68 = !{ptr @gicv2m_pmsi_irq_chip, !69, !"gicv2m_pmsi_irq_chip", i1 false, i1 false}
!69 = !{!"../drivers/irqchip/irq-gic-v2m.c", i32 252, i32 24}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!79 = !{i64 5842173}
!80 = !{i32 0, i32 33}
