; ModuleID = '/llk/IR_all_yes/drivers/irqchip/irq-mmp.c_pt.bc'
source_filename = "../drivers/irqchip/irq-mmp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.icu_chip_data = type { i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.list_head = type { ptr, ptr }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.callback_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }

@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"icu_irq\00", [24 x i8] zeroinitializer }, align 32
@icu_irq_chip = dso_local global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @icu_mask_irq, ptr @icu_mask_ack_irq, ptr @icu_unmask_irq, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@max_icu_nr = internal global { i32, [28 x i8] } zeroinitializer, align 32
@mmp_icu_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@icu_data = internal global { [16 x %struct.icu_chip_data], [192 x i8] } zeroinitializer, align 32
@irq_domain_simple_ops = external dso_local constant %struct.irq_domain_ops, align 4
@__of_table_mmp_intc = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mrvl,mmp-intc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mmp_of_init }, section "__irqchip_of_table", align 4
@__of_table_mmp2_intc = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mrvl,mmp2-intc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mmp2_of_init }, section "__irqchip_of_table", align 4
@__of_table_mmp3_intc = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,mmp3-intc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mmp3_of_init }, section "__irqchip_of_table", align 4
@__of_table_mmp2_mux_intc = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mrvl,mmp2-mux-intc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mmp2_mux_of_init }, section "__irqchip_of_table", align 4
@mmp_icu2_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@icu_mux_irq_demux._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 165, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013Spurious irq %d in MMP INTC\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"icu_mux_irq_demux\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/irqchip/irq-mmp.c\00", [38 x i8] zeroinitializer }, align 32
@icu_mux_irq_demux._entry_ptr = internal global ptr @icu_mux_irq_demux._entry, section ".printk_index", align 4
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mrvl,intc-nr-irqs\00", [46 x i8] zeroinitializer }, align 32
@mmp_init_bases._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.3, i32 379, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013Not found mrvl,intc-nr-irqs property\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mmp_init_bases\00", [17 x i8] zeroinitializer }, align 32
@mmp_init_bases._entry_ptr = internal global ptr @mmp_init_bases._entry, section ".printk_index", align 4
@mmp_init_bases._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.6, ptr @.str.3, i32 385, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013Failed to get interrupt controller register\0A\00", [49 x i8] zeroinitializer }, align 32
@mmp_init_bases._entry_ptr.9 = internal global ptr @mmp_init_bases._entry.7, section ".printk_index", align 4
@mmp_irq_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr @mmp_irq_domain_map, ptr null, ptr @mmp_irq_domain_xlate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@mmp_init_bases._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.6, ptr @.str.3, i32 396, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013Failed to mapping hwirq\0A\00", [37 x i8] zeroinitializer }, align 32
@mmp_init_bases._entry_ptr.12 = internal global ptr @mmp_init_bases._entry.10, section ".printk_index", align 4
@mmp3_of_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 457, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013Failed to get interrupt controller register #2\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mmp3_of_init\00", [19 x i8] zeroinitializer }, align 32
@mmp3_of_init._entry_ptr = internal global ptr @mmp3_of_init._entry, section ".printk_index", align 4
@mmp2_mux_of_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.15, ptr @.str.3, i32 496, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mmp2_mux_of_init\00", [47 x i8] zeroinitializer }, align 32
@mmp2_mux_of_init._entry_ptr = internal global ptr @mmp2_mux_of_init._entry, section ".printk_index", align 4
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@mmp2_mux_of_init._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.15, ptr @.str.3, i32 510, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\013Not found reg property\0A\00", [38 x i8] zeroinitializer }, align 32
@mmp2_mux_of_init._entry_ptr.19 = internal global ptr @mmp2_mux_of_init._entry.17, section ".printk_index", align 4
@mmp2_mux_of_init._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.15, ptr @.str.3, i32 526, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@mmp2_mux_of_init._entry_ptr.21 = internal global ptr @mmp2_mux_of_init._entry.20, section ".printk_index", align 4
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mrvl,clr-mfp-irq\00", [47 x i8] zeroinitializer }, align 32
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 140, i32 11 }
@___asan_gen_.26 = private unnamed_addr constant [13 x i8] c"icu_irq_chip\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 139, i32 17 }
@___asan_gen_.29 = private unnamed_addr constant [11 x i8] c"max_icu_nr\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 63, i32 12 }
@___asan_gen_.32 = private unnamed_addr constant [13 x i8] c"mmp_icu_base\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 60, i32 22 }
@___asan_gen_.35 = private unnamed_addr constant [9 x i8] c"icu_data\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 62, i32 29 }
@___asan_gen_.38 = private unnamed_addr constant [14 x i8] c"mmp_icu2_base\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 61, i32 22 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 165, i32 3 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 377, i32 35 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 379, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 385, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant [19 x i8] c"mmp_irq_domain_ops\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 199, i32 36 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 396, i32 4 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 457, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 496, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 506, i32 50 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 510, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 526, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.108 = private constant [29 x i8] c"../drivers/irqchip/irq-mmp.c\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.108, i32 533, i32 34 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @__of_table_mmp2_intc, ptr @__of_table_mmp2_mux_intc, ptr @__of_table_mmp3_intc, ptr @__of_table_mmp_intc, ptr @icu_mux_irq_demux._entry, ptr @icu_mux_irq_demux._entry_ptr, ptr @mmp2_mux_of_init._entry, ptr @mmp2_mux_of_init._entry.17, ptr @mmp2_mux_of_init._entry.20, ptr @mmp2_mux_of_init._entry_ptr, ptr @mmp2_mux_of_init._entry_ptr.19, ptr @mmp2_mux_of_init._entry_ptr.21, ptr @mmp3_of_init._entry, ptr @mmp3_of_init._entry_ptr, ptr @mmp_init_bases._entry, ptr @mmp_init_bases._entry.10, ptr @mmp_init_bases._entry.7, ptr @mmp_init_bases._entry_ptr, ptr @mmp_init_bases._entry_ptr.12, ptr @mmp_init_bases._entry_ptr.9, ptr @.str, ptr @icu_irq_chip, ptr @max_icu_nr, ptr @mmp_icu_base, ptr @icu_data, ptr @mmp_icu2_base, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @mmp_irq_domain_ops, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.22], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icu_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max_icu_nr to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp_icu_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icu_data to i32), i32 768, i32 960, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp_icu2_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icu_mux_irq_demux._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp_init_bases._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp_init_bases._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp_irq_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp_init_bases._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp3_of_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp2_mux_of_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp2_mux_of_init._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp2_mux_of_init._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @icu_mask_irq(ptr nocapture noundef readonly %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %domain1 = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 5
  %0 = ptrtoint ptr %domain1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domain1, align 4
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host_data, align 4
  %irq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 1
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %virq_base = getelementptr inbounds %struct.icu_chip_data, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %virq_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %virq_base, align 4
  %sub = sub i32 %5, %7
  %cmp = icmp eq ptr %3, @icu_data
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %8 = load ptr, ptr @mmp_icu_base, align 4
  %shl = shl i32 %sub, 2
  %add.ptr = getelementptr i8, ptr %8, i32 %shl
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !78
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = load i32, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 7), align 4
  %neg = xor i32 %11, -1
  %and = and i32 %10, %neg
  %12 = load i32, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 6), align 4
  %or = or i32 %and, %12
  %13 = tail call i32 @llvm.bswap.i32(i32 %or)
  %14 = load ptr, ptr @mmp_icu_base, align 4
  %add.ptr3 = getelementptr i8, ptr %14, i32 %shl
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %13) #7, !srcloc !79
  %15 = load i32, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 8), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not = icmp eq i32 %15, 0
  br i1 %tobool.not, label %if.then.if.end21_crit_edge, label %if.then4

