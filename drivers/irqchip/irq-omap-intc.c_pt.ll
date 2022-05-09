; ModuleID = '/llk/IR_all_yes/drivers/irqchip/irq-omap-intc.c_pt.bc'
source_filename = "../drivers/irqchip/irq-omap-intc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.omap_intc_regs = type { i32, i32, i32, i32, [128 x i32], [4 x i32] }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
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
%struct.hlist_node = type { ptr, ptr }
%struct.irq_chip_generic = type { %struct.raw_spinlock, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, ptr, %struct.list_head, [0 x %struct.irq_chip_type] }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.irq_chip_type = type { %struct.irq_chip, %struct.irq_chip_regs, ptr, i32, i32, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_chip_regs = type { i32, i32, i32, i32, i32, i32, i32 }

@intc_context = internal global { %struct.omap_intc_regs, [128 x i8] } zeroinitializer, align 32
@omap_nr_irqs = internal global { i32, [28 x i8] } zeroinitializer, align 32
@omap_nr_pending = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__of_table_omap2_intc = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap2-intc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @intc_of_init }, section "__irqchip_of_table", align 4
@__of_table_omap3_intc = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap3-intc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @intc_of_init }, section "__irqchip_of_table", align 4
@__of_table_dm814x_intc = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dm814-intc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @intc_of_init }, section "__irqchip_of_table", align 4
@__of_table_dm816x_intc = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dm816-intc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @intc_of_init }, section "__irqchip_of_table", align 4
@__of_table_am33xx_intc = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am33xx-intc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @intc_of_init }, section "__irqchip_of_table", align 4
@omap_irq_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"drivers/irqchip/irq-omap-intc.c\00", [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ti,dm814-intc\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ti,dm816-intc\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ti,am33xx-intc\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ti,omap2-intc\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ti,omap3-intc\00", [18 x i8] zeroinitializer }, align 32
@omap_init_irq_legacy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str, i32 273, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\014Couldn't allocate IRQ numbers\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"omap_init_irq_legacy\00", [43 x i8] zeroinitializer }, align 32
@omap_init_irq_legacy._entry_ptr = internal global ptr @omap_init_irq_legacy._entry, section ".printk_index", align 4
@irq_domain_simple_ops = external dso_local constant %struct.irq_domain_ops, align 4
@domain = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@omap_irq_soft_reset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str, i32 158, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\016IRQ: Found an INTC at 0x%p (revision %ld.%ld) with %d interrupts\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"omap_irq_soft_reset\00", [44 x i8] zeroinitializer }, align 32
@omap_irq_soft_reset._entry_ptr = internal global ptr @omap_irq_soft_reset._entry, section ".printk_index", align 4
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"INTC\00", [27 x i8] zeroinitializer }, align 32
@irq_generic_chip_ops = external dso_local constant %struct.irq_domain_ops, align 4
@omap_alloc_gc_of._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str, i32 196, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\014Failed to allocate irq chips\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"omap_alloc_gc_of\00", [47 x i8] zeroinitializer }, align 32
@omap_alloc_gc_of._entry_ptr = internal global ptr @omap_alloc_gc_of._entry, section ".printk_index", align 4
@omap_intc_handle_irq.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@omap_intc_handle_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str, i32 353, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\013%s: spurious irq!\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"omap_intc_handle_irq\00", [43 x i8] zeroinitializer }, align 32
@omap_intc_handle_irq._entry_ptr = internal global ptr @omap_intc_handle_irq._entry, section ".printk_index", align 4
@irq_err_count = external dso_local local_unnamed_addr global i32, align 4
@___asan_gen_.15 = private unnamed_addr constant [13 x i8] c"intc_context\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 65, i32 30 }
@___asan_gen_.18 = private unnamed_addr constant [13 x i8] c"omap_nr_irqs\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 70, i32 12 }
@___asan_gen_.21 = private unnamed_addr constant [16 x i8] c"omap_nr_pending\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 69, i32 12 }
@___asan_gen_.24 = private unnamed_addr constant [14 x i8] c"omap_irq_base\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 68, i32 22 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 371, i32 6 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 374, i32 36 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 375, i32 36 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 376, i32 36 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 307, i32 36 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 308, i32 34 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 273, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [7 x i8] c"domain\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 67, i32 27 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 157, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 229, i32 30 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 196, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.84 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.85 = private constant [35 x i8] c"../drivers/irqchip/irq-omap-intc.c\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.85, i32 353, i32 3 }
@llvm.compiler.used = appending global [33 x ptr] [ptr @__of_table_am33xx_intc, ptr @__of_table_dm814x_intc, ptr @__of_table_dm816x_intc, ptr @__of_table_omap2_intc, ptr @__of_table_omap3_intc, ptr @omap_alloc_gc_of._entry, ptr @omap_alloc_gc_of._entry_ptr, ptr @omap_init_irq_legacy._entry, ptr @omap_init_irq_legacy._entry_ptr, ptr @omap_intc_handle_irq._entry, ptr @omap_intc_handle_irq._entry_ptr, ptr @omap_irq_soft_reset._entry, ptr @omap_irq_soft_reset._entry_ptr, ptr @intc_context, ptr @omap_nr_irqs, ptr @omap_nr_pending, ptr @omap_irq_base, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @domain, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intc_context to i32), i32 544, i32 672, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_nr_irqs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_nr_pending to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_irq_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_init_irq_legacy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @domain to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_irq_soft_reset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_alloc_gc_of._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_intc_handle_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_intc_save_context() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @omap_irq_base, align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 16
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !64
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #6
  store i32 %2, ptr @intc_context, align 4
  %3 = load ptr, ptr @omap_irq_base, align 4
  %add.ptr.i22 = getelementptr i8, ptr %3, i32 76
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i22) #6, !srcloc !64
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #6
  store i32 %5, ptr getelementptr inbounds (%struct.omap_intc_regs, ptr @intc_context, i32 0, i32 1), align 4
  %6 = load ptr, ptr @omap_irq_base, align 4
  %add.ptr.i23 = getelementptr i8, ptr %6, i32 80
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i23) #6, !srcloc !64
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #6
  store i32 %8, ptr getelementptr inbounds (%struct.omap_intc_regs, ptr @intc_context, i32 0, i32 2), align 4
  %9 = load ptr, ptr @omap_irq_base, align 4
  %add.ptr.i24 = getelementptr i8, ptr %9, i32 104
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i24) #6, !srcloc !64
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #6
  store i32 %11, ptr getelementptr inbounds (%struct.omap_intc_regs, ptr @intc_context, i32 0, i32 3), align 4
  %12 = load i32, ptr @omap_nr_irqs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp27 = icmp sgt i32 %12, 0
  br i1 %cmp27, label %entry.for.body_crit_edge, label %entry.for.cond5.preheader_crit_edge

