; ModuleID = '/llk/IR_all_yes/drivers/irqchip/irq-crossbar.c_pt.bc'
source_filename = "../drivers/irqchip/irq-crossbar.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_fwspec = type { ptr, i32, [16 x i32] }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.crossbar_device = type { %struct.raw_spinlock, i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@__of_table_ti_irqcrossbar = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,irq-crossbar\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @irqcrossbar_init }, section "__irqchip_of_table", align 4
@irqcrossbar_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 340, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%pOF: no parent, giving up\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"irqcrossbar_init\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/irqchip/irq-crossbar.c\00", [33 x i8] zeroinitializer }, align 32
@irqcrossbar_init._entry_ptr = internal global ptr @irqcrossbar_init._entry, section ".printk_index", align 4
@irqcrossbar_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 346, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%pOF: unable to obtain parent domain\0A\00", [56 x i8] zeroinitializer }, align 32
@irqcrossbar_init._entry_ptr.5 = internal global ptr @irqcrossbar_init._entry.3, section ".printk_index", align 4
@cb = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@crossbar_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @crossbar_domain_alloc, ptr @crossbar_domain_free, ptr null, ptr null, ptr @crossbar_domain_translate, ptr null }, [52 x i8] zeroinitializer }, align 32
@irqcrossbar_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 359, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013%pOF: failed to allocated domain\0A\00", [60 x i8] zeroinitializer }, align 32
@irqcrossbar_init._entry_ptr.8 = internal global ptr @irqcrossbar_init._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ti,max-crossbar-sources\00", [40 x i8] zeroinitializer }, align 32
@crossbar_of_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 214, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013missing 'ti,max-crossbar-sources' property\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"crossbar_of_init\00", [47 x i8] zeroinitializer }, align 32
@crossbar_of_init._entry_ptr = internal global ptr @crossbar_of_init._entry, section ".printk_index", align 4
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ti,max-irqs\00", [20 x i8] zeroinitializer }, align 32
@crossbar_of_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.11, ptr @.str.2, i32 221, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013missing 'ti,max-irqs' property\0A\00", [62 x i8] zeroinitializer }, align 32
@crossbar_of_init._entry_ptr.15 = internal global ptr @crossbar_of_init._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ti,irqs-reserved\00", [47 x i8] zeroinitializer }, align 32
@crossbar_of_init._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.11, ptr @.str.2, i32 244, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013Invalid reserved entry\0A\00", [38 x i8] zeroinitializer }, align 32
@crossbar_of_init._entry_ptr.19 = internal global ptr @crossbar_of_init._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ti,irqs-skip\00", [19 x i8] zeroinitializer }, align 32
@crossbar_of_init._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.11, ptr @.str.2, i32 262, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\013Invalid skip entry\0A\00", [42 x i8] zeroinitializer }, align 32
@crossbar_of_init._entry_ptr.23 = internal global ptr @crossbar_of_init._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ti,reg-size\00", [20 x i8] zeroinitializer }, align 32
@crossbar_of_init._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.11, ptr @.str.2, i32 288, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013Invalid reg-size property\0A\00", [35 x i8] zeroinitializer }, align 32
@crossbar_of_init._entry_ptr.27 = internal global ptr @crossbar_of_init._entry.25, section ".printk_index", align 4
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ti,irqs-safe-map\00", [47 x i8] zeroinitializer }, align 32
@crossbar_of_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&cb->lock\00", [22 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@crossbar_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.30, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @irq_chip_mask_parent, ptr null, ptr @irq_chip_unmask_parent, ptr @irq_chip_eoi_parent, ptr @irq_chip_set_affinity_parent, ptr @irq_chip_retrigger_hierarchy, ptr @irq_chip_set_type_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 20 }, [56 x i8] zeroinitializer }, align 32
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@.str.30 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"CBAR\00", [27 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 340, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 346, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant [3 x i8] c"cb\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 43, i32 32 }
@___asan_gen_.52 = private unnamed_addr constant [20 x i8] c"crossbar_domain_ops\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 189, i32 36 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 359, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 211, i32 29 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 214, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 219, i32 29 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 221, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 235, i32 32 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 244, i32 5 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 253, i32 32 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 262, i32 5 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 275, i32 29 }
@___asan_gen_.103 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 288, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 306, i32 29 }
@___asan_gen_.112 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 316, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant [14 x i8] c"crossbar_chip\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 60, i32 24 }
@___asan_gen_.121 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.122 = private constant [34 x i8] c"../drivers/irqchip/irq-crossbar.c\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 61, i32 12 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @__of_table_ti_irqcrossbar, ptr @crossbar_of_init._entry, ptr @crossbar_of_init._entry.13, ptr @crossbar_of_init._entry.17, ptr @crossbar_of_init._entry.21, ptr @crossbar_of_init._entry.25, ptr @crossbar_of_init._entry_ptr, ptr @crossbar_of_init._entry_ptr.15, ptr @crossbar_of_init._entry_ptr.19, ptr @crossbar_of_init._entry_ptr.23, ptr @crossbar_of_init._entry_ptr.27, ptr @irqcrossbar_init._entry, ptr @irqcrossbar_init._entry.3, ptr @irqcrossbar_init._entry.6, ptr @irqcrossbar_init._entry_ptr, ptr @irqcrossbar_init._entry_ptr.5, ptr @irqcrossbar_init._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @cb, ptr @crossbar_domain_ops, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.26, ptr @.str.28, ptr @crossbar_of_init.__key, ptr @.str.29, ptr @crossbar_chip, ptr @.str.30], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irqcrossbar_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irqcrossbar_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cb to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crossbar_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irqcrossbar_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crossbar_of_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crossbar_of_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crossbar_of_init._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crossbar_of_init._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crossbar_of_init._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crossbar_of_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @crossbar_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @irqcrossbar_init(ptr noundef %node, ptr noundef %parent) #0 section ".init.text" align 64 {
entry:
  %fwspec.i.i4.i = alloca %struct.irq_fwspec, align 4
  %fwspec.i.i.i = alloca %struct.irq_fwspec, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %parent, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %node) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %fwnode.i.i.i = getelementptr inbounds %struct.device_node, ptr %parent, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %fwspec.i.i.i) #9
  %0 = getelementptr inbounds i8, ptr %fwspec.i.i.i, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 68)
  %2 = ptrtoint ptr %fwspec.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %fwnode.i.i.i, ptr %fwspec.i.i.i, align 4
  %call.i.i.i = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %fwspec.i.i.i, i32 noundef 1) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fwspec.i.i.i) #9
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %irq_find_host.exit, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

