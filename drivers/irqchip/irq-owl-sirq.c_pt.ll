; ModuleID = '/llk/IR_all_yes/drivers/irqchip/irq-owl-sirq.c_pt.bc'
source_filename = "../drivers/irqchip/irq-owl-sirq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.owl_sirq_params = type { i8, [3 x i16] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_fwspec = type { ptr, i32, [16 x i32] }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.owl_sirq_chip_data = type { ptr, ptr, %struct.raw_spinlock, [3 x i32] }
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

@__of_table_owl_sirq_s500 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"actions,s500-sirq\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @owl_sirq_s500_of_init }, section "__irqchip_of_table", align 4
@__of_table_owl_sirq_s700 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"actions,s700-sirq\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @owl_sirq_s500_of_init }, section "__irqchip_of_table", align 4
@__of_table_owl_sirq_s900 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"actions,s900-sirq\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @owl_sirq_s900_of_init }, section "__irqchip_of_table", align 4
@owl_sirq_s500_params = internal constant { %struct.owl_sirq_params, [24 x i8] } { %struct.owl_sirq_params { i8 1, [3 x i16] zeroinitializer }, [24 x i8] zeroinitializer }, align 32
@owl_sirq_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 287, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%pOF: failed to find sirq parent domain\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"owl_sirq_init\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/irqchip/irq-owl-sirq.c\00", [33 x i8] zeroinitializer }, align 32
@owl_sirq_init._entry_ptr = internal global ptr @owl_sirq_init._entry, section ".printk_index", align 4
@owl_sirq_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&chip_data->lock\00", [47 x i8] zeroinitializer }, align 32
@owl_sirq_init._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 301, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%pOF: failed to map sirq registers\0A\00", [58 x i8] zeroinitializer }, align 32
@owl_sirq_init._entry_ptr.6 = internal global ptr @owl_sirq_init._entry.4, section ".printk_index", align 4
@owl_sirq_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 311, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013%pOF: failed to parse interrupt %d\0A\00", [58 x i8] zeroinitializer }, align 32
@owl_sirq_init._entry_ptr.9 = internal global ptr @owl_sirq_init._entry.7, section ".printk_index", align 4
@owl_sirq_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @owl_sirq_domain_alloc, ptr @irq_domain_free_irqs_common, ptr null, ptr null, ptr @owl_sirq_domain_translate, ptr null }, [52 x i8] zeroinitializer }, align 32
@owl_sirq_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 329, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%pOF: failed to add domain\0A\00", [34 x i8] zeroinitializer }, align 32
@owl_sirq_init._entry_ptr.12 = internal global ptr @owl_sirq_init._entry.10, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@owl_sirq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.13, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @owl_sirq_mask, ptr null, ptr @owl_sirq_unmask, ptr @owl_sirq_eoi, ptr @irq_chip_set_affinity_parent, ptr @irq_chip_retrigger_hierarchy, ptr @owl_sirq_set_type, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"owl-sirq\00", [23 x i8] zeroinitializer }, align 32
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@owl_sirq_s900_params = internal constant { %struct.owl_sirq_params, [24 x i8] } { %struct.owl_sirq_params { i8 0, [3 x i16] [i16 0, i16 808, i16 812] }, [24 x i8] zeroinitializer }, align 32
@switch.table.owl_sirq_domain_alloc = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1, i32 1, i32 1, i32 4, i32 1, i32 1, i32 1, i32 4], [32 x i8] zeroinitializer }, align 32
@switch.table.owl_sirq_set_type = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 1, i32 1, i32 4, i32 4, i32 4, i32 4, i32 4, i32 4], [32 x i8] zeroinitializer }, align 32
@switch.table.owl_sirq_set_type.14 = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 128, i32 192, i32 64, i32 0, i32 64, i32 64, i32 64, i32 64], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.16 = private unnamed_addr constant [21 x i8] c"owl_sirq_s500_params\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 57, i32 37 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 287, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 295, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 301, i32 3 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 311, i32 4 }
@___asan_gen_.49 = private unnamed_addr constant [20 x i8] c"owl_sirq_domain_ops\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 271, i32 36 }
@___asan_gen_.52 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 329, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [14 x i8] c"owl_sirq_chip\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 199, i32 24 }
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 200, i32 11 }
@___asan_gen_.64 = private unnamed_addr constant [21 x i8] c"owl_sirq_s900_params\00", align 1
@___asan_gen_.65 = private constant [34 x i8] c"../drivers/irqchip/irq-owl-sirq.c\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 63, i32 37 }
@___asan_gen_.67 = private unnamed_addr constant [35 x i8] c"switch.table.owl_sirq_domain_alloc\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [31 x i8] c"switch.table.owl_sirq_set_type\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [34 x i8] c"switch.table.owl_sirq_set_type.14\00", align 1
@llvm.compiler.used = appending global [27 x ptr] [ptr @__of_table_owl_sirq_s500, ptr @__of_table_owl_sirq_s700, ptr @__of_table_owl_sirq_s900, ptr @owl_sirq_init._entry, ptr @owl_sirq_init._entry.10, ptr @owl_sirq_init._entry.4, ptr @owl_sirq_init._entry.7, ptr @owl_sirq_init._entry_ptr, ptr @owl_sirq_init._entry_ptr.12, ptr @owl_sirq_init._entry_ptr.6, ptr @owl_sirq_init._entry_ptr.9, ptr @owl_sirq_s500_params, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @owl_sirq_init.__key, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @owl_sirq_domain_ops, ptr @.str.11, ptr @owl_sirq_chip, ptr @.str.13, ptr @owl_sirq_s900_params, ptr @switch.table.owl_sirq_domain_alloc, ptr @switch.table.owl_sirq_set_type, ptr @switch.table.owl_sirq_set_type.14], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_sirq_s500_params to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_sirq_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_sirq_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_sirq_init._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_sirq_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_sirq_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_sirq_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_sirq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_sirq_s900_params to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.owl_sirq_domain_alloc to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.owl_sirq_set_type to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.owl_sirq_set_type.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @owl_sirq_s500_of_init(ptr noundef %node, ptr noundef %parent) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @owl_sirq_init(ptr noundef nonnull @owl_sirq_s500_params, ptr noundef %node, ptr noundef %parent) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @owl_sirq_s900_of_init(ptr noundef %node, ptr noundef %parent) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @owl_sirq_init(ptr noundef nonnull @owl_sirq_s900_params, ptr noundef %node, ptr noundef %parent) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @owl_sirq_init(ptr noundef %params, ptr noundef %node, ptr noundef %parent) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %fwspec.i.i4.i = alloca %struct.irq_fwspec, align 4
  %fwspec.i.i.i = alloca %struct.irq_fwspec, align 4
  %irq = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i.i.i = icmp eq ptr %parent, null
  %fwnode.i.i.i = getelementptr inbounds %struct.device_node, ptr %parent, i32 0, i32 3
  %spec.select.i.i.i = select i1 %tobool.not.i.i.i, ptr null, ptr %fwnode.i.i.i
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %fwspec.i.i.i) #8
  %0 = getelementptr inbounds i8, ptr %fwspec.i.i.i, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 68)
  %2 = ptrtoint ptr %fwspec.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %spec.select.i.i.i, ptr %fwspec.i.i.i, align 4
  %call.i.i.i = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %fwspec.i.i.i, i32 noundef 1) #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fwspec.i.i.i) #8
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %irq_find_host.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