entry.for.cond5.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond5.preheader

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.cond5.preheader:                              ; preds = %for.body.for.cond5.preheader_crit_edge, %entry.for.cond5.preheader_crit_edge
  %13 = load ptr, ptr @omap_irq_base, align 4
  %add.ptr.i26 = getelementptr i8, ptr %13, i32 132
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26) #6, !srcloc !64
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #6
  store i32 %15, ptr getelementptr inbounds (%struct.omap_intc_regs, ptr @intc_context, i32 0, i32 5, i32 0), align 4
  %16 = load ptr, ptr @omap_irq_base, align 4
  %add.ptr.i26.1 = getelementptr i8, ptr %16, i32 164
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26.1) #6, !srcloc !64
  %18 = tail call i32 @llvm.bswap.i32(i32 %17) #6
  store i32 %18, ptr getelementptr inbounds (%struct.omap_intc_regs, ptr @intc_context, i32 0, i32 5, i32 1), align 4
  %19 = load ptr, ptr @omap_irq_base, align 4
  %add.ptr.i26.2 = getelementptr i8, ptr %19, i32 196
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26.2) #6, !srcloc !64
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #6
  store i32 %21, ptr getelementptr inbounds (%struct.omap_intc_regs, ptr @intc_context, i32 0, i32 5, i32 2), align 4
  %22 = load ptr, ptr @omap_irq_base, align 4
  %add.ptr.i26.3 = getelementptr i8, ptr %22, i32 228
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26.3) #6, !srcloc !64
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #6
  store i32 %24, ptr getelementptr inbounds (%struct.omap_intc_regs, ptr @intc_context, i32 0, i32 5, i32 3), align 4
  ret void

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.028 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %mul = shl i32 %i.028, 2
  %add = add i32 %mul, 256
  %25 = load ptr, ptr @omap_irq_base, align 4
  %add.ptr.i25 = getelementptr i8, ptr %25, i32 %add
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i25) #6, !srcloc !64
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #6
  %arrayidx = getelementptr %struct.omap_intc_regs, ptr @intc_context, i32 0, i32 4, i32 %i.028
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.028, 1
  %29 = load i32, ptr @omap_nr_irqs, align 4
  %cmp = icmp slt i32 %inc, %29
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.cond5.preheader_crit_edge

