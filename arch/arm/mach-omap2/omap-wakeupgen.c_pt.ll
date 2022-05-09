; ModuleID = '/llk/IR_all_yes/arch/arm/mach-omap2/omap-wakeupgen.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/omap-wakeupgen.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.omap_wakeupgen_ops = type { ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.fwnode_operations = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.irq_fwspec = type { ptr, i32, [16 x i32] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }

@wakeupgen_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@omap_secure_apis = internal global { i1, [31 x i8] } zeroinitializer, align 32
@__of_table_ti_wakeupgen = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4-wugen-mpu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @wakeupgen_init }, section "__irqchip_of_table", align 4
@__pcpu_unique_irqmasks = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@irqmasks = weak dso_local global [7 x i32] zeroinitializer, section ".data..percpu", align 4
@wakeupgen_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 554, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%pOF: no parent, giving up\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wakeupgen_init\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"arch/arm/mach-omap2/omap-wakeupgen.c\00", [59 x i8] zeroinitializer }, align 32
@wakeupgen_init._entry_ptr = internal global ptr @wakeupgen_init._entry, section ".printk_index", align 4
@wakeupgen_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 560, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013%pOF: unable to obtain parent domain\0A\00", [56 x i8] zeroinitializer }, align 32
@wakeupgen_init._entry_ptr.5 = internal global ptr @wakeupgen_init._entry.3, section ".printk_index", align 4
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"WakeupGen: Not supported on OMAP4430 ES1.0\0A\00", [52 x i8] zeroinitializer }, align 32
@irq_banks = internal global { i32, [28 x i8] } { i32 5, [28 x i8] zeroinitializer }, align 32
@max_irqs = internal global { i32, [28 x i8] } { i32 160, [28 x i8] zeroinitializer }, align 32
@omap4_wakeupgen_ops = internal global { %struct.omap_wakeupgen_ops, [24 x i8] } { %struct.omap_wakeupgen_ops { ptr @omap4_irq_save_context, ptr @irq_sar_clear }, [24 x i8] zeroinitializer }, align 32
@wakeupgen_ops = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@omap5_wakeupgen_ops = internal global { %struct.omap_wakeupgen_ops, [24 x i8] } { %struct.omap_wakeupgen_ops { ptr @omap5_irq_save_context, ptr @irq_sar_clear }, [24 x i8] zeroinitializer }, align 32
@am43xx_wakeupgen_ops = internal global { %struct.omap_wakeupgen_ops, [24 x i8] } { %struct.omap_wakeupgen_ops { ptr @am43xx_irq_save_context, ptr @am43xx_irq_restore_context }, [24 x i8] zeroinitializer }, align 32
@wakeupgen_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wakeupgen_domain_alloc, ptr @irq_domain_free_irqs_common, ptr null, ptr null, ptr @wakeupgen_domain_translate, ptr null }, [52 x i8] zeroinitializer }, align 32
@irq_target_cpu = internal global { [224 x i32], [224 x i8] } zeroinitializer, align 32
@sar_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@wakeupgen_context = internal global { [7 x i32], [36 x i8] } zeroinitializer, align 32
@wakeupgen_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.7, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @wakeupgen_mask, ptr null, ptr @wakeupgen_unmask, ptr @irq_chip_eoi_parent, ptr @irq_chip_set_affinity_parent, ptr @irq_chip_retrigger_hierarchy, ptr @wakeupgen_irq_set_type, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 20 }, [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"WUGEN\00", [26 x i8] zeroinitializer }, align 32
@wakeupgen_lock = internal global { %struct.raw_spinlock, [52 x i8] } { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, [52 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"wakeupgen_lock\00", [17 x i8] zeroinitializer }, align 32
@wakeupgen_irq_set_type._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 182, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014wakeupgen: irq%li polarity inverted in dts\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"wakeupgen_irq_set_type\00", [41 x i8] zeroinitializer }, align 32
@wakeupgen_irq_set_type._entry_ptr = internal global ptr @wakeupgen_irq_set_type._entry, section ".printk_index", align 4
@of_fwnode_ops = external dso_local constant %struct.fwnode_operations, align 4
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"arm/omap-wake:online\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"arm/omap-wake:dead\00", [45 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@pm44xx_errata = external dso_local local_unnamed_addr global i16, align 2
@irq_notifier_block = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @irq_notifier, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@irq_save_secure_context._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 381, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\013GIC and Wakeupgen context save failed\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"irq_save_secure_context\00", [40 x i8] zeroinitializer }, align 32
@irq_save_secure_context._entry_ptr = internal global ptr @irq_save_secure_context._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 8]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 119]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@___asan_gen_.17 = private unnamed_addr constant [15 x i8] c"wakeupgen_base\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 53, i32 22 }
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"omap_secure_apis\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 554, i32 3 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 560, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 565, i32 3 }
@___asan_gen_.42 = private unnamed_addr constant [10 x i8] c"irq_banks\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 57, i32 21 }
@___asan_gen_.45 = private unnamed_addr constant [9 x i8] c"max_irqs\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 58, i32 21 }
@___asan_gen_.48 = private unnamed_addr constant [20 x i8] c"omap4_wakeupgen_ops\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 385, i32 34 }
@___asan_gen_.51 = private unnamed_addr constant [14 x i8] c"wakeupgen_ops\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 70, i32 35 }
@___asan_gen_.54 = private unnamed_addr constant [20 x i8] c"omap5_wakeupgen_ops\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 390, i32 34 }
@___asan_gen_.57 = private unnamed_addr constant [21 x i8] c"am43xx_wakeupgen_ops\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 395, i32 34 }
@___asan_gen_.60 = private unnamed_addr constant [21 x i8] c"wakeupgen_domain_ops\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 536, i32 36 }
@___asan_gen_.63 = private unnamed_addr constant [15 x i8] c"irq_target_cpu\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 56, i32 21 }
@___asan_gen_.66 = private unnamed_addr constant [9 x i8] c"sar_base\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 54, i32 22 }
@___asan_gen_.69 = private unnamed_addr constant [18 x i8] c"wakeupgen_context\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 62, i32 21 }
@___asan_gen_.72 = private unnamed_addr constant [15 x i8] c"wakeupgen_chip\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 474, i32 24 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 475, i32 12 }
@___asan_gen_.78 = private unnamed_addr constant [15 x i8] c"wakeupgen_lock\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 55, i32 8 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 181, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 420, i32 49 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 423, i32 7 }
@___asan_gen_.99 = private unnamed_addr constant [19 x i8] c"irq_notifier_block\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 449, i32 30 }
@___asan_gen_.102 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.108 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.109 = private constant [40 x i8] c"../arch/arm/mach-omap2/omap-wakeupgen.c\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 381, i32 3 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @__of_table_ti_wakeupgen, ptr @irq_save_secure_context._entry, ptr @irq_save_secure_context._entry_ptr, ptr @wakeupgen_init._entry, ptr @wakeupgen_init._entry.3, ptr @wakeupgen_init._entry_ptr, ptr @wakeupgen_init._entry_ptr.5, ptr @wakeupgen_irq_set_type._entry, ptr @wakeupgen_irq_set_type._entry_ptr, ptr @wakeupgen_base, ptr @omap_secure_apis, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @irq_banks, ptr @max_irqs, ptr @omap4_wakeupgen_ops, ptr @wakeupgen_ops, ptr @omap5_wakeupgen_ops, ptr @am43xx_wakeupgen_ops, ptr @wakeupgen_domain_ops, ptr @irq_target_cpu, ptr @sar_base, ptr @wakeupgen_context, ptr @wakeupgen_chip, ptr @.str.7, ptr @wakeupgen_lock, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @irq_notifier_block, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [32 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wakeupgen_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_secure_apis to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wakeupgen_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wakeupgen_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_banks to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_irqs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_wakeupgen_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wakeupgen_ops to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap5_wakeupgen_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am43xx_wakeupgen_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wakeupgen_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_target_cpu to i32), i32 896, i32 1120, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sar_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wakeupgen_context to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wakeupgen_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wakeupgen_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wakeupgen_irq_set_type._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_notifier_block to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irq_save_secure_context._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @omap_get_wakeupgen_base() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @wakeupgen_base, align 4
  ret ptr %0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @omap_secure_apis_support() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %.b = load i1, ptr @omap_secure_apis, align 4
  %0 = zext i1 %.b to i32
  ret i32 %0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @wakeupgen_init(ptr noundef %node, ptr noundef %parent) #1 section ".init.text" align 64 {
