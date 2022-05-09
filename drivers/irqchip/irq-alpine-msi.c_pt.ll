; ModuleID = '/llk/IR_all_yes/drivers/irqchip/irq-alpine-msi.c_pt.bc'
source_filename = "../drivers/irqchip/irq-alpine-msi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.msi_domain_info = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_fwspec = type { ptr, i32, [16 x i32] }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.alpine_msix_data = type { %struct.spinlock, i32, i32, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.msi_msg = type { %union.anon.67, %union.anon.68, %union.anon.69 }
%union.anon.67 = type { i32 }
%union.anon.68 = type { i32 }
%union.anon.69 = type { i32 }

@__of_table_alpine_msix = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"al,alpine-msix\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @alpine_msix_init }, section "__irqchip_of_table", align 4
@alpine_msix_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&priv->msi_map_lock\00", [44 x i8] zeroinitializer }, align 32
@alpine_msix_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013irq_alpine_msi: Failed to allocate resource\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"alpine_msix_init\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/irqchip/irq-alpine-msi.c\00", [63 x i8] zeroinitializer }, align 32
@alpine_msix_init._entry_ptr = internal global ptr @alpine_msix_init._entry, section ".printk_index", align 4
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"al,msi-base-spi\00", [16 x i8] zeroinitializer }, align 32
@alpine_msix_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 259, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013irq_alpine_msi: Unable to parse MSI base\0A\00", [52 x i8] zeroinitializer }, align 32
@alpine_msix_init._entry_ptr.7 = internal global ptr @alpine_msix_init._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"al,msi-num-spis\00", [16 x i8] zeroinitializer }, align 32
@alpine_msix_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.2, ptr @.str.3, i32 265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013irq_alpine_msi: Unable to parse MSI numbers\0A\00", [49 x i8] zeroinitializer }, align 32
@alpine_msix_init._entry_ptr.11 = internal global ptr @alpine_msix_init._entry.9, section ".printk_index", align 4
@alpine_msix_init.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.2, ptr @.str.3, ptr @.str.13, i8 0, i8 69, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"irq_alpine_msi\00", [17 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Registering %d msixs, starting at %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"irq_alpine_msi: Registering %d msixs, starting at %d\0A\00", [42 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@alpine_msix_init_domains._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.3, i32 197, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013irq_alpine_msi: Failed to find the GIC node\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"alpine_msix_init_domains\00", [39 x i8] zeroinitializer }, align 32
@alpine_msix_init_domains._entry_ptr = internal global ptr @alpine_msix_init_domains._entry, section ".printk_index", align 4
@alpine_msix_init_domains._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.3, i32 203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\013irq_alpine_msi: Failed to find the GIC domain\0A\00", [47 x i8] zeroinitializer }, align 32
@alpine_msix_init_domains._entry_ptr.19 = internal global ptr @alpine_msix_init_domains._entry.17, section ".printk_index", align 4
@alpine_msix_middle_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @alpine_msix_middle_domain_alloc, ptr @alpine_msix_middle_domain_free, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@alpine_msix_init_domains._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.16, ptr @.str.3, i32 211, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\013irq_alpine_msi: Failed to create the MSIX middle domain\0A\00", [37 x i8] zeroinitializer }, align 32
@alpine_msix_init_domains._entry_ptr.22 = internal global ptr @alpine_msix_init_domains._entry.20, section ".printk_index", align 4
@alpine_msix_domain_info = internal global { %struct.msi_domain_info, [32 x i8] } { %struct.msi_domain_info { i32 11, ptr null, ptr @alpine_msix_irq_chip, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@alpine_msix_init_domains._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.16, ptr @.str.3, i32 221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013irq_alpine_msi: Failed to create MSI domain\0A\00", [49 x i8] zeroinitializer }, align 32
@alpine_msix_init_domains._entry_ptr.25 = internal global ptr @alpine_msix_init_domains._entry.23, section ".printk_index", align 4
@middle_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.26, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @irq_chip_mask_parent, ptr null, ptr @irq_chip_unmask_parent, ptr @irq_chip_eoi_parent, ptr @irq_chip_set_affinity_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @alpine_msix_compose_msi_msg, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"alpine_msix_middle\00", [45 x i8] zeroinitializer }, align 32
@alpine_msix_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.27, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @alpine_msix_mask_msi_irq, ptr null, ptr @alpine_msix_unmask_msi_irq, ptr @irq_chip_eoi_parent, ptr @irq_chip_set_affinity_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"MSIx\00", [27 x i8] zeroinitializer }, align 32
@___asan_gen_.28 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 240, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 244, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 258, i32 33 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 259, i32 3 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 264, i32 33 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 265, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 276, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 197, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 203, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant [30 x i8] c"alpine_msix_middle_domain_ops\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 184, i32 36 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 211, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant [24 x i8] c"alpine_msix_domain_info\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 104, i32 31 }
@___asan_gen_.100 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 221, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant [16 x i8] c"middle_irq_chip\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 110, i32 24 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 111, i32 12 }
@___asan_gen_.112 = private unnamed_addr constant [21 x i8] c"alpine_msix_irq_chip\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 51, i32 24 }
@___asan_gen_.115 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.116 = private constant [36 x i8] c"../drivers/irqchip/irq-alpine-msi.c\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 52, i32 12 }
@llvm.compiler.used = appending global [38 x ptr] [ptr @__of_table_alpine_msix, ptr @alpine_msix_init._entry, ptr @alpine_msix_init._entry.5, ptr @alpine_msix_init._entry.9, ptr @alpine_msix_init._entry_ptr, ptr @alpine_msix_init._entry_ptr.11, ptr @alpine_msix_init._entry_ptr.7, ptr @alpine_msix_init_domains._entry, ptr @alpine_msix_init_domains._entry.17, ptr @alpine_msix_init_domains._entry.20, ptr @alpine_msix_init_domains._entry.23, ptr @alpine_msix_init_domains._entry_ptr, ptr @alpine_msix_init_domains._entry_ptr.19, ptr @alpine_msix_init_domains._entry_ptr.22, ptr @alpine_msix_init_domains._entry_ptr.25, ptr @alpine_msix_init.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @alpine_msix_middle_domain_ops, ptr @.str.21, ptr @alpine_msix_domain_info, ptr @.str.24, ptr @middle_irq_chip, ptr @.str.26, ptr @alpine_msix_irq_chip, ptr @.str.27], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alpine_msix_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alpine_msix_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alpine_msix_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alpine_msix_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alpine_msix_init_domains._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alpine_msix_init_domains._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alpine_msix_middle_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alpine_msix_init_domains._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alpine_msix_domain_info to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alpine_msix_init_domains._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @middle_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alpine_msix_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alpine_msix_init(ptr noundef %node, ptr nocapture noundef readnone %parent) #0 align 64 {
entry:
  %fwspec.i.i4.i.i = alloca %struct.irq_fwspec, align 4
  %fwspec.i.i.i.i = alloca %struct.irq_fwspec, align 4
  %res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #6
  %0 = call ptr @memset(ptr %res, i32 255, i32 32)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 60) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void @__raw_spin_lock_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str, ptr noundef nonnull @alpine_msix_init.__key, i16 noundef signext 3) #6
  %call2 = call i32 @of_address_to_resource(ptr noundef %node, i32 noundef 0, ptr noundef nonnull %res) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end9, label %do.end7