for.body.for.cond5.preheader_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond5.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_intc_restore_context() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @intc_context, align 4
  %1 = tail call i32 @llvm.bswap.i32(i32 %0) #6
  %2 = load ptr, ptr @omap_irq_base, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %1) #6, !srcloc !65
  %3 = load i32, ptr getelementptr inbounds (%struct.omap_intc_regs, ptr @intc_context, i32 0, i32 1), align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3) #6
  %5 = load ptr, ptr @omap_irq_base, align 4
  %add.ptr.i17 = getelementptr i8, ptr %5, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i17, i32 %4) #6, !srcloc !65
  %6 = load i32, ptr getelementptr inbounds (%struct.omap_intc_regs, ptr @intc_context, i32 0, i32 2), align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #6
  %8 = load ptr, ptr @omap_irq_base, align 4
  %add.ptr.i18 = getelementptr i8, ptr %8, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i18, i32 %7) #6, !srcloc !65
  %9 = load i32, ptr getelementptr inbounds (%struct.omap_intc_regs, ptr @intc_context, i32 0, i32 3), align 4
  %10 = tail call i32 @llvm.bswap.i32(i32 %9) #6
  %11 = load ptr, ptr @omap_irq_base, align 4
  %add.ptr.i19 = getelementptr i8, ptr %11, i32 104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 %10) #6, !srcloc !65
  %12 = load i32, ptr @omap_nr_irqs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp22 = icmp sgt i32 %12, 0
  br i1 %cmp22, label %entry.for.body_crit_edge, label %entry.for.cond1.preheader_crit_edge

entry.for.cond1.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond1.preheader

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.cond1.preheader:                              ; preds = %for.body.for.cond1.preheader_crit_edge, %entry.for.cond1.preheader_crit_edge
  %13 = load i32, ptr getelementptr inbounds (%struct.omap_intc_regs, ptr @intc_context, i32 0, i32 5, i32 0), align 4
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #6
  %15 = load ptr, ptr @omap_irq_base, align 4
  %add.ptr.i21 = getelementptr i8, ptr %15, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21, i32 %14) #6, !srcloc !65
  %16 = load i32, ptr getelementptr inbounds (%struct.omap_intc_regs, ptr @intc_context, i32 0, i32 5, i32 1), align 4
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #6
  %18 = load ptr, ptr @omap_irq_base, align 4
  %add.ptr.i21.1 = getelementptr i8, ptr %18, i32 164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21.1, i32 %17) #6, !srcloc !65
  %19 = load i32, ptr getelementptr inbounds (%struct.omap_intc_regs, ptr @intc_context, i32 0, i32 5, i32 2), align 4
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #6
  %21 = load ptr, ptr @omap_irq_base, align 4
  %add.ptr.i21.2 = getelementptr i8, ptr %21, i32 196
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21.2, i32 %20) #6, !srcloc !65
  %22 = load i32, ptr getelementptr inbounds (%struct.omap_intc_regs, ptr @intc_context, i32 0, i32 5, i32 3), align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #6
  %24 = load ptr, ptr @omap_irq_base, align 4
  %add.ptr.i21.3 = getelementptr i8, ptr %24, i32 228
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21.3, i32 %23) #6, !srcloc !65
  ret void

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.023 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %mul = shl i32 %i.023, 2
  %add = add i32 %mul, 256
  %arrayidx = getelementptr %struct.omap_intc_regs, ptr @intc_context, i32 0, i32 4, i32 %i.023
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx, align 4
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #6
  %28 = load ptr, ptr @omap_irq_base, align 4
  %add.ptr.i20 = getelementptr i8, ptr %28, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i20, i32 %27) #6, !srcloc !65
  %inc = add nuw nsw i32 %i.023, 1
  %29 = load i32, ptr @omap_nr_irqs, align 4
  %cmp = icmp slt i32 %inc, %29
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.cond1.preheader_crit_edge