if.then.if.end21_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %16 = load ptr, ptr @mmp_icu2_base, align 4
  %add.ptr7 = getelementptr i8, ptr %16, i32 %shl
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #7, !srcloc !78
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %19 = load i32, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 8), align 4
  %neg11 = xor i32 %19, -1
  %and12 = and i32 %18, %neg11
  %20 = tail call i32 @llvm.bswap.i32(i32 %and12)
  %21 = load ptr, ptr @mmp_icu2_base, align 4
  %add.ptr14 = getelementptr i8, ptr %21, i32 %shl
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %20) #7, !srcloc !79
  br label %if.end21

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %reg_mask = getelementptr inbounds %struct.icu_chip_data, ptr %3, i32 0, i32 4
  %22 = ptrtoint ptr %reg_mask to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg_mask, align 4
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %23) #7, !srcloc !78
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %shl18 = shl nuw i32 1, %sub
  %or19 = or i32 %25, %shl18
  %26 = tail call i32 @llvm.bswap.i32(i32 %or19)
  %27 = ptrtoint ptr %reg_mask to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %reg_mask, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %28, i32 %26) #7, !srcloc !79
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then4, %if.then.if.end21_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @icu_mask_ack_irq(ptr nocapture noundef readonly %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %domain1 = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 5
  %0 = ptrtoint ptr %domain1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domain1, align 4
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host_data, align 4
  %irq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 1
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %virq_base = getelementptr inbounds %struct.icu_chip_data, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %virq_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %virq_base, align 4
  %sub = sub i32 %5, %7
  %cmp = icmp eq ptr %3, @icu_data
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = load ptr, ptr @mmp_icu_base, align 4
  %shl = shl i32 %sub, 2
  %add.ptr = getelementptr i8, ptr %8, i32 %shl
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !78
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = load i32, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 7), align 4
  %neg = xor i32 %11, -1
  %and = and i32 %10, %neg
  %12 = load i32, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 6), align 4
  %or = or i32 %and, %12
  %13 = tail call i32 @llvm.bswap.i32(i32 %or)
  %14 = load ptr, ptr @mmp_icu_base, align 4
  %add.ptr3 = getelementptr i8, ptr %14, i32 %shl
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %13) #7, !srcloc !79
  br label %if.end14

if.else:                                          ; preds = %entry
  %clr_mfp_irq_base = getelementptr inbounds %struct.icu_chip_data, ptr %3, i32 0, i32 9
  %15 = ptrtoint ptr %clr_mfp_irq_base to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %clr_mfp_irq_base, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %16)
  %cmp5 = icmp eq i32 %7, %16
  br i1 %cmp5, label %land.lhs.true, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %if.else
  %clr_mfp_hwirq = getelementptr inbounds %struct.icu_chip_data, ptr %3, i32 0, i32 10
  %17 = ptrtoint ptr %clr_mfp_hwirq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %clr_mfp_hwirq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %18)
  %cmp6 = icmp eq i32 %sub, %18
  br i1 %cmp6, label %if.then7, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mmp2_clear_pmic_int() #7
  br label %if.end