irq_find_host.exit:                               ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %fwspec.i.i4.i) #8
  %3 = getelementptr inbounds i8, ptr %fwspec.i.i4.i, i32 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 68)
  %5 = ptrtoint ptr %fwspec.i.i4.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %spec.select.i.i.i, ptr %fwspec.i.i4.i, align 4
  %call.i.i8.i = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %fwspec.i.i4.i, i32 noundef 0) #8
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fwspec.i.i4.i) #8
  %tobool.not = icmp eq ptr %call.i.i8.i, null
  br i1 %tobool.not, label %do.end, label %irq_find_host.exit.if.end_crit_edge

irq_find_host.exit.if.end_crit_edge:              ; preds = %irq_find_host.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %irq_find_host.exit
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %node) #12
  br label %cleanup69

if.end:                                           ; preds = %irq_find_host.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %d.0.i99 = phi ptr [ %call.i.i8.i, %irq_find_host.exit.if.end_crit_edge ], [ %call.i.i.i, %entry.if.end_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 64) #13
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup69_crit_edge, label %do.body6

if.end.cleanup69_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup69

do.body6:                                         ; preds = %if.end
  %lock = getelementptr inbounds %struct.owl_sirq_chip_data, ptr %call7.i.i, i32 0, i32 2
  call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @owl_sirq_init.__key, i16 noundef signext 2) #8
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %params, ptr %call7.i.i, align 8
  %call10 = call ptr @of_iomap(ptr noundef %node, i32 noundef 0) #8
  %base = getelementptr inbounds %struct.owl_sirq_chip_data, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call10, ptr %base, align 4
  %tobool12.not = icmp eq ptr %call10, null
  br i1 %tobool12.not, label %do.end16, label %for.cond.preheader