irq_find_host.exit:                               ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %fwspec.i.i4.i) #9
  %3 = getelementptr inbounds i8, ptr %fwspec.i.i4.i, i32 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 68)
  %5 = ptrtoint ptr %fwspec.i.i4.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %fwnode.i.i.i, ptr %fwspec.i.i4.i, align 4
  %call.i.i8.i = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %fwspec.i.i4.i, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fwspec.i.i4.i) #9
  %tobool2.not = icmp eq ptr %call.i.i8.i, null
  br i1 %tobool2.not, label %do.end6, label %irq_find_host.exit.if.end9_crit_edge

irq_find_host.exit.if.end9_crit_edge:             ; preds = %irq_find_host.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end9

do.end6:                                          ; preds = %irq_find_host.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %node) #12
  br label %cleanup

if.end9:                                          ; preds = %irq_find_host.exit.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %d.0.i34 = phi ptr [ %call.i.i8.i, %irq_find_host.exit.if.end9_crit_edge ], [ %call.i.i.i, %if.end.if.end9_crit_edge ]
  %call10 = call fastcc i32 @crossbar_of_init(ptr noundef %node) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %6 = load ptr, ptr @cb, align 4
  %max_crossbar_sources = getelementptr inbounds %struct.crossbar_device, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %max_crossbar_sources to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_crossbar_sources, align 4
  %tobool.not.i.i = icmp eq ptr %node, null
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %node, i32 0, i32 3
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr null, ptr %fwnode.i.i
  %call1.i = call ptr @irq_domain_create_hierarchy(ptr noundef nonnull %d.0.i34, i32 noundef 0, i32 noundef %8, ptr noundef %spec.select.i.i, ptr noundef nonnull @crossbar_domain_ops, ptr noundef null) #9
  %tobool15.not = icmp eq ptr %call1.i, null
  br i1 %tobool15.not, label %do.end19, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef %node) #12
  br label %cleanup

cleanup:                                          ; preds = %do.end19, %if.end13.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %do.end6, %do.end
  %retval.0 = phi i32 [ -12, %do.end19 ], [ -6, %do.end6 ], [ -19, %do.end ], [ %call10, %if.end9.cleanup_crit_edge ], [ 0, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @crossbar_of_init(ptr noundef %node) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %max = alloca i32, align 4
  %entry1 = alloca i32, align 4
  %reg_size = alloca i32, align 4
  %size = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %max) #9
  %0 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %max, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %entry1) #9
  %1 = ptrtoint ptr %entry1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %entry1, align 4, !annotation !69
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg_size) #9
  %2 = ptrtoint ptr %reg_size to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg_size, align 4, !annotation !69
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size) #9
  %3 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %size, align 4, !annotation !69
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 72) #14
  store ptr %call7.i.i, ptr @cb, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_iomap(ptr noundef %node, i32 noundef 0) #9
  %5 = load ptr, ptr @cb, align 4
  %crossbar_base = getelementptr inbounds %struct.crossbar_device, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %crossbar_base to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call2, ptr %crossbar_base, align 4
  %tobool4.not = icmp eq ptr %call2, null
  br i1 %tobool4.not, label %if.end.err_cb_crit_edge, label %if.end6

if.end.err_cb_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_cb

if.end6:                                          ; preds = %if.end
  %max_crossbar_sources = getelementptr inbounds %struct.crossbar_device, ptr %5, i32 0, i32 3
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.9, ptr noundef %max_crossbar_sources, i32 noundef 1, i32 noundef 0) #9
  %7 = load ptr, ptr @cb, align 4
  %max_crossbar_sources8 = getelementptr inbounds %struct.crossbar_device, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %max_crossbar_sources8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_crossbar_sources8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool9.not = icmp eq i32 %9, 0
  br i1 %tobool9.not, label %do.end, label %if.end12

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #12
  br label %err_base

if.end12:                                         ; preds = %if.end6
  %call.i.i162 = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.12, ptr noundef nonnull %max, i32 noundef 1, i32 noundef 0) #9
  %10 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool14.not = icmp eq i32 %11, 0
  br i1 %tobool14.not, label %do.end18, label %if.end21

do.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %call20 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #12
  br label %err_base

if.end21:                                         ; preds = %if.end12
  %12 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %11, i32 4) #9
  %13 = extractvalue { i32, i1 } %12, 1
  br i1 %13, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !70

kcalloc.exit.thread:                              ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %14 = load ptr, ptr @cb, align 4
  %irq_map199 = getelementptr inbounds %struct.crossbar_device, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %irq_map199 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %irq_map199, align 4
  br label %err_base

if.end7.i.i:                                      ; preds = %if.end21
  %16 = extractvalue { i32, i1 } %12, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %16, i32 noundef 3520) #15
  %17 = load ptr, ptr @cb, align 4
  %irq_map = getelementptr inbounds %struct.crossbar_device, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %irq_map to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call8.i.i, ptr %irq_map, align 4
  %tobool24.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool24.not, label %if.end7.i.i.err_base_crit_edge, label %if.end26