if.end:                                           ; preds = %if.then7, %land.lhs.true.if.end_crit_edge, %if.else.if.end_crit_edge
  %reg_mask = getelementptr inbounds %struct.icu_chip_data, ptr %3, i32 0, i32 4
  %19 = ptrtoint ptr %reg_mask to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg_mask, align 4
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %20) #7, !srcloc !78
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %shl11 = shl nuw i32 1, %sub
  %or12 = or i32 %22, %shl11
  %23 = tail call i32 @llvm.bswap.i32(i32 %or12)
  %24 = ptrtoint ptr %reg_mask to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg_mask, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %25, i32 %23) #7, !srcloc !79
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @icu_unmask_irq(ptr nocapture noundef readonly %d) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %domain1 = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 5
  %0 = ptrtoint ptr %domain1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %domain1, align 4
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %host_data, align 4
  %irq = getelementptr inbounds %struct.irq_data, ptr %d, i32 0, i32 1
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  %virq_base = getelementptr inbounds %struct.icu_chip_data, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %virq_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %virq_base, align 4
  %sub = sub i32 %5, %7
  %cmp = icmp eq ptr %3, @icu_data
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = load ptr, ptr @mmp_icu_base, align 4
  %shl = shl i32 %sub, 2
  %add.ptr = getelementptr i8, ptr %8, i32 %shl
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !78
  %10 = tail call i32 @llvm.bswap.i32(i32 %9)
  %11 = load i32, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 7), align 4
  %neg = xor i32 %11, -1
  %and = and i32 %10, %neg
  %12 = load i32, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 5), align 4
  %or = or i32 %and, %12
  %13 = tail call i32 @llvm.bswap.i32(i32 %or)
  %14 = load ptr, ptr @mmp_icu_base, align 4
  %add.ptr3 = getelementptr i8, ptr %14, i32 %shl
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %13) #7, !srcloc !79
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %reg_mask = getelementptr inbounds %struct.icu_chip_data, ptr %3, i32 0, i32 4
  %15 = ptrtoint ptr %reg_mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_mask, align 4
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %16) #7, !srcloc !78
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %shl7 = shl nuw i32 1, %sub
  %neg8 = xor i32 %shl7, -1
  %and9 = and i32 %18, %neg8
  %19 = tail call i32 @llvm.bswap.i32(i32 %and9)
  %20 = ptrtoint ptr %reg_mask to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg_mask, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 %19) #7, !srcloc !79
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @icu_init_irq() local_unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 1, ptr @max_icu_nr, align 4
  %call = tail call ptr @ioremap(i32 noundef -735567872, i32 noundef 4096) #7
  store ptr %call, ptr @mmp_icu_base, align 4
  store i32 81, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 5), align 4
  store i32 0, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 6), align 4
  store i32 127, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 7), align 4
  store i32 64, ptr @icu_data, align 4
  store i32 0, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 1), align 4
  %call1 = tail call ptr @irq_domain_add_legacy(ptr noundef null, i32 noundef 64, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @irq_domain_simple_ops, ptr noundef nonnull @icu_data) #7
  store ptr %call1, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 11), align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %irq.07 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  %call2 = tail call ptr @irq_get_irq_data(i32 noundef %irq.07) #7
  tail call void @icu_mask_irq(ptr noundef %call2)
  tail call void @irq_set_chip_and_handler_name(i32 noundef %irq.07, ptr noundef nonnull @icu_irq_chip, ptr noundef nonnull @handle_level_irq, ptr noundef null) #7
  %inc = add nuw nsw i32 %irq.07, 1
  %exitcond.not = icmp eq i32 %inc, 64
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load ptr, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 11), align 4
  tail call void @irq_set_default_host(ptr noundef %0) #7
  %call3 = tail call i32 @set_handle_irq(ptr noundef nonnull @mmp_handle_irq) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_add_legacy(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_level_irq(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_default_host(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @set_handle_irq(ptr noundef) local_unnamed_addr #4 section ".init.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmp_handle_irq(ptr nocapture noundef readnone %regs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @mmp_icu_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 268
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !78
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %and = and i32 %2, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and1 = and i32 %2, 63
  %3 = load ptr, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 11), align 4
  %call2 = tail call i32 @generic_handle_domain_irq(ptr noundef %3, i32 noundef %and1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @mmp2_init_icu() local_unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  store i32 8, ptr @max_icu_nr, align 4
  %call = tail call ptr @ioremap(i32 noundef -735567872, i32 noundef 4096) #7
  store ptr %call, ptr @mmp_icu_base, align 4
  store i32 32, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 5), align 4
  store i32 0, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 6), align 4
  store i32 96, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 7), align 4
  store i32 64, ptr @icu_data, align 4
  store i32 0, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 1), align 4
  %call1 = tail call ptr @irq_domain_add_legacy(ptr noundef null, i32 noundef 64, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @irq_domain_simple_ops, ptr noundef nonnull @icu_data) #7
  store ptr %call1, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 11), align 4
  %0 = load ptr, ptr @mmp_icu_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 336
  store ptr %add.ptr, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 1, i32 3), align 4
  %add.ptr2 = getelementptr i8, ptr %0, i32 360
  store ptr %add.ptr2, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 1, i32 4), align 4
  %1 = load i32, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 1), align 4
  %2 = load i32, ptr @icu_data, align 4
  %add = add i32 %2, %1
  store i32 %add, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 1, i32 9), align 4
  store i32 1, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 1, i32 10), align 4
  store i32 2, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 1), align 4
  store i32 4, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 1, i32 2), align 4
  store i32 %add, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 1, i32 1), align 4
  %call4 = tail call ptr @irq_domain_add_legacy(ptr noundef null, i32 noundef 2, i32 noundef %add, i32 noundef 0, ptr noundef nonnull @irq_domain_simple_ops, ptr noundef getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 1)) #7
  store ptr %call4, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 1, i32 11), align 4
  %3 = load ptr, ptr @mmp_icu_base, align 4
  %add.ptr5 = getelementptr i8, ptr %3, i32 340
  store ptr %add.ptr5, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 2, i32 3), align 4
  %add.ptr6 = getelementptr i8, ptr %3, i32 364
  store ptr %add.ptr6, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 2, i32 4), align 4
  store i32 2, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 2), align 4
  store i32 5, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 2, i32 2), align 4
  %4 = load i32, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 1, i32 1), align 4
  %5 = load i32, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 1), align 4
  %add7 = add i32 %5, %4
  store i32 %add7, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 2, i32 1), align 4
  %call8 = tail call ptr @irq_domain_add_legacy(ptr noundef null, i32 noundef 2, i32 noundef %add7, i32 noundef 0, ptr noundef nonnull @irq_domain_simple_ops, ptr noundef getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 2)) #7
  store ptr %call8, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 2, i32 11), align 4
  %6 = load ptr, ptr @mmp_icu_base, align 4
  %add.ptr9 = getelementptr i8, ptr %6, i32 384
  store ptr %add.ptr9, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 3, i32 3), align 4
  %add.ptr10 = getelementptr i8, ptr %6, i32 380
  store ptr %add.ptr10, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 3, i32 4), align 4
  store i32 3, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 3), align 4
  store i32 9, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 3, i32 2), align 4
  %7 = load i32, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 2, i32 1), align 4
  %8 = load i32, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 2), align 4
  %add11 = add i32 %8, %7
  store i32 %add11, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 3, i32 1), align 4
  %call12 = tail call ptr @irq_domain_add_legacy(ptr noundef null, i32 noundef 3, i32 noundef %add11, i32 noundef 0, ptr noundef nonnull @irq_domain_simple_ops, ptr noundef getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 3)) #7
  store ptr %call12, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 3, i32 11), align 4
  %9 = load ptr, ptr @mmp_icu_base, align 4
  %add.ptr13 = getelementptr i8, ptr %9, i32 344
  store ptr %add.ptr13, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 4, i32 3), align 4
  %add.ptr14 = getelementptr i8, ptr %9, i32 368
  store ptr %add.ptr14, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 4, i32 4), align 4
  store i32 5, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 4), align 4
  store i32 17, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 4, i32 2), align 4
  %10 = load i32, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 3, i32 1), align 4
  %11 = load i32, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 3), align 4
  %add15 = add i32 %11, %10
  store i32 %add15, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 4, i32 1), align 4
  %call16 = tail call ptr @irq_domain_add_legacy(ptr noundef null, i32 noundef 5, i32 noundef %add15, i32 noundef 0, ptr noundef nonnull @irq_domain_simple_ops, ptr noundef getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 4)) #7
  store ptr %call16, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 4, i32 11), align 4
  %12 = load ptr, ptr @mmp_icu_base, align 4
  %add.ptr17 = getelementptr i8, ptr %12, i32 348
  store ptr %add.ptr17, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 5, i32 3), align 4
  %add.ptr18 = getelementptr i8, ptr %12, i32 372
  store ptr %add.ptr18, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 5, i32 4), align 4
  store i32 15, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 5), align 4
  store i32 35, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 5, i32 2), align 4
  %13 = load i32, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 4, i32 1), align 4
  %14 = load i32, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 4), align 4
  %add19 = add i32 %14, %13
  store i32 %add19, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 5, i32 1), align 4
  %call20 = tail call ptr @irq_domain_add_legacy(ptr noundef null, i32 noundef 15, i32 noundef %add19, i32 noundef 0, ptr noundef nonnull @irq_domain_simple_ops, ptr noundef getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 5)) #7
  store ptr %call20, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 5, i32 11), align 4
  %15 = load ptr, ptr @mmp_icu_base, align 4
  %add.ptr21 = getelementptr i8, ptr %15, i32 352
  store ptr %add.ptr21, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 6, i32 3), align 4
  %add.ptr22 = getelementptr i8, ptr %15, i32 376
  store ptr %add.ptr22, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 6, i32 4), align 4
  store i32 2, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 6), align 4
  store i32 51, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 6, i32 2), align 4
  %16 = load i32, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 5, i32 1), align 4
  %17 = load i32, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 5), align 4
  %add23 = add i32 %17, %16
  store i32 %add23, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 6, i32 1), align 4
  %call24 = tail call ptr @irq_domain_add_legacy(ptr noundef null, i32 noundef 2, i32 noundef %add23, i32 noundef 0, ptr noundef nonnull @irq_domain_simple_ops, ptr noundef getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 6)) #7
  store ptr %call24, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 6, i32 11), align 4
  %18 = load ptr, ptr @mmp_icu_base, align 4
  %add.ptr25 = getelementptr i8, ptr %18, i32 392
  store ptr %add.ptr25, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 7, i32 3), align 4
  %add.ptr26 = getelementptr i8, ptr %18, i32 388
  store ptr %add.ptr26, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 7, i32 4), align 4
  store i32 2, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 7), align 4
  store i32 55, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 7, i32 2), align 4
  %19 = load i32, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 6, i32 1), align 4
  %20 = load i32, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 6), align 4
  %add27 = add i32 %20, %19
  store i32 %add27, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 7, i32 1), align 4
  %call28 = tail call ptr @irq_domain_add_legacy(ptr noundef null, i32 noundef 2, i32 noundef %add27, i32 noundef 0, ptr noundef nonnull @irq_domain_simple_ops, ptr noundef getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 7)) #7
  store ptr %call28, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 7, i32 11), align 4
  %21 = load i32, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 7, i32 1), align 4
  %22 = load i32, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 7), align 4
  %add29 = add i32 %22, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add29)
  %cmp57 = icmp sgt i32 %add29, 0
  br i1 %cmp57, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %irq.058 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %call30 = tail call ptr @irq_get_irq_data(i32 noundef %irq.058) #7
  tail call void @icu_mask_irq(ptr noundef %call30)
  %23 = load i32, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 1, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %irq.058, i32 %23)
  %cmp31 = icmp eq i32 %irq.058, %23
  br i1 %cmp31, label %for.body.if.then_crit_edge, label %lor.lhs.false