entry:
  %fwspec.i.i4.i = alloca %struct.irq_fwspec, align 4
  %fwspec.i.i.i = alloca %struct.irq_fwspec, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !64) #10
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %tobool.not = icmp eq ptr %parent, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %node) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %fwnode.i.i.i = getelementptr inbounds %struct.device_node, ptr %parent, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %fwspec.i.i.i) #10
  %4 = getelementptr inbounds i8, ptr %fwspec.i.i.i, i32 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 68)
  %6 = ptrtoint ptr %fwspec.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %fwnode.i.i.i, ptr %fwspec.i.i.i, align 4
  %call.i.i.i = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %fwspec.i.i.i, i32 noundef 1) #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fwspec.i.i.i) #10
  %tobool.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i, label %irq_find_host.exit, label %if.end.if.end10_crit_edge

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

irq_find_host.exit:                               ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %fwspec.i.i4.i) #10
  %7 = getelementptr inbounds i8, ptr %fwspec.i.i4.i, i32 4
  %8 = call ptr @memset(ptr %7, i32 0, i32 68)
  %9 = ptrtoint ptr %fwspec.i.i4.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %fwnode.i.i.i, ptr %fwspec.i.i4.i, align 4
  %call.i.i8.i = call ptr @irq_find_matching_fwspec(ptr noundef nonnull %fwspec.i.i4.i, i32 noundef 0) #10
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %fwspec.i.i4.i) #10
  %tobool3.not = icmp eq ptr %call.i.i8.i, null
  br i1 %tobool3.not, label %do.end7, label %irq_find_host.exit.if.end10_crit_edge

irq_find_host.exit.if.end10_crit_edge:            ; preds = %irq_find_host.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

do.end7:                                          ; preds = %irq_find_host.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %node) #13
  br label %cleanup

if.end10:                                         ; preds = %irq_find_host.exit.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %d.0.i157 = phi ptr [ %call.i.i8.i, %irq_find_host.exit.if.end10_crit_edge ], [ %call.i.i.i, %if.end.if.end10_crit_edge ]
  %call11 = call i32 @omap_rev() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1144000580, i32 %call11)
  %cmp = icmp eq i32 %call11, 1144000580
  br i1 %cmp, label %do.end20, label %if.end34

do.end20:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 565, i32 noundef 9, ptr noundef nonnull @.str.6) #10
  br label %cleanup

if.end34:                                         ; preds = %if.end10
  %call35 = call ptr @of_iomap(ptr noundef %node, i32 noundef 0) #10
  store ptr %call35, ptr @wakeupgen_base, align 4
  %tobool37.not = icmp eq ptr %call35, null
  br i1 %tobool37.not, label %do.end55, label %if.end71, !prof !74

do.end55:                                         ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 571, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

if.end71:                                         ; preds = %if.end34
  %call.i = call i32 @omap_rev() #10
  %and.i128 = and i32 %call.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %and.i128)
  %cmp.i.not = icmp eq i32 %and.i128, 68
  br i1 %cmp.i.not, label %if.then74, label %if.else

if.then74:                                        ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #12
  store i32 4, ptr @irq_banks, align 4
  store i32 128, ptr @max_irqs, align 4
  store i1 true, ptr @omap_secure_apis, align 4
  br label %if.end84.sink.split

if.else:                                          ; preds = %if.end71
  %call.i129 = call i32 @omap_rev() #10
  %and.i130 = and i32 %call.i129, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 84, i32 %and.i130)
  %cmp.i131.not = icmp eq i32 %and.i130, 84
  br i1 %cmp.i131.not, label %if.else.if.end84.sink.split_crit_edge, label %if.else78

if.else.if.end84.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84.sink.split

if.else78:                                        ; preds = %if.else
  %call.i133 = call i32 @omap_rev() #10
  %shr.mask.i = and i32 %call.i133, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 1124073472, i32 %shr.mask.i)
  %cmp.i134.not = icmp eq i32 %shr.mask.i, 1124073472
  br i1 %cmp.i134.not, label %if.then81, label %if.else78.if.end84_crit_edge

if.else78.if.end84_crit_edge:                     ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end84

if.then81:                                        ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #12
  store i32 7, ptr @irq_banks, align 4
  store i32 224, ptr @max_irqs, align 4
  br label %if.end84.sink.split

if.end84.sink.split:                              ; preds = %if.then81, %if.else.if.end84.sink.split_crit_edge, %if.then74
  %omap5_wakeupgen_ops.sink = phi ptr [ @am43xx_wakeupgen_ops, %if.then81 ], [ @omap4_wakeupgen_ops, %if.then74 ], [ @omap5_wakeupgen_ops, %if.else.if.end84.sink.split_crit_edge ]
  store ptr %omap5_wakeupgen_ops.sink, ptr @wakeupgen_ops, align 4
  br label %if.end84

if.end84:                                         ; preds = %if.end84.sink.split, %if.else78.if.end84_crit_edge
  %10 = load i32, ptr @max_irqs, align 4
  %tobool.not.i.i = icmp eq ptr %node, null
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %node, i32 0, i32 3
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr null, ptr %fwnode.i.i
  %call1.i = call ptr @irq_domain_create_hierarchy(ptr noundef nonnull %d.0.i157, i32 noundef 0, i32 noundef %10, ptr noundef %spec.select.i.i, ptr noundef nonnull @wakeupgen_domain_ops, ptr noundef null) #10
  %tobool86.not = icmp eq ptr %call1.i, null
  br i1 %tobool86.not, label %if.then87, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end84
  %11 = load i32, ptr @irq_banks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp89158.not = icmp eq i32 %11, 0
  br i1 %cmp89158.not, label %for.cond.preheader.for.cond95.preheader_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.cond95.preheader_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond95.preheader

if.then87:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #12
  %12 = load ptr, ptr @wakeupgen_base, align 4
  call void @iounmap(ptr noundef %12) #10
  br label %cleanup