do.end7:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1) #10
  br label %err_priv

if.end9:                                          ; preds = %do.body
  %2 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %res, align 4
  %4 = and i32 %3, -1048576
  %addr = getelementptr inbounds %struct.alpine_msix_data, ptr %call7.i.i, i32 0, i32 1
  %or = or i32 %4, 65536
  %5 = ptrtoint ptr %addr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %or, ptr %addr, align 4
  %spi_first = getelementptr inbounds %struct.alpine_msix_data, ptr %call7.i.i, i32 0, i32 2
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.4, ptr noundef %spi_first, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool13.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool13.not, label %if.end20, label %do.end17

do.end17:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #10
  br label %err_priv

if.end20:                                         ; preds = %if.end9
  %num_spis = getelementptr inbounds %struct.alpine_msix_data, ptr %call7.i.i, i32 0, i32 3
  %call.i.i73 = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.8, ptr noundef %num_spis, i32 noundef 1, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i73)
  %tobool22.not = icmp sgt i32 %call.i.i73, -1
  br i1 %tobool22.not, label %if.end29, label %do.end26

do.end26:                                         ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #8
  %call28 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #10
  br label %err_priv

if.end29:                                         ; preds = %if.end20
  %6 = ptrtoint ptr %num_spis to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_spis, align 4
  %call31 = call ptr @bitmap_zalloc(i32 noundef %7, i32 noundef 3264) #6
  %msi_map = getelementptr inbounds %struct.alpine_msix_data, ptr %call7.i.i, i32 0, i32 4
  %8 = ptrtoint ptr %msi_map to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call31, ptr %msi_map, align 8
  %tobool33.not = icmp eq ptr %call31, null
  br i1 %tobool33.not, label %if.end29.err_priv_crit_edge, label %do.body36