for.body.if.then_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %for.body
  %24 = load i32, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 2, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %irq.058, i32 %24)
  %cmp32 = icmp eq i32 %irq.058, %24
  br i1 %cmp32, label %lor.lhs.false.if.then_crit_edge, label %lor.lhs.false33

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false33:                                  ; preds = %lor.lhs.false
  %25 = load i32, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 3, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %irq.058, i32 %25)
  %cmp34 = icmp eq i32 %irq.058, %25
  br i1 %cmp34, label %lor.lhs.false33.if.then_crit_edge, label %lor.lhs.false35

lor.lhs.false33.if.then_crit_edge:                ; preds = %lor.lhs.false33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false35:                                  ; preds = %lor.lhs.false33
  %26 = load i32, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 4, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %irq.058, i32 %26)
  %cmp36 = icmp eq i32 %irq.058, %26
  br i1 %cmp36, label %lor.lhs.false35.if.then_crit_edge, label %lor.lhs.false37

lor.lhs.false35.if.then_crit_edge:                ; preds = %lor.lhs.false35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false37:                                  ; preds = %lor.lhs.false35
  %27 = load i32, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 5, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %irq.058, i32 %27)
  %cmp38 = icmp eq i32 %irq.058, %27
  br i1 %cmp38, label %lor.lhs.false37.if.then_crit_edge, label %lor.lhs.false39

lor.lhs.false37.if.then_crit_edge:                ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false39:                                  ; preds = %lor.lhs.false37
  %28 = load i32, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 6, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %irq.058, i32 %28)
  %cmp40 = icmp eq i32 %irq.058, %28
  br i1 %cmp40, label %lor.lhs.false39.if.then_crit_edge, label %lor.lhs.false41

lor.lhs.false39.if.then_crit_edge:                ; preds = %lor.lhs.false39
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false41:                                  ; preds = %lor.lhs.false39
  %29 = load i32, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 7, i32 2), align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %irq.058, i32 %29)
  %cmp42 = icmp eq i32 %irq.058, %29
  br i1 %cmp42, label %lor.lhs.false41.if.then_crit_edge, label %if.else

lor.lhs.false41.if.then_crit_edge:                ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false41.if.then_crit_edge, %lor.lhs.false39.if.then_crit_edge, %lor.lhs.false37.if.then_crit_edge, %lor.lhs.false35.if.then_crit_edge, %lor.lhs.false33.if.then_crit_edge, %lor.lhs.false.if.then_crit_edge, %for.body.if.then_crit_edge
  %call43 = tail call i32 @irq_set_chip(i32 noundef %irq.058, ptr noundef nonnull @icu_irq_chip) #7
  tail call void @__irq_set_handler(i32 noundef %irq.058, ptr noundef nonnull @icu_mux_irq_demux, i32 noundef 1, ptr noundef null) #7
  br label %for.inc

if.else:                                          ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @irq_set_chip_and_handler_name(i32 noundef %irq.058, ptr noundef nonnull @icu_irq_chip, ptr noundef nonnull @handle_level_irq, ptr noundef null) #7
  br label %for.inc

for.inc:                                          ; preds = %if.else, %if.then
  %inc = add nuw nsw i32 %irq.058, 1
  %exitcond.not = icmp eq i32 %inc, %add29
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %30 = load ptr, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 11), align 4
  tail call void @irq_set_default_host(ptr noundef %30) #7
  %call44 = tail call i32 @set_handle_irq(ptr noundef nonnull @mmp2_handle_irq) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @icu_mux_irq_demux(ptr noundef %desc) #0 align 64 {
entry:
  %status = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %irq.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq.i, align 4
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %2 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status) #7
  %4 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %status, align 4, !annotation !80
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 10
  %5 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.chained_irq_enter.exit_crit_edge

entry.chained_irq_enter.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %entry
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 8
  %7 = ptrtoint ptr %irq_mask_ack.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %irq_mask_ack.i, align 4
  %tobool1.not.i = icmp eq ptr %8, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %8(ptr noundef %irq_data.i) #7
  br label %chained_irq_enter.exit