for.cond95.preheader:                             ; preds = %for.inc.for.cond95.preheader_crit_edge, %for.cond.preheader.for.cond95.preheader_crit_edge
  %13 = load i32, ptr @max_irqs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp96160.not = icmp eq i32 %13, 0
  br i1 %cmp96160.not, label %for.cond95.preheader.for.end101_crit_edge, label %for.cond95.preheader.for.body98_crit_edge

for.cond95.preheader.for.body98_crit_edge:        ; preds = %for.cond95.preheader
  br label %for.body98

for.cond95.preheader.for.end101_crit_edge:        ; preds = %for.cond95.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end101

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0159 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %14 = load ptr, ptr @wakeupgen_base, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 16
  %conv.i = shl i32 %i.0159, 2
  %mul2.i = and i32 %conv.i, 1020
  %add.ptr3.i = getelementptr i8, ptr %add.ptr.i, i32 %mul2.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 0) #10, !srcloc !75
  %call.i136 = call i32 @omap_rev() #10
  %shr.mask.i137 = and i32 %call.i136, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 1124073472, i32 %shr.mask.i137)
  %cmp.i138.not = icmp eq i32 %shr.mask.i137, 1124073472
  br i1 %cmp.i138.not, label %for.body.for.inc_crit_edge, label %if.then92

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then92:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %15 = load ptr, ptr @wakeupgen_base, align 4
  %add.ptr1.i = getelementptr i8, ptr %15, i32 1040
  %add.ptr3.i143 = getelementptr i8, ptr %add.ptr1.i, i32 %mul2.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i143, i32 0) #10, !srcloc !75
  br label %for.inc

for.inc:                                          ; preds = %if.then92, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0159, 1
  %16 = load i32, ptr @irq_banks, align 4
  %cmp89 = icmp ult i32 %inc, %16
  br i1 %cmp89, label %for.inc.for.body_crit_edge, label %for.inc.for.cond95.preheader_crit_edge

for.inc.for.cond95.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond95.preheader

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body98:                                       ; preds = %for.body98.for.body98_crit_edge, %for.cond95.preheader.for.body98_crit_edge
  %i.1161 = phi i32 [ %inc100, %for.body98.for.body98_crit_edge ], [ 0, %for.cond95.preheader.for.body98_crit_edge ]
  %arrayidx = getelementptr [224 x i32], ptr @irq_target_cpu, i32 0, i32 %i.1161
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %3, ptr %arrayidx, align 4
  %inc100 = add nuw i32 %i.1161, 1
  %exitcond.not = icmp eq i32 %inc100, %13
  br i1 %exitcond.not, label %for.body98.for.end101_crit_edge, label %for.body98.for.body98_crit_edge

for.body98.for.body98_crit_edge:                  ; preds = %for.body98
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body98

for.body98.for.end101_crit_edge:                  ; preds = %for.body98
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end101

for.end101:                                       ; preds = %for.body98.for.end101_crit_edge, %for.cond95.preheader.for.end101_crit_edge
  %call.i144 = call i32 @omap_rev() #10
  %and.i145 = and i32 %call.i144, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 84, i32 %and.i145)
  %cmp.i146.not = icmp eq i32 %and.i145, 84
  br i1 %cmp.i146.not, label %for.end101.if.then106_crit_edge, label %lor.lhs.false

for.end101.if.then106_crit_edge:                  ; preds = %for.end101
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then106

lor.lhs.false:                                    ; preds = %for.end101
  %call.i148 = call i32 @omap_rev() #10
  %shr.mask.i149 = and i32 %call.i148, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 117440512, i32 %shr.mask.i149)
  %cmp.i150.not = icmp eq i32 %shr.mask.i149, 117440512
  br i1 %cmp.i150.not, label %lor.lhs.false.if.then106_crit_edge, label %lor.lhs.false.if.end108_crit_edge

lor.lhs.false.if.end108_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end108

lor.lhs.false.if.then106_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then106

if.then106:                                       ; preds = %lor.lhs.false.if.then106_crit_edge, %for.end101.if.then106_crit_edge
  %18 = load ptr, ptr @wakeupgen_base, align 4
  %add.ptr = getelementptr i8, ptr %18, i32 2060
  %19 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !76
  %or = or i32 %19, 32
  call void @omap_smc1(i32 noundef 264, i32 noundef %or) #10
  br label %if.end108

if.end108:                                        ; preds = %if.then106, %lor.lhs.false.if.end108_crit_edge
  call fastcc void @irq_hotplug_init() #14
  call void @__asan_load2_noabort(i32 ptrtoint (ptr @pm44xx_errata to i32))
  %20 = load i16, ptr @pm44xx_errata, align 2
  %21 = and i16 %20, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool.not.i152 = icmp eq i16 %21, 0
  br i1 %tobool.not.i152, label %if.then.i154, label %if.end108.irq_pm_init.exit_crit_edge

if.end108.irq_pm_init.exit_crit_edge:             ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #12
  br label %irq_pm_init.exit

if.then.i154:                                     ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #12
  %call.i153 = call i32 @cpu_pm_register_notifier(ptr noundef nonnull @irq_notifier_block) #10
  br label %irq_pm_init.exit

irq_pm_init.exit:                                 ; preds = %if.then.i154, %if.end108.irq_pm_init.exit_crit_edge
  %call109 = call ptr @omap4_get_sar_ram_base() #10
  store ptr %call109, ptr @sar_base, align 4
  br label %cleanup