for.cond.preheader:                               ; preds = %do.body6
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %irq, i32 0, i32 1
  %arrayidx = getelementptr inbounds %struct.of_phandle_args, ptr %irq, i32 0, i32 2, i32 1
  br label %for.body

do.end16:                                         ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #10
  %call18 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, ptr noundef %node) #12
  br label %out_free

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.0105 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %irq) #8
  %9 = call ptr @memset(ptr %irq, i32 255, i32 72)
  %call20 = call i32 @of_irq_parse_one(ptr noundef %node, i32 noundef %i.0105, ptr noundef nonnull %irq) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end28, label %do.end25

do.end25:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %call27 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %node, i32 noundef %i.0105) #12
  br label %cleanup.thread

if.end28:                                         ; preds = %for.body
  %10 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %args_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp29.not = icmp eq i32 %11, 3
  br i1 %cmp29.not, label %for.inc, label %do.end41, !prof !46

do.end41:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 315, i32 noundef 9, ptr noundef null) #8
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %do.end41, %do.end25
  %ret.0.ph = phi i32 [ -22, %do.end41 ], [ %call20, %do.end25 ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %irq) #8
  br label %out_unmap

for.inc:                                          ; preds = %if.end28
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %arrayidx58 = getelementptr %struct.owl_sirq_chip_data, ptr %call7.i.i, i32 0, i32 3, i32 %i.0105
  %14 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %arrayidx58, align 4
  call fastcc void @owl_sirq_clear_set_extctl(ptr noundef nonnull %call7.i.i, i32 noundef 0, i32 noundef 16, i32 noundef %i.0105)
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %irq) #8
  %inc = add nuw nsw i32 %i.0105, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  %tobool.not.i.i = icmp eq ptr %node, null
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %node, i32 0, i32 3
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr null, ptr %fwnode.i.i
  %call1.i = call ptr @irq_domain_create_hierarchy(ptr noundef %d.0.i99, i32 noundef 0, i32 noundef 3, ptr noundef %spec.select.i.i, ptr noundef nonnull @owl_sirq_domain_ops, ptr noundef nonnull %call7.i.i) #8
  %tobool60.not = icmp eq ptr %call1.i, null
  br i1 %tobool60.not, label %do.end64, label %for.end.cleanup69_crit_edge

for.end.cleanup69_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup69

do.end64:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %call66 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef %node) #12
  br label %out_unmap

out_unmap:                                        ; preds = %do.end64, %cleanup.thread
  %ret.1 = phi i32 [ -12, %do.end64 ], [ %ret.0.ph, %cleanup.thread ]
  %15 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base, align 4
  call void @iounmap(ptr noundef %16) #8
  br label %out_free

out_free:                                         ; preds = %out_unmap, %do.end16
  %ret.2 = phi i32 [ %ret.1, %out_unmap ], [ -6, %do.end16 ]
  call void @kfree(ptr noundef nonnull %call7.i.i) #8
  br label %cleanup69