if.else.i:                                        ; preds = %if.end.i
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 7
  %9 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %irq_mask.i, align 4
  %irq_data4.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %10(ptr noundef %irq_data4.i) #7
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 6
  %11 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %irq_ack.i, align 4
  %tobool5.not.i = icmp eq ptr %12, null
  br i1 %tobool5.not.i, label %if.else.i.chained_irq_enter.exit_crit_edge, label %if.then6.i

if.else.i.chained_irq_enter.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %chained_irq_enter.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %12(ptr noundef %irq_data4.i) #7
  br label %chained_irq_enter.exit

chained_irq_enter.exit:                           ; preds = %if.then6.i, %if.else.i.chained_irq_enter.exit_crit_edge, %if.then2.i, %entry.chained_irq_enter.exit_crit_edge
  %13 = load i32, ptr @max_icu_nr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp47 = icmp sgt i32 %13, 1
  br i1 %cmp47, label %chained_irq_enter.exit.for.body_crit_edge, label %chained_irq_enter.exit.do.end_crit_edge

chained_irq_enter.exit.do.end_crit_edge:          ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

chained_irq_enter.exit.for.body_crit_edge:        ; preds = %chained_irq_enter.exit
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %chained_irq_enter.exit.for.body_crit_edge
  %i.048 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 1, %chained_irq_enter.exit.for.body_crit_edge ]
  %cascade_irq = getelementptr [16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 %i.048, i32 2
  %14 = ptrtoint ptr %cascade_irq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cascade_irq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %15)
  %cmp2 = icmp eq i32 %1, %15
  br i1 %cmp2, label %if.end8, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.048, 1
  %exitcond.not = icmp eq i32 %inc, %13
  br i1 %exitcond.not, label %for.inc.do.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.do.end_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %for.inc.do.end_crit_edge, %chained_irq_enter.exit.do.end_crit_edge
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %1) #10
  br label %out

if.end8:                                          ; preds = %for.body
  %domain4 = getelementptr [16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 %i.048, i32 11
  %16 = ptrtoint ptr %domain4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %domain4, align 4
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %host_data, align 4
  %reg_mask = getelementptr inbounds %struct.icu_chip_data, ptr %19, i32 0, i32 4
  %20 = ptrtoint ptr %reg_mask to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg_mask, align 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %21) #7, !srcloc !78
  %reg_status = getelementptr inbounds %struct.icu_chip_data, ptr %19, i32 0, i32 3
  %23 = ptrtoint ptr %reg_status to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %reg_status, align 4
  %25 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %24) #7, !srcloc !78
  %26 = xor i32 %22, -1
  %27 = and i32 %25, %26
  %28 = call i32 @llvm.bswap.i32(i32 %27)
  %29 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp1451 = icmp eq i32 %27, 0
  br i1 %cmp1451, label %if.end8.out_crit_edge, label %if.end16.lr.ph

if.end8.out_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end16.lr.ph:                                   ; preds = %if.end8
  %virq_base = getelementptr [16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 %i.048, i32 1
  br label %if.end16

while.cond.loopexit:                              ; preds = %for.body20.while.cond.loopexit_crit_edge, %if.end16.while.cond.loopexit_crit_edge
  %30 = ptrtoint ptr %reg_status to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg_status, align 4
  %32 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %31) #7, !srcloc !78
  %33 = and i32 %32, %26
  %34 = call i32 @llvm.bswap.i32(i32 %33)
  %35 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %status, align 4
  %cmp14 = icmp eq i32 %33, 0
  br i1 %cmp14, label %while.cond.loopexit.out_crit_edge, label %while.cond.loopexit.if.end16_crit_edge

while.cond.loopexit.if.end16_crit_edge:           ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end16

while.cond.loopexit.out_crit_edge:                ; preds = %while.cond.loopexit
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

if.end16:                                         ; preds = %while.cond.loopexit.if.end16_crit_edge, %if.end16.lr.ph
  %call17 = call i32 @_find_next_bit_be(ptr noundef nonnull %status, i32 noundef 32, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call17)
  %cmp1949 = icmp ult i32 %call17, 32
  br i1 %cmp1949, label %if.end16.for.body20_crit_edge, label %if.end16.while.cond.loopexit_crit_edge

if.end16.while.cond.loopexit_crit_edge:           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.loopexit

if.end16.for.body20_crit_edge:                    ; preds = %if.end16
  br label %for.body20

for.body20:                                       ; preds = %for.body20.for.body20_crit_edge, %if.end16.for.body20_crit_edge
  %n.050 = phi i32 [ %call25, %for.body20.for.body20_crit_edge ], [ %call17, %if.end16.for.body20_crit_edge ]
  %36 = ptrtoint ptr %virq_base to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %virq_base, align 4
  %add = add i32 %37, %n.050
  %call22 = call i32 @generic_handle_irq(i32 noundef %add) #7
  %add24 = add nuw nsw i32 %n.050, 1
  %call25 = call i32 @_find_next_bit_be(ptr noundef nonnull %status, i32 noundef 32, i32 noundef %add24) #7
  %cmp19 = icmp ult i32 %call25, 32
  br i1 %cmp19, label %for.body20.for.body20_crit_edge, label %for.body20.while.cond.loopexit_crit_edge

for.body20.while.cond.loopexit_crit_edge:         ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.loopexit

for.body20.for.body20_crit_edge:                  ; preds = %for.body20
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body20

out:                                              ; preds = %while.cond.loopexit.out_crit_edge, %if.end8.out_crit_edge, %do.end
  %38 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i41 = icmp eq ptr %39, null
  br i1 %tobool.not.i41, label %if.else.i42, label %out.chained_irq_exit.exit_crit_edge

out.chained_irq_exit.exit_crit_edge:              ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  br label %chained_irq_exit.exit

if.else.i42:                                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #9
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %3, i32 0, i32 9
  %40 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i42, %out.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %41, %if.else.i42 ], [ %39, %out.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  call void %.sink.i(ptr noundef %irq_data2.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmp2_handle_irq(ptr nocapture noundef readnone %regs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @mmp_icu_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 260
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !78
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  %and = and i32 %2, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %and1 = and i32 %2, 63
  %3 = load ptr, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 11), align 4
  %call2 = tail call i32 @generic_handle_domain_irq(ptr noundef %3, i32 noundef %and1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mmp_of_init(ptr noundef %node, ptr nocapture noundef readnone %parent) #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mmp_init_bases(ptr noundef %node) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  store i32 81, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 5), align 4
  store i32 0, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 6), align 4
  store i32 127, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 7), align 4
  %call1 = tail call i32 @set_handle_irq(ptr noundef nonnull @mmp_handle_irq) #10
  store i32 1, ptr @max_icu_nr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mmp2_of_init(ptr noundef %node, ptr nocapture noundef readnone %parent) #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @mmp_init_bases(ptr noundef %node) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  store i32 32, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 5), align 4
  store i32 0, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 6), align 4
  store i32 96, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 7), align 4
  %call1 = tail call i32 @set_handle_irq(ptr noundef nonnull @mmp2_handle_irq) #10
  store i32 1, ptr @max_icu_nr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mmp3_of_init(ptr noundef %node, ptr noundef readnone %parent) #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_iomap(ptr noundef %node, i32 noundef 1) #7
  store ptr %call, ptr @mmp_icu2_base, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @mmp_init_bases(ptr noundef %node) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %0 = load ptr, ptr @mmp_icu2_base, align 4
  tail call void @iounmap(ptr noundef %0) #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  store i32 32, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 5), align 4
  store i32 0, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 6), align 4
  store i32 96, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 7), align 4
  store i32 240, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 8), align 4
  %tobool5.not = icmp eq ptr %parent, null
  br i1 %tobool5.not, label %if.then6, label %if.end4.if.end8_crit_edge