cleanup:                                          ; preds = %irq_pm_init.exit, %if.then87, %do.end55, %do.end20, %do.end7, %do.end
  %retval.0 = phi i32 [ -1, %do.end20 ], [ -12, %do.end55 ], [ 0, %irq_pm_init.exit ], [ -12, %if.then87 ], [ -6, %do.end7 ], [ -19, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_rev() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_smc1(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @irq_hotplug_init() unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @__cpuhp_setup_state(i32 noundef 194, ptr noundef nonnull @.str.11, i1 noundef zeroext false, ptr noundef nonnull @omap_wakeupgen_cpu_online, ptr noundef null, i1 noundef zeroext false) #10
  %call.i2 = tail call i32 @__cpuhp_setup_state(i32 noundef 20, ptr noundef nonnull @.str.12, i1 noundef zeroext false, ptr noundef null, ptr noundef nonnull @omap_wakeupgen_cpu_dead, i1 noundef zeroext false) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @omap4_get_sar_ram_base() local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_find_matching_fwspec(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap4_irq_save_context() #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @omap_rev() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1144000580, i32 %call)
  %cmp = icmp eq i32 %call, 1144000580
  br i1 %cmp, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %0 = load i32, ptr @irq_banks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp165.not = icmp eq i32 %0, 0
  br i1 %cmp165.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.066 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %1 = load ptr, ptr @wakeupgen_base, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 16
  %conv.i = shl i32 %i.066, 2
  %mul2.i = and i32 %conv.i, 1020
  %add.ptr3.i = getelementptr i8, ptr %add.ptr.i, i32 %mul2.i
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #10, !srcloc !76
  %3 = load ptr, ptr @sar_base, align 4
  %add.ptr.i46 = getelementptr i8, ptr %3, i32 9860
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i46, i32 %mul2.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %2) #10, !srcloc !75
  %4 = load ptr, ptr @wakeupgen_base, align 4
  %add.ptr1.i49 = getelementptr i8, ptr %4, i32 1040
  %add.ptr3.i52 = getelementptr i8, ptr %add.ptr1.i49, i32 %mul2.i
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i52) #10, !srcloc !76
  %6 = load ptr, ptr @sar_base, align 4
  %add.ptr.i53 = getelementptr i8, ptr %6, i32 9892
  %add.ptr1.i56 = getelementptr i8, ptr %add.ptr.i53, i32 %mul2.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i56, i32 %5) #10, !srcloc !75
  %7 = load ptr, ptr @sar_base, align 4
  %add.ptr.i57 = getelementptr i8, ptr %7, i32 9876
  %add.ptr1.i60 = getelementptr i8, ptr %add.ptr.i57, i32 %mul2.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i60, i32 0) #10, !srcloc !75
  %8 = load ptr, ptr @sar_base, align 4
  %add.ptr.i61 = getelementptr i8, ptr %8, i32 9908
  %add.ptr1.i64 = getelementptr i8, ptr %add.ptr.i61, i32 %mul2.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i64, i32 0) #10, !srcloc !75
  %inc = add nuw i32 %i.066, 1
  %9 = load i32, ptr @irq_banks, align 4
  %cmp1 = icmp ult i32 %inc, %9
  br i1 %cmp1, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %10 = load ptr, ptr @wakeupgen_base, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 2048
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !76
  %12 = load ptr, ptr @sar_base, align 4
  %add.ptr10 = getelementptr i8, ptr %12, i32 9924
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %11) #10, !srcloc !75
  %13 = load ptr, ptr @wakeupgen_base, align 4
  %add.ptr12 = getelementptr i8, ptr %13, i32 2052
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #10, !srcloc !76
  %15 = load ptr, ptr @sar_base, align 4
  %add.ptr15 = getelementptr i8, ptr %15, i32 9928
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %14) #10, !srcloc !75
  %16 = load ptr, ptr @wakeupgen_base, align 4
  %add.ptr17 = getelementptr i8, ptr %16, i32 3072
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17) #10, !srcloc !76
  %18 = load ptr, ptr @sar_base, align 4
  %add.ptr20 = getelementptr i8, ptr %18, i32 9932
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 %17) #10, !srcloc !75
  %19 = load ptr, ptr @wakeupgen_base, align 4
  %add.ptr22 = getelementptr i8, ptr %19, i32 3076
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22) #10, !srcloc !76
  %21 = load ptr, ptr @sar_base, align 4
  %add.ptr25 = getelementptr i8, ptr %21, i32 9936
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %20) #10, !srcloc !75
  %22 = load ptr, ptr @sar_base, align 4
  %add.ptr27 = getelementptr i8, ptr %22, i32 9472
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr27) #10, !srcloc !76
  %24 = or i32 %23, 268435456
  %25 = load ptr, ptr @sar_base, align 4
  %add.ptr30 = getelementptr i8, ptr %25, i32 9472
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %24) #10, !srcloc !75
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @irq_sar_clear() #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @omap_rev() #10
  %shr.mask.i = and i32 %call.i, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 117440512, i32 %shr.mask.i)
  %cmp.i.not = icmp eq i32 %shr.mask.i, 117440512
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call.i10 = tail call i32 @omap_rev() #10
  %and.i = and i32 %call.i10, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 84, i32 %and.i)
  %cmp.i11.not = icmp eq i32 %and.i, 84
  %spec.select = select i1 %cmp.i11.not, i32 10240, i32 9472
  %0 = load ptr, ptr @sar_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 %spec.select
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !76
  %2 = and i32 %1, -268435457
  %3 = load ptr, ptr @sar_base, align 4
  %add.ptr6 = getelementptr i8, ptr %3, i32 %spec.select
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 %2) #10, !srcloc !75
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap5_irq_save_context() #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = load i32, ptr @irq_banks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp50.not = icmp eq i32 %0, 0
  br i1 %cmp50.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.051 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %1 = load ptr, ptr @wakeupgen_base, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 16
  %conv.i = shl i32 %i.051, 2
  %mul2.i = and i32 %conv.i, 1020
  %add.ptr3.i = getelementptr i8, ptr %add.ptr.i, i32 %mul2.i
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #10, !srcloc !76
  %3 = load ptr, ptr @sar_base, align 4
  %add.ptr.i31 = getelementptr i8, ptr %3, i32 10716
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i31, i32 %mul2.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %2) #10, !srcloc !75
  %4 = load ptr, ptr @wakeupgen_base, align 4
  %add.ptr1.i34 = getelementptr i8, ptr %4, i32 1040
  %add.ptr3.i37 = getelementptr i8, ptr %add.ptr1.i34, i32 %mul2.i
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i37) #10, !srcloc !76
  %6 = load ptr, ptr @sar_base, align 4
  %add.ptr.i38 = getelementptr i8, ptr %6, i32 10756
  %add.ptr1.i41 = getelementptr i8, ptr %add.ptr.i38, i32 %mul2.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i41, i32 %5) #10, !srcloc !75
  %7 = load ptr, ptr @sar_base, align 4
  %add.ptr.i42 = getelementptr i8, ptr %7, i32 10736
  %add.ptr1.i45 = getelementptr i8, ptr %add.ptr.i42, i32 %mul2.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i45, i32 0) #10, !srcloc !75
  %8 = load ptr, ptr @sar_base, align 4
  %add.ptr.i46 = getelementptr i8, ptr %8, i32 10776
  %add.ptr1.i49 = getelementptr i8, ptr %add.ptr.i46, i32 %mul2.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i49, i32 0) #10, !srcloc !75
  %inc = add nuw i32 %i.051, 1
  %9 = load i32, ptr @irq_banks, align 4
  %cmp = icmp ult i32 %inc, %9
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %10 = load ptr, ptr @wakeupgen_base, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 2048
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !76
  %12 = load ptr, ptr @sar_base, align 4
  %add.ptr8 = getelementptr i8, ptr %12, i32 10796
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 %11) #10, !srcloc !75
  %13 = load ptr, ptr @wakeupgen_base, align 4
  %add.ptr10 = getelementptr i8, ptr %13, i32 2048
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10) #10, !srcloc !76
  %15 = load ptr, ptr @sar_base, align 4
  %add.ptr13 = getelementptr i8, ptr %15, i32 10544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %14) #10, !srcloc !75
  %16 = load ptr, ptr @sar_base, align 4
  %add.ptr15 = getelementptr i8, ptr %16, i32 10240
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr15) #10, !srcloc !76
  %18 = or i32 %17, 268435456
  %19 = load ptr, ptr @sar_base, align 4
  %add.ptr18 = getelementptr i8, ptr %19, i32 10240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %18) #10, !srcloc !75
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @am43xx_irq_save_context() #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = load i32, ptr @irq_banks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp10.not = icmp eq i32 %0, 0
  br i1 %cmp10.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.011 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %1 = load ptr, ptr @wakeupgen_base, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 16
  %conv.i = shl i32 %i.011, 2
  %mul2.i = and i32 %conv.i, 1020
  %add.ptr3.i = getelementptr i8, ptr %add.ptr.i, i32 %mul2.i
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i) #10, !srcloc !76
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #10
  %arrayidx = getelementptr [7 x i32], ptr @wakeupgen_context, i32 0, i32 %i.011
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %arrayidx, align 4
  %5 = load ptr, ptr @wakeupgen_base, align 4
  %add.ptr.i6 = getelementptr i8, ptr %5, i32 16
  %add.ptr3.i9 = getelementptr i8, ptr %add.ptr.i6, i32 %mul2.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i9, i32 0) #10, !srcloc !75
  %inc = add nuw i32 %i.011, 1
  %6 = load i32, ptr @irq_banks, align 4
  %cmp = icmp ult i32 %inc, %6
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @am43xx_irq_restore_context() #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @irq_banks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp4.not = icmp eq i32 %0, 0
  br i1 %cmp4.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.05 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [7 x i32], ptr @wakeupgen_context, i32 0, i32 %i.05
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #10
  %4 = load ptr, ptr @wakeupgen_base, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 16
  %conv.i = shl i32 %i.05, 2
  %mul2.i = and i32 %conv.i, 1020
  %add.ptr3.i = getelementptr i8, ptr %add.ptr.i, i32 %mul2.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %3) #10, !srcloc !75
  %inc = add nuw i32 %i.05, 1
  %5 = load i32, ptr @irq_banks, align 4
  %cmp = icmp ult i32 %inc, %5
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_create_hierarchy(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wakeupgen_domain_alloc(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs, ptr nocapture noundef readonly %data) #7 align 64 {
entry:
  %parent_fwspec = alloca %struct.irq_fwspec, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %parent_fwspec) #10
  %param_count = getelementptr inbounds %struct.irq_fwspec, ptr %data, i32 0, i32 1
  %0 = ptrtoint ptr %param_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %param_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp.not = icmp eq i32 %1, 3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %param = getelementptr inbounds %struct.irq_fwspec, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %param, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp1.not = icmp eq i32 %3, 0
  br i1 %cmp1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %arrayidx5 = getelementptr %struct.irq_fwspec, ptr %data, i32 0, i32 2, i32 1
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 223, i32 %5)
  %cmp6 = icmp ugt i32 %5, 223
  br i1 %cmp6, label %if.end3.cleanup_crit_edge, label %for.cond.preheader

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_irqs)
  %cmp927.not = icmp eq i32 %nr_irqs, 0
  br i1 %cmp927.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.028 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %add = add i32 %i.028, %virq
  %add10 = add i32 %i.028, %5
  %call = tail call i32 @irq_domain_set_hwirq_and_chip(ptr noundef %domain, i32 noundef %add, i32 noundef %add10, ptr noundef nonnull @wakeupgen_chip, ptr noundef null) #10
  %inc = add nuw i32 %i.028, 1
  %exitcond.not = icmp eq i32 %inc, %nr_irqs
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %6 = call ptr @memcpy(ptr %parent_fwspec, ptr %data, i32 72)
  %parent = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 9
  %7 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %parent, align 4
  %fwnode = getelementptr inbounds %struct.irq_domain, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %fwnode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fwnode, align 4
  %11 = ptrtoint ptr %parent_fwspec to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %10, ptr %parent_fwspec, align 4
  %call12 = call i32 @irq_domain_alloc_irqs_parent(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs, ptr noundef nonnull %parent_fwspec) #10
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call12, %for.end ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %if.end3.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %parent_fwspec) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs_common(ptr noundef, i32 noundef, i32 noundef) #4

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @wakeupgen_domain_translate(ptr nocapture noundef readnone %d, ptr nocapture noundef readonly %fwspec, ptr nocapture noundef writeonly %hwirq, ptr nocapture noundef writeonly %type) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %fwspec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fwspec, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  %cmp.i.i = icmp ugt ptr %1, inttoptr (i32 -4096 to ptr)
  %spec.select.i.i = or i1 %tobool.not.i.i, %cmp.i.i
  br i1 %spec.select.i.i, label %entry.return_crit_edge, label %is_of_node.exit

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