if.end29.err_priv_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_priv

do.body36:                                        ; preds = %if.end29
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @alpine_msix_init.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@alpine_msix_init, %if.then42)) #6
          to label %do.end47 [label %if.then42], !srcloc !66

if.then42:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %num_spis to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_spis, align 4
  %11 = ptrtoint ptr %spi_first to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %spi_first, align 8
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @alpine_msix_init.__UNIQUE_ID_ddebug236, ptr noundef nonnull @.str.14, i32 noundef %10, i32 noundef %12) #6
  br label %do.end47

do.end47:                                         ; preds = %if.then42, %do.body36
  %call.i = call ptr @of_irq_find_parent(ptr noundef %node) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #8
  %call1.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #10
  br label %err_map

if.end.i:                                         ; preds = %do.end47
  %fwnode.i.i.i.i = getelementptr inbounds %struct.device_node, ptr %call.i, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %fwspec.i.i.i.i) #6
  %13 = getelementptr inbounds i8, ptr %fwspec.i.i.i.i, i32 4
  %14 = call ptr @memset(ptr %13, i32 0, i32 68)
  %15 = ptrtoint ptr %fwspec.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %fwnode.i.i.i.i, ptr %fwspec.i.i.i.i, align 4
  %call.i.i.i.i = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %fwspec.i.i.i.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fwspec.i.i.i.i) #6
  %tobool.not.i.i = icmp eq ptr %call.i.i.i.i, null
  br i1 %tobool.not.i.i, label %irq_find_host.exit.i, label %if.end.i.if.end10.i_crit_edge

if.end.i.if.end10.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

irq_find_host.exit.i:                             ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %fwspec.i.i4.i.i) #6
  %16 = getelementptr inbounds i8, ptr %fwspec.i.i4.i.i, i32 4
  %17 = call ptr @memset(ptr %16, i32 0, i32 68)
  %18 = ptrtoint ptr %fwspec.i.i4.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %fwnode.i.i.i.i, ptr %fwspec.i.i4.i.i, align 4
  %call.i.i8.i.i = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %fwspec.i.i4.i.i, i32 noundef 0) #6
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fwspec.i.i4.i.i) #6
  %tobool3.not.i = icmp eq ptr %call.i.i8.i.i, null
  br i1 %tobool3.not.i, label %do.end7.i, label %irq_find_host.exit.i.if.end10.i_crit_edge

irq_find_host.exit.i.if.end10.i_crit_edge:        ; preds = %irq_find_host.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end10.i

do.end7.i:                                        ; preds = %irq_find_host.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #10
  br label %err_map