if.end4.if.end8_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = tail call i32 @set_handle_irq(ptr noundef nonnull @mmp2_handle_irq) #10
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %if.end4.if.end8_crit_edge
  store i32 1, ptr @max_icu_nr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then3, %do.end
  %retval.0 = phi i32 [ %call2, %if.then3 ], [ 0, %if.end8 ], [ -19, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mmp2_mux_of_init(ptr noundef %node, ptr noundef readnone %parent) #1 section ".init.text" align 64 {
entry:
  %nr_irqs = alloca i32, align 4
  %mfp_irq = alloca i32, align 4
  %reg = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nr_irqs) #7
  %0 = ptrtoint ptr %nr_irqs to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %nr_irqs, align 4, !annotation !80
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mfp_irq) #7
  %1 = ptrtoint ptr %mfp_irq to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %mfp_irq, align 4, !annotation !80
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %reg) #7
  %2 = getelementptr inbounds [4 x i32], ptr %reg, i32 0, i32 2
  %tobool.not = icmp eq ptr %parent, null
  %3 = call ptr @memset(ptr %reg, i32 255, i32 16)
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = load i32, ptr @max_icu_nr, align 4
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.4, ptr noundef nonnull %nr_irqs, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool1.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool1.not, label %if.end4, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #10
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.16, ptr noundef nonnull %reg, i32 noundef 4, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %do.end9, label %if.end12

do.end9:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %call11 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #10
  br label %cleanup

if.end12:                                         ; preds = %if.end4
  %5 = load ptr, ptr @mmp_icu_base, align 4
  %6 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %reg, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 %7
  %arrayidx13 = getelementptr [16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 %4
  %reg_status = getelementptr [16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 %4, i32 3
  %8 = ptrtoint ptr %reg_status to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %add.ptr, ptr %reg_status, align 4
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %2, align 4
  %add.ptr15 = getelementptr i8, ptr %5, i32 %10
  %reg_mask = getelementptr [16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 %4, i32 4
  %11 = ptrtoint ptr %reg_mask to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %add.ptr15, ptr %reg_mask, align 4
  %call17 = call i32 @irq_of_parse_and_map(ptr noundef %node, i32 noundef 0) #7
  %cascade_irq = getelementptr [16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 %4, i32 2
  %12 = ptrtoint ptr %cascade_irq to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call17, ptr %cascade_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool21.not = icmp eq i32 %call17, 0
  br i1 %tobool21.not, label %if.end12.cleanup_crit_edge, label %if.end23

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %if.end12
  %virq_base = getelementptr [16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 %4, i32 1
  %13 = ptrtoint ptr %virq_base to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %virq_base, align 4
  %14 = ptrtoint ptr %nr_irqs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %nr_irqs, align 4
  %tobool.not.i.i = icmp eq ptr %node, null
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %node, i32 0, i32 3
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr null, ptr %fwnode.i.i
  %call1.i = call ptr @__irq_domain_add(ptr noundef %spec.select.i.i, i32 noundef %15, i32 noundef %15, i32 noundef 0, ptr noundef nonnull @mmp_irq_domain_ops, ptr noundef %arrayidx13) #7
  %domain = getelementptr [16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 %4, i32 11
  %16 = ptrtoint ptr %domain to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call1.i, ptr %domain, align 4
  %17 = ptrtoint ptr %nr_irqs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %nr_irqs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp28111.not = icmp eq i32 %18, 0
  br i1 %cmp28111.not, label %if.end23.for.end_crit_edge, label %if.end23.for.body_crit_edge

if.end23.for.body_crit_edge:                      ; preds = %if.end23
  br label %for.body

if.end23.for.end_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end23.for.body_crit_edge
  %irq.0112 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end23.for.body_crit_edge ]
  %19 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %domain, align 4
  %call.i = call i32 @irq_create_mapping_affinity(ptr noundef %20, i32 noundef %irq.0112, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool32.not = icmp eq i32 %call.i, 0
  br i1 %tobool32.not, label %do.end36, label %if.end39

do.end36:                                         ; preds = %for.body
  %call38 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #10
  %21 = ptrtoint ptr %virq_base to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %virq_base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool60.not = icmp ne i32 %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %irq.0112)
  %cmp63113 = icmp sgt i32 %irq.0112, 0
  %or.cond = and i1 %tobool60.not, %cmp63113
  br i1 %or.cond, label %do.end36.for.body64_crit_edge, label %do.end36.if.end70_crit_edge

do.end36.if.end70_crit_edge:                      ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70

do.end36.for.body64_crit_edge:                    ; preds = %do.end36
  br label %for.body64

if.end39:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %irq.0112)
  %tobool40.not = icmp eq i32 %irq.0112, 0
  br i1 %tobool40.not, label %if.then41, label %if.end39.for.inc_crit_edge

if.end39.for.inc_crit_edge:                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then41:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %virq_base to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call.i, ptr %virq_base, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then41, %if.end39.for.inc_crit_edge
  %inc = add nuw i32 %irq.0112, 1
  %24 = ptrtoint ptr %nr_irqs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nr_irqs, align 4
  %cmp28 = icmp ult i32 %inc, %25
  br i1 %cmp28, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end23.for.end_crit_edge
  %.lcssa = phi i32 [ 0, %if.end23.for.end_crit_edge ], [ %25, %for.inc.for.end_crit_edge ]
  %26 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %.lcssa, ptr %arrayidx13, align 4
  %call.i.i108 = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.22, ptr noundef nonnull %mfp_irq, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i108)
  %tobool48.not = icmp sgt i32 %call.i.i108, -1
  br i1 %tobool48.not, label %if.then49, label %for.end.if.end54_crit_edge

for.end.if.end54_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end54

if.then49:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %27 = ptrtoint ptr %virq_base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %virq_base, align 4
  %clr_mfp_irq_base = getelementptr [16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 %4, i32 9
  %29 = ptrtoint ptr %clr_mfp_irq_base to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %clr_mfp_irq_base, align 4
  %30 = ptrtoint ptr %mfp_irq to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %mfp_irq, align 4
  %clr_mfp_hwirq = getelementptr [16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 %4, i32 10
  %32 = ptrtoint ptr %clr_mfp_hwirq to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %clr_mfp_hwirq, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then49, %for.end.if.end54_crit_edge
  %33 = ptrtoint ptr %cascade_irq to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cascade_irq, align 4
  call void @__irq_set_handler(i32 noundef %34, ptr noundef nonnull @icu_mux_irq_demux, i32 noundef 1, ptr noundef null) #7
  %35 = load i32, ptr @max_icu_nr, align 4
  %inc57 = add i32 %35, 1
  store i32 %inc57, ptr @max_icu_nr, align 4
  br label %cleanup

for.body64:                                       ; preds = %for.body64.for.body64_crit_edge, %do.end36.for.body64_crit_edge
  %j.0114 = phi i32 [ %inc68, %for.body64.for.body64_crit_edge ], [ 0, %do.end36.for.body64_crit_edge ]
  %36 = ptrtoint ptr %virq_base to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %virq_base, align 4
  %add = add i32 %37, %j.0114
  call void @irq_dispose_mapping(i32 noundef %add) #7
  %inc68 = add nuw nsw i32 %j.0114, 1
  %exitcond.not = icmp eq i32 %inc68, %irq.0112
  br i1 %exitcond.not, label %for.body64.if.end70_crit_edge, label %for.body64.for.body64_crit_edge

for.body64.for.body64_crit_edge:                  ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body64

for.body64.if.end70_crit_edge:                    ; preds = %for.body64
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end70

if.end70:                                         ; preds = %for.body64.if.end70_crit_edge, %do.end36.if.end70_crit_edge
  %38 = ptrtoint ptr %domain to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %domain, align 4
  call void @irq_domain_remove(ptr noundef %39) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end70, %if.end54, %if.end12.cleanup_crit_edge, %do.end9, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end9 ], [ -22, %if.end70 ], [ 0, %if.end54 ], [ -19, %entry.cleanup_crit_edge ], [ -22, %if.end12.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %reg) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mfp_irq) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_irqs) #7
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmp2_clear_pmic_int() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__irq_set_handler(i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mmp_init_bases(ptr noundef %node) unnamed_addr #1 section ".init.text" align 64 {
entry:
  %nr_irqs = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %nr_irqs) #7
  %0 = ptrtoint ptr %nr_irqs to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %nr_irqs, align 4, !annotation !80
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.4, ptr noundef nonnull %nr_irqs, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call ptr @of_iomap(ptr noundef %node, i32 noundef 0) #7
  store ptr %call2, ptr @mmp_icu_base, align 4
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %do.end7, label %if.end10

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #10
  br label %cleanup

if.end10:                                         ; preds = %if.end
  store i32 0, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 1), align 4
  %1 = ptrtoint ptr %nr_irqs to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %nr_irqs, align 4
  %tobool.not.i.i = icmp eq ptr %node, null
  %fwnode.i.i = getelementptr inbounds %struct.device_node, ptr %node, i32 0, i32 3
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr null, ptr %fwnode.i.i
  %call1.i = call ptr @__irq_domain_add(ptr noundef %spec.select.i.i, i32 noundef %2, i32 noundef %2, i32 noundef 0, ptr noundef nonnull @mmp_irq_domain_ops, ptr noundef nonnull @icu_data) #7
  store ptr %call1.i, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 11), align 4
  %3 = ptrtoint ptr %nr_irqs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nr_irqs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp49 = icmp sgt i32 %4, 0
  br i1 %cmp49, label %if.end10.for.body_crit_edge, label %if.end10.for.end_crit_edge