cleanup69:                                        ; preds = %out_free, %for.end.cleanup69_crit_edge, %if.end.cleanup69_crit_edge, %do.end
  %retval.0 = phi i32 [ %ret.2, %out_free ], [ -6, %do.end ], [ -12, %if.end.cleanup69_crit_edge ], [ 0, %for.end.cleanup69_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_parse_one(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @owl_sirq_clear_set_extctl(ptr noundef %d, i32 noundef %clear, i32 noundef %set, i32 noundef %index) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.owl_sirq_chip_data, ptr %d, i32 0, i32 2
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %base.i = getelementptr inbounds %struct.owl_sirq_chip_data, ptr %d, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %2 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %d, align 4
  %arrayidx.i = getelementptr %struct.owl_sirq_params, ptr %3, i32 0, i32 1, i32 %index
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %arrayidx.i, align 2
  %conv.i = zext i16 %5 to i32
  %add.ptr.i = getelementptr i8, ptr %1, i32 %conv.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !47
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #8
  %8 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %d, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 2, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %owl_sirq_read_extctl.exit.thread, label %if.then.i

owl_sirq_read_extctl.exit.thread:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %neg25 = xor i32 %clear, -1
  %and26 = and i32 %7, %neg25
  %or27 = or i32 %and26, %set
  br label %owl_sirq_write_extctl.exit

if.then.i:                                        ; preds = %entry
  %12 = zext i32 %index to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i32 %index, label %if.then.i.if.then.i22_crit_edge [
    i32 0, label %do.end8.i.i
    i32 1, label %do.end19.i.i
  ]

if.then.i.if.then.i22_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i22

do.end8.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %and.i.i = lshr i32 %7, 16
  br label %if.then.i22

do.end19.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %and21.i.i = lshr i32 %7, 8
  br label %if.then.i22

if.then.i22:                                      ; preds = %do.end19.i.i, %do.end8.i.i, %if.then.i.if.then.i22_crit_edge
  %retval.0.in.i.i = phi i32 [ %and21.i.i, %do.end19.i.i ], [ %and.i.i, %do.end8.i.i ], [ %7, %if.then.i.if.then.i22_crit_edge ]
  %neg = and i32 %clear, 255
  %retval.0.i.i = xor i32 %neg, 255
  %and = and i32 %retval.0.i.i, %retval.0.in.i.i
  %or = or i32 %and, %set
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i, align 4
  %arrayidx.i19 = getelementptr %struct.owl_sirq_params, ptr %9, i32 0, i32 1, i32 %index
  %15 = ptrtoint ptr %arrayidx.i19 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %arrayidx.i19, align 2
  %conv.i20 = zext i16 %16 to i32
  %add.ptr.i21 = getelementptr i8, ptr %14, i32 %conv.i20
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i21) #8, !srcloc !47
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #8
  %19 = zext i32 %index to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %index, label %do.end46.i.i [
    i32 0, label %do.end8.i.i23
    i32 1, label %do.end26.i.i
  ]

do.end8.i.i23:                                    ; preds = %if.then.i22
  call void @__sanitizer_cov_trace_pc() #10
  %and26.i = and i32 %18, -16711681
  %shl.i.i = shl i32 %or, 16
  %and9.i.i = and i32 %shl.i.i, 16711680
  br label %owl_field_prep.exit23.i

do.end26.i.i:                                     ; preds = %if.then.i22
  call void @__sanitizer_cov_trace_pc() #10
  %and32.i = and i32 %18, -65281
  %shl28.i.i = shl i32 %or, 8
  %and29.i.i = and i32 %shl28.i.i, 65280
  br label %owl_field_prep.exit23.i

do.end46.i.i:                                     ; preds = %if.then.i22
  call void @__sanitizer_cov_trace_pc() #10
  %and.i = and i32 %18, -256
  %and49.i.i = and i32 %or, 255
  br label %owl_field_prep.exit23.i

owl_field_prep.exit23.i:                          ; preds = %do.end46.i.i, %do.end26.i.i, %do.end8.i.i23
  %and27.i = phi i32 [ %and.i, %do.end46.i.i ], [ %and32.i, %do.end26.i.i ], [ %and26.i, %do.end8.i.i23 ]
  %retval.0.i22.i = phi i32 [ %and49.i.i, %do.end46.i.i ], [ %and29.i.i, %do.end26.i.i ], [ %and9.i.i, %do.end8.i.i23 ]
  %or.i = or i32 %retval.0.i22.i, %and27.i
  br label %owl_sirq_write_extctl.exit

owl_sirq_write_extctl.exit:                       ; preds = %owl_field_prep.exit23.i, %owl_sirq_read_extctl.exit.thread
  %extctl.addr.0.i = phi i32 [ %or.i, %owl_field_prep.exit23.i ], [ %or27, %owl_sirq_read_extctl.exit.thread ]
  %20 = tail call i32 @llvm.bswap.i32(i32 %extctl.addr.0.i) #8
  %21 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i, align 4
  %23 = ptrtoint ptr %d to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %d, align 4
  %arrayidx7.i = getelementptr %struct.owl_sirq_params, ptr %24, i32 0, i32 1, i32 %index
  %25 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %arrayidx7.i, align 2
  %conv8.i = zext i16 %26 to i32
  %add.ptr9.i = getelementptr i8, ptr %22, i32 %conv8.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %20) #8, !srcloc !49
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_find_matching_fwspec(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #3 section ".spinlock.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_create_hierarchy(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @owl_sirq_domain_alloc(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs, ptr nocapture noundef readonly %data) #4 align 64 {
entry:
  %parent_fwspec = alloca %struct.irq_fwspec, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %parent_fwspec) #8
  %2 = getelementptr inbounds i8, ptr %parent_fwspec, i32 20
  %3 = call ptr @memset(ptr %2, i32 255, i32 52)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nr_irqs)
  %cmp.not = icmp eq i32 %nr_irqs, 1
  br i1 %cmp.not, label %if.end21, label %do.end, !prof !46

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 238, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end21:                                         ; preds = %entry
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %tobool.not.i.i.i = icmp eq ptr %5, null
  %cmp.i.i.i = icmp ugt ptr %5, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i.i = or i1 %tobool.not.i.i.i, %cmp.i.i.i
  br i1 %spec.select.i.i.i, label %if.end21.cleanup_crit_edge, label %is_of_node.exit.i

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