if.end7.i.i.err_base_crit_edge:                   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_base

if.end26:                                         ; preds = %if.end7.i.i
  %19 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %max, align 4
  %int_max = getelementptr inbounds %struct.crossbar_device, ptr %17, i32 0, i32 1
  %21 = ptrtoint ptr %int_max to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %int_max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp213.not = icmp eq i32 %20, 0
  br i1 %cmp213.not, label %if.end26.for.end_crit_edge, label %if.end26.for.body_crit_edge

if.end26.for.body_crit_edge:                      ; preds = %if.end26
  br label %for.body

if.end26.for.end_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end26.for.body_crit_edge
  %i.0214 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end26.for.body_crit_edge ]
  %22 = ptrtoint ptr %irq_map to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %irq_map, align 4
  %arrayidx = getelementptr i32, ptr %23, i32 %i.0214
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %arrayidx, align 4
  %inc = add nuw i32 %i.0214, 1
  %25 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %max, align 4
  %cmp = icmp ult i32 %inc, %26
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end26.for.end_crit_edge
  %call28 = call ptr @of_get_property(ptr noundef %node, ptr noundef nonnull @.str.16, ptr noundef nonnull %size) #9
  %tobool29.not = icmp eq ptr %call28, null
  br i1 %tobool29.not, label %for.end.if.end48_crit_edge, label %if.then30

for.end.if.end48_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.then30:                                        ; preds = %for.end
  %27 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %size, align 4
  %div161 = lshr i32 %28, 2
  store i32 %div161, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %28)
  %cmp32215.not = icmp ult i32 %28, 4
  br i1 %cmp32215.not, label %if.then30.if.end48_crit_edge, label %if.then30.for.body33_crit_edge

if.then30.for.body33_crit_edge:                   ; preds = %if.then30
  br label %for.body33

if.then30.if.end48_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

for.body33:                                       ; preds = %if.end42.for.body33_crit_edge, %if.then30.for.body33_crit_edge
  %i.1216 = phi i32 [ %inc46, %if.end42.for.body33_crit_edge ], [ 0, %if.then30.for.body33_crit_edge ]
  %call34 = call i32 @of_property_read_u32_index(ptr noundef %node, ptr noundef nonnull @.str.16, i32 noundef %i.1216, ptr noundef nonnull %entry1) #9
  %29 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %entry1, align 4
  %31 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %32)
  %cmp35.not = icmp ult i32 %30, %32
  br i1 %cmp35.not, label %if.end42, label %do.end39

do.end39:                                         ; preds = %for.body33
  call void @__sanitizer_cov_trace_pc() #11
  %call41 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #12
  br label %err_irq_map

if.end42:                                         ; preds = %for.body33
  %33 = load ptr, ptr @cb, align 4
  %irq_map43 = getelementptr inbounds %struct.crossbar_device, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %irq_map43 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %irq_map43, align 4
  %arrayidx44 = getelementptr i32, ptr %35, i32 %30
  %36 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -2, ptr %arrayidx44, align 4
  %inc46 = add nuw nsw i32 %i.1216, 1
  %37 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %size, align 4
  %cmp32 = icmp slt i32 %inc46, %38
  br i1 %cmp32, label %if.end42.for.body33_crit_edge, label %if.end42.if.end48_crit_edge

if.end42.if.end48_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end48

if.end42.for.body33_crit_edge:                    ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body33

if.end48:                                         ; preds = %if.end42.if.end48_crit_edge, %if.then30.if.end48_crit_edge, %for.end.if.end48_crit_edge
  %call49 = call ptr @of_get_property(ptr noundef %node, ptr noundef nonnull @.str.20, ptr noundef nonnull %size) #9
  %tobool50.not = icmp eq ptr %call49, null
  br i1 %tobool50.not, label %if.end48.if.end70_crit_edge, label %if.then51

if.end48.if.end70_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.then51:                                        ; preds = %if.end48
  %39 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %size, align 4
  %div52160 = lshr i32 %40, 2
  store i32 %div52160, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %40)
  %cmp54217.not = icmp ult i32 %40, 4
  br i1 %cmp54217.not, label %if.then51.if.end70_crit_edge, label %if.then51.for.body55_crit_edge

if.then51.for.body55_crit_edge:                   ; preds = %if.then51
  br label %for.body55

if.then51.if.end70_crit_edge:                     ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

for.body55:                                       ; preds = %if.end64.for.body55_crit_edge, %if.then51.for.body55_crit_edge
  %i.2218 = phi i32 [ %inc68, %if.end64.for.body55_crit_edge ], [ 0, %if.then51.for.body55_crit_edge ]
  %call56 = call i32 @of_property_read_u32_index(ptr noundef %node, ptr noundef nonnull @.str.20, i32 noundef %i.2218, ptr noundef nonnull %entry1) #9
  %41 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %entry1, align 4
  %43 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %42, i32 %44)
  %cmp57.not = icmp ult i32 %42, %44
  br i1 %cmp57.not, label %if.end64, label %do.end61

do.end61:                                         ; preds = %for.body55
  call void @__sanitizer_cov_trace_pc() #11
  %call63 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #12
  br label %err_irq_map

if.end64:                                         ; preds = %for.body55
  %45 = load ptr, ptr @cb, align 4
  %irq_map65 = getelementptr inbounds %struct.crossbar_device, ptr %45, i32 0, i32 4
  %46 = ptrtoint ptr %irq_map65 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %irq_map65, align 4
  %arrayidx66 = getelementptr i32, ptr %47, i32 %42
  %48 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -3, ptr %arrayidx66, align 4
  %inc68 = add nuw nsw i32 %i.2218, 1
  %49 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %size, align 4
  %cmp54 = icmp slt i32 %inc68, %50
  br i1 %cmp54, label %if.end64.for.body55_crit_edge, label %if.end64.if.end70_crit_edge