if.end10.i:                                       ; preds = %irq_find_host.exit.i.if.end10.i_crit_edge, %if.end.i.if.end10.i_crit_edge
  %d.0.i42.i = phi ptr [ %call.i.i8.i.i, %irq_find_host.exit.i.if.end10.i_crit_edge ], [ %call.i.i.i.i, %if.end.i.if.end10.i_crit_edge ]
  %call1.i.i = call ptr @__irq_domain_add(ptr noundef null, i32 noundef 0, i32 noundef -1, i32 noundef 0, ptr noundef nonnull @alpine_msix_middle_domain_ops, ptr noundef nonnull %call7.i.i) #6
  %tobool12.not.i = icmp eq ptr %call1.i.i, null
  br i1 %tobool12.not.i, label %do.end16.i, label %if.end19.i

do.end16.i:                                       ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  %call18.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #10
  br label %err_map

if.end19.i:                                       ; preds = %if.end10.i
  %parent.i = getelementptr inbounds %struct.irq_domain, ptr %call1.i.i, i32 0, i32 9
  %19 = ptrtoint ptr %parent.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %d.0.i42.i, ptr %parent.i, align 4
  %tobool.not.i39.i = icmp eq ptr %node, null
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %node, i32 0, i32 3
  %spec.select.i.i = select i1 %tobool.not.i39.i, ptr null, ptr %fwnode.i.i
  %call21.i = call ptr @pci_msi_create_irq_domain(ptr noundef %spec.select.i.i, ptr noundef nonnull @alpine_msix_domain_info, ptr noundef nonnull %call1.i.i) #6
  %tobool22.not.i = icmp eq ptr %call21.i, null
  br i1 %tobool22.not.i, label %do.end26.i, label %if.end19.i.cleanup_crit_edge

if.end19.i.cleanup_crit_edge:                     ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end26.i:                                       ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  %call28.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #10
  call void @irq_domain_remove(ptr noundef nonnull %call1.i.i) #6
  br label %err_map

err_map:                                          ; preds = %do.end26.i, %do.end16.i, %do.end7.i, %do.end.i
  %retval.0.i74.ph = phi i32 [ -19, %do.end.i ], [ -6, %do.end7.i ], [ -12, %do.end16.i ], [ -12, %do.end26.i ]
  %20 = ptrtoint ptr %msi_map to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %msi_map, align 8
  call void @bitmap_free(ptr noundef %21) #6
  br label %err_priv