is_of_node.exit:                                  ; preds = %entry
  %ops.i = getelementptr inbounds %struct.fwnode_handle, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %cmp.i = icmp eq ptr %3, @of_fwnode_ops
  br i1 %cmp.i, label %if.then, label %is_of_node.exit.return_crit_edge

is_of_node.exit.return_crit_edge:                 ; preds = %is_of_node.exit
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
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
  %13 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %type, align 4
  br label %return

return:                                           ; preds = %if.end4, %if.end.return_crit_edge, %if.then.return_crit_edge, %is_of_node.exit.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end4 ], [ -22, %if.then.return_crit_edge ], [ -22, %if.end.return_crit_edge ], [ -22, %is_of_node.exit.return_crit_edge ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_set_hwirq_and_chip(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_alloc_irqs_parent(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wakeupgen_mask(ptr noundef %d) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @wakeupgen_lock) #10
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %0 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwirq, align 4
  %arrayidx = getelementptr [224 x i32], ptr @irq_target_cpu, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %rem.i.i = and i32 %1, 31
  %4 = load ptr, ptr @wakeupgen_base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 16
  %mul.i.i = shl i32 %3, 10
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %5 = lshr i32 %1, 3
  %mul2.i.i = and i32 %5, 1020
  %add.ptr3.i.i = getelementptr i8, ptr %add.ptr1.i.i, i32 %mul2.i.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i) #10, !srcloc !76
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #10
  %shl.i = shl nuw i32 1, %rem.i.i
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %7, %neg.i
  %8 = tail call i32 @llvm.bswap.i32(i32 %and.i) #10
  %9 = load ptr, ptr @wakeupgen_base, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %9, i32 16
  %add.ptr1.i9.i = getelementptr i8, ptr %add.ptr.i7.i, i32 %mul.i.i
  %add.ptr3.i12.i = getelementptr i8, ptr %add.ptr1.i9.i, i32 %mul2.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i12.i, i32 %8) #10, !srcloc !75
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @wakeupgen_lock, i32 noundef %call) #10
  tail call void @irq_chip_mask_parent(ptr noundef %d) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @wakeupgen_unmask(ptr noundef %d) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @wakeupgen_lock) #10
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %0 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %hwirq, align 4
  %arrayidx = getelementptr [224 x i32], ptr @irq_target_cpu, i32 0, i32 %1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx, align 4
  %rem.i.i = and i32 %1, 31
  %4 = load ptr, ptr @wakeupgen_base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 16
  %mul.i.i = shl i32 %3, 10
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %mul.i.i
  %5 = lshr i32 %1, 3
  %mul2.i.i = and i32 %5, 1020
  %add.ptr3.i.i = getelementptr i8, ptr %add.ptr1.i.i, i32 %mul2.i.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i) #10, !srcloc !76
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #10
  %shl.i = shl nuw i32 1, %rem.i.i
  %or.i = or i32 %7, %shl.i
  %8 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  %9 = load ptr, ptr @wakeupgen_base, align 4
  %add.ptr.i7.i = getelementptr i8, ptr %9, i32 16
  %add.ptr1.i9.i = getelementptr i8, ptr %add.ptr.i7.i, i32 %mul.i.i
  %add.ptr3.i12.i = getelementptr i8, ptr %add.ptr1.i9.i, i32 %mul2.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i12.i, i32 %8) #10, !srcloc !75
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @wakeupgen_lock, i32 noundef %call) #10
  tail call void @irq_chip_unmask_parent(ptr noundef %d) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_eoi_parent(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_affinity_parent(ptr noundef, ptr noundef, i1 noundef zeroext) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_retrigger_hierarchy(ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wakeupgen_irq_set_type(ptr noundef %d, i32 noundef %type) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %type to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %type, label %entry.if.end_crit_edge [
    i32 8, label %entry.land.lhs.true_crit_edge
    i32 2, label %sw.bb1
  ]

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.bb1, %entry.land.lhs.true_crit_edge
  %type.addr.0.ph = phi i32 [ 1, %sw.bb1 ], [ 4, %entry.land.lhs.true_crit_edge ]
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 2
  %1 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %hwirq, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %2, label %do.end [
    i32 7, label %land.lhs.true.if.end_crit_edge
    i32 119, label %land.lhs.true.if.end_crit_edge21
  ]

land.lhs.true.if.end_crit_edge21:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %2) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %land.lhs.true.if.end_crit_edge, %land.lhs.true.if.end_crit_edge21, %entry.if.end_crit_edge
  %type.addr.019 = phi i32 [ %type.addr.0.ph, %land.lhs.true.if.end_crit_edge ], [ %type.addr.0.ph, %land.lhs.true.if.end_crit_edge21 ], [ %type.addr.0.ph, %do.end ], [ %type, %entry.if.end_crit_edge ]
  %call8 = tail call i32 @irq_chip_set_type_parent(ptr noundef %d, i32 noundef %type.addr.019) #10
  ret i32 %call8
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_mask_parent(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_chip_unmask_parent(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_chip_set_type_parent(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_wakeupgen_cpu_online(i32 noundef %cpu) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @wakeupgen_lock) #10
  %0 = load i32, ptr @irq_banks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp4.not.i23.i = icmp eq i32 %0, 0
  br i1 %cmp4.not.i23.i, label %entry.wakeupgen_irqmask_all.exit_crit_edge, label %for.body.lr.ph.i25.i

entry.wakeupgen_irqmask_all.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %wakeupgen_irqmask_all.exit

for.body.lr.ph.i25.i:                             ; preds = %entry
  %mul.i.i24.i = shl i32 %cpu, 10
  br label %for.body.i35.i

for.body.i35.i:                                   ; preds = %for.body.i35.i.for.body.i35.i_crit_edge, %for.body.lr.ph.i25.i
  %conv6.i26.i = phi i32 [ 0, %for.body.lr.ph.i25.i ], [ %conv.i33.i, %for.body.i35.i.for.body.i35.i_crit_edge ]
  %i.05.i27.i = phi i8 [ 0, %for.body.lr.ph.i25.i ], [ %inc.i32.i, %for.body.i35.i.for.body.i35.i_crit_edge ]
  %1 = load ptr, ptr @wakeupgen_base, align 4
  %add.ptr.i.i28.i = getelementptr i8, ptr %1, i32 16
  %add.ptr1.i.i29.i = getelementptr i8, ptr %add.ptr.i.i28.i, i32 %mul.i.i24.i
  %mul2.i.i30.i = shl nuw nsw i32 %conv6.i26.i, 2
  %add.ptr3.i.i31.i = getelementptr i8, ptr %add.ptr1.i.i29.i, i32 %mul2.i.i30.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i31.i, i32 -1) #10, !srcloc !75
  %inc.i32.i = add i8 %i.05.i27.i, 1
  %conv.i33.i = zext i8 %inc.i32.i to i32
  %2 = load i32, ptr @irq_banks, align 4
  %cmp.i34.i = icmp ugt i32 %2, %conv.i33.i
  br i1 %cmp.i34.i, label %for.body.i35.i.for.body.i35.i_crit_edge, label %_wakeupgen_set_all.exit36.i

for.body.i35.i.for.body.i35.i_crit_edge:          ; preds = %for.body.i35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i35.i

_wakeupgen_set_all.exit36.i:                      ; preds = %for.body.i35.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp8.not.i37.i = icmp eq i32 %2, 0
  br i1 %cmp8.not.i37.i, label %_wakeupgen_set_all.exit36.i.wakeupgen_irqmask_all.exit_crit_edge, label %do.body.lr.ph.i.i

_wakeupgen_set_all.exit36.i.wakeupgen_irqmask_all.exit_crit_edge: ; preds = %_wakeupgen_set_all.exit36.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wakeupgen_irqmask_all.exit

do.body.lr.ph.i.i:                                ; preds = %_wakeupgen_set_all.exit36.i
  %arrayidx.i38.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %do.body.i.i.do.body.i.i_crit_edge, %do.body.lr.ph.i.i
  %conv10.i40.i = phi i32 [ 0, %do.body.lr.ph.i.i ], [ %conv.i49.i, %do.body.i.i.do.body.i.i_crit_edge ]
  %i.09.i41.i = phi i8 [ 0, %do.body.lr.ph.i.i ], [ %inc.i48.i, %do.body.i.i.do.body.i.i_crit_edge ]
  %3 = ptrtoint ptr %arrayidx.i38.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx.i38.i, align 4
  %add.i42.i = add i32 %4, ptrtoint (ptr @irqmasks to i32)
  %5 = inttoptr i32 %add.i42.i to ptr
  %arrayidx3.i43.i = getelementptr [7 x i32], ptr %5, i32 0, i32 %conv10.i40.i
  %6 = ptrtoint ptr %arrayidx3.i43.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx3.i43.i, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #10
  %9 = load ptr, ptr @wakeupgen_base, align 4
  %add.ptr.i.i44.i = getelementptr i8, ptr %9, i32 16
  %add.ptr1.i.i45.i = getelementptr i8, ptr %add.ptr.i.i44.i, i32 %mul.i.i24.i
  %mul2.i.i46.i = shl nuw nsw i32 %conv10.i40.i, 2
  %add.ptr3.i.i47.i = getelementptr i8, ptr %add.ptr1.i.i45.i, i32 %mul2.i.i46.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i47.i, i32 %8) #10, !srcloc !75
  %inc.i48.i = add i8 %i.09.i41.i, 1
  %conv.i49.i = zext i8 %inc.i48.i to i32
  %10 = load i32, ptr @irq_banks, align 4
  %cmp.i50.i = icmp ugt i32 %10, %conv.i49.i
  br i1 %cmp.i50.i, label %do.body.i.i.do.body.i.i_crit_edge, label %do.body.i.i.wakeupgen_irqmask_all.exit_crit_edge

do.body.i.i.wakeupgen_irqmask_all.exit_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wakeupgen_irqmask_all.exit

do.body.i.i.do.body.i.i_crit_edge:                ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i

wakeupgen_irqmask_all.exit:                       ; preds = %do.body.i.i.wakeupgen_irqmask_all.exit_crit_edge, %_wakeupgen_set_all.exit36.i.wakeupgen_irqmask_all.exit_crit_edge, %entry.wakeupgen_irqmask_all.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @wakeupgen_lock, i32 noundef %call.i) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_wakeupgen_cpu_dead(i32 noundef %cpu) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @wakeupgen_lock) #10
  %0 = load i32, ptr @irq_banks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp4.not.i23.i = icmp eq i32 %0, 0
  br i1 %cmp4.not.i23.i, label %entry.wakeupgen_irqmask_all.exit_crit_edge, label %for.body.lr.ph.i.i