if.end10.for.end_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end10.for.body_crit_edge:                      ; preds = %if.end10
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end10.for.body_crit_edge
  %irq.050 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end10.for.body_crit_edge ]
  %5 = load ptr, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 11), align 4
  %call.i = call i32 @irq_create_mapping_affinity(ptr noundef %5, i32 noundef %irq.050, ptr noundef null) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool13.not = icmp eq i32 %call.i, 0
  br i1 %tobool13.not, label %do.end17, label %if.end20

do.end17:                                         ; preds = %for.body
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #10
  %6 = load i32, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 1), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool24.not = icmp ne i32 %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %irq.050)
  %cmp2751 = icmp ne i32 %irq.050, 0
  %or.cond = and i1 %tobool24.not, %cmp2751
  br i1 %or.cond, label %do.end17.for.body28_crit_edge, label %do.end17.if.end32_crit_edge

do.end17.if.end32_crit_edge:                      ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

do.end17.for.body28_crit_edge:                    ; preds = %do.end17
  br label %for.body28

if.end20:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %irq.050)
  %tobool21.not = icmp eq i32 %irq.050, 0
  br i1 %tobool21.not, label %if.then22, label %if.end20.for.inc_crit_edge

if.end20.for.inc_crit_edge:                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then22:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  store i32 %call.i, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 1), align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then22, %if.end20.for.inc_crit_edge
  %inc = add nuw nsw i32 %irq.050, 1
  %7 = ptrtoint ptr %nr_irqs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr_irqs, align 4
  %cmp = icmp slt i32 %inc, %8
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end10.for.end_crit_edge
  %.lcssa = phi i32 [ %4, %if.end10.for.end_crit_edge ], [ %8, %for.inc.for.end_crit_edge ]
  store i32 %.lcssa, ptr @icu_data, align 4
  br label %cleanup

for.body28:                                       ; preds = %for.body28.for.body28_crit_edge, %do.end17.for.body28_crit_edge
  %i.052 = phi i32 [ %inc30, %for.body28.for.body28_crit_edge ], [ 0, %do.end17.for.body28_crit_edge ]
  %9 = load i32, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 1), align 4
  %add = add i32 %9, %i.052
  call void @irq_dispose_mapping(i32 noundef %add) #7
  %inc30 = add nuw nsw i32 %i.052, 1
  %exitcond.not = icmp eq i32 %inc30, %irq.050
  br i1 %exitcond.not, label %for.body28.if.end32_crit_edge, label %for.body28.for.body28_crit_edge

for.body28.for.body28_crit_edge:                  ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body28