err_priv:                                         ; preds = %err_map, %if.end29.err_priv_crit_edge, %do.end26, %do.end17, %do.end7
  %ret.0 = phi i32 [ %call2, %do.end7 ], [ -22, %do.end17 ], [ -22, %do.end26 ], [ %retval.0.i74.ph, %err_map ], [ -12, %if.end29.err_priv_crit_edge ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %err_priv, %if.end19.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %err_priv ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.end19.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bitmap_zalloc(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_irq_find_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_msi_create_irq_domain(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_find_matching_fwspec(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @alpine_msix_middle_domain_alloc(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs, ptr nocapture noundef readnone %args) #0 align 64 {
entry:
  %fwspec.i = alloca %struct.irq_fwspec, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  tail call void @_raw_spin_lock(ptr noundef %1) #6
  %msi_map.i = getelementptr inbounds %struct.alpine_msix_data, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %msi_map.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %msi_map.i, align 4
  %num_spis.i = getelementptr inbounds %struct.alpine_msix_data, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %num_spis.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_spis.i, align 4
  %call.i.i = tail call i32 @bitmap_find_next_zero_area_off(ptr noundef %3, i32 noundef %5, i32 noundef 0, i32 noundef %nr_irqs, i32 noundef 0, i32 noundef 0) #6
  %6 = ptrtoint ptr %num_spis.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_spis.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i.i, i32 %7)
  %cmp.not.i = icmp ult i32 %call.i.i, %7
  br i1 %cmp.not.i, label %if.end.i, label %alpine_msix_allocate_sgi.exit.thread

alpine_msix_allocate_sgi.exit.thread:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_raw_spin_unlock(ptr noundef %1) #6
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %8 = ptrtoint ptr %msi_map.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %msi_map.i, align 4
  tail call void @__bitmap_set(ptr noundef %9, i32 noundef %call.i.i, i32 noundef %nr_irqs) #6
  tail call void @_raw_spin_unlock(ptr noundef %1) #6
  %spi_first.i = getelementptr inbounds %struct.alpine_msix_data, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %spi_first.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %spi_first.i, align 4
  %add.i = add i32 %11, %call.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %cmp = icmp slt i32 %add.i, 0
  br i1 %cmp, label %if.end.i.cleanup_crit_edge, label %for.cond.preheader

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_irqs)
  %cmp162.not = icmp eq i32 %nr_irqs, 0
  br i1 %cmp162.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %12 = getelementptr inbounds i8, ptr %fwspec.i, i32 20
  %parent.i = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 9
  %param_count.i = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec.i, i32 0, i32 1
  %param.i = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec.i, i32 0, i32 2
  %arrayidx5.i = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec.i, i32 0, i32 2, i32 1
  %arrayidx7.i = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec.i, i32 0, i32 2, i32 2
  br label %for.body

for.body:                                         ; preds = %if.end5.for.body_crit_edge, %for.body.lr.ph
  %i.063 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end5.for.body_crit_edge ]
  %add = add i32 %i.063, %virq
  %add2 = add i32 %i.063, %add.i
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %fwspec.i) #6
  %13 = call ptr @memset(ptr %12, i32 255, i32 52)
  %14 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent.i, align 4
  %fwnode.i = getelementptr inbounds %struct.irq_domain, ptr %15, i32 0, i32 6
  %16 = ptrtoint ptr %fwnode.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fwnode.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %17, null
  %cmp.i.i.i = icmp ugt ptr %17, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.i = or i1 %tobool.not.i.i.i, %cmp.i.i.i
  br i1 %spec.select.i.i.i, label %for.body.err_sgi_crit_edge, label %is_of_node.exit.i

for.body.err_sgi_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_sgi

is_of_node.exit.i:                                ; preds = %for.body
  %ops.i.i = getelementptr inbounds %struct.fwnode_handle, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ops.i.i, align 4
  %cmp.i.i32 = icmp eq ptr %19, @of_fwnode_ops
  br i1 %cmp.i.i32, label %if.end.i33, label %is_of_node.exit.i.err_sgi_crit_edge

is_of_node.exit.i.err_sgi_crit_edge:              ; preds = %is_of_node.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_sgi

if.end.i33:                                       ; preds = %is_of_node.exit.i
  %20 = ptrtoint ptr %fwspec.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %fwspec.i, align 4
  %21 = ptrtoint ptr %param_count.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 3, ptr %param_count.i, align 4
  %22 = ptrtoint ptr %param.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %param.i, align 4
  %23 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %add2, ptr %arrayidx5.i, align 4
  %24 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %arrayidx7.i, align 4
  %call8.i = call i32 @irq_domain_alloc_irqs_parent(ptr noundef %domain, i32 noundef %add, i32 noundef 1, ptr noundef nonnull %fwspec.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool.not.i, label %if.end5, label %if.end.i33.err_sgi_crit_edge

if.end.i33.err_sgi_crit_edge:                     ; preds = %if.end.i33
  call void @__sanitizer_cov_trace_pc() #8
  br label %err_sgi

if.end5:                                          ; preds = %if.end.i33
  %25 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %parent.i, align 4
  %call12.i = call ptr @irq_domain_get_irq_data(ptr noundef %26, i32 noundef %add) #6
  %chip.i = getelementptr inbounds %struct.irq_data, ptr %call12.i, i32 0, i32 4
  %27 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %chip.i, align 4
  %irq_set_type.i = getelementptr inbounds %struct.irq_chip, ptr %28, i32 0, i32 13
  %29 = ptrtoint ptr %irq_set_type.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %irq_set_type.i, align 4
  %call13.i = call i32 %30(ptr noundef %call12.i, i32 noundef 1) #6
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fwspec.i) #6
  %call8 = call i32 @irq_domain_set_hwirq_and_chip(ptr noundef %domain, i32 noundef %add, i32 noundef %add2, ptr noundef nonnull @middle_irq_chip, ptr noundef %1) #6
  %inc = add nuw i32 %i.063, 1
  %exitcond.not = icmp eq i32 %inc, %nr_irqs
  br i1 %exitcond.not, label %if.end5.cleanup_crit_edge, label %if.end5.for.body_crit_edge