if.end64.if.end70_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.end64.for.body55_crit_edge:                    ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body55

if.end70:                                         ; preds = %if.end64.if.end70_crit_edge, %if.then51.if.end70_crit_edge, %if.end48.if.end70_crit_edge
  %51 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %max, align 4
  %53 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %52, i32 4) #9
  %54 = extractvalue { i32, i1 } %53, 1
  br i1 %54, label %kcalloc.exit195.thread, label %if.end7.i.i193, !prof !70

kcalloc.exit195.thread:                           ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  %55 = load ptr, ptr @cb, align 4
  %register_offsets207 = getelementptr inbounds %struct.crossbar_device, ptr %55, i32 0, i32 6
  %56 = ptrtoint ptr %register_offsets207 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %register_offsets207, align 4
  br label %err_irq_map

if.end7.i.i193:                                   ; preds = %if.end70
  %57 = extractvalue { i32, i1 } %53, 0
  %call8.i.i192 = call noalias align 128 ptr @__kmalloc(i32 noundef %57, i32 noundef 3520) #15
  %58 = load ptr, ptr @cb, align 4
  %register_offsets = getelementptr inbounds %struct.crossbar_device, ptr %58, i32 0, i32 6
  %59 = ptrtoint ptr %register_offsets to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call8.i.i192, ptr %register_offsets, align 4
  %tobool73.not = icmp eq ptr %call8.i.i192, null
  br i1 %tobool73.not, label %if.end7.i.i193.err_irq_map_crit_edge, label %if.end75

if.end7.i.i193.err_irq_map_crit_edge:             ; preds = %if.end7.i.i193
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_irq_map

if.end75:                                         ; preds = %if.end7.i.i193
  %call.i.i196 = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.24, ptr noundef nonnull %reg_size, i32 noundef 1, i32 noundef 0) #9
  %60 = ptrtoint ptr %reg_size to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %reg_size, align 4
  %62 = zext i32 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values)
  switch i32 %61, label %do.end83 [
    i32 1, label %if.end75.sw.epilog_crit_edge
    i32 2, label %sw.bb77
    i32 4, label %sw.bb79
  ]

if.end75.sw.epilog_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb77:                                          ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb79:                                          ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end83:                                         ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  %call85 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.26) #12
  %63 = load ptr, ptr @cb, align 4
  %register_offsets119 = getelementptr inbounds %struct.crossbar_device, ptr %63, i32 0, i32 6
  %64 = ptrtoint ptr %register_offsets119 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %register_offsets119, align 4
  call void @kfree(ptr noundef %65) #9
  br label %err_irq_map

sw.epilog:                                        ; preds = %sw.bb79, %sw.bb77, %if.end75.sw.epilog_crit_edge
  %crossbar_writel.sink = phi ptr [ @crossbar_writel, %sw.bb79 ], [ @crossbar_writew, %sw.bb77 ], [ @crossbar_writeb, %if.end75.sw.epilog_crit_edge ]
  %66 = load ptr, ptr @cb, align 4
  %write80 = getelementptr inbounds %struct.crossbar_device, ptr %66, i32 0, i32 7
  %67 = ptrtoint ptr %write80 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %crossbar_writel.sink, ptr %write80, align 4
  %68 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp87219.not = icmp eq i32 %69, 0
  br i1 %cmp87219.not, label %sw.epilog.for.end98_crit_edge, label %for.body88.lr.ph

sw.epilog.for.end98_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end98

for.body88.lr.ph:                                 ; preds = %sw.epilog
  %70 = load ptr, ptr @cb, align 4
  %irq_map89 = getelementptr inbounds %struct.crossbar_device, ptr %70, i32 0, i32 4
  %register_offsets94 = getelementptr inbounds %struct.crossbar_device, ptr %70, i32 0, i32 6
  br label %for.body88

for.body88:                                       ; preds = %for.inc96.for.body88_crit_edge, %for.body88.lr.ph
  %i.3221 = phi i32 [ 0, %for.body88.lr.ph ], [ %inc97, %for.inc96.for.body88_crit_edge ]
  %reserved.0220 = phi i32 [ 0, %for.body88.lr.ph ], [ %reserved.1, %for.inc96.for.body88_crit_edge ]
  %71 = ptrtoint ptr %irq_map89 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %irq_map89, align 4
  %arrayidx90 = getelementptr i32, ptr %72, i32 %i.3221
  %73 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %arrayidx90, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %74)
  %cmp91 = icmp eq i32 %74, -2
  br i1 %cmp91, label %for.body88.for.inc96_crit_edge, label %if.end93

for.body88.for.inc96_crit_edge:                   ; preds = %for.body88
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc96

if.end93:                                         ; preds = %for.body88
  call void @__sanitizer_cov_trace_pc() #11
  %75 = ptrtoint ptr %register_offsets94 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %register_offsets94, align 4
  %arrayidx95 = getelementptr i32, ptr %76, i32 %i.3221
  %77 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %reserved.0220, ptr %arrayidx95, align 4
  %78 = ptrtoint ptr %reg_size to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %reg_size, align 4
  %add = add i32 %79, %reserved.0220
  br label %for.inc96

for.inc96:                                        ; preds = %if.end93, %for.body88.for.inc96_crit_edge
  %reserved.1 = phi i32 [ %reserved.0220, %for.body88.for.inc96_crit_edge ], [ %add, %if.end93 ]
  %inc97 = add nuw i32 %i.3221, 1
  %80 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %max, align 4
  %cmp87 = icmp ult i32 %inc97, %81
  br i1 %cmp87, label %for.inc96.for.body88_crit_edge, label %for.inc96.for.end98_crit_edge

for.inc96.for.end98_crit_edge:                    ; preds = %for.inc96
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end98