is_of_node.exit.i:                                ; preds = %if.end21
  %ops.i.i = getelementptr inbounds %struct.fwnode_handle, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops.i.i, align 4
  %cmp.i.i = icmp eq ptr %7, @of_fwnode_ops
  br i1 %cmp.i.i, label %if.end.i, label %is_of_node.exit.i.cleanup_crit_edge

is_of_node.exit.i.cleanup_crit_edge:              ; preds = %is_of_node.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %is_of_node.exit.i
  %param_count.i = getelementptr inbounds %struct.irq_fwspec, ptr %data, i32 0, i32 1
  %8 = ptrtoint ptr %param_count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %param_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp.not.i = icmp eq i32 %9, 2
  br i1 %cmp.not.i, label %lor.lhs.false.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end.i
  %param.i = getelementptr inbounds %struct.irq_fwspec, ptr %data, i32 0, i32 2
  %10 = ptrtoint ptr %param.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %param.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp1.i = icmp ugt i32 %11, 2
  br i1 %cmp1.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end24

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end24:                                         ; preds = %lor.lhs.false.i
  %arrayidx7.i = getelementptr %struct.irq_fwspec, ptr %data, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx7.i, align 4
  %switch.tableidx = add i32 %13, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %14 = icmp ult i32 %switch.tableidx, 8
  br i1 %14, label %switch.hole_check, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.hole_check:                                ; preds = %if.end24
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -117, %switch.maskindex
  %15 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %switch.lobit.not = icmp eq i8 %15, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.owl_sirq_domain_alloc, i32 0, i32 %switch.tableidx
  %16 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %16)
  %switch.load = load i32, ptr %switch.gep, align 4
  %call27 = tail call i32 @irq_domain_set_hwirq_and_chip(ptr noundef %domain, i32 noundef %virq, i32 noundef %11, ptr noundef nonnull @owl_sirq_chip, ptr noundef %1) #8
  %parent = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 9
  %17 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parent, align 4
  %fwnode = getelementptr inbounds %struct.irq_domain, ptr %18, i32 0, i32 6
  %19 = ptrtoint ptr %fwnode to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %fwnode, align 4
  %21 = ptrtoint ptr %parent_fwspec to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %parent_fwspec, align 4
  %param_count = getelementptr inbounds %struct.irq_fwspec, ptr %parent_fwspec, i32 0, i32 1
  %22 = ptrtoint ptr %param_count to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 3, ptr %param_count, align 4
  %param = getelementptr inbounds %struct.irq_fwspec, ptr %parent_fwspec, i32 0, i32 2
  %23 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %param, align 4
  %arrayidx29 = getelementptr %struct.owl_sirq_chip_data, ptr %1, i32 0, i32 3, i32 %11
  %24 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx29, align 4
  %arrayidx31 = getelementptr inbounds %struct.irq_fwspec, ptr %parent_fwspec, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx31, align 4
  %arrayidx33 = getelementptr inbounds %struct.irq_fwspec, ptr %parent_fwspec, i32 0, i32 2, i32 2
  %27 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %switch.load, ptr %arrayidx33, align 4
  %call34 = call i32 @irq_domain_alloc_irqs_parent(ptr noundef %domain, i32 noundef %virq, i32 noundef 1, ptr noundef nonnull %parent_fwspec) #8
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %switch.hole_check.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %is_of_node.exit.i.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %call34, %switch.lookup ], [ -22, %if.end24.cleanup_crit_edge ], [ -22, %is_of_node.exit.i.cleanup_crit_edge ], [ -22, %lor.lhs.false.i.cleanup_crit_edge ], [ -22, %if.end.i.cleanup_crit_edge ], [ -22, %if.end21.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %parent_fwspec) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs_common(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @owl_sirq_domain_translate(ptr nocapture noundef readnone %d, ptr nocapture noundef readonly %fwspec, ptr nocapture noundef writeonly %hwirq, ptr nocapture noundef writeonly %type) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fwspec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fwspec, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  %cmp.i.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %entry.return_crit_edge, label %is_of_node.exit

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

is_of_node.exit:                                  ; preds = %entry
  %ops.i = getelementptr inbounds %struct.fwnode_handle, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %cmp.i = icmp eq ptr %3, @of_fwnode_ops
  br i1 %cmp.i, label %if.end, label %is_of_node.exit.return_crit_edge

is_of_node.exit.return_crit_edge:                 ; preds = %is_of_node.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %is_of_node.exit
  %param_count = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec, i32 0, i32 1
  %4 = ptrtoint ptr %param_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %param_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %5)
  %cmp.not = icmp eq i32 %5, 2
  br i1 %cmp.not, label %lor.lhs.false, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false:                                    ; preds = %if.end
  %param = getelementptr inbounds %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2
  %6 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %param, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp1 = icmp ugt i32 %7, 2
  br i1 %cmp1, label %lor.lhs.false.return_crit_edge, label %if.end3

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end3:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %hwirq to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %hwirq, align 4
  %arrayidx7 = getelementptr %struct.irq_fwspec, ptr %fwspec, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx7, align 4
  %11 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %type, align 4
  br label %return