if.end5.for.body_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

err_sgi:                                          ; preds = %if.end.i33.err_sgi_crit_edge, %is_of_node.exit.i.err_sgi_crit_edge, %for.body.err_sgi_crit_edge
  %retval.0.i34.ph = phi i32 [ -22, %for.body.err_sgi_crit_edge ], [ %call8.i, %if.end.i33.err_sgi_crit_edge ], [ -22, %is_of_node.exit.i.err_sgi_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fwspec.i) #6
  %sub = add i32 %i.063, -1
  call void @irq_domain_free_irqs_parent(ptr noundef %domain, i32 noundef %virq, i32 noundef %sub) #6
  %31 = ptrtoint ptr %spi_first.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %spi_first.i, align 4
  %sub.i = sub i32 %add.i, %32
  call void @_raw_spin_lock(ptr noundef %1) #6
  %33 = ptrtoint ptr %msi_map.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %msi_map.i, align 4
  call void @__bitmap_clear(ptr noundef %34, i32 noundef %sub.i, i32 noundef %nr_irqs) #6
  call void @_raw_spin_unlock(ptr noundef %1) #6
  br label %cleanup

cleanup:                                          ; preds = %err_sgi, %if.end5.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %alpine_msix_allocate_sgi.exit.thread
  %retval.0 = phi i32 [ %retval.0.i34.ph, %err_sgi ], [ %add.i, %if.end.i.cleanup_crit_edge ], [ -28, %alpine_msix_allocate_sgi.exit.thread ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @alpine_msix_middle_domain_free(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @irq_domain_get_irq_data(ptr noundef %domain, i32 noundef %virq) #6
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  tail call void @irq_domain_free_irqs_parent(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs) #6
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq, align 4
  %spi_first.i = getelementptr inbounds %struct.alpine_msix_data, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %spi_first.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %spi_first.i, align 4
  %sub.i = sub i32 %3, %5
  tail call void @_raw_spin_lock(ptr noundef %1) #6
  %msi_map.i = getelementptr inbounds %struct.alpine_msix_data, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %msi_map.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %msi_map.i, align 4
  tail call void @__bitmap_clear(ptr noundef %7, i32 noundef %sub.i, i32 noundef %nr_irqs) #6
  tail call void @_raw_spin_unlock(ptr noundef %1) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_set_hwirq_and_chip(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs_parent(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_find_next_zero_area_off(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

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
define internal void @alpine_msix_compose_msi_msg(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %msg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %addr = getelementptr inbounds %struct.alpine_msix_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %addr, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq, align 4
  %shl = shl i32 %5, 3
  %or = or i32 %shl, %3
  %6 = getelementptr inbounds %struct.msi_msg, ptr %msg, i32 0, i32 1
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %6, align 4
  %8 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or, ptr %msg, align 4
  %9 = getelementptr inbounds %struct.msi_msg, ptr %msg, i32 0, i32 2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %9, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_clear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @alpine_msix_mask_msi_irq(ptr noundef %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @pci_msi_mask_irq(ptr noundef %d) #6
  tail call void @irq_chip_mask_parent(ptr noundef %d) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @alpine_msix_unmask_msi_irq(ptr noundef %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @pci_msi_unmask_irq(ptr noundef %d) #6
  tail call void @irq_chip_unmask_parent(ptr noundef %d) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_msi_mask_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pci_msi_unmask_irq(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !9, !10, !11, !13, !15, !16, !17, !19, !21, !22, !23, !25, !26, !27, !28, !30, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !49, !51, !53, !55}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !{ptr @__of_table_alpine_msix, !1, !"__of_table_alpine_msix", i1 false, i1 false}
!1 = !{!"../drivers/irqchip/irq-alpine-msi.c", i32 291, i32 1}
!2 = !{ptr @alpine_msix_init.__key, !3, !"__key", i1 false, i1 false}
!3 = !{!"../drivers/irqchip/irq-alpine-msi.c", i32 240, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/irqchip/irq-alpine-msi.c", i32 244, i32 3}
!7 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.3, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @alpine_msix_init._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @alpine_msix_init._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/irqchip/irq-alpine-msi.c", i32 258, i32 33}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/irqchip/irq-alpine-msi.c", i32 259, i32 3}
!15 = !{ptr @alpine_msix_init._entry.5, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @alpine_msix_init._entry_ptr.7, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.8, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/irqchip/irq-alpine-msi.c", i32 264, i32 33}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/irqchip/irq-alpine-msi.c", i32 265, i32 3}
!21 = !{ptr @alpine_msix_init._entry.9, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @alpine_msix_init._entry_ptr.11, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/irqchip/irq-alpine-msi.c", i32 276, i32 2}
!25 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @alpine_msix_init.__UNIQUE_ID_ddebug236, !24, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!27 = !{ptr @.str.14, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/irqchip/irq-alpine-msi.c", i32 197, i32 3}
!30 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @alpine_msix_init_domains._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @alpine_msix_init_domains._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/irqchip/irq-alpine-msi.c", i32 203, i32 3}
!35 = !{ptr @alpine_msix_init_domains._entry.17, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @alpine_msix_init_domains._entry_ptr.19, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/irqchip/irq-alpine-msi.c", i32 211, i32 3}
!39 = !{ptr @alpine_msix_init_domains._entry.20, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @alpine_msix_init_domains._entry_ptr.22, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.24, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/irqchip/irq-alpine-msi.c", i32 221, i32 3}
!43 = !{ptr @alpine_msix_init_domains._entry.23, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @alpine_msix_init_domains._entry_ptr.25, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @alpine_msix_middle_domain_ops, !46, !"alpine_msix_middle_domain_ops", i1 false, i1 false}
!46 = !{!"../drivers/irqchip/irq-alpine-msi.c", i32 184, i32 36}
!47 = !{ptr @.str.26, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/irqchip/irq-alpine-msi.c", i32 111, i32 12}
!49 = !{ptr @middle_irq_chip, !50, !"middle_irq_chip", i1 false, i1 false}
!50 = !{!"../drivers/irqchip/irq-alpine-msi.c", i32 110, i32 24}
!51 = !{ptr @alpine_msix_domain_info, !52, !"alpine_msix_domain_info", i1 false, i1 false}
!52 = !{!"../drivers/irqchip/irq-alpine-msi.c", i32 104, i32 31}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/irqchip/irq-alpine-msi.c", i32 52, i32 12}
!55 = !{ptr @alpine_msix_irq_chip, !56, !"alpine_msix_irq_chip", i1 false, i1 false}
!56 = !{!"../drivers/irqchip/irq-alpine-msi.c", i32 51, i32 24}
!57 = !{i32 1, !"wchar_size", i32 2}
!58 = !{i32 1, !"min_enum_size", i32 4}
!59 = !{i32 8, !"branch-target-enforcement", i32 0}
!60 = !{i32 8, !"sign-return-address", i32 0}
!61 = !{i32 8, !"sign-return-address-all", i32 0}
!62 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!63 = !{i32 7, !"uwtable", i32 1}
!64 = !{i32 7, !"frame-pointer", i32 2}
!65 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!66 = !{i64 2148955676, i64 2148955681, i64 2148955694, i64 2148955738, i64 2148955772, i64 2148955793}