for.inc96.for.body88_crit_edge:                   ; preds = %for.inc96
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body88

for.end98:                                        ; preds = %for.inc96.for.end98_crit_edge, %sw.epilog.for.end98_crit_edge
  %82 = load ptr, ptr @cb, align 4
  %safe_map = getelementptr inbounds %struct.crossbar_device, ptr %82, i32 0, i32 2
  %call.i.i197 = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.28, ptr noundef %safe_map, i32 noundef 1, i32 noundef 0) #9
  %83 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %max, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %cmp101222.not = icmp eq i32 %84, 0
  br i1 %cmp101222.not, label %for.end98.do.body116_crit_edge, label %for.end98.for.body102_crit_edge

for.end98.for.body102_crit_edge:                  ; preds = %for.end98
  br label %for.body102

for.end98.do.body116_crit_edge:                   ; preds = %for.end98
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body116

for.body102:                                      ; preds = %for.inc113.for.body102_crit_edge, %for.end98.for.body102_crit_edge
  %i.4223 = phi i32 [ %inc114, %for.inc113.for.body102_crit_edge ], [ 0, %for.end98.for.body102_crit_edge ]
  %85 = load ptr, ptr @cb, align 4
  %irq_map103 = getelementptr inbounds %struct.crossbar_device, ptr %85, i32 0, i32 4
  %86 = ptrtoint ptr %irq_map103 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %irq_map103, align 4
  %arrayidx104 = getelementptr i32, ptr %87, i32 %i.4223
  %88 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx104, align 4
  %.off = add i32 %89, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %for.body102.for.inc113_crit_edge, label %if.end110

for.body102.for.inc113_crit_edge:                 ; preds = %for.body102
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc113

if.end110:                                        ; preds = %for.body102
  call void @__sanitizer_cov_trace_pc() #11
  %write111 = getelementptr inbounds %struct.crossbar_device, ptr %85, i32 0, i32 7
  %90 = ptrtoint ptr %write111 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %write111, align 4
  %safe_map112 = getelementptr inbounds %struct.crossbar_device, ptr %85, i32 0, i32 2
  %92 = ptrtoint ptr %safe_map112 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %safe_map112, align 4
  call void %91(i32 noundef %i.4223, i32 noundef %93) #9
  br label %for.inc113

for.inc113:                                       ; preds = %if.end110, %for.body102.for.inc113_crit_edge
  %inc114 = add nuw i32 %i.4223, 1
  %94 = ptrtoint ptr %max to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %max, align 4
  %cmp101 = icmp ult i32 %inc114, %95
  br i1 %cmp101, label %for.inc113.for.body102_crit_edge, label %for.inc113.do.body116_crit_edge

for.inc113.do.body116_crit_edge:                  ; preds = %for.inc113
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body116

for.inc113.for.body102_crit_edge:                 ; preds = %for.inc113
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body102

do.body116:                                       ; preds = %for.inc113.do.body116_crit_edge, %for.end98.do.body116_crit_edge
  %96 = load ptr, ptr @cb, align 4
  call void @__raw_spin_lock_init(ptr noundef %96, ptr noundef nonnull @.str.29, ptr noundef nonnull @crossbar_of_init.__key, i16 noundef signext 2) #9
  br label %cleanup

err_irq_map:                                      ; preds = %do.end83, %if.end7.i.i193.err_irq_map_crit_edge, %kcalloc.exit195.thread, %do.end61, %do.end39
  %ret.0 = phi i32 [ -22, %do.end39 ], [ -22, %do.end61 ], [ -22, %do.end83 ], [ -12, %if.end7.i.i193.err_irq_map_crit_edge ], [ -12, %kcalloc.exit195.thread ]
  %97 = load ptr, ptr @cb, align 4
  %irq_map120 = getelementptr inbounds %struct.crossbar_device, ptr %97, i32 0, i32 4
  %98 = ptrtoint ptr %irq_map120 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %irq_map120, align 4
  call void @kfree(ptr noundef %99) #9
  br label %err_base

err_base:                                         ; preds = %err_irq_map, %if.end7.i.i.err_base_crit_edge, %kcalloc.exit.thread, %do.end18, %do.end
  %ret.1 = phi i32 [ %ret.0, %err_irq_map ], [ -12, %if.end7.i.i.err_base_crit_edge ], [ -22, %do.end18 ], [ -22, %do.end ], [ -12, %kcalloc.exit.thread ]
  %100 = load ptr, ptr @cb, align 4
  %crossbar_base121 = getelementptr inbounds %struct.crossbar_device, ptr %100, i32 0, i32 5
  %101 = ptrtoint ptr %crossbar_base121 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %crossbar_base121, align 4
  call void @iounmap(ptr noundef %102) #9
  br label %err_cb

err_cb:                                           ; preds = %err_base, %if.end.err_cb_crit_edge
  %ret.2 = phi i32 [ %ret.1, %err_base ], [ -12, %if.end.err_cb_crit_edge ]
  %103 = load ptr, ptr @cb, align 4
  call void @kfree(ptr noundef %103) #9
  store ptr null, ptr @cb, align 4
  br label %cleanup