return:                                           ; preds = %if.end3, %lor.lhs.false.return_crit_edge, %if.end.return_crit_edge, %is_of_node.exit.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end3 ], [ -22, %is_of_node.exit.return_crit_edge ], [ -22, %lor.lhs.false.return_crit_edge ], [ -22, %if.end.return_crit_edge ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_set_hwirq_and_chip(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_alloc_irqs_parent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @owl_sirq_mask(ptr noundef %data) #4 align 64 {
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
  tail call fastcc void @owl_sirq_clear_set_extctl(ptr noundef %1, i32 noundef 32, i32 noundef 0, i32 noundef %3)
  tail call void @irq_chip_mask_parent(ptr noundef %data) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @owl_sirq_unmask(ptr noundef %data) #4 align 64 {
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
  tail call fastcc void @owl_sirq_clear_set_extctl(ptr noundef %1, i32 noundef 0, i32 noundef 32, i32 noundef %3)
  tail call void @irq_chip_unmask_parent(ptr noundef %data) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @owl_sirq_eoi(ptr noundef %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %common.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %common.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and.i = and i32 %3, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %4 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chip_data.i, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %6 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hwirq, align 4
  tail call fastcc void @owl_sirq_clear_set_extctl(ptr noundef %5, i32 noundef 0, i32 noundef 1, i32 noundef %7)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @irq_chip_eoi_parent(ptr noundef %data) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_affinity_parent(ptr noundef, ptr noundef, i1 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_retrigger_hierarchy(ptr noundef) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @owl_sirq_set_type(ptr noundef %data, i32 noundef %type) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %switch.tableidx = add i32 %type, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %switch.tableidx)
  %2 = icmp ult i32 %switch.tableidx, 8
  br i1 %2, label %switch.hole_check, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.hole_check:                                ; preds = %entry
  %switch.maskindex = trunc i32 %switch.tableidx to i8
  %switch.shifted = lshr i8 -117, %switch.maskindex
  %3 = and i8 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %switch.lobit.not = icmp eq i8 %3, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #10
  %switch.gep = getelementptr inbounds [8 x i32], ptr @switch.table.owl_sirq_set_type, i32 0, i32 %switch.tableidx
  %4 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %4)
  %switch.load = load i32, ptr %switch.gep, align 4
  %switch.gep9 = getelementptr inbounds [8 x i32], ptr @switch.table.owl_sirq_set_type.14, i32 0, i32 %switch.tableidx
  %5 = ptrtoint ptr %switch.gep9 to i32
  call void @__asan_load4_noabort(i32 %5)
  %switch.load10 = load i32, ptr %switch.gep9, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %6 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hwirq, align 4
  tail call fastcc void @owl_sirq_clear_set_extctl(ptr noundef %1, i32 noundef 192, i32 noundef %switch.load10, i32 noundef %7)
  %call4 = tail call i32 @irq_chip_set_type_parent(ptr noundef %data, i32 noundef %switch.load) #8
  br label %cleanup

cleanup:                                          ; preds = %switch.lookup, %switch.hole_check.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call4, %switch.lookup ], [ -22, %entry.cleanup_crit_edge ], [ -22, %switch.hole_check.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_mask_parent(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_unmask_parent(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_eoi_parent(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_type_parent(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !14, !15, !17, !18, !19, !21, !22, !23, !25, !26, !27, !29, !31, !33, !35}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @__of_table_owl_sirq_s500, !1, !"__of_table_owl_sirq_s500", i1 false, i1 false}
!1 = !{!"../drivers/irqchip/irq-owl-sirq.c", i32 350, i32 1}
!2 = !{ptr @__of_table_owl_sirq_s700, !3, !"__of_table_owl_sirq_s700", i1 false, i1 false}
!3 = !{!"../drivers/irqchip/irq-owl-sirq.c", i32 351, i32 1}
!4 = !{ptr @__of_table_owl_sirq_s900, !5, !"__of_table_owl_sirq_s900", i1 false, i1 false}
!5 = !{!"../drivers/irqchip/irq-owl-sirq.c", i32 359, i32 1}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/irqchip/irq-owl-sirq.c", i32 287, i32 3}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @owl_sirq_init._entry, !7, !"_entry", i1 false, i1 false}
!11 = !{ptr @owl_sirq_init._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @owl_sirq_init.__key, !13, !"__key", i1 false, i1 false}
!13 = !{!"../drivers/irqchip/irq-owl-sirq.c", i32 295, i32 2}
!14 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/irqchip/irq-owl-sirq.c", i32 301, i32 3}
!17 = !{ptr @owl_sirq_init._entry.4, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @owl_sirq_init._entry_ptr.6, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/irqchip/irq-owl-sirq.c", i32 311, i32 4}
!21 = !{ptr @owl_sirq_init._entry.7, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @owl_sirq_init._entry_ptr.9, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/irqchip/irq-owl-sirq.c", i32 329, i32 3}
!25 = !{ptr @owl_sirq_init._entry.10, !24, !"_entry", i1 false, i1 false}
!26 = !{ptr @owl_sirq_init._entry_ptr.12, !24, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @owl_sirq_domain_ops, !28, !"owl_sirq_domain_ops", i1 false, i1 false}
!28 = !{!"../drivers/irqchip/irq-owl-sirq.c", i32 271, i32 36}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/irqchip/irq-owl-sirq.c", i32 200, i32 11}
!31 = !{ptr @owl_sirq_chip, !32, !"owl_sirq_chip", i1 false, i1 false}
!32 = !{!"../drivers/irqchip/irq-owl-sirq.c", i32 199, i32 24}
!33 = !{ptr @owl_sirq_s500_params, !34, !"owl_sirq_s500_params", i1 false, i1 false}
!34 = !{!"../drivers/irqchip/irq-owl-sirq.c", i32 57, i32 37}
!35 = !{ptr @owl_sirq_s900_params, !36, !"owl_sirq_s900_params", i1 false, i1 false}
!36 = !{!"../drivers/irqchip/irq-owl-sirq.c", i32 63, i32 37}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!46 = !{!"branch_weights", i32 2000, i32 1}
!47 = !{i64 4236894}
!48 = !{i8 0, i8 2}
!49 = !{i64 4236476}