for.body.for.cond1.preheader_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond1.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3_intc_prepare_idle() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @omap_irq_base, align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #6, !srcloc !65
  %1 = load ptr, ptr @omap_irq_base, align 4
  %add.ptr.i1 = getelementptr i8, ptr %1, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1, i32 33554432) #6, !srcloc !65
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3_intc_resume_idle() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @omap_irq_base, align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 16777216) #6, !srcloc !65
  %1 = load ptr, ptr @omap_irq_base, align 4
  %add.ptr.i1 = getelementptr i8, ptr %1, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i1, i32 0) #6, !srcloc !65
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap_irq_pending() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @omap_nr_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp3 = icmp sgt i32 %0, 0
  br i1 %cmp3, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.04, 1
  %1 = load i32, ptr @omap_nr_pending, align 4
  %cmp = icmp slt i32 %inc, %1
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry.for.body_crit_edge
  %i.04 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %mul = shl i32 %i.04, 5
  %add = add i32 %mul, 152
  %2 = load ptr, ptr @omap_irq_base, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 %add
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %for.cond, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ], [ 1, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3_intc_suspend() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @omap_irq_base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %0, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777216) #6, !srcloc !65
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @intc_of_init(ptr noundef %node, ptr nocapture noundef readnone %parent) #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 3, ptr @omap_nr_pending, align 4
  store i32 96, ptr @omap_nr_irqs, align 4
  %tobool.not = icmp eq ptr %node, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !66

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 371, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end23:                                         ; preds = %entry
  %call = tail call i32 @of_device_is_compatible(ptr noundef nonnull %node, ptr noundef nonnull @.str.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool24.not = icmp eq i32 %call, 0
  br i1 %tobool24.not, label %lor.lhs.false, label %if.end23.if.then30_crit_edge

if.end23.if.then30_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then30

lor.lhs.false:                                    ; preds = %if.end23
  %call25 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %node, ptr noundef nonnull @.str.2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %lor.lhs.false27, label %lor.lhs.false.if.then30_crit_edge

lor.lhs.false.if.then30_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then30

lor.lhs.false27:                                  ; preds = %lor.lhs.false
  %call28 = tail call i32 @of_device_is_compatible(ptr noundef nonnull %node, ptr noundef nonnull @.str.3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %lor.lhs.false27.if.end31_crit_edge, label %lor.lhs.false27.if.then30_crit_edge

lor.lhs.false27.if.then30_crit_edge:              ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then30

lor.lhs.false27.if.end31_crit_edge:               ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

if.then30:                                        ; preds = %lor.lhs.false27.if.then30_crit_edge, %lor.lhs.false.if.then30_crit_edge, %if.end23.if.then30_crit_edge
  store i32 128, ptr @omap_nr_irqs, align 4
  store i32 4, ptr @omap_nr_pending, align 4
  br label %if.end31

if.end31:                                         ; preds = %if.then30, %lor.lhs.false27.if.end31_crit_edge
  %call32 = tail call ptr @of_node_get(ptr noundef nonnull %node) #6
  %call33 = tail call fastcc i32 @omap_init_irq(ptr noundef %call32) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp = icmp slt i32 %call33, 0
  br i1 %cmp, label %if.end31.cleanup_crit_edge, label %if.end35

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end35:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %call36 = tail call i32 @set_handle_irq(ptr noundef nonnull @omap_intc_handle_irq) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.end31.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ 0, %if.end35 ], [ %call33, %if.end31.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @omap_init_irq(ptr noundef %node) unnamed_addr #2 section ".init.text" align 64 {
entry:
  %res = alloca %struct.resource, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @of_device_is_compatible(ptr noundef %node, ptr noundef nonnull @.str.4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.if.then_crit_edge

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @of_device_is_compatible(ptr noundef %node, ptr noundef nonnull @.str.5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.else, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res) #6
  %0 = call ptr @memset(ptr %res, i32 255, i32 32)
  %call3 = call i32 @of_address_to_resource(ptr noundef %node, i32 noundef 0, ptr noundef nonnull %res) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %1 = ptrtoint ptr %res to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %res, align 4
  %call6 = call fastcc i32 @omap_init_irq_legacy(i32 noundef %2, ptr noundef %node) #9
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #6
  br label %if.end13

cleanup:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res) #6
  br label %cleanup16

if.else:                                          ; preds = %lor.lhs.false
  %tobool7.not = icmp eq ptr %node, null
  br i1 %tobool7.not, label %if.else10, label %if.then8

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = tail call fastcc i32 @omap_init_irq_of(ptr noundef nonnull %node) #9
  br label %if.end13

if.else10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %call11 = tail call fastcc i32 @omap_init_irq_legacy(i32 noundef -1, ptr noundef null) #9
  br label %if.end13

if.end13:                                         ; preds = %if.else10, %if.then8, %cleanup.thread
  %ret.1 = phi i32 [ %call9, %if.then8 ], [ %call11, %if.else10 ], [ %call6, %cleanup.thread ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %cmp = icmp eq i32 %ret.1, 0
  br i1 %cmp, label %if.then14, label %if.end13.cleanup16_crit_edge

if.end13.cleanup16_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup16

if.then14:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #8
  %3 = load ptr, ptr @omap_irq_base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 76
  %4 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !64
  %5 = or i32 %4, 16777216
  %6 = load ptr, ptr @omap_irq_base, align 4
  %add.ptr.i2.i = getelementptr i8, ptr %6, i32 76
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %5) #6, !srcloc !65
  br label %cleanup16

cleanup16:                                        ; preds = %if.then14, %if.end13.cleanup16_crit_edge, %cleanup
  %retval.1 = phi i32 [ -12, %cleanup ], [ 0, %if.then14 ], [ %ret.1, %if.end13.cleanup16_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_node_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @set_handle_irq(ptr noundef) local_unnamed_addr #5 section ".init.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_intc_handle_irq(ptr nocapture noundef readnone %regs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @omap_irq_base, align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 64
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !64
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -129, i32 %2)
  %cmp = icmp ugt i32 %2, -129
  br i1 %cmp, label %land.end, label %if.end21, !prof !66

land.end:                                         ; preds = %entry
  %.b27 = load i1, ptr @omap_intc_handle_irq.__already_done, align 1
  br i1 %.b27, label %land.end.if.end_crit_edge, label %if.then12, !prof !67

land.end.if.end_crit_edge:                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then12:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @omap_intc_handle_irq.__already_done, align 1
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #10
  br label %if.end

if.end:                                           ; preds = %if.then12, %land.end.if.end_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @irq_err_count to i32))
  %3 = load i32, ptr @irq_err_count, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr @irq_err_count, align 4
  %4 = load ptr, ptr @omap_irq_base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777216) #6, !srcloc !65
  br label %cleanup