cleanup:                                          ; preds = %err_cb, %do.body116, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %err_cb ], [ 0, %do.body116 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg_size) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %entry1) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %max) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_find_matching_fwspec(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @crossbar_writeb(i32 noundef %irq_no, i32 noundef %cb_no) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !71
  tail call void @arm_heavy_mb() #9
  %conv = trunc i32 %cb_no to i8
  %0 = load ptr, ptr @cb, align 4
  %crossbar_base = getelementptr inbounds %struct.crossbar_device, ptr %0, i32 0, i32 5
  %1 = ptrtoint ptr %crossbar_base to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %crossbar_base, align 4
  %register_offsets = getelementptr inbounds %struct.crossbar_device, ptr %0, i32 0, i32 6
  %3 = ptrtoint ptr %register_offsets to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %register_offsets, align 4
  %arrayidx = getelementptr i32, ptr %4, i32 %irq_no
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 %6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr, i8 %conv) #9, !srcloc !72
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @crossbar_writew(i32 noundef %irq_no, i32 noundef %cb_no) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !73
  tail call void @arm_heavy_mb() #9
  %conv = trunc i32 %cb_no to i16
  %0 = tail call i16 @llvm.bswap.i16(i16 %conv)
  %1 = load ptr, ptr @cb, align 4
  %crossbar_base = getelementptr inbounds %struct.crossbar_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %crossbar_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crossbar_base, align 4
  %register_offsets = getelementptr inbounds %struct.crossbar_device, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %register_offsets to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %register_offsets, align 4
  %arrayidx = getelementptr i32, ptr %5, i32 %irq_no
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %7
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr, i16 %0) #9, !srcloc !74
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @crossbar_writel(i32 noundef %irq_no, i32 noundef %cb_no) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !75
  tail call void @arm_heavy_mb() #9
  %0 = tail call i32 @llvm.bswap.i32(i32 %cb_no)
  %1 = load ptr, ptr @cb, align 4
  %crossbar_base = getelementptr inbounds %struct.crossbar_device, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %crossbar_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %crossbar_base, align 4
  %register_offsets = getelementptr inbounds %struct.crossbar_device, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %register_offsets to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %register_offsets, align 4
  %arrayidx = getelementptr i32, ptr %5, i32 %irq_no
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %7
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %0) #9, !srcloc !76
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_create_hierarchy(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @crossbar_domain_alloc(ptr noundef %d, i32 noundef %virq, i32 noundef %nr_irqs, ptr nocapture noundef readonly %data) #4 align 64 {
entry:
  %fwspec.i = alloca %struct.irq_fwspec, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %param_count = getelementptr inbounds %struct.irq_fwspec, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %param_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %param_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.not = icmp eq i32 %1, 3
  br i1 %cmp.not, label %if.end, label %entry.cleanup17_crit_edge

entry.cleanup17_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup17

if.end:                                           ; preds = %entry
  %param = getelementptr inbounds %struct.irq_fwspec, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %param, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1.not = icmp eq i32 %3, 0
  br i1 %cmp1.not, label %if.end3, label %if.end.cleanup17_crit_edge

if.end.cleanup17_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup17

if.end3:                                          ; preds = %if.end
  %arrayidx5 = getelementptr %struct.irq_fwspec, ptr %data, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx5, align 4
  %add = add i32 %5, %nr_irqs
  %6 = load ptr, ptr @cb, align 4
  %max_crossbar_sources = getelementptr inbounds %struct.crossbar_device, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %max_crossbar_sources to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %max_crossbar_sources, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %8)
  %cmp6 = icmp ugt i32 %add, %8
  br i1 %cmp6, label %if.end3.cleanup17_crit_edge, label %for.cond.preheader

if.end3.cleanup17_crit_edge:                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup17

for.cond.preheader:                               ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_irqs)
  %cmp943.not = icmp eq i32 %nr_irqs, 0
  br i1 %cmp943.not, label %for.cond.preheader.cleanup17_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup17_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup17

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %9 = getelementptr inbounds i8, ptr %fwspec.i, i32 20
  %parent.i = getelementptr inbounds %struct.irq_domain, ptr %d, i32 0, i32 9
  %param_count.i = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec.i, i32 0, i32 1
  %param.i = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec.i, i32 0, i32 2
  %arrayidx14.i = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec.i, i32 0, i32 2, i32 1
  %arrayidx16.i = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec.i, i32 0, i32 2, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.044 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %add10 = add i32 %i.044, %virq
  %add11 = add i32 %i.044, %5
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %fwspec.i) #9
  %10 = call ptr @memset(ptr %9, i32 255, i32 52)
  %11 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent.i, align 4
  %fwnode.i.i = getelementptr inbounds %struct.irq_domain, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %fwnode.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fwnode.i.i, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %14, null
  %cmp.i.i.i.i = icmp ugt ptr %14, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.i.i = or i1 %tobool.not.i.i.i.i, %cmp.i.i.i.i
  br i1 %spec.select.i.i.i.i, label %for.body.cleanup_crit_edge, label %is_of_node.exit.i.i

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

is_of_node.exit.i.i:                              ; preds = %for.body
  %ops.i.i.i = getelementptr inbounds %struct.fwnode_handle, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i.i.i, align 4
  %cmp.i.i.i = icmp ne ptr %16, @of_fwnode_ops
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 -12
  %tobool.not.i = icmp eq ptr %add.ptr.i.i, null
  %or.cond.i = select i1 %cmp.i.i.i, i1 true, i1 %tobool.not.i
  br i1 %or.cond.i, label %is_of_node.exit.i.i.cleanup_crit_edge, label %if.end.i

is_of_node.exit.i.i.cleanup_crit_edge:            ; preds = %is_of_node.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %is_of_node.exit.i.i
  %17 = load ptr, ptr @cb, align 4
  call void @_raw_spin_lock(ptr noundef %17) #9
  %18 = load ptr, ptr @cb, align 4
  %int_max.i = getelementptr inbounds %struct.crossbar_device, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %int_max.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %int_max.i, align 4
  %irq_map.i = getelementptr inbounds %struct.crossbar_device, ptr %18, i32 0, i32 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end.i
  %i.0.in.i = phi i32 [ %20, %if.end.i ], [ %i.0.i, %for.body.i.for.cond.i_crit_edge ]
  %i.0.i = add i32 %i.0.in.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.0.i)
  %cmp.i = icmp sgt i32 %i.0.i, -1
  br i1 %cmp.i, label %for.body.i, label %for.end.thread.i