entry.wakeupgen_irqmask_all.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %wakeupgen_irqmask_all.exit

for.body.lr.ph.i.i:                               ; preds = %entry
  %mul.i.i.i = shl i32 %cpu, 10
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %cpu
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %conv10.i.i = phi i32 [ 0, %for.body.lr.ph.i.i ], [ %conv.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %i.09.i.i = phi i8 [ 0, %for.body.lr.ph.i.i ], [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ]
  %1 = load ptr, ptr @wakeupgen_base, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 16
  %add.ptr1.i.i.i = getelementptr i8, ptr %add.ptr.i.i.i, i32 %mul.i.i.i
  %mul2.i.i.i = shl nuw nsw i32 %conv10.i.i, 2
  %add.ptr3.i.i.i = getelementptr i8, ptr %add.ptr1.i.i.i, i32 %mul2.i.i.i
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3.i.i.i) #10, !srcloc !76
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #10
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %5, ptrtoint (ptr @irqmasks to i32)
  %6 = inttoptr i32 %add.i.i to ptr
  %arrayidx3.i.i = getelementptr [7 x i32], ptr %6, i32 0, i32 %conv10.i.i
  %7 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %3, ptr %arrayidx3.i.i, align 4
  %inc.i.i = add i8 %i.09.i.i, 1
  %conv.i.i = zext i8 %inc.i.i to i32
  %8 = load i32, ptr @irq_banks, align 4
  %cmp.i.i = icmp ugt i32 %8, %conv.i.i
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %_wakeupgen_save_masks.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