if.end21:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %and22 = and i32 %2, 127
  %5 = load ptr, ptr @domain, align 4
  %call23 = tail call i32 @generic_handle_domain_irq(ptr noundef %5, i32 noundef %and22) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %if.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @omap_init_irq_legacy(i32 noundef %base, ptr noundef %node) unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @ioremap(i32 noundef %base, i32 noundef 4096) #6
  store ptr %call, ptr @omap_irq_base, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !66

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 268, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end23:                                         ; preds = %entry
  %0 = load i32, ptr @omap_nr_irqs, align 4
  %call24 = tail call i32 @__irq_alloc_descs(i32 noundef -1, i32 noundef 0, i32 noundef %0, i32 noundef 0, ptr noundef null, ptr noundef null) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp = icmp slt i32 %call24, 0
  br i1 %cmp, label %do.end28, label %if.end23.if.end31_crit_edge

if.end23.if.end31_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end31

do.end28:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #10
  br label %if.end31

if.end31:                                         ; preds = %do.end28, %if.end23.if.end31_crit_edge
  %irq_base.0 = phi i32 [ 0, %do.end28 ], [ %call24, %if.end23.if.end31_crit_edge ]
  %1 = load i32, ptr @omap_nr_irqs, align 4
  %call32 = tail call ptr @irq_domain_add_legacy(ptr noundef %node, i32 noundef %1, i32 noundef %irq_base.0, i32 noundef 0, ptr noundef nonnull @irq_domain_simple_ops, ptr noundef null) #6
  store ptr %call32, ptr @domain, align 4
  tail call fastcc void @omap_irq_soft_reset() #9
  %2 = load i32, ptr @omap_nr_irqs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp3342 = icmp sgt i32 %2, 0
  br i1 %cmp3342, label %if.end31.for.body_crit_edge, label %if.end31.cleanup_crit_edge

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end31.for.body_crit_edge:                      ; preds = %if.end31
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end31.for.body_crit_edge
  %j.043 = phi i32 [ %add34, %for.body.for.body_crit_edge ], [ 0, %if.end31.for.body_crit_edge ]
  %3 = load ptr, ptr @omap_irq_base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 %j.043
  %add = add i32 %j.043, %irq_base.0
  tail call fastcc void @omap_alloc_gc_legacy(ptr noundef %add.ptr, i32 noundef %add) #9
  %add34 = add i32 %j.043, 32
  %4 = load i32, ptr @omap_nr_irqs, align 4
  %cmp33 = icmp slt i32 %add34, %4
  br i1 %cmp33, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %if.end31.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ 0, %if.end31.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @omap_init_irq_of(ptr noundef %node) unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_iomap(ptr noundef %node, i32 noundef 0) #6
  store ptr %call, ptr @omap_irq_base, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end23, !prof !66

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 248, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end23:                                         ; preds = %entry
  %0 = load i32, ptr @omap_nr_irqs, align 4
  %tobool.not.i.i = icmp eq ptr %node, null
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %node, i32 0, i32 3
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr null, ptr %fwnode.i.i
  %call1.i = tail call ptr @__irq_domain_add(ptr noundef %spec.select.i.i, i32 noundef %0, i32 noundef %0, i32 noundef 0, ptr noundef nonnull @irq_generic_chip_ops, ptr noundef null) #6
  store ptr %call1.i, ptr @domain, align 4
  tail call fastcc void @omap_irq_soft_reset() #9
  %1 = load ptr, ptr @domain, align 4
  %2 = load ptr, ptr @omap_irq_base, align 4
  %call25 = tail call fastcc i32 @omap_alloc_gc_of(ptr noundef %1, ptr noundef %2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp = icmp slt i32 %call25, 0
  br i1 %cmp, label %if.then26, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #8
  %3 = load ptr, ptr @domain, align 4
  tail call void @irq_domain_remove(ptr noundef %3) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %if.end23.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ %call25, %if.then26 ], [ %call25, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_alloc_descs(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_add_legacy(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @omap_irq_soft_reset() unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @omap_irq_base, align 4
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #6, !srcloc !64
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #6
  %3 = load ptr, ptr @omap_irq_base, align 4
  %and = lshr i32 %2, 4
  %shr = and i32 %and, 15
  %and2 = and i32 %2, 15
  %4 = load i32, ptr @omap_nr_irqs, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef %3, i32 noundef %shr, i32 noundef %and2, i32 noundef %4) #10
  %5 = load ptr, ptr @omap_irq_base, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 16
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !64
  %7 = or i32 %6, 33554432
  %8 = load ptr, ptr @omap_irq_base, align 4
  %add.ptr.i10 = getelementptr i8, ptr %8, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i10, i32 %7) #6, !srcloc !65
  br label %while.cond

while.cond:                                       ; preds = %while.cond.while.cond_crit_edge, %entry
  %9 = load ptr, ptr @omap_irq_base, align 4
  %add.ptr.i11 = getelementptr i8, ptr %9, i32 20
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i11) #6, !srcloc !64
  %11 = and i32 %10, 16777216
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %while.cond.while.cond_crit_edge, label %while.end