for.end.thread.i:                                 ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_unlock(ptr noundef %18) #9
  br label %cleanup

for.body.i:                                       ; preds = %for.cond.i
  %21 = ptrtoint ptr %irq_map.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %irq_map.i, align 4
  %arrayidx.i = getelementptr i32, ptr %22, i32 %i.0.i
  %23 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i, align 4
  %cmp1.i = icmp eq i32 %24, -1
  br i1 %cmp1.i, label %if.end9.i, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

if.end9.i:                                        ; preds = %for.body.i
  %arrayidx.i.le = getelementptr i32, ptr %22, i32 %i.0.i
  %25 = ptrtoint ptr %arrayidx.i.le to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add11, ptr %arrayidx.i.le, align 4
  call void @_raw_spin_unlock(ptr noundef %18) #9
  %26 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %parent.i, align 4
  %fwnode.i = getelementptr inbounds %struct.irq_domain, ptr %27, i32 0, i32 6
  %28 = ptrtoint ptr %fwnode.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fwnode.i, align 4
  %30 = ptrtoint ptr %fwspec.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %fwspec.i, align 4
  %31 = ptrtoint ptr %param_count.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 3, ptr %param_count.i, align 4
  %32 = ptrtoint ptr %param.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %param.i, align 4
  %33 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %i.0.i, ptr %arrayidx14.i, align 4
  %34 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 4, ptr %arrayidx16.i, align 4
  %call17.i = call i32 @irq_domain_alloc_irqs_parent(ptr noundef %d, i32 noundef %add10, i32 noundef 1, ptr noundef nonnull %fwspec.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %tobool18.not.i = icmp eq i32 %call17.i, 0
  %35 = load ptr, ptr @cb, align 4
  br i1 %tobool18.not.i, label %for.inc, label %if.then19.i

if.then19.i:                                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  %irq_map20.i = getelementptr inbounds %struct.crossbar_device, ptr %35, i32 0, i32 4
  %36 = ptrtoint ptr %irq_map20.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %irq_map20.i, align 4
  %arrayidx21.i = getelementptr i32, ptr %37, i32 %i.0.i
  %38 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 -1, ptr %arrayidx21.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then19.i, %for.end.thread.i, %is_of_node.exit.i.i.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %retval.0.i.ph = phi i32 [ -19, %for.end.thread.i ], [ %call17.i, %if.then19.i ], [ -22, %is_of_node.exit.i.i.cleanup_crit_edge ], [ -22, %for.body.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fwspec.i) #9
  br label %cleanup17

for.inc:                                          ; preds = %if.end9.i
  %write.i = getelementptr inbounds %struct.crossbar_device, ptr %35, i32 0, i32 7
  %39 = ptrtoint ptr %write.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %write.i, align 4
  call void %40(i32 noundef %i.0.i, i32 noundef %add11) #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fwspec.i) #9
  %call16 = call i32 @irq_domain_set_hwirq_and_chip(ptr noundef %d, i32 noundef %add10, i32 noundef %add11, ptr noundef nonnull @crossbar_chip, ptr noundef null) #9
  %inc = add nuw i32 %i.044, 1
  %exitcond.not = icmp eq i32 %inc, %nr_irqs
  br i1 %exitcond.not, label %for.inc.cleanup17_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.cleanup17_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup17

cleanup17:                                        ; preds = %for.inc.cleanup17_crit_edge, %cleanup, %for.cond.preheader.cleanup17_crit_edge, %if.end3.cleanup17_crit_edge, %if.end.cleanup17_crit_edge, %entry.cleanup17_crit_edge
  %retval.2 = phi i32 [ %retval.0.i.ph, %cleanup ], [ -22, %entry.cleanup17_crit_edge ], [ -22, %if.end.cleanup17_crit_edge ], [ -22, %if.end3.cleanup17_crit_edge ], [ 0, %for.cond.preheader.cleanup17_crit_edge ], [ 0, %for.inc.cleanup17_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @crossbar_domain_free(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @cb, align 4
  tail call void @_raw_spin_lock(ptr noundef %0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_irqs)
  %cmp7.not = icmp eq i32 %nr_irqs, 0
  br i1 %cmp7.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.08 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %add = add i32 %i.08, %virq
  %call = tail call ptr @irq_domain_get_irq_data(ptr noundef %domain, i32 noundef %add) #9
  tail call void @irq_domain_reset_irq_data(ptr noundef %call) #9
  %1 = load ptr, ptr @cb, align 4
  %irq_map = getelementptr inbounds %struct.crossbar_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %irq_map to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_map, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %call, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq, align 4
  %arrayidx = getelementptr i32, ptr %3, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %arrayidx, align 4
  %write = getelementptr inbounds %struct.crossbar_device, ptr %1, i32 0, i32 7
  %7 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %write, align 4
  %9 = load i32, ptr %hwirq, align 4
  %safe_map = getelementptr inbounds %struct.crossbar_device, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %safe_map to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %safe_map, align 4
  tail call void %8(i32 noundef %9, i32 noundef %11) #9
  %inc = add nuw i32 %i.08, 1
  %exitcond.not = icmp eq i32 %inc, %nr_irqs
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %12 = load ptr, ptr @cb, align 4
  tail call void @_raw_spin_unlock(ptr noundef %12) #9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @crossbar_domain_translate(ptr nocapture noundef readnone %d, ptr nocapture noundef readonly %fwspec, ptr nocapture noundef writeonly %hwirq, ptr nocapture noundef writeonly %type) #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fwspec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fwspec, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  %cmp.i.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %entry.return_crit_edge, label %is_of_node.exit

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

is_of_node.exit:                                  ; preds = %entry
  %ops.i = getelementptr inbounds %struct.fwnode_handle, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %cmp.i = icmp eq ptr %3, @of_fwnode_ops
  br i1 %cmp.i, label %if.then, label %is_of_node.exit.return_crit_edge

is_of_node.exit.return_crit_edge:                 ; preds = %is_of_node.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then:                                          ; preds = %is_of_node.exit
  %param_count = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec, i32 0, i32 1
  %4 = ptrtoint ptr %param_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %param_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp.not = icmp eq i32 %5, 3
  br i1 %cmp.not, label %if.end, label %if.then.return_crit_edge

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %if.then
  %param = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2
  %6 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %param, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp2.not = icmp eq i32 %7, 0
  br i1 %cmp2.not, label %if.end4, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx6 = getelementptr %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx6, align 4
  %10 = ptrtoint ptr %hwirq to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %hwirq, align 4
  %arrayidx8 = getelementptr %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2, i32 2
  %11 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx8, align 4
  %and = and i32 %12, 15
  %13 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %and, ptr %type, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.end.return_crit_edge, %if.then.return_crit_edge, %is_of_node.exit.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -22, %if.then.return_crit_edge ], [ -22, %if.end.return_crit_edge ], [ -22, %is_of_node.exit.return_crit_edge ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_set_hwirq_and_chip(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_alloc_irqs_parent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_mask_parent(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_unmask_parent(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_eoi_parent(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_affinity_parent(ptr noundef, ptr noundef, i1 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_retrigger_hierarchy(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_type_parent(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_get_irq_data(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_reset_irq_data(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { cold }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !20, !21, !22, !23, !25, !27, !28, !29, !31, !33, !34, !35, !37, !39, !40, !41, !43, !45, !46, !47, !49, !51, !52, !54, !56, !58}
!llvm.module.flags = !{!60, !61, !62, !63, !64, !65, !66, !67}
!llvm.ident = !{!68}

!0 = !{ptr @__of_table_ti_irqcrossbar, !1, !"__of_table_ti_irqcrossbar", i1 false, i1 false}
!1 = !{!"../drivers/irqchip/irq-crossbar.c", i32 366, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/irqchip/irq-crossbar.c", i32 340, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @irqcrossbar_init._entry, !3, !"_entry", i1 false, i1 false}
!7 = !{ptr @irqcrossbar_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/irqchip/irq-crossbar.c", i32 346, i32 3}
!10 = !{ptr @irqcrossbar_init._entry.3, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @irqcrossbar_init._entry_ptr.5, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/irqchip/irq-crossbar.c", i32 359, i32 3}
!14 = !{ptr @irqcrossbar_init._entry.6, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @irqcrossbar_init._entry_ptr.8, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/irqchip/irq-crossbar.c", i32 211, i32 29}
!18 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/irqchip/irq-crossbar.c", i32 214, i32 3}
!20 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @crossbar_of_init._entry, !19, !"_entry", i1 false, i1 false}
!22 = !{ptr @crossbar_of_init._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/irqchip/irq-crossbar.c", i32 219, i32 29}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/irqchip/irq-crossbar.c", i32 221, i32 3}
!27 = !{ptr @crossbar_of_init._entry.13, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @crossbar_of_init._entry_ptr.15, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/irqchip/irq-crossbar.c", i32 235, i32 32}
!31 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/irqchip/irq-crossbar.c", i32 244, i32 5}
!33 = !{ptr @crossbar_of_init._entry.17, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @crossbar_of_init._entry_ptr.19, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/irqchip/irq-crossbar.c", i32 253, i32 32}
!37 = !{ptr @.str.22, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/irqchip/irq-crossbar.c", i32 262, i32 5}
!39 = !{ptr @crossbar_of_init._entry.21, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @crossbar_of_init._entry_ptr.23, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.24, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/irqchip/irq-crossbar.c", i32 275, i32 29}
!43 = !{ptr @.str.26, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/irqchip/irq-crossbar.c", i32 288, i32 3}
!45 = !{ptr @crossbar_of_init._entry.25, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @crossbar_of_init._entry_ptr.27, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.28, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/irqchip/irq-crossbar.c", i32 306, i32 29}
!49 = !{ptr @crossbar_of_init.__key, !50, !"__key", i1 false, i1 false}
!50 = !{!"../drivers/irqchip/irq-crossbar.c", i32 316, i32 2}
!51 = !{ptr @.str.29, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @cb, !53, !"cb", i1 false, i1 false}
!53 = !{!"../drivers/irqchip/irq-crossbar.c", i32 43, i32 32}
!54 = !{ptr @crossbar_domain_ops, !55, !"crossbar_domain_ops", i1 false, i1 false}
!55 = !{!"../drivers/irqchip/irq-crossbar.c", i32 189, i32 36}
!56 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/irqchip/irq-crossbar.c", i32 61, i32 12}
!58 = !{ptr @crossbar_chip, !59, !"crossbar_chip", i1 false, i1 false}
!59 = !{!"../drivers/irqchip/irq-crossbar.c", i32 60, i32 24}
!60 = !{i32 1, !"wchar_size", i32 2}
!61 = !{i32 1, !"min_enum_size", i32 4}
!62 = !{i32 8, !"branch-target-enforcement", i32 0}
!63 = !{i32 8, !"sign-return-address", i32 0}
!64 = !{i32 8, !"sign-return-address-all", i32 0}
!65 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!66 = !{i32 7, !"uwtable", i32 1}
!67 = !{i32 7, !"frame-pointer", i32 2}
!68 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!69 = !{!"auto-init"}
!70 = !{!"branch_weights", i32 1, i32 2000}
!71 = !{i64 2153464431}
!72 = !{i64 691441}
!73 = !{i64 2153463972}
!74 = !{i64 691018}
!75 = !{i64 2153463513}
!76 = !{i64 691638}