_wakeupgen_save_masks.exit.i:                     ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp4.not.i.i = icmp eq i32 %8, 0
  br i1 %cmp4.not.i.i, label %_wakeupgen_save_masks.exit.i.wakeupgen_irqmask_all.exit_crit_edge, label %_wakeupgen_save_masks.exit.i.for.body.i22.i_crit_edge

_wakeupgen_save_masks.exit.i.for.body.i22.i_crit_edge: ; preds = %_wakeupgen_save_masks.exit.i
  br label %for.body.i22.i

_wakeupgen_save_masks.exit.i.wakeupgen_irqmask_all.exit_crit_edge: ; preds = %_wakeupgen_save_masks.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wakeupgen_irqmask_all.exit

for.body.i22.i:                                   ; preds = %for.body.i22.i.for.body.i22.i_crit_edge, %_wakeupgen_save_masks.exit.i.for.body.i22.i_crit_edge
  %conv6.i.i = phi i32 [ %conv.i20.i, %for.body.i22.i.for.body.i22.i_crit_edge ], [ 0, %_wakeupgen_save_masks.exit.i.for.body.i22.i_crit_edge ]
  %i.05.i.i = phi i8 [ %inc.i19.i, %for.body.i22.i.for.body.i22.i_crit_edge ], [ 0, %_wakeupgen_save_masks.exit.i.for.body.i22.i_crit_edge ]
  %9 = load ptr, ptr @wakeupgen_base, align 4
  %add.ptr.i.i15.i = getelementptr i8, ptr %9, i32 16
  %add.ptr1.i.i16.i = getelementptr i8, ptr %add.ptr.i.i15.i, i32 %mul.i.i.i
  %mul2.i.i17.i = shl nuw nsw i32 %conv6.i.i, 2
  %add.ptr3.i.i18.i = getelementptr i8, ptr %add.ptr1.i.i16.i, i32 %mul2.i.i17.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i.i18.i, i32 0) #10, !srcloc !75
  %inc.i19.i = add i8 %i.05.i.i, 1
  %conv.i20.i = zext i8 %inc.i19.i to i32
  %10 = load i32, ptr @irq_banks, align 4
  %cmp.i21.i = icmp ugt i32 %10, %conv.i20.i
  br i1 %cmp.i21.i, label %for.body.i22.i.for.body.i22.i_crit_edge, label %for.body.i22.i.wakeupgen_irqmask_all.exit_crit_edge

for.body.i22.i.wakeupgen_irqmask_all.exit_crit_edge: ; preds = %for.body.i22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %wakeupgen_irqmask_all.exit

for.body.i22.i.for.body.i22.i_crit_edge:          ; preds = %for.body.i22.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i22.i

wakeupgen_irqmask_all.exit:                       ; preds = %for.body.i22.i.wakeupgen_irqmask_all.exit_crit_edge, %_wakeupgen_save_masks.exit.i.wakeupgen_irqmask_all.exit_crit_edge, %entry.wakeupgen_irqmask_all.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @wakeupgen_lock, i32 noundef %call.i) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__cpuhp_setup_state(i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_register_notifier(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @irq_notifier(ptr nocapture noundef readnone %self, i32 noundef %cmd, ptr nocapture noundef readnone %v) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %cmd, label %entry.sw.epilog_crit_edge [
    i32 3, label %sw.bb
    i32 5, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %call = tail call i32 @omap_type() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call)
  %cmp = icmp eq i32 %call, 3
  br i1 %cmp, label %sw.bb.if.then_crit_edge, label %lor.lhs.false

sw.bb.if.then_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

lor.lhs.false:                                    ; preds = %sw.bb
  %call.i = tail call i32 @omap_rev() #10
  %shr.mask.i = and i32 %call.i, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 1124073472, i32 %shr.mask.i)
  %cmp.i.not = icmp eq i32 %shr.mask.i, 1124073472
  br i1 %cmp.i.not, label %lor.lhs.false.if.then_crit_edge, label %if.else

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %sw.bb.if.then_crit_edge
  %call.i.i = tail call i32 @omap_rev() #10
  %shr.mask.i.i = and i32 %call.i.i, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 117440512, i32 %shr.mask.i.i)
  %cmp.i.not.i = icmp eq i32 %shr.mask.i.i, 117440512
  br i1 %cmp.i.not.i, label %if.then.sw.epilog_crit_edge, label %if.end.i

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end.i:                                         ; preds = %if.then
  %1 = load ptr, ptr @wakeupgen_ops, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %if.end.i.sw.epilog_crit_edge, label %land.lhs.true.i

if.end.i.sw.epilog_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

land.lhs.true.i:                                  ; preds = %if.end.i
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool2.not.i = icmp eq ptr %3, null
  br i1 %tobool2.not.i, label %land.lhs.true.i.sw.epilog_crit_edge, label %if.then3.i

land.lhs.true.i.sw.epilog_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then3.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %3() #10
  br label %sw.epilog

if.else:                                          ; preds = %lor.lhs.false
  %call.i10 = tail call i32 @omap_secure_dispatcher(i32 noundef 29, i32 noundef 4, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i10)
  %cmp.not.i = icmp eq i32 %call.i10, 0
  br i1 %cmp.not.i, label %if.else.sw.epilog_crit_edge, label %do.end.i

if.else.sw.epilog_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

do.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %call1.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #13
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %call3 = tail call i32 @omap_type() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call3)
  %cmp4 = icmp eq i32 %call3, 3
  br i1 %cmp4, label %sw.bb2.if.then8_crit_edge, label %lor.lhs.false5

sw.bb2.if.then8_crit_edge:                        ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