while.cond.while.cond_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond

while.end:                                        ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #8
  %12 = load ptr, ptr @omap_irq_base, align 4
  %add.ptr.i12 = getelementptr i8, ptr %12, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i12, i32 16777216) #6, !srcloc !65
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @omap_alloc_gc_legacy(ptr noundef %base, i32 noundef %irq_start) unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @irq_alloc_generic_chip(ptr noundef nonnull @.str.10, i32 noundef 1, i32 noundef %irq_start, ptr noundef %base, ptr noundef nonnull @handle_level_irq) #6
  %irq_ack = getelementptr inbounds %struct.irq_chip_generic, ptr %call, i32 1, i32 0, i32 4, i32 1, i32 1
  %0 = ptrtoint ptr %irq_ack to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @omap_mask_ack_irq, ptr %irq_ack, align 4
  %irq_mask = getelementptr inbounds %struct.irq_chip_generic, ptr %call, i32 1, i32 0, i32 4, i32 2
  %1 = ptrtoint ptr %irq_mask to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @irq_gc_mask_disable_reg, ptr %irq_mask, align 4
  %irq_unmask = getelementptr inbounds %struct.irq_chip_generic, ptr %call, i32 1, i32 0, i32 4, i32 6
  %2 = ptrtoint ptr %irq_unmask to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @irq_gc_unmask_enable_reg, ptr %irq_unmask, align 4
  %flags = getelementptr inbounds %struct.irq_chip_generic, ptr %call, i32 2, i32 0, i32 3
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %or = or i32 %4, 16
  store i32 %or, ptr %flags, align 4
  %regs = getelementptr inbounds %struct.irq_chip_generic, ptr %call, i32 2, i32 0, i32 4
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 136, ptr %regs, align 4
  %disable = getelementptr inbounds %struct.irq_chip_generic, ptr %call, i32 2, i32 0, i32 4, i32 1
  %6 = ptrtoint ptr %disable to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 140, ptr %disable, align 4
  tail call void @irq_setup_generic_chip(ptr noundef %call, i32 noundef -1, i32 noundef 1, i32 noundef 3072, i32 noundef 0) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_alloc_generic_chip(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_mask_ack_irq(ptr noundef %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @irq_gc_mask_disable_reg(ptr noundef %d) #6
  %0 = load ptr, ptr @omap_irq_base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %0, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777216) #6, !srcloc !65
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_mask_disable_reg(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_gc_unmask_enable_reg(ptr noundef) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_setup_generic_chip(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @omap_alloc_gc_of(ptr noundef %d, ptr noundef %base) unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__irq_alloc_domain_generic_chips(ptr noundef %d, i32 noundef 32, i32 noundef 1, ptr noundef nonnull @.str.10, ptr noundef nonnull @handle_level_irq, i32 noundef 3072, i32 noundef 256, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %do.end6

for.cond.preheader:                               ; preds = %entry
  %0 = load i32, ptr @omap_nr_pending, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp31 = icmp sgt i32 %0, 0
  br i1 %cmp31, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #10
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.032 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %mul = shl i32 %i.032, 5
  %call9 = tail call ptr @irq_get_domain_generic_chip(ptr noundef %d, i32 noundef %mul) #6
  %reg_base = getelementptr inbounds %struct.irq_chip_generic, ptr %call9, i32 0, i32 1
  %1 = ptrtoint ptr %reg_base to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %base, ptr %reg_base, align 4
  %type = getelementptr inbounds %struct.irq_chip_generic, ptr %call9, i32 2, i32 2
  %2 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 12, ptr %type, align 4
  %irq_ack = getelementptr inbounds %struct.irq_chip_generic, ptr %call9, i32 1, i32 0, i32 4, i32 1, i32 1
  %3 = ptrtoint ptr %irq_ack to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @omap_mask_ack_irq, ptr %irq_ack, align 4
  %irq_mask = getelementptr inbounds %struct.irq_chip_generic, ptr %call9, i32 1, i32 0, i32 4, i32 2
  %4 = ptrtoint ptr %irq_mask to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @irq_gc_mask_disable_reg, ptr %irq_mask, align 4
  %irq_unmask = getelementptr inbounds %struct.irq_chip_generic, ptr %call9, i32 1, i32 0, i32 4, i32 6
  %5 = ptrtoint ptr %irq_unmask to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @irq_gc_unmask_enable_reg, ptr %irq_unmask, align 4
  %flags = getelementptr inbounds %struct.irq_chip_generic, ptr %call9, i32 2, i32 0, i32 3
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %or = or i32 %7, 16
  store i32 %or, ptr %flags, align 4
  %add = add i32 %mul, 136
  %regs = getelementptr inbounds %struct.irq_chip_generic, ptr %call9, i32 2, i32 0, i32 4
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add, ptr %regs, align 4
  %add15 = add i32 %mul, 140
  %disable = getelementptr inbounds %struct.irq_chip_generic, ptr %call9, i32 2, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %disable to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %add15, ptr %disable, align 4
  %inc = add nuw nsw i32 %i.032, 1
  %10 = load i32, ptr @omap_nr_pending, align 4
  %cmp = icmp slt i32 %inc, %10
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %do.end6, %for.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %do.end6 ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_alloc_domain_generic_chips(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_domain_generic_chip(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !33, !34, !35, !37, !39, !40, !41, !42, !44, !46, !47, !48, !49, !51, !52, !53, !54}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @__of_table_omap2_intc, !1, !"__of_table_omap2_intc", i1 false, i1 false}
!1 = !{!"../drivers/irqchip/irq-omap-intc.c", i32 390, i32 1}
!2 = !{ptr @__of_table_omap3_intc, !3, !"__of_table_omap3_intc", i1 false, i1 false}
!3 = !{!"../drivers/irqchip/irq-omap-intc.c", i32 391, i32 1}
!4 = !{ptr @__of_table_dm814x_intc, !5, !"__of_table_dm814x_intc", i1 false, i1 false}
!5 = !{!"../drivers/irqchip/irq-omap-intc.c", i32 392, i32 1}
!6 = !{ptr @__of_table_dm816x_intc, !7, !"__of_table_dm816x_intc", i1 false, i1 false}
!7 = !{!"../drivers/irqchip/irq-omap-intc.c", i32 393, i32 1}
!8 = !{ptr @__of_table_am33xx_intc, !9, !"__of_table_am33xx_intc", i1 false, i1 false}
!9 = !{!"../drivers/irqchip/irq-omap-intc.c", i32 394, i32 1}
!10 = !{ptr @intc_context, !11, !"intc_context", i1 false, i1 false}
!11 = !{!"../drivers/irqchip/irq-omap-intc.c", i32 65, i32 30}
!12 = !{ptr @omap_nr_pending, !13, !"omap_nr_pending", i1 false, i1 false}
!13 = !{!"../drivers/irqchip/irq-omap-intc.c", i32 69, i32 12}
!14 = !{ptr @omap_nr_irqs, !15, !"omap_nr_irqs", i1 false, i1 false}
!15 = !{!"../drivers/irqchip/irq-omap-intc.c", i32 70, i32 12}
!16 = !{ptr @omap_irq_base, !17, !"omap_irq_base", i1 false, i1 false}
!17 = !{!"../drivers/irqchip/irq-omap-intc.c", i32 68, i32 22}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/irqchip/irq-omap-intc.c", i32 371, i32 6}
!20 = !{ptr @.str.1, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/irqchip/irq-omap-intc.c", i32 374, i32 36}
!22 = !{ptr @.str.2, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/irqchip/irq-omap-intc.c", i32 375, i32 36}
!24 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/irqchip/irq-omap-intc.c", i32 376, i32 36}
!26 = !{ptr @.str.4, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/irqchip/irq-omap-intc.c", i32 307, i32 36}
!28 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/irqchip/irq-omap-intc.c", i32 308, i32 34}
!30 = !{ptr @.str.6, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/irqchip/irq-omap-intc.c", i32 273, i32 3}
!32 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @omap_init_irq_legacy._entry, !31, !"_entry", i1 false, i1 false}
!34 = !{ptr @omap_init_irq_legacy._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @domain, !36, !"domain", i1 false, i1 false}
!36 = !{!"../drivers/irqchip/irq-omap-intc.c", i32 67, i32 27}
!37 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/irqchip/irq-omap-intc.c", i32 157, i32 2}
!39 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @omap_irq_soft_reset._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @omap_irq_soft_reset._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.10, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/irqchip/irq-omap-intc.c", i32 229, i32 30}
!44 = !{ptr @.str.11, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/irqchip/irq-omap-intc.c", i32 196, i32 3}
!46 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @omap_alloc_gc_of._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @omap_alloc_gc_of._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = distinct !{null, !50, !"__already_done", i1 false, i1 false}
!50 = !{!"../drivers/irqchip/irq-omap-intc.c", i32 353, i32 3}
!51 = !{ptr @.str.13, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.14, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @omap_intc_handle_irq._entry, !50, !"_entry", i1 false, i1 false}
!54 = !{ptr @omap_intc_handle_irq._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!64 = !{i64 4624156}
!65 = !{i64 4623738}
!66 = !{!"branch_weights", i32 1, i32 2000}
!67 = !{!"branch_weights", i32 2000, i32 1}