for.body28.if.end32_crit_edge:                    ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.end32:                                         ; preds = %for.body28.if.end32_crit_edge, %do.end17.if.end32_crit_edge
  %10 = load ptr, ptr getelementptr inbounds ([16 x %struct.icu_chip_data], ptr @icu_data, i32 0, i32 0, i32 11), align 4
  call void @irq_domain_remove(ptr noundef %10) #7
  %11 = load ptr, ptr @mmp_icu_base, align 4
  call void @iounmap(ptr noundef %11) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %for.end, %do.end7, %do.end
  %retval.0 = phi i32 [ %call.i.i, %do.end ], [ -22, %if.end32 ], [ 0, %for.end ], [ -12, %do.end7 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %nr_irqs) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_dispose_mapping(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmp_irq_domain_map(ptr nocapture noundef readnone %d, i32 noundef %irq, i32 noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @irq_set_chip_and_handler_name(i32 noundef %irq, ptr noundef nonnull @icu_irq_chip, ptr noundef nonnull @handle_level_irq, ptr noundef null) #7
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mmp_irq_domain_xlate(ptr nocapture noundef readnone %d, ptr nocapture noundef readnone %node, ptr nocapture noundef readonly %intspec, i32 noundef %intsize, ptr nocapture noundef writeonly %out_hwirq, ptr nocapture noundef readnone %out_type) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %intspec to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %intspec, align 4
  %2 = ptrtoint ptr %out_hwirq to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %out_hwirq, align 4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_mapping_affinity(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { cold }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !27, !28, !29, !30, !32, !34, !35, !36, !37, !39, !40, !41, !43, !44, !45, !47, !49, !50, !51, !52, !54, !56, !57, !58, !60, !62, !63, !64, !66, !67}
!llvm.module.flags = !{!69, !70, !71, !72, !73, !74, !75, !76}
!llvm.ident = !{!77}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/irqchip/irq-mmp.c", i32 140, i32 11}
!2 = !{ptr @icu_irq_chip, !3, !"icu_irq_chip", i1 false, i1 false}
!3 = !{!"../drivers/irqchip/irq-mmp.c", i32 139, i32 17}
!4 = !{ptr @__of_table_mmp_intc, !5, !"__of_table_mmp_intc", i1 false, i1 false}
!5 = !{!"../drivers/irqchip/irq-mmp.c", i32 430, i32 1}
!6 = !{ptr @__of_table_mmp2_intc, !7, !"__of_table_mmp2_intc", i1 false, i1 false}
!7 = !{!"../drivers/irqchip/irq-mmp.c", i32 448, i32 1}
!8 = !{ptr @__of_table_mmp3_intc, !9, !"__of_table_mmp3_intc", i1 false, i1 false}
!9 = !{!"../drivers/irqchip/irq-mmp.c", i32 480, i32 1}
!10 = !{ptr @__of_table_mmp2_mux_intc, !11, !"__of_table_mmp2_mux_intc", i1 false, i1 false}
!11 = !{!"../drivers/irqchip/irq-mmp.c", i32 550, i32 1}
!12 = !{ptr @mmp_icu_base, !13, !"mmp_icu_base", i1 false, i1 false}
!13 = !{!"../drivers/irqchip/irq-mmp.c", i32 60, i32 22}
!14 = !{ptr @icu_data, !15, !"icu_data", i1 false, i1 false}
!15 = !{!"../drivers/irqchip/irq-mmp.c", i32 62, i32 29}
!16 = !{ptr @max_icu_nr, !17, !"max_icu_nr", i1 false, i1 false}
!17 = !{!"../drivers/irqchip/irq-mmp.c", i32 63, i32 12}
!18 = !{ptr @mmp_icu2_base, !19, !"mmp_icu2_base", i1 false, i1 false}
!19 = !{!"../drivers/irqchip/irq-mmp.c", i32 61, i32 22}
!20 = distinct !{null, !21, !"mmp_conf", i1 false, i1 false}
!21 = !{!"../drivers/irqchip/irq-mmp.c", i32 204, i32 35}
!22 = distinct !{null, !23, !"mmp2_conf", i1 false, i1 false}
!23 = !{!"../drivers/irqchip/irq-mmp.c", i32 210, i32 35}
!24 = !{ptr @.str.1, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/irqchip/irq-mmp.c", i32 165, i32 3}
!26 = !{ptr @.str.2, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.3, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @icu_mux_irq_demux._entry, !25, !"_entry", i1 false, i1 false}
!29 = !{ptr @icu_mux_irq_demux._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.4, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/irqchip/irq-mmp.c", i32 377, i32 35}
!32 = !{ptr @.str.5, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/irqchip/irq-mmp.c", i32 379, i32 3}
!34 = !{ptr @.str.6, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @mmp_init_bases._entry, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @mmp_init_bases._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/irqchip/irq-mmp.c", i32 385, i32 3}
!39 = !{ptr @mmp_init_bases._entry.7, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @mmp_init_bases._entry_ptr.9, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/irqchip/irq-mmp.c", i32 396, i32 4}
!43 = !{ptr @mmp_init_bases._entry.10, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @mmp_init_bases._entry_ptr.12, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @mmp_irq_domain_ops, !46, !"mmp_irq_domain_ops", i1 false, i1 false}
!46 = !{!"../drivers/irqchip/irq-mmp.c", i32 199, i32 36}
!47 = !{ptr @.str.13, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/irqchip/irq-mmp.c", i32 457, i32 3}
!49 = !{ptr @.str.14, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @mmp3_of_init._entry, !48, !"_entry", i1 false, i1 false}
!51 = !{ptr @mmp3_of_init._entry_ptr, !48, !"_entry_ptr", i1 false, i1 false}
!52 = distinct !{null, !53, !"mmp3_conf", i1 false, i1 false}
!53 = !{!"../drivers/irqchip/irq-mmp.c", i32 217, i32 29}
!54 = !{ptr @.str.15, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/irqchip/irq-mmp.c", i32 496, i32 3}
!56 = !{ptr @mmp2_mux_of_init._entry, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @mmp2_mux_of_init._entry_ptr, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.16, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/irqchip/irq-mmp.c", i32 506, i32 50}
!60 = !{ptr @.str.18, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/irqchip/irq-mmp.c", i32 510, i32 3}
!62 = !{ptr @mmp2_mux_of_init._entry.17, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @mmp2_mux_of_init._entry_ptr.19, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @mmp2_mux_of_init._entry.20, !65, !"_entry", i1 false, i1 false}
!65 = !{!"../drivers/irqchip/irq-mmp.c", i32 526, i32 4}
!66 = !{ptr @mmp2_mux_of_init._entry_ptr.21, !65, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.22, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/irqchip/irq-mmp.c", i32 533, i32 34}
!69 = !{i32 1, !"wchar_size", i32 2}
!70 = !{i32 1, !"min_enum_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"uwtable", i32 1}
!76 = !{i32 7, !"frame-pointer", i32 2}
!77 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!78 = !{i64 4093793}
!79 = !{i64 4093375}
!80 = !{!"auto-init"}