lor.lhs.false5:                                   ; preds = %sw.bb2
  %call.i12 = tail call i32 @omap_rev() #10
  %shr.mask.i13 = and i32 %call.i12, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 1124073472, i32 %shr.mask.i13)
  %cmp.i14.not = icmp eq i32 %shr.mask.i13, 1124073472
  br i1 %cmp.i14.not, label %lor.lhs.false5.if.then8_crit_edge, label %lor.lhs.false5.sw.epilog_crit_edge

lor.lhs.false5.sw.epilog_crit_edge:               ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

lor.lhs.false5.if.then8_crit_edge:                ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then8

if.then8:                                         ; preds = %lor.lhs.false5.if.then8_crit_edge, %sw.bb2.if.then8_crit_edge
  %4 = load ptr, ptr @wakeupgen_ops, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.then8.sw.epilog_crit_edge, label %land.lhs.true.i17

if.then8.sw.epilog_crit_edge:                     ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

land.lhs.true.i17:                                ; preds = %if.then8
  %restore_context.i = getelementptr inbounds %struct.omap_wakeupgen_ops, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %restore_context.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %restore_context.i, align 4
  %tobool1.not.i16 = icmp eq ptr %6, null
  br i1 %tobool1.not.i16, label %land.lhs.true.i17.sw.epilog_crit_edge, label %if.then.i

land.lhs.true.i17.sw.epilog_crit_edge:            ; preds = %land.lhs.true.i17
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.then.i:                                        ; preds = %land.lhs.true.i17
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %6() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then.i, %land.lhs.true.i17.sw.epilog_crit_edge, %if.then8.sw.epilog_crit_edge, %lor.lhs.false5.sw.epilog_crit_edge, %do.end.i, %if.else.sw.epilog_crit_edge, %if.then3.i, %land.lhs.true.i.sw.epilog_crit_edge, %if.end.i.sw.epilog_crit_edge, %if.then.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_type() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_secure_dispatcher(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 32)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { cold }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !13, !14, !15, !17, !18, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !44, !46, !47, !48, !49, !51, !53, !55, !57, !59, !60, !61, !62}
!llvm.named.register.sp = !{!64}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @__of_table_ti_wakeupgen, !1, !"__of_table_ti_wakeupgen", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-omap2/omap-wakeupgen.c", i32 634, i32 1}
!2 = !{ptr @wakeupgen_base, !3, !"wakeupgen_base", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-omap2/omap-wakeupgen.c", i32 53, i32 22}
!4 = distinct !{null, !5, !"omap_secure_apis", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-omap2/omap-wakeupgen.c", i32 59, i32 21}
!6 = !{ptr @__pcpu_unique_irqmasks, !7, !"__pcpu_unique_irqmasks", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-omap2/omap-wakeupgen.c", i32 188, i32 8}
!8 = !{ptr @irqmasks, !7, !"irqmasks", i1 false, i1 false}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../arch/arm/mach-omap2/omap-wakeupgen.c", i32 554, i32 3}
!11 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @wakeupgen_init._entry, !10, !"_entry", i1 false, i1 false}
!14 = !{ptr @wakeupgen_init._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../arch/arm/mach-omap2/omap-wakeupgen.c", i32 560, i32 3}
!17 = !{ptr @wakeupgen_init._entry.3, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @wakeupgen_init._entry_ptr.5, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../arch/arm/mach-omap2/omap-wakeupgen.c", i32 565, i32 3}
!21 = !{ptr @irq_banks, !22, !"irq_banks", i1 false, i1 false}
!22 = !{!"../arch/arm/mach-omap2/omap-wakeupgen.c", i32 57, i32 21}
!23 = !{ptr @max_irqs, !24, !"max_irqs", i1 false, i1 false}
!24 = !{!"../arch/arm/mach-omap2/omap-wakeupgen.c", i32 58, i32 21}
!25 = !{ptr @omap4_wakeupgen_ops, !26, !"omap4_wakeupgen_ops", i1 false, i1 false}
!26 = !{!"../arch/arm/mach-omap2/omap-wakeupgen.c", i32 385, i32 34}
!27 = !{ptr @wakeupgen_ops, !28, !"wakeupgen_ops", i1 false, i1 false}
!28 = !{!"../arch/arm/mach-omap2/omap-wakeupgen.c", i32 70, i32 35}
!29 = !{ptr @omap5_wakeupgen_ops, !30, !"omap5_wakeupgen_ops", i1 false, i1 false}
!30 = !{!"../arch/arm/mach-omap2/omap-wakeupgen.c", i32 390, i32 34}
!31 = !{ptr @am43xx_wakeupgen_ops, !32, !"am43xx_wakeupgen_ops", i1 false, i1 false}
!32 = !{!"../arch/arm/mach-omap2/omap-wakeupgen.c", i32 395, i32 34}
!33 = !{ptr @wakeupgen_context, !34, !"wakeupgen_context", i1 false, i1 false}
!34 = !{!"../arch/arm/mach-omap2/omap-wakeupgen.c", i32 62, i32 21}
!35 = !{ptr @wakeupgen_domain_ops, !36, !"wakeupgen_domain_ops", i1 false, i1 false}
!36 = !{!"../arch/arm/mach-omap2/omap-wakeupgen.c", i32 536, i32 36}
!37 = !{ptr @.str.7, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../arch/arm/mach-omap2/omap-wakeupgen.c", i32 475, i32 12}
!39 = !{ptr @wakeupgen_chip, !40, !"wakeupgen_chip", i1 false, i1 false}
!40 = !{!"../arch/arm/mach-omap2/omap-wakeupgen.c", i32 474, i32 24}
!41 = !{ptr @.str.8, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../arch/arm/mach-omap2/omap-wakeupgen.c", i32 55, i32 8}
!43 = !{ptr @wakeupgen_lock, !42, !"wakeupgen_lock", i1 false, i1 false}
!44 = !{ptr @.str.9, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../arch/arm/mach-omap2/omap-wakeupgen.c", i32 181, i32 3}
!46 = !{ptr @.str.10, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @wakeupgen_irq_set_type._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @wakeupgen_irq_set_type._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @irq_target_cpu, !50, !"irq_target_cpu", i1 false, i1 false}
!50 = !{!"../arch/arm/mach-omap2/omap-wakeupgen.c", i32 56, i32 21}
!51 = !{ptr @.str.11, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../arch/arm/mach-omap2/omap-wakeupgen.c", i32 420, i32 49}
!53 = !{ptr @.str.12, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../arch/arm/mach-omap2/omap-wakeupgen.c", i32 423, i32 7}
!55 = !{ptr @irq_notifier_block, !56, !"irq_notifier_block", i1 false, i1 false}
!56 = !{!"../arch/arm/mach-omap2/omap-wakeupgen.c", i32 449, i32 30}
!57 = !{ptr @.str.13, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../arch/arm/mach-omap2/omap-wakeupgen.c", i32 381, i32 3}
!59 = !{ptr @.str.14, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @irq_save_secure_context._entry, !58, !"_entry", i1 false, i1 false}
!61 = !{ptr @irq_save_secure_context._entry_ptr, !58, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @sar_base, !63, !"sar_base", i1 false, i1 false}
!63 = !{!"../arch/arm/mach-omap2/omap-wakeupgen.c", i32 54, i32 22}
!64 = !{!"sp"}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{!"branch_weights", i32 1, i32 2000}
!75 = !{i64 1260282}
!76 = !{i64 1260700}
