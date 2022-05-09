; ModuleID = '/llk/IR_all_yes/drivers/pci/controller/pcie-iproc-msi.c_pt.bc'
source_filename = "../drivers/pci/controller/pcie-iproc-msi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+iproc_msi_init\22, \22a\22\09"
module asm "\09.weak\09__crc_iproc_msi_init\09\09\09\09"
module asm "\09.long\09__crc_iproc_msi_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iproc_msi_init:\09\09\09\09\09"
module asm "\09.asciz \09\22iproc_msi_init\22\09\09\09\09\09"
module asm "__kstrtabns_iproc_msi_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+iproc_msi_exit\22, \22a\22\09"
module asm "\09.weak\09__crc_iproc_msi_exit\09\09\09\09"
module asm "\09.long\09__crc_iproc_msi_exit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_iproc_msi_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22iproc_msi_exit\22\09\09\09\09\09"
module asm "__kstrtabns_iproc_msi_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.cpumask = type { [1 x i32] }
%struct.msi_domain_info = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.iproc_pcie = type { ptr, i32, ptr, ptr, i32, %struct.resource, ptr, ptr, i8, i8, i8, i8, i8, i8, %struct.iproc_pcie_ob, ptr, i8, %struct.iproc_pcie_ib, ptr, i8, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.iproc_pcie_ob = type { i32, i32 }
%struct.iproc_pcie_ib = type { i32 }
%struct.iproc_msi = type { ptr, ptr, ptr, i32, i32, i8, ptr, %struct.mutex, i32, ptr, ptr, i32, i32, ptr, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.iproc_msi_grp = type { ptr, i32, i32 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.irq_domain = type { %struct.list_head, ptr, ptr, ptr, i32, i32, ptr, i32, ptr, ptr, i32, i32, %struct.xarray, %struct.mutex, [0 x ptr] }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.msi_msg = type { %union.anon.67, %union.anon.68, %union.anon.69 }
%union.anon.67 = type { i32 }
%union.anon.68 = type { i32 }
%union.anon.69 = type { i32 }
%struct.irq_desc = type { %struct.irq_common_data, %struct.irq_data, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, %struct.atomic_t, i32, %struct.raw_spinlock, ptr, ptr, ptr, ptr, i32, %struct.atomic_t, %struct.wait_queue_head, i32, i32, i32, i32, ptr, ptr, ptr, %struct.callback_head, %struct.kobject, %struct.mutex, i32, ptr, ptr, [8 x i8] }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.callback_head = type { ptr, ptr }

@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"brcm,iproc-msi\00", [17 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"msi-controller\00", [17 x i8] zeroinitializer }, align 32
@iproc_msi_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&msi->bitmap_lock\00", [46 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@iproc_msi_domain_info = internal global { %struct.msi_domain_info, [32 x i8] } { %struct.msi_domain_info { i32 11, ptr null, ptr @iproc_msi_irq_chip, ptr null, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@iproc_msi_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 549, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"found no MSI GIC interrupt\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"iproc_msi_init\00", [17 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/pci/controller/pcie-iproc-msi.c\00", [56 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@iproc_msi_init._entry_ptr = internal global ptr @iproc_msi_init._entry, section ".printk_index", align 4
@iproc_msi_init._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.4, ptr @.str.5, i32 555, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"too many MSI GIC interrupts defined %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@iproc_msi_init._entry_ptr.11 = internal global ptr @iproc_msi_init._entry.8, section ".printk_index", align 4
@iproc_msi_init._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.4, ptr @.str.5, i32 561, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"not enough GIC interrupts for MSI affinity\0A\00", [52 x i8] zeroinitializer }, align 32
@iproc_msi_init._entry_ptr.14 = internal global ptr @iproc_msi_init._entry.12, section ".printk_index", align 4
@iproc_msi_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.4, ptr @.str.5, i32 568, ptr @.str.10, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Reducing number of interrupts to %d\0A\00", [59 x i8] zeroinitializer }, align 32
@iproc_msi_init._entry_ptr.17 = internal global ptr @iproc_msi_init._entry.15, section ".printk_index", align 4
@iproc_msi_reg_paxb = internal constant { [6 x [8 x i16]], [32 x i8] } { [6 x [8 x i16]] [[8 x i16] [i16 512, i16 704, i16 516, i16 708, i16 528, i16 592, i16 596, i16 520], [8 x i16] [i16 512, i16 704, i16 516, i16 708, i16 532, i16 600, i16 604, i16 520], [8 x i16] [i16 512, i16 704, i16 516, i16 708, i16 536, i16 608, i16 612, i16 520], [8 x i16] [i16 512, i16 704, i16 516, i16 708, i16 540, i16 616, i16 620, i16 520], [8 x i16] [i16 512, i16 704, i16 516, i16 708, i16 544, i16 624, i16 628, i16 520], [8 x i16] [i16 512, i16 704, i16 516, i16 708, i16 548, i16 632, i16 636, i16 520]], [32 x i8] zeroinitializer }, align 32
@iproc_msi_reg_paxc = internal constant { [6 x [8 x i16]], [32 x i8] } { [6 x [8 x i16]] [[8 x i16] [i16 3072, i16 3076, i16 3080, i16 3084, i16 3136, i16 3152, i16 3168, i16 0], [8 x i16] [i16 3088, i16 3092, i16 3096, i16 3100, i16 3140, i16 3156, i16 3172, i16 0], [8 x i16] [i16 3104, i16 3108, i16 3112, i16 3116, i16 3144, i16 3160, i16 3176, i16 0], [8 x i16] [i16 3120, i16 3124, i16 3128, i16 3132, i16 3148, i16 3164, i16 3180, i16 0], [8 x i16] zeroinitializer, [8 x i16] zeroinitializer], [32 x i8] zeroinitializer }, align 32
@iproc_msi_init._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.4, ptr @.str.5, i32 584, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"incompatible iProc PCIe interface\0A\00", [61 x i8] zeroinitializer }, align 32
@iproc_msi_init._entry_ptr.20 = internal global ptr @iproc_msi_init._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"brcm,pcie-msi-inten\00", [44 x i8] zeroinitializer }, align 32
@iproc_msi_init._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.4, ptr @.str.5, i32 606, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"unable to parse/map interrupt\0A\00", [33 x i8] zeroinitializer }, align 32
@iproc_msi_init._entry_ptr.24 = internal global ptr @iproc_msi_init._entry.22, section ".printk_index", align 4
@iproc_msi_init._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.4, ptr @.str.5, i32 626, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to create MSI domains\0A\00", [34 x i8] zeroinitializer }, align 32
@iproc_msi_init._entry_ptr.27 = internal global ptr @iproc_msi_init._entry.25, section ".printk_index", align 4
@__cpu_online_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@__kstrtab_iproc_msi_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_iproc_msi_init = external dso_local constant [0 x i8], align 1
@__ksymtab_iproc_msi_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iproc_msi_init to i32), ptr @__kstrtab_iproc_msi_init, ptr @__kstrtabns_iproc_msi_init }, section "___ksymtab+iproc_msi_init", align 4
@__kstrtab_iproc_msi_exit = external dso_local constant [0 x i8], align 1
@__kstrtabns_iproc_msi_exit = external dso_local constant [0 x i8], align 1
@__ksymtab_iproc_msi_exit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @iproc_msi_exit to i32), ptr @__kstrtab_iproc_msi_exit, ptr @__kstrtabns_iproc_msi_exit }, section "___ksymtab+iproc_msi_exit", align 4
@iproc_msi_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.28, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"iProc-MSI\00", [22 x i8] zeroinitializer }, align 32
@msi_domain_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iproc_msi_irq_domain_alloc, ptr @iproc_msi_irq_domain_free, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@iproc_msi_bottom_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.29, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iproc_msi_irq_set_affinity, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @iproc_msi_irq_compose_msi_msg, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"MSI\00", [28 x i8] zeroinitializer }, align 32
@cpu_bit_bitmap = external dso_local local_unnamed_addr constant [33 x [1 x i32]], align 4
@iproc_msi_irq_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.5, i32 502, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"failed to set affinity for IRQ%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"iproc_msi_irq_setup\00", [44 x i8] zeroinitializer }, align 32
@iproc_msi_irq_setup._entry_ptr = internal global ptr @iproc_msi_irq_setup._entry, section ".printk_index", align 4
@iproc_msi_irq_setup._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.31, ptr @.str.5, i32 505, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to alloc CPU mask\0A\00", [38 x i8] zeroinitializer }, align 32
@iproc_msi_irq_setup._entry_ptr.34 = internal global ptr @iproc_msi_irq_setup._entry.32, section ".printk_index", align 4
@cpu_max_bits_warn.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/cpumask.h\00", [40 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 525, i32 37 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 528, i32 30 }
@___asan_gen_.42 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 541, i32 2 }
@___asan_gen_.48 = private unnamed_addr constant [22 x i8] c"iproc_msi_domain_info\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 172, i32 31 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 549, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 554, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 560, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 567, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant [19 x i8] c"iproc_msi_reg_paxb\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 112, i32 18 }
@___asan_gen_.93 = private unnamed_addr constant [19 x i8] c"iproc_msi_reg_paxc\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 121, i32 18 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 584, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 588, i32 29 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 606, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 626, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant [19 x i8] c"iproc_msi_irq_chip\00", align 1
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 168, i32 24 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 169, i32 10 }
@___asan_gen_.123 = private unnamed_addr constant [15 x i8] c"msi_domain_ops\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 298, i32 36 }
@___asan_gen_.126 = private unnamed_addr constant [26 x i8] c"iproc_msi_bottom_irq_chip\00", align 1
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 240, i32 24 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 241, i32 10 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 500, i32 5 }
@___asan_gen_.141 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.145 = private constant [43 x i8] c"../drivers/pci/controller/pcie-iproc-msi.c\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.145, i32 505, i32 4 }
@___asan_gen_.147 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.148 = private unnamed_addr constant [27 x i8] c"../include/linux/cpumask.h\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 108, i32 2 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @__ksymtab_iproc_msi_exit, ptr @__ksymtab_iproc_msi_init, ptr @iproc_msi_init._entry, ptr @iproc_msi_init._entry.12, ptr @iproc_msi_init._entry.15, ptr @iproc_msi_init._entry.18, ptr @iproc_msi_init._entry.22, ptr @iproc_msi_init._entry.25, ptr @iproc_msi_init._entry.8, ptr @iproc_msi_init._entry_ptr, ptr @iproc_msi_init._entry_ptr.11, ptr @iproc_msi_init._entry_ptr.14, ptr @iproc_msi_init._entry_ptr.17, ptr @iproc_msi_init._entry_ptr.20, ptr @iproc_msi_init._entry_ptr.24, ptr @iproc_msi_init._entry_ptr.27, ptr @iproc_msi_irq_setup._entry, ptr @iproc_msi_irq_setup._entry.32, ptr @iproc_msi_irq_setup._entry_ptr, ptr @iproc_msi_irq_setup._entry_ptr.34, ptr @.str, ptr @.str.1, ptr @iproc_msi_init.__key, ptr @.str.2, ptr @iproc_msi_domain_info, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.13, ptr @.str.16, ptr @iproc_msi_reg_paxb, ptr @iproc_msi_reg_paxc, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @iproc_msi_irq_chip, ptr @.str.28, ptr @msi_domain_ops, ptr @iproc_msi_bottom_irq_chip, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.35], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_msi_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_msi_domain_info to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_msi_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_msi_init._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_msi_init._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_msi_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_msi_reg_paxb to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_msi_reg_paxc to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_msi_init._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_msi_init._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_msi_init._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_msi_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msi_domain_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_msi_bottom_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_msi_irq_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iproc_msi_irq_setup._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @iproc_msi_init(ptr noundef %pcie, ptr noundef %node) #0 align 64 {
entry:
  %mask.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @of_device_is_compatible(ptr noundef %node, ptr noundef nonnull @.str) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup159_crit_edge, label %if.end

entry.cleanup159_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup159

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @of_find_property(ptr noundef %node, ptr noundef nonnull @.str.1, ptr noundef null) #7
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup159_crit_edge, label %if.end4

if.end.cleanup159_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup159

if.end4:                                          ; preds = %if.end
  %msi5 = getelementptr inbounds %struct.iproc_pcie, ptr %pcie, i32 0, i32 20
  %0 = ptrtoint ptr %msi5 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msi5, align 4
  %tobool6.not = icmp eq ptr %1, null
  br i1 %tobool6.not, label %if.end8, label %if.end4.cleanup159_crit_edge

if.end4.cleanup159_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup159

if.end8:                                          ; preds = %if.end4
  %2 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pcie, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %3, i32 noundef 152, i32 noundef 3520) #7
  %tobool10.not = icmp eq ptr %call.i, null
  br i1 %tobool10.not, label %if.end8.cleanup159_crit_edge, label %if.end12

if.end8.cleanup159_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup159

if.end12:                                         ; preds = %if.end8
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %pcie, ptr %call.i, align 4
  %5 = ptrtoint ptr %msi5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %msi5, align 4
  %base_addr = getelementptr inbounds %struct.iproc_pcie, ptr %pcie, i32 0, i32 4
  %6 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base_addr, align 4
  %msi_addr = getelementptr inbounds %struct.iproc_msi, ptr %call.i, i32 0, i32 15
  %8 = ptrtoint ptr %msi_addr to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %msi_addr, align 4
  %bitmap_lock = getelementptr inbounds %struct.iproc_msi, ptr %call.i, i32 0, i32 7
  tail call void @__mutex_init(ptr noundef %bitmap_lock, ptr noundef nonnull @.str.2, ptr noundef nonnull @iproc_msi_init.__key) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %9 = load i32, ptr @nr_cpu_ids, align 4
  %call4.i.i = tail call i32 @__bitmap_weight(ptr noundef nonnull @__cpu_possible_mask, i32 noundef %9) #7
  %nr_cpus = getelementptr inbounds %struct.iproc_msi, ptr %call.i, i32 0, i32 4
  %10 = ptrtoint ptr %nr_cpus to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %call4.i.i, ptr %nr_cpus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4.i.i)
  %cmp = icmp eq i32 %call4.i.i, 1
  br i1 %cmp, label %if.then17, label %if.end12.if.end18_crit_edge

if.end12.if.end18_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %11 = load i32, ptr @iproc_msi_domain_info, align 4
  %or = or i32 %11, 4
  store i32 %or, ptr @iproc_msi_domain_info, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %if.end12.if.end18_crit_edge
  %call19 = tail call i32 @of_irq_count(ptr noundef %node) #7
  %nr_irqs = getelementptr inbounds %struct.iproc_msi, ptr %call.i, i32 0, i32 3
  %12 = ptrtoint ptr %nr_irqs to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %call19, ptr %nr_irqs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool21.not = icmp eq i32 %call19, 0
  br i1 %tobool21.not, label %do.end25, label %if.end27

do.end25:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pcie, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.3) #10
  br label %cleanup159

if.end27:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call19)
  %cmp29 = icmp sgt i32 %call19, 6
  br i1 %cmp29, label %do.end33, label %if.end27.if.end37_crit_edge

if.end27.if.end37_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

do.end33:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pcie, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %16, ptr noundef nonnull @.str.9, i32 noundef %call19) #10
  %17 = ptrtoint ptr %nr_irqs to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 6, ptr %nr_irqs, align 4
  br label %if.end37

if.end37:                                         ; preds = %do.end33, %if.end27.if.end37_crit_edge
  %18 = ptrtoint ptr %nr_irqs to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nr_irqs, align 4
  %20 = ptrtoint ptr %nr_cpus to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nr_cpus, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp40 = icmp slt i32 %19, %21
  br i1 %cmp40, label %do.end44, label %if.end46

do.end44:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pcie, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.13) #10
  br label %cleanup159

if.end46:                                         ; preds = %if.end37
  %rem = srem i32 %19, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp49.not = icmp eq i32 %rem, 0
  br i1 %cmp49.not, label %if.end46.if.end60_crit_edge, label %if.then50

if.end46.if.end60_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end60

if.then50:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  %sub = sub i32 %19, %rem
  %24 = ptrtoint ptr %nr_irqs to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %sub, ptr %nr_irqs, align 4
  %25 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pcie, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %26, ptr noundef nonnull @.str.16, i32 noundef %sub) #10
  br label %if.end60

if.end60:                                         ; preds = %if.then50, %if.end46.if.end60_crit_edge
  %type = getelementptr inbounds %struct.iproc_pcie, ptr %pcie, i32 0, i32 1
  %27 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %type, align 4
  %29 = zext i32 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values)
  switch i32 %28, label %do.end69 [
    i32 0, label %if.end60.sw.bb_crit_edge
    i32 1, label %if.end60.sw.bb_crit_edge323
    i32 3, label %sw.bb61
  ]

if.end60.sw.bb_crit_edge323:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end60.sw.bb_crit_edge:                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

sw.bb:                                            ; preds = %if.end60.sw.bb_crit_edge, %if.end60.sw.bb_crit_edge323
  %reg_offsets = getelementptr inbounds %struct.iproc_msi, ptr %call.i, i32 0, i32 1
  %30 = ptrtoint ptr %reg_offsets to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @iproc_msi_reg_paxb, ptr %reg_offsets, align 4
  br label %sw.epilog

sw.bb61:                                          ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  %reg_offsets62 = getelementptr inbounds %struct.iproc_msi, ptr %call.i, i32 0, i32 1
  %31 = ptrtoint ptr %reg_offsets62 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @iproc_msi_reg_paxc, ptr %reg_offsets62, align 4
  %32 = ptrtoint ptr %nr_irqs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %nr_irqs, align 4
  br label %sw.epilog

do.end69:                                         ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pcie, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.19) #10
  br label %cleanup159

sw.epilog:                                        ; preds = %sw.bb61, %sw.bb
  %.sink311 = phi i32 [ %33, %sw.bb61 ], [ 1, %sw.bb ]
  %nr_eq_region64 = getelementptr inbounds %struct.iproc_msi, ptr %call.i, i32 0, i32 11
  %36 = ptrtoint ptr %nr_eq_region64 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %.sink311, ptr %nr_eq_region64, align 4
  %nr_msi_region66 = getelementptr inbounds %struct.iproc_msi, ptr %call.i, i32 0, i32 12
  %37 = ptrtoint ptr %nr_msi_region66 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %.sink311, ptr %nr_msi_region66, align 4
  %call71 = tail call ptr @of_find_property(ptr noundef %node, ptr noundef nonnull @.str.21, ptr noundef null) #7
  %tobool72.not = icmp eq ptr %call71, null
  br i1 %tobool72.not, label %sw.epilog.if.end74_crit_edge, label %if.then73

sw.epilog.if.end74_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end74

if.then73:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %has_inten_reg = getelementptr inbounds %struct.iproc_msi, ptr %call.i, i32 0, i32 5
  %38 = ptrtoint ptr %has_inten_reg to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %has_inten_reg, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.then73, %sw.epilog.if.end74_crit_edge
  %39 = ptrtoint ptr %nr_irqs to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %nr_irqs, align 4
  %mul = shl i32 %40, 6
  %nr_msi_vecs = getelementptr inbounds %struct.iproc_msi, ptr %call.i, i32 0, i32 8
  %41 = ptrtoint ptr %nr_msi_vecs to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %mul, ptr %nr_msi_vecs, align 4
  %div261 = lshr exact i32 %mul, 3
  %42 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pcie, align 4
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %43, i32 noundef %div261, i32 noundef 3520) #7
  %bitmap = getelementptr inbounds %struct.iproc_msi, ptr %call.i, i32 0, i32 6
  %44 = ptrtoint ptr %bitmap to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call5.i.i, ptr %bitmap, align 4
  %tobool81.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool81.not, label %if.end74.cleanup159_crit_edge, label %if.end83

if.end74.cleanup159_crit_edge:                    ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup159

if.end83:                                         ; preds = %if.end74
  %45 = ptrtoint ptr %nr_irqs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %nr_irqs, align 4
  %47 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %46, i32 12) #7
  %48 = extractvalue { i32, i1 } %47, 1
  br i1 %48, label %devm_kcalloc.exit267.thread, label %devm_kcalloc.exit267, !prof !83

devm_kcalloc.exit267.thread:                      ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #9
  %grps282 = getelementptr inbounds %struct.iproc_msi, ptr %call.i, i32 0, i32 2
  %49 = ptrtoint ptr %grps282 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %grps282, align 4
  br label %cleanup159

devm_kcalloc.exit267:                             ; preds = %if.end83
  %50 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pcie, align 4
  %52 = extractvalue { i32, i1 } %47, 0
  %call5.i.i264 = tail call noalias ptr @devm_kmalloc(ptr noundef %51, i32 noundef %52, i32 noundef 3520) #7
  %grps = getelementptr inbounds %struct.iproc_msi, ptr %call.i, i32 0, i32 2
  %53 = ptrtoint ptr %grps to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call5.i.i264, ptr %grps, align 4
  %tobool88.not = icmp eq ptr %call5.i.i264, null
  br i1 %tobool88.not, label %devm_kcalloc.exit267.cleanup159_crit_edge, label %for.cond.preheader

devm_kcalloc.exit267.cleanup159_crit_edge:        ; preds = %devm_kcalloc.exit267
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup159

for.cond.preheader:                               ; preds = %devm_kcalloc.exit267
  %54 = ptrtoint ptr %nr_irqs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %nr_irqs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp92292 = icmp sgt i32 %55, 0
  br i1 %cmp92292, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0293 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call93 = tail call i32 @irq_of_parse_and_map(ptr noundef %node, i32 noundef %i.0293) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %cleanup, label %for.inc

cleanup:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pcie, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.23) #10
  br label %free_irqs

for.inc:                                          ; preds = %for.body
  %58 = ptrtoint ptr %grps to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %grps, align 4
  %gic_irq = getelementptr %struct.iproc_msi_grp, ptr %59, i32 %i.0293, i32 1
  %60 = ptrtoint ptr %gic_irq to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %call93, ptr %gic_irq, align 4
  %61 = load ptr, ptr %grps, align 4
  %arrayidx103 = getelementptr %struct.iproc_msi_grp, ptr %61, i32 %i.0293
  %62 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call.i, ptr %arrayidx103, align 4
  %63 = load ptr, ptr %grps, align 4
  %eq = getelementptr %struct.iproc_msi_grp, ptr %63, i32 %i.0293, i32 2
  %64 = ptrtoint ptr %eq to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %i.0293, ptr %eq, align 4
  %inc = add nuw nsw i32 %i.0293, 1
  %65 = ptrtoint ptr %nr_irqs to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %nr_irqs, align 4
  %cmp92 = icmp slt i32 %inc, %66
  br i1 %cmp92, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %67 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pcie, align 4
  %nr_eq_region108 = getelementptr inbounds %struct.iproc_msi, ptr %call.i, i32 0, i32 11
  %69 = ptrtoint ptr %nr_eq_region108 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %nr_eq_region108, align 4
  %mul109 = shl i32 %70, 12
  %eq_dma = getelementptr inbounds %struct.iproc_msi, ptr %call.i, i32 0, i32 14
  %call.i268 = tail call ptr @dma_alloc_attrs(ptr noundef %68, i32 noundef %mul109, ptr noundef %eq_dma, i32 noundef 3264, i32 noundef 0) #7
  %eq_cpu = getelementptr inbounds %struct.iproc_msi, ptr %call.i, i32 0, i32 13
  %71 = ptrtoint ptr %eq_cpu to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call.i268, ptr %eq_cpu, align 4
  %tobool112.not = icmp eq ptr %call.i268, null
  br i1 %tobool112.not, label %for.end.free_irqs_crit_edge, label %if.end114

for.end.free_irqs_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_irqs

if.end114:                                        ; preds = %for.end
  %call115 = tail call fastcc i32 @iproc_msi_alloc_domains(ptr noundef %node, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call115)
  %tobool116.not = icmp eq i32 %call115, 0
  br i1 %tobool116.not, label %if.end114.for.cond123_crit_edge, label %do.end120

if.end114.for.cond123_crit_edge:                  ; preds = %if.end114
  br label %for.cond123

do.end120:                                        ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #9
  %72 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pcie, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %73, ptr noundef nonnull @.str.26) #10
  br label %free_eq_dma

for.cond123:                                      ; preds = %iproc_msi_irq_setup.exit.for.cond123_crit_edge, %if.end114.for.cond123_crit_edge
  %cpu.0 = phi i32 [ %call124, %iproc_msi_irq_setup.exit.for.cond123_crit_edge ], [ -1, %if.end114.for.cond123_crit_edge ]
  %call124 = call i32 @cpumask_next(i32 noundef %cpu.0, ptr noundef nonnull @__cpu_online_mask) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %74 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call124, i32 %74)
  %cmp125 = icmp ult i32 %call124, %74
  br i1 %cmp125, label %for.body126, label %for.end131

for.body126:                                      ; preds = %for.cond123
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask.i) #7
  %75 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr inttoptr (i32 -1 to ptr), ptr %mask.i, align 4, !annotation !84
  %76 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %call.i, align 4
  %78 = ptrtoint ptr %nr_irqs to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %nr_irqs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %79, i32 %call124)
  %cmp54.i = icmp sgt i32 %79, %call124
  br i1 %cmp54.i, label %for.body126.for.body.i_crit_edge, label %for.body126.iproc_msi_irq_setup.exit_crit_edge

for.body126.iproc_msi_irq_setup.exit_crit_edge:   ; preds = %for.body126
  call void @__sanitizer_cov_trace_pc() #9
  br label %iproc_msi_irq_setup.exit

for.body126.for.body.i_crit_edge:                 ; preds = %for.body126
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body126.for.body.i_crit_edge
  %i.055.i = phi i32 [ %add.i, %for.inc.i.for.body.i_crit_edge ], [ %call124, %for.body126.for.body.i_crit_edge ]
  %80 = ptrtoint ptr %grps to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %grps, align 4
  %arrayidx.i = getelementptr %struct.iproc_msi_grp, ptr %81, i32 %i.055.i
  %gic_irq.i = getelementptr %struct.iproc_msi_grp, ptr %81, i32 %i.055.i, i32 1
  %82 = ptrtoint ptr %gic_irq.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %gic_irq.i, align 4
  call void @irq_set_chained_handler_and_data(i32 noundef %83, ptr noundef nonnull @iproc_msi_handler, ptr noundef %arrayidx.i) #7
  %call.i269 = call zeroext i1 @alloc_cpumask_var(ptr noundef nonnull %mask.i, i32 noundef 3264) #7
  br i1 %call.i269, label %if.then.i, label %if.end16.thread.i

if.then.i:                                        ; preds = %for.body.i
  %84 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %mask.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %86 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i.i = add i32 %86, 31
  %87 = lshr i32 %sub.i.i.i, 3
  %mul.i.i.i = and i32 %87, 536870908
  %88 = call ptr @memset(ptr %85, i32 0, i32 %mul.i.i.i)
  %89 = load ptr, ptr %mask.i, align 4
  %90 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %90, i32 %call124)
  %cmp.not.i.i.i.i = icmp ugt i32 %90, %call124
  br i1 %cmp.not.i.i.i.i, label %if.then.i.cpumask_set_cpu.exit.i_crit_edge, label %land.rhs.i.i.i.i

if.then.i.cpumask_set_cpu.exit.i_crit_edge:       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpumask_set_cpu.exit.i

land.rhs.i.i.i.i:                                 ; preds = %if.then.i
  %.b37.i.i.i.i = load i1, ptr @cpu_max_bits_warn.__already_done, align 1
  br i1 %.b37.i.i.i.i, label %land.rhs.i.i.i.i.cpumask_set_cpu.exit.i_crit_edge, label %if.then.i.i.i.i, !prof !85

land.rhs.i.i.i.i.cpumask_set_cpu.exit.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cpumask_set_cpu.exit.i

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  store i1 true, ptr @cpu_max_bits_warn.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.35, i32 noundef 108, i32 noundef 9, ptr noundef null) #7
  br label %cpumask_set_cpu.exit.i

cpumask_set_cpu.exit.i:                           ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.cpumask_set_cpu.exit.i_crit_edge, %if.then.i.cpumask_set_cpu.exit.i_crit_edge
  call void @_set_bit(i32 noundef %call124, ptr noundef %89) #7
  %91 = ptrtoint ptr %grps to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %grps, align 4
  %gic_irq6.i = getelementptr %struct.iproc_msi_grp, ptr %92, i32 %i.055.i, i32 1
  %93 = ptrtoint ptr %gic_irq6.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %gic_irq6.i, align 4
  %95 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %mask.i, align 4
  %call7.i = call i32 @irq_set_affinity(i32 noundef %94, ptr noundef %96) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %tobool.not.i = icmp eq i32 %call7.i, 0
  br i1 %tobool.not.i, label %for.inc.i, label %if.end16.i

if.end16.thread.i:                                ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %97 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %77, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %98, ptr noundef nonnull @.str.33) #10
  br label %if.then18.i

if.end16.i:                                       ; preds = %cpumask_set_cpu.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %99 = ptrtoint ptr %77 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %77, align 4
  %101 = ptrtoint ptr %grps to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %grps, align 4
  %gic_irq11.i = getelementptr %struct.iproc_msi_grp, ptr %102, i32 %i.055.i, i32 1
  %103 = ptrtoint ptr %gic_irq11.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %gic_irq11.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %100, ptr noundef nonnull @.str.30, i32 noundef %104) #10
  %105 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %mask.i, align 4
  call void @free_cpumask_var(ptr noundef %106) #7
  br label %if.then18.i

if.then18.i:                                      ; preds = %if.end16.i, %if.end16.thread.i
  %ret.042.i = phi i32 [ -22, %if.end16.thread.i ], [ %call7.i, %if.end16.i ]
  %107 = ptrtoint ptr %nr_irqs to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %nr_irqs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %108, i32 %call124)
  %cmp5.i.i = icmp sgt i32 %108, %call124
  br i1 %cmp5.i.i, label %if.then18.i.for.body.i.i_crit_edge, label %iproc_msi_irq_setup.exit.thread

if.then18.i.for.body.i.i_crit_edge:               ; preds = %if.then18.i
  br label %for.body.i.i

iproc_msi_irq_setup.exit.thread:                  ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i) #7
  br label %for.cond132.preheader

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.then18.i.for.body.i.i_crit_edge
  %i.06.i.i = phi i32 [ %add.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %call124, %if.then18.i.for.body.i.i_crit_edge ]
  %109 = ptrtoint ptr %grps to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %grps, align 4
  %gic_irq.i.i = getelementptr %struct.iproc_msi_grp, ptr %110, i32 %i.06.i.i, i32 1
  %111 = ptrtoint ptr %gic_irq.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %gic_irq.i.i, align 4
  call void @irq_set_chained_handler_and_data(i32 noundef %112, ptr noundef null, ptr noundef null) #7
  %113 = ptrtoint ptr %nr_cpus to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %nr_cpus, align 4
  %add.i.i = add i32 %114, %i.06.i.i
  %115 = ptrtoint ptr %nr_irqs to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %nr_irqs, align 4
  %cmp.i.i = icmp slt i32 %add.i.i, %116
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.iproc_msi_irq_setup.exit_crit_edge

for.body.i.i.iproc_msi_irq_setup.exit_crit_edge:  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iproc_msi_irq_setup.exit

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

for.inc.i:                                        ; preds = %cpumask_set_cpu.exit.i
  %117 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %mask.i, align 4
  call void @free_cpumask_var(ptr noundef %118) #7
  %119 = ptrtoint ptr %nr_cpus to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %nr_cpus, align 4
  %add.i = add i32 %120, %i.055.i
  %121 = ptrtoint ptr %nr_irqs to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %nr_irqs, align 4
  %cmp.i = icmp slt i32 %add.i, %122
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.iproc_msi_irq_setup.exit_crit_edge

for.inc.i.iproc_msi_irq_setup.exit_crit_edge:     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iproc_msi_irq_setup.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

iproc_msi_irq_setup.exit:                         ; preds = %for.inc.i.iproc_msi_irq_setup.exit_crit_edge, %for.body.i.i.iproc_msi_irq_setup.exit_crit_edge, %for.body126.iproc_msi_irq_setup.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %for.body126.iproc_msi_irq_setup.exit_crit_edge ], [ %ret.042.i, %for.body.i.i.iproc_msi_irq_setup.exit_crit_edge ], [ 0, %for.inc.i.iproc_msi_irq_setup.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i) #7
  %tobool128.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool128.not, label %iproc_msi_irq_setup.exit.for.cond123_crit_edge, label %iproc_msi_irq_setup.exit.for.cond132.preheader_crit_edge

iproc_msi_irq_setup.exit.for.cond132.preheader_crit_edge: ; preds = %iproc_msi_irq_setup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond132.preheader

iproc_msi_irq_setup.exit.for.cond123_crit_edge:   ; preds = %iproc_msi_irq_setup.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond123

for.cond132.preheader:                            ; preds = %iproc_msi_irq_setup.exit.for.cond132.preheader_crit_edge, %iproc_msi_irq_setup.exit.thread
  %retval.0.i306 = phi i32 [ %ret.042.i, %iproc_msi_irq_setup.exit.thread ], [ %retval.0.i, %iproc_msi_irq_setup.exit.for.cond132.preheader_crit_edge ]
  %call133294 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %123 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call133294, i32 %123)
  %cmp134295 = icmp ult i32 %call133294, %123
  br i1 %cmp134295, label %for.cond132.preheader.for.body135_crit_edge, label %for.cond132.preheader.for.end136_crit_edge

for.cond132.preheader.for.end136_crit_edge:       ; preds = %for.cond132.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end136

for.cond132.preheader.for.body135_crit_edge:      ; preds = %for.cond132.preheader
  br label %for.body135

for.end131:                                       ; preds = %for.cond123
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @iproc_msi_enable(ptr noundef nonnull %call.i)
  br label %cleanup159

for.body135:                                      ; preds = %iproc_msi_irq_free.exit.for.body135_crit_edge, %for.cond132.preheader.for.body135_crit_edge
  %call133296 = phi i32 [ %call133, %iproc_msi_irq_free.exit.for.body135_crit_edge ], [ %call133294, %for.cond132.preheader.for.body135_crit_edge ]
  %124 = ptrtoint ptr %nr_irqs to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %nr_irqs, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %125, i32 %call133296)
  %cmp5.i = icmp sgt i32 %125, %call133296
  br i1 %cmp5.i, label %for.body135.for.body.i277_crit_edge, label %for.body135.iproc_msi_irq_free.exit_crit_edge

for.body135.iproc_msi_irq_free.exit_crit_edge:    ; preds = %for.body135
  call void @__sanitizer_cov_trace_pc() #9
  br label %iproc_msi_irq_free.exit

for.body135.for.body.i277_crit_edge:              ; preds = %for.body135
  br label %for.body.i277

for.body.i277:                                    ; preds = %for.body.i277.for.body.i277_crit_edge, %for.body135.for.body.i277_crit_edge
  %i.06.i = phi i32 [ %add.i275, %for.body.i277.for.body.i277_crit_edge ], [ %call133296, %for.body135.for.body.i277_crit_edge ]
  %126 = ptrtoint ptr %grps to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %grps, align 4
  %gic_irq.i274 = getelementptr %struct.iproc_msi_grp, ptr %127, i32 %i.06.i, i32 1
  %128 = ptrtoint ptr %gic_irq.i274 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %gic_irq.i274, align 4
  call void @irq_set_chained_handler_and_data(i32 noundef %129, ptr noundef null, ptr noundef null) #7
  %130 = ptrtoint ptr %nr_cpus to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %nr_cpus, align 4
  %add.i275 = add i32 %131, %i.06.i
  %132 = ptrtoint ptr %nr_irqs to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %nr_irqs, align 4
  %cmp.i276 = icmp slt i32 %add.i275, %133
  br i1 %cmp.i276, label %for.body.i277.for.body.i277_crit_edge, label %for.body.i277.iproc_msi_irq_free.exit_crit_edge

for.body.i277.iproc_msi_irq_free.exit_crit_edge:  ; preds = %for.body.i277
  call void @__sanitizer_cov_trace_pc() #9
  br label %iproc_msi_irq_free.exit

for.body.i277.for.body.i277_crit_edge:            ; preds = %for.body.i277
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i277

iproc_msi_irq_free.exit:                          ; preds = %for.body.i277.iproc_msi_irq_free.exit_crit_edge, %for.body135.iproc_msi_irq_free.exit_crit_edge
  %call133 = call i32 @cpumask_next(i32 noundef %call133296, ptr noundef nonnull @__cpu_online_mask) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %134 = load i32, ptr @nr_cpu_ids, align 4
  %cmp134 = icmp ult i32 %call133, %134
  br i1 %cmp134, label %iproc_msi_irq_free.exit.for.body135_crit_edge, label %iproc_msi_irq_free.exit.for.end136_crit_edge

iproc_msi_irq_free.exit.for.end136_crit_edge:     ; preds = %iproc_msi_irq_free.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end136

iproc_msi_irq_free.exit.for.body135_crit_edge:    ; preds = %iproc_msi_irq_free.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body135

for.end136:                                       ; preds = %iproc_msi_irq_free.exit.for.end136_crit_edge, %for.cond132.preheader.for.end136_crit_edge
  call fastcc void @iproc_msi_free_domains(ptr noundef nonnull %call.i)
  br label %free_eq_dma

free_eq_dma:                                      ; preds = %for.end136, %do.end120
  %ret.2 = phi i32 [ %call115, %do.end120 ], [ %retval.0.i306, %for.end136 ]
  %135 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %pcie, align 4
  %137 = ptrtoint ptr %nr_eq_region108 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %nr_eq_region108, align 4
  %mul139 = shl i32 %138, 12
  %139 = ptrtoint ptr %eq_cpu to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %eq_cpu, align 4
  %141 = ptrtoint ptr %eq_dma to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %eq_dma, align 4
  call void @dma_free_attrs(ptr noundef %136, i32 noundef %mul139, ptr noundef %140, i32 noundef %142, i32 noundef 0) #7
  br label %free_irqs

free_irqs:                                        ; preds = %free_eq_dma, %for.end.free_irqs_crit_edge, %cleanup
  %ret.3 = phi i32 [ -19, %cleanup ], [ %ret.2, %free_eq_dma ], [ -12, %for.end.free_irqs_crit_edge ]
  %143 = ptrtoint ptr %nr_irqs to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %nr_irqs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %144)
  %cmp144298 = icmp sgt i32 %144, 0
  br i1 %cmp144298, label %free_irqs.for.body145_crit_edge, label %free_irqs.for.end157_crit_edge

free_irqs.for.end157_crit_edge:                   ; preds = %free_irqs
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end157

free_irqs.for.body145_crit_edge:                  ; preds = %free_irqs
  br label %for.body145

for.body145:                                      ; preds = %for.inc155.for.body145_crit_edge, %free_irqs.for.body145_crit_edge
  %i.1299 = phi i32 [ %inc156, %for.inc155.for.body145_crit_edge ], [ 0, %free_irqs.for.body145_crit_edge ]
  %145 = ptrtoint ptr %grps to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %grps, align 4
  %gic_irq148 = getelementptr %struct.iproc_msi_grp, ptr %146, i32 %i.1299, i32 1
  %147 = ptrtoint ptr %gic_irq148 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %gic_irq148, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %148)
  %tobool149.not = icmp eq i32 %148, 0
  br i1 %tobool149.not, label %for.body145.for.inc155_crit_edge, label %if.then150

for.body145.for.inc155_crit_edge:                 ; preds = %for.body145
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc155

if.then150:                                       ; preds = %for.body145
  call void @__sanitizer_cov_trace_pc() #9
  call void @irq_dispose_mapping(i32 noundef %148) #7
  br label %for.inc155

for.inc155:                                       ; preds = %if.then150, %for.body145.for.inc155_crit_edge
  %inc156 = add nuw nsw i32 %i.1299, 1
  %149 = ptrtoint ptr %nr_irqs to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %nr_irqs, align 4
  %cmp144 = icmp slt i32 %inc156, %150
  br i1 %cmp144, label %for.inc155.for.body145_crit_edge, label %for.inc155.for.end157_crit_edge

for.inc155.for.end157_crit_edge:                  ; preds = %for.inc155
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end157

for.inc155.for.body145_crit_edge:                 ; preds = %for.inc155
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body145

for.end157:                                       ; preds = %for.inc155.for.end157_crit_edge, %free_irqs.for.end157_crit_edge
  %151 = ptrtoint ptr %msi5 to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr null, ptr %msi5, align 4
  br label %cleanup159

cleanup159:                                       ; preds = %for.end157, %for.end131, %devm_kcalloc.exit267.cleanup159_crit_edge, %devm_kcalloc.exit267.thread, %if.end74.cleanup159_crit_edge, %do.end69, %do.end44, %do.end25, %if.end8.cleanup159_crit_edge, %if.end4.cleanup159_crit_edge, %if.end.cleanup159_crit_edge, %entry.cleanup159_crit_edge
  %retval.0 = phi i32 [ -22, %do.end44 ], [ -22, %do.end69 ], [ %ret.3, %for.end157 ], [ 0, %for.end131 ], [ -19, %do.end25 ], [ -19, %entry.cleanup159_crit_edge ], [ -19, %if.end.cleanup159_crit_edge ], [ -16, %if.end4.cleanup159_crit_edge ], [ -12, %if.end8.cleanup159_crit_edge ], [ -12, %if.end74.cleanup159_crit_edge ], [ -12, %devm_kcalloc.exit267.cleanup159_crit_edge ], [ -12, %devm_kcalloc.exit267.thread ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @iproc_msi_alloc_domains(ptr noundef %node, ptr noundef %msi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_msi_vecs = getelementptr inbounds %struct.iproc_msi, ptr %msi, i32 0, i32 8
  %0 = ptrtoint ptr %nr_msi_vecs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_msi_vecs, align 4
  %call1.i = tail call ptr @__irq_domain_add(ptr noundef null, i32 noundef %1, i32 noundef %1, i32 noundef 0, ptr noundef nonnull @msi_domain_ops, ptr noundef %msi) #7
  %inner_domain = getelementptr inbounds %struct.iproc_msi, ptr %msi, i32 0, i32 9
  %2 = ptrtoint ptr %inner_domain to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1.i, ptr %inner_domain, align 4
  %tobool.not = icmp eq ptr %call1.i, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  %tobool.not.i = icmp eq ptr %node, null
  %fwnode.i = getelementptr inbounds %struct.device_node, ptr %node, i32 0, i32 3
  %spec.select.i = select i1 %tobool.not.i, ptr null, ptr %fwnode.i
  %call4 = tail call ptr @pci_msi_create_irq_domain(ptr noundef %spec.select.i, ptr noundef nonnull @iproc_msi_domain_info, ptr noundef nonnull %call1.i) #7
  %msi_domain = getelementptr inbounds %struct.iproc_msi, ptr %msi, i32 0, i32 10
  %3 = ptrtoint ptr %msi_domain to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call4, ptr %msi_domain, align 4
  %tobool6.not = icmp eq ptr %call4, null
  br i1 %tobool6.not, label %if.then7, label %if.end.return_crit_edge

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %inner_domain to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %inner_domain, align 4
  tail call void @irq_domain_remove(ptr noundef %5) #7
  br label %return

return:                                           ; preds = %if.then7, %if.end.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -12, %if.then7 ], [ -12, %entry.return_crit_edge ], [ 0, %if.end.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iproc_msi_enable(ptr nocapture noundef readonly %msi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %nr_eq_region = getelementptr inbounds %struct.iproc_msi, ptr %msi, i32 0, i32 11
  %0 = ptrtoint ptr %nr_eq_region to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_eq_region, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp80.not = icmp eq i32 %1, 0
  br i1 %cmp80.not, label %entry.for.cond2.preheader_crit_edge, label %for.body.lr.ph

entry.for.cond2.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond2.preheader

for.body.lr.ph:                                   ; preds = %entry
  %eq_dma = getelementptr inbounds %struct.iproc_msi, ptr %msi, i32 0, i32 14
  %reg_offsets.i = getelementptr inbounds %struct.iproc_msi, ptr %msi, i32 0, i32 1
  br label %for.body

for.cond2.preheader:                              ; preds = %for.body.for.cond2.preheader_crit_edge, %entry.for.cond2.preheader_crit_edge
  %nr_msi_region = getelementptr inbounds %struct.iproc_msi, ptr %msi, i32 0, i32 12
  %2 = ptrtoint ptr %nr_msi_region to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_msi_region, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp382.not = icmp eq i32 %3, 0
  br i1 %cmp382.not, label %for.cond2.preheader.for.cond14.preheader_crit_edge, label %for.body4.lr.ph

for.cond2.preheader.for.cond14.preheader_crit_edge: ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond14.preheader

for.body4.lr.ph:                                  ; preds = %for.cond2.preheader
  %msi_addr = getelementptr inbounds %struct.iproc_msi, ptr %msi, i32 0, i32 15
  %reg_offsets.i56 = getelementptr inbounds %struct.iproc_msi, ptr %msi, i32 0, i32 1
  br label %for.body4

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.081 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %eq_dma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %eq_dma, align 4
  %mul = shl i32 %i.081, 12
  %add = add i32 %5, %mul
  %6 = ptrtoint ptr %msi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %msi, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %add) #7
  %base.i = getelementptr inbounds %struct.iproc_pcie, ptr %7, i32 0, i32 3
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 4
  %11 = ptrtoint ptr %reg_offsets.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_offsets.i, align 4
  %arrayidx2.i = getelementptr [8 x i16], ptr %12, i32 %i.081, i32 0
  %13 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %arrayidx2.i, align 2
  %conv.i = zext i16 %14 to i32
  %add.ptr.i = getelementptr i8, ptr %10, i32 %conv.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %8) #7, !srcloc !86
  %15 = ptrtoint ptr %msi to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %msi, align 4
  %base.i50 = getelementptr inbounds %struct.iproc_pcie, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %base.i50 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i50, align 4
  %19 = ptrtoint ptr %reg_offsets.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %reg_offsets.i, align 4
  %arrayidx2.i52 = getelementptr [8 x i16], ptr %20, i32 %i.081, i32 1
  %21 = ptrtoint ptr %arrayidx2.i52 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %arrayidx2.i52, align 2
  %conv.i53 = zext i16 %22 to i32
  %add.ptr.i54 = getelementptr i8, ptr %18, i32 %conv.i53
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i54, i32 0) #7, !srcloc !86
  %inc = add nuw i32 %i.081, 1
  %23 = ptrtoint ptr %nr_eq_region to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nr_eq_region, align 4
  %cmp = icmp ult i32 %inc, %24
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.cond2.preheader_crit_edge

for.body.for.cond2.preheader_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond2.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond14.preheader:                             ; preds = %for.body4.for.cond14.preheader_crit_edge, %for.cond2.preheader.for.cond14.preheader_crit_edge
  %nr_irqs = getelementptr inbounds %struct.iproc_msi, ptr %msi, i32 0, i32 3
  %25 = ptrtoint ptr %nr_irqs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nr_irqs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp1584 = icmp sgt i32 %26, 0
  br i1 %cmp1584, label %for.body16.lr.ph, label %for.cond14.preheader.for.end19_crit_edge

for.cond14.preheader.for.end19_crit_edge:         ; preds = %for.cond14.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end19

for.body16.lr.ph:                                 ; preds = %for.cond14.preheader
  %reg_offsets.i66 = getelementptr inbounds %struct.iproc_msi, ptr %msi, i32 0, i32 1
  %has_inten_reg = getelementptr inbounds %struct.iproc_msi, ptr %msi, i32 0, i32 5
  br label %for.body16

for.body4:                                        ; preds = %for.body4.for.body4_crit_edge, %for.body4.lr.ph
  %i.183 = phi i32 [ 0, %for.body4.lr.ph ], [ %inc12, %for.body4.for.body4_crit_edge ]
  %27 = ptrtoint ptr %msi_addr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %msi_addr, align 4
  %mul6 = shl i32 %i.183, 12
  %add7 = add i32 %28, %mul6
  %29 = ptrtoint ptr %msi to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %msi, align 4
  %31 = tail call i32 @llvm.bswap.i32(i32 %add7) #7
  %base.i55 = getelementptr inbounds %struct.iproc_pcie, ptr %30, i32 0, i32 3
  %32 = ptrtoint ptr %base.i55 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i55, align 4
  %34 = ptrtoint ptr %reg_offsets.i56 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %reg_offsets.i56, align 4
  %arrayidx2.i57 = getelementptr [8 x i16], ptr %35, i32 %i.183, i32 2
  %36 = ptrtoint ptr %arrayidx2.i57 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx2.i57, align 2
  %conv.i58 = zext i16 %37 to i32
  %add.ptr.i59 = getelementptr i8, ptr %33, i32 %conv.i58
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i59, i32 %31) #7, !srcloc !86
  %38 = ptrtoint ptr %msi to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %msi, align 4
  %base.i60 = getelementptr inbounds %struct.iproc_pcie, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %base.i60 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i60, align 4
  %42 = ptrtoint ptr %reg_offsets.i56 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %reg_offsets.i56, align 4
  %arrayidx2.i62 = getelementptr [8 x i16], ptr %43, i32 %i.183, i32 3
  %44 = ptrtoint ptr %arrayidx2.i62 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %arrayidx2.i62, align 2
  %conv.i63 = zext i16 %45 to i32
  %add.ptr.i64 = getelementptr i8, ptr %41, i32 %conv.i63
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i64, i32 0) #7, !srcloc !86
  %inc12 = add nuw i32 %i.183, 1
  %46 = ptrtoint ptr %nr_msi_region to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %nr_msi_region, align 4
  %cmp3 = icmp ult i32 %inc12, %47
  br i1 %cmp3, label %for.body4.for.body4_crit_edge, label %for.body4.for.cond14.preheader_crit_edge

for.body4.for.cond14.preheader_crit_edge:         ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond14.preheader

for.body4.for.body4_crit_edge:                    ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body4

for.body16:                                       ; preds = %for.inc17.for.body16_crit_edge, %for.body16.lr.ph
  %eq.085 = phi i32 [ 0, %for.body16.lr.ph ], [ %inc18, %for.inc17.for.body16_crit_edge ]
  %48 = ptrtoint ptr %msi to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %msi, align 4
  %base.i65 = getelementptr inbounds %struct.iproc_pcie, ptr %49, i32 0, i32 3
  %50 = ptrtoint ptr %base.i65 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base.i65, align 4
  %52 = ptrtoint ptr %reg_offsets.i66 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %reg_offsets.i66, align 4
  %arrayidx2.i67 = getelementptr [8 x i16], ptr %53, i32 %eq.085, i32 4
  %54 = ptrtoint ptr %arrayidx2.i67 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %arrayidx2.i67, align 2
  %conv.i68 = zext i16 %55 to i32
  %add.ptr.i69 = getelementptr i8, ptr %51, i32 %conv.i68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i69, i32 50855936) #7, !srcloc !86
  %56 = ptrtoint ptr %has_inten_reg to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %has_inten_reg, align 4, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.not = icmp eq i8 %57, 0
  br i1 %tobool.not, label %for.body16.for.inc17_crit_edge, label %if.then

for.body16.for.inc17_crit_edge:                   ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc17

if.then:                                          ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %msi to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %msi, align 4
  %base.i70 = getelementptr inbounds %struct.iproc_pcie, ptr %59, i32 0, i32 3
  %60 = ptrtoint ptr %base.i70 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %base.i70, align 4
  %62 = ptrtoint ptr %reg_offsets.i66 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %reg_offsets.i66, align 4
  %arrayidx2.i72 = getelementptr [8 x i16], ptr %63, i32 %eq.085, i32 7
  %64 = ptrtoint ptr %arrayidx2.i72 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %arrayidx2.i72, align 2
  %conv.i73 = zext i16 %65 to i32
  %add.ptr.i74 = getelementptr i8, ptr %61, i32 %conv.i73
  %66 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i74) #7, !srcloc !88
  %67 = tail call i32 @llvm.bswap.i32(i32 %66) #7
  %shl = shl nuw i32 1, %eq.085
  %or = or i32 %67, %shl
  %68 = ptrtoint ptr %msi to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %msi, align 4
  %70 = tail call i32 @llvm.bswap.i32(i32 %or) #7
  %base.i75 = getelementptr inbounds %struct.iproc_pcie, ptr %69, i32 0, i32 3
  %71 = ptrtoint ptr %base.i75 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %base.i75, align 4
  %73 = ptrtoint ptr %reg_offsets.i66 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %reg_offsets.i66, align 4
  %arrayidx2.i77 = getelementptr [8 x i16], ptr %74, i32 %eq.085, i32 7
  %75 = ptrtoint ptr %arrayidx2.i77 to i32
  call void @__asan_load2_noabort(i32 %75)
  %76 = load i16, ptr %arrayidx2.i77, align 2
  %conv.i78 = zext i16 %76 to i32
  %add.ptr.i79 = getelementptr i8, ptr %72, i32 %conv.i78
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i79, i32 %70) #7, !srcloc !86
  br label %for.inc17

for.inc17:                                        ; preds = %if.then, %for.body16.for.inc17_crit_edge
  %inc18 = add nuw nsw i32 %eq.085, 1
  %77 = ptrtoint ptr %nr_irqs to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %nr_irqs, align 4
  %cmp15 = icmp slt i32 %inc18, %78
  br i1 %cmp15, label %for.inc17.for.body16_crit_edge, label %for.inc17.for.end19_crit_edge

for.inc17.for.end19_crit_edge:                    ; preds = %for.inc17
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end19

for.inc17.for.body16_crit_edge:                   ; preds = %for.inc17
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body16

for.end19:                                        ; preds = %for.inc17.for.end19_crit_edge, %for.cond14.preheader.for.end19_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @iproc_msi_free_domains(ptr nocapture noundef readonly %msi) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %msi_domain = getelementptr inbounds %struct.iproc_msi, ptr %msi, i32 0, i32 10
  %0 = ptrtoint ptr %msi_domain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msi_domain, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @irq_domain_remove(ptr noundef nonnull %1) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %inner_domain = getelementptr inbounds %struct.iproc_msi, ptr %msi, i32 0, i32 9
  %2 = ptrtoint ptr %inner_domain to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %inner_domain, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @irq_domain_remove(ptr noundef nonnull %3) #7
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_dispose_mapping(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @iproc_msi_exit(ptr nocapture noundef readonly %pcie) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %msi1 = getelementptr inbounds %struct.iproc_pcie, ptr %pcie, i32 0, i32 20
  %0 = ptrtoint ptr %msi1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %msi1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %nr_irqs.i = getelementptr inbounds %struct.iproc_msi, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %nr_irqs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_irqs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp32.not.i = icmp eq i32 %3, 0
  br i1 %cmp32.not.i, label %if.end.iproc_msi_disable.exit_crit_edge, label %for.body.lr.ph.i

if.end.iproc_msi_disable.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %iproc_msi_disable.exit

for.body.lr.ph.i:                                 ; preds = %if.end
  %has_inten_reg.i = getelementptr inbounds %struct.iproc_msi, ptr %1, i32 0, i32 5
  %reg_offsets.i.i = getelementptr inbounds %struct.iproc_msi, ptr %1, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %eq.033.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %has_inten_reg.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %has_inten_reg.i, align 4, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %base.i.i = getelementptr inbounds %struct.iproc_pcie, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i.i, align 4
  %10 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_offsets.i.i, align 4
  %arrayidx2.i.i = getelementptr [8 x i16], ptr %11, i32 %eq.033.i, i32 7
  %12 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx2.i.i, align 2
  %conv.i.i = zext i16 %13 to i32
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 %conv.i.i
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !88
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #7
  %shl.i = shl nuw i32 1, %eq.033.i
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %15, %neg.i
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %and.i) #7
  %base.i17.i = getelementptr inbounds %struct.iproc_pcie, ptr %17, i32 0, i32 3
  %19 = ptrtoint ptr %base.i17.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i17.i, align 4
  %21 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %reg_offsets.i.i, align 4
  %arrayidx2.i19.i = getelementptr [8 x i16], ptr %22, i32 %eq.033.i, i32 7
  %23 = ptrtoint ptr %arrayidx2.i19.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx2.i19.i, align 2
  %conv.i20.i = zext i16 %24 to i32
  %add.ptr.i21.i = getelementptr i8, ptr %20, i32 %conv.i20.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21.i, i32 %18) #7, !srcloc !86
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %base.i22.i = getelementptr inbounds %struct.iproc_pcie, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %base.i22.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i22.i, align 4
  %29 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %reg_offsets.i.i, align 4
  %arrayidx2.i24.i = getelementptr [8 x i16], ptr %30, i32 %eq.033.i, i32 4
  %31 = ptrtoint ptr %arrayidx2.i24.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %arrayidx2.i24.i, align 2
  %conv.i25.i = zext i16 %32 to i32
  %add.ptr.i26.i = getelementptr i8, ptr %28, i32 %conv.i25.i
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i26.i) #7, !srcloc !88
  %34 = and i32 %33, -50855937
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %base.i27.i = getelementptr inbounds %struct.iproc_pcie, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %base.i27.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base.i27.i, align 4
  %39 = ptrtoint ptr %reg_offsets.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %reg_offsets.i.i, align 4
  %arrayidx2.i29.i = getelementptr [8 x i16], ptr %40, i32 %eq.033.i, i32 4
  %41 = ptrtoint ptr %arrayidx2.i29.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %arrayidx2.i29.i, align 2
  %conv.i30.i = zext i16 %42 to i32
  %add.ptr.i31.i = getelementptr i8, ptr %38, i32 %conv.i30.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i31.i, i32 %34) #7, !srcloc !86
  %inc.i = add nuw i32 %eq.033.i, 1
  %43 = ptrtoint ptr %nr_irqs.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %nr_irqs.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %44
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.iproc_msi_disable.exit_crit_edge

if.end.i.iproc_msi_disable.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %iproc_msi_disable.exit

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

iproc_msi_disable.exit:                           ; preds = %if.end.i.iproc_msi_disable.exit_crit_edge, %if.end.iproc_msi_disable.exit_crit_edge
  %call37 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_online_mask) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %45 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call37, i32 %45)
  %cmp38 = icmp ult i32 %call37, %45
  br i1 %cmp38, label %for.body.lr.ph, label %iproc_msi_disable.exit.for.end_crit_edge

iproc_msi_disable.exit.for.end_crit_edge:         ; preds = %iproc_msi_disable.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %iproc_msi_disable.exit
  %grps.i = getelementptr inbounds %struct.iproc_msi, ptr %1, i32 0, i32 2
  %nr_cpus.i = getelementptr inbounds %struct.iproc_msi, ptr %1, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %iproc_msi_irq_free.exit.for.body_crit_edge, %for.body.lr.ph
  %call39 = phi i32 [ %call37, %for.body.lr.ph ], [ %call, %iproc_msi_irq_free.exit.for.body_crit_edge ]
  %46 = ptrtoint ptr %nr_irqs.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %nr_irqs.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %call39)
  %cmp5.i = icmp sgt i32 %47, %call39
  br i1 %cmp5.i, label %for.body.for.body.i33_crit_edge, label %for.body.iproc_msi_irq_free.exit_crit_edge

for.body.iproc_msi_irq_free.exit_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %iproc_msi_irq_free.exit

for.body.for.body.i33_crit_edge:                  ; preds = %for.body
  br label %for.body.i33

for.body.i33:                                     ; preds = %for.body.i33.for.body.i33_crit_edge, %for.body.for.body.i33_crit_edge
  %i.06.i = phi i32 [ %add.i, %for.body.i33.for.body.i33_crit_edge ], [ %call39, %for.body.for.body.i33_crit_edge ]
  %48 = ptrtoint ptr %grps.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %grps.i, align 4
  %gic_irq.i = getelementptr %struct.iproc_msi_grp, ptr %49, i32 %i.06.i, i32 1
  %50 = ptrtoint ptr %gic_irq.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %gic_irq.i, align 4
  tail call void @irq_set_chained_handler_and_data(i32 noundef %51, ptr noundef null, ptr noundef null) #7
  %52 = ptrtoint ptr %nr_cpus.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %nr_cpus.i, align 4
  %add.i = add i32 %53, %i.06.i
  %54 = ptrtoint ptr %nr_irqs.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %nr_irqs.i, align 4
  %cmp.i32 = icmp slt i32 %add.i, %55
  br i1 %cmp.i32, label %for.body.i33.for.body.i33_crit_edge, label %for.body.i33.iproc_msi_irq_free.exit_crit_edge

for.body.i33.iproc_msi_irq_free.exit_crit_edge:   ; preds = %for.body.i33
  call void @__sanitizer_cov_trace_pc() #9
  br label %iproc_msi_irq_free.exit

for.body.i33.for.body.i33_crit_edge:              ; preds = %for.body.i33
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i33

iproc_msi_irq_free.exit:                          ; preds = %for.body.i33.iproc_msi_irq_free.exit_crit_edge, %for.body.iproc_msi_irq_free.exit_crit_edge
  %call = tail call i32 @cpumask_next(i32 noundef %call39, ptr noundef nonnull @__cpu_online_mask) #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %56 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %56
  br i1 %cmp, label %iproc_msi_irq_free.exit.for.body_crit_edge, label %iproc_msi_irq_free.exit.for.end_crit_edge

iproc_msi_irq_free.exit.for.end_crit_edge:        ; preds = %iproc_msi_irq_free.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

iproc_msi_irq_free.exit.for.body_crit_edge:       ; preds = %iproc_msi_irq_free.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %iproc_msi_irq_free.exit.for.end_crit_edge, %iproc_msi_disable.exit.for.end_crit_edge
  %msi_domain.i = getelementptr inbounds %struct.iproc_msi, ptr %1, i32 0, i32 10
  %57 = ptrtoint ptr %msi_domain.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %msi_domain.i, align 4
  %tobool.not.i34 = icmp eq ptr %58, null
  br i1 %tobool.not.i34, label %for.end.if.end.i36_crit_edge, label %if.then.i35

for.end.if.end.i36_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i36

if.then.i35:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @irq_domain_remove(ptr noundef nonnull %58) #7
  br label %if.end.i36

if.end.i36:                                       ; preds = %if.then.i35, %for.end.if.end.i36_crit_edge
  %inner_domain.i = getelementptr inbounds %struct.iproc_msi, ptr %1, i32 0, i32 9
  %59 = ptrtoint ptr %inner_domain.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %inner_domain.i, align 4
  %tobool2.not.i = icmp eq ptr %60, null
  br i1 %tobool2.not.i, label %if.end.i36.iproc_msi_free_domains.exit_crit_edge, label %if.then3.i

if.end.i36.iproc_msi_free_domains.exit_crit_edge: ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #9
  br label %iproc_msi_free_domains.exit

if.then3.i:                                       ; preds = %if.end.i36
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @irq_domain_remove(ptr noundef nonnull %60) #7
  br label %iproc_msi_free_domains.exit

iproc_msi_free_domains.exit:                      ; preds = %if.then3.i, %if.end.i36.iproc_msi_free_domains.exit_crit_edge
  %61 = ptrtoint ptr %pcie to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %pcie, align 4
  %nr_eq_region = getelementptr inbounds %struct.iproc_msi, ptr %1, i32 0, i32 11
  %63 = ptrtoint ptr %nr_eq_region to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %nr_eq_region, align 4
  %mul = shl i32 %64, 12
  %eq_cpu = getelementptr inbounds %struct.iproc_msi, ptr %1, i32 0, i32 13
  %65 = ptrtoint ptr %eq_cpu to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %eq_cpu, align 4
  %eq_dma = getelementptr inbounds %struct.iproc_msi, ptr %1, i32 0, i32 14
  %67 = ptrtoint ptr %eq_dma to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %eq_dma, align 4
  tail call void @dma_free_attrs(ptr noundef %62, i32 noundef %mul, ptr noundef %66, i32 noundef %68, i32 noundef 0) #7
  %69 = ptrtoint ptr %nr_irqs.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %nr_irqs.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %cmp340.not = icmp eq i32 %70, 0
  br i1 %cmp340.not, label %iproc_msi_free_domains.exit.cleanup_crit_edge, label %for.body4.lr.ph

iproc_msi_free_domains.exit.cleanup_crit_edge:    ; preds = %iproc_msi_free_domains.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body4.lr.ph:                                  ; preds = %iproc_msi_free_domains.exit
  %grps = getelementptr inbounds %struct.iproc_msi, ptr %1, i32 0, i32 2
  br label %for.body4

for.body4:                                        ; preds = %for.inc.for.body4_crit_edge, %for.body4.lr.ph
  %i.041 = phi i32 [ 0, %for.body4.lr.ph ], [ %inc, %for.inc.for.body4_crit_edge ]
  %71 = ptrtoint ptr %grps to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %grps, align 4
  %gic_irq = getelementptr %struct.iproc_msi_grp, ptr %72, i32 %i.041, i32 1
  %73 = ptrtoint ptr %gic_irq to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %gic_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74)
  %tobool5.not = icmp eq i32 %74, 0
  br i1 %tobool5.not, label %for.body4.for.inc_crit_edge, label %if.then6

for.body4.for.inc_crit_edge:                      ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then6:                                         ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @irq_dispose_mapping(i32 noundef %74) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then6, %for.body4.for.inc_crit_edge
  %inc = add nuw i32 %i.041, 1
  %75 = ptrtoint ptr %nr_irqs.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %nr_irqs.i, align 4
  %cmp3 = icmp ult i32 %inc, %76
  br i1 %cmp3, label %for.inc.for.body4_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.for.body4_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body4

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %iproc_msi_free_domains.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_weight(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pci_msi_create_irq_domain(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_remove(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iproc_msi_irq_domain_alloc(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs, ptr nocapture noundef readnone %args) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %domain, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %nr_cpus = getelementptr inbounds %struct.iproc_msi, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %nr_cpus to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nr_cpus, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp sgt i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nr_irqs)
  %cmp1 = icmp ugt i32 %nr_irqs, 1
  %or.cond = and i1 %cmp1, %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %bitmap_lock = getelementptr inbounds %struct.iproc_msi, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %bitmap_lock, i32 noundef 0) #7
  %bitmap = getelementptr inbounds %struct.iproc_msi, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bitmap, align 4
  %nr_msi_vecs = getelementptr inbounds %struct.iproc_msi, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %nr_msi_vecs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_msi_vecs, align 4
  %8 = ptrtoint ptr %nr_cpus to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_cpus, align 4
  %mul = mul i32 %9, %nr_irqs
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mul)
  %cmp.i = icmp ugt i32 %mul, 1
  %sub.i77 = add i32 %mul, -1
  %10 = tail call i32 @llvm.ctlz.i32(i32 %sub.i77, i1 false) #7, !range !89
  %add.i = sub nuw nsw i32 32, %10
  %cond36 = select i1 %cmp.i, i32 %add.i, i32 0
  %call37 = tail call i32 @bitmap_find_free_region(ptr noundef %5, i32 noundef %7, i32 noundef %cond36) #7
  tail call void @mutex_unlock(ptr noundef %bitmap_lock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp39 = icmp slt i32 %call37, 0
  br i1 %cmp39, label %if.end.cleanup_crit_edge, label %for.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_irqs)
  %cmp4378.not = icmp eq i32 %nr_irqs, 0
  br i1 %cmp4378.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.079 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %add45 = add i32 %i.079, %virq
  %add46 = add i32 %i.079, %call37
  %11 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %host_data, align 4
  tail call void @irq_domain_set_info(ptr noundef %domain, i32 noundef %add45, i32 noundef %add46, ptr noundef nonnull @iproc_msi_bottom_irq_chip, ptr noundef %12, ptr noundef nonnull @handle_simple_irq, ptr noundef null, ptr noundef null) #7
  %inc = add nuw i32 %i.079, 1
  %exitcond.not = icmp eq i32 %inc, %nr_irqs
  br i1 %exitcond.not, label %for.body.cleanup_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -28, %if.end.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iproc_msi_irq_domain_free(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @irq_domain_get_irq_data(ptr noundef %domain, i32 noundef %virq) #7
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %call, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %bitmap_lock = getelementptr inbounds %struct.iproc_msi, ptr %1, i32 0, i32 7
  tail call void @mutex_lock_nested(ptr noundef %bitmap_lock, i32 noundef 0) #7
  %hwirq2 = getelementptr inbounds %struct.irq_data, ptr %call, i32 0, i32 2
  %2 = ptrtoint ptr %hwirq2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hwirq2, align 4
  %nr_cpus.i.i = getelementptr inbounds %struct.iproc_msi, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %nr_cpus.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_cpus.i.i, align 4
  %bitmap = getelementptr inbounds %struct.iproc_msi, ptr %1, i32 0, i32 6
  %6 = ptrtoint ptr %bitmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bitmap, align 4
  %mul = mul i32 %5, %nr_irqs
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mul)
  %cmp.i = icmp ugt i32 %mul, 1
  %sub.i62 = add i32 %mul, -1
  %8 = tail call i32 @llvm.ctlz.i32(i32 %sub.i62, i1 false) #7, !range !89
  %add.i = sub nuw nsw i32 32, %8
  %cond37 = select i1 %cmp.i, i32 %add.i, i32 0
  %rem.i.i = urem i32 %3, %5
  %sub.i = sub i32 %3, %rem.i.i
  tail call void @bitmap_release_region(ptr noundef %7, i32 noundef %sub.i, i32 noundef %cond37) #7
  tail call void @mutex_unlock(ptr noundef %bitmap_lock) #7
  tail call void @irq_domain_free_irqs_parent(ptr noundef %domain, i32 noundef %virq, i32 noundef %nr_irqs) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_find_free_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_set_info(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_simple_irq(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @iproc_msi_irq_set_affinity(ptr nocapture noundef %data, ptr noundef %mask, i1 noundef zeroext %force) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %2 = load i32, ptr @nr_cpu_ids, align 4
  %call.i = tail call i32 @_find_first_bit_be(ptr noundef %mask, i32 noundef %2) #7
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %3 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %hwirq, align 4
  %nr_cpus.i = getelementptr inbounds %struct.iproc_msi, ptr %1, i32 0, i32 4
  %5 = ptrtoint ptr %nr_cpus.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %nr_cpus.i, align 4
  %rem.i = urem i32 %4, %6
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.i, i32 %call.i)
  %cmp = icmp eq i32 %rem.i, %call.i
  br i1 %cmp, label %entry.if.end_crit_edge, label %if.else

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = add i32 %4, %call.i
  %add = sub i32 %sub.i, %rem.i
  %7 = ptrtoint ptr %hwirq to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %add, ptr %hwirq, align 4
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %if.else ], [ 2, %entry.if.end_crit_edge ]
  %rem.i14 = and i32 %call.i, 31
  %add.i = add nuw nsw i32 %rem.i14, 1
  %arrayidx.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i
  %div3.i = lshr i32 %call.i, 5
  %idx.neg.i = sub nsw i32 0, %div3.i
  %add.ptr.i = getelementptr i32, ptr %arrayidx.i, i32 %idx.neg.i
  %common.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 3
  %8 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %common.i, align 4
  %effective_affinity.i = getelementptr inbounds %struct.irq_common_data, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %effective_affinity.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %effective_affinity.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %12 = load i32, ptr @nr_cpu_ids, align 4
  %sub.i.i.i = add i32 %12, 31
  %13 = lshr i32 %sub.i.i.i, 3
  %mul.i.i.i = and i32 %13, 536870908
  %14 = call ptr @memcpy(ptr %11, ptr %add.ptr.i, i32 %mul.i.i.i)
  ret i32 %ret.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @iproc_msi_irq_compose_msi_msg(ptr nocapture noundef readonly %data, ptr nocapture noundef writeonly %msg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip_data.i = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 7
  %0 = ptrtoint ptr %chip_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip_data.i, align 4
  %msi_addr = getelementptr inbounds %struct.iproc_msi, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %msi_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %msi_addr, align 4
  %hwirq = getelementptr inbounds %struct.irq_data, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %hwirq, align 4
  %nr_msi_region.i = getelementptr inbounds %struct.iproc_msi, ptr %1, i32 0, i32 12
  %6 = ptrtoint ptr %nr_msi_region.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_msi_region.i, align 4
  %nr_irqs.i.i = getelementptr inbounds %struct.iproc_msi, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %nr_irqs.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_irqs.i.i, align 4
  %rem.i.i = urem i32 %5, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp.inv.i = icmp ult i32 %7, 2
  %..i = select i1 %cmp.inv.i, i32 2, i32 12
  %mul2.i = shl i32 %rem.i.i, %..i
  %add = add i32 %mul2.i, %3
  %10 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %add, ptr %msg, align 4
  %11 = getelementptr inbounds %struct.msi_msg, ptr %msg, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %11, align 4
  %13 = ptrtoint ptr %hwirq to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %hwirq, align 4
  %shl = shl i32 %14, 5
  %15 = getelementptr inbounds %struct.msi_msg, ptr %msg, i32 0, i32 2
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %shl, ptr %15, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_domain_get_irq_data(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_domain_free_irqs_parent(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chained_handler_and_data(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @iproc_msi_handler(ptr noundef %desc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chip.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1, i32 4
  %0 = ptrtoint ptr %chip.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip.i, align 8
  %irq_eoi.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end.i, label %entry.chained_irq_enter.exit_crit_edge

entry.chained_irq_enter.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %chained_irq_enter.exit

if.end.i:                                         ; preds = %entry
  %irq_mask_ack.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %irq_mask_ack.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %irq_mask_ack.i, align 4
  %tobool1.not.i = icmp eq ptr %5, null
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %irq_data.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %5(ptr noundef %irq_data.i) #7
  br label %chained_irq_enter.exit

if.else.i:                                        ; preds = %if.end.i
  %irq_mask.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %irq_mask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq_mask.i, align 4
  %irq_data4.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %7(ptr noundef %irq_data4.i) #7
  %irq_ack.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 6
  %8 = ptrtoint ptr %irq_ack.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %irq_ack.i, align 4
  %tobool5.not.i = icmp eq ptr %9, null
  br i1 %tobool5.not.i, label %if.else.i.chained_irq_enter.exit_crit_edge, label %if.then6.i

if.else.i.chained_irq_enter.exit_crit_edge:       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %chained_irq_enter.exit

if.then6.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %9(ptr noundef %irq_data4.i) #7
  br label %chained_irq_enter.exit

chained_irq_enter.exit:                           ; preds = %if.then6.i, %if.else.i.chained_irq_enter.exit_crit_edge, %if.then2.i, %entry.chained_irq_enter.exit_crit_edge
  %handler_data.i = getelementptr inbounds %struct.irq_common_data, ptr %desc, i32 0, i32 1
  %10 = ptrtoint ptr %handler_data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %handler_data.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %eq3 = getelementptr inbounds %struct.iproc_msi_grp, ptr %11, i32 0, i32 2
  %14 = ptrtoint ptr %eq3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %eq3, align 4
  %16 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %13, align 4
  %base.i = getelementptr inbounds %struct.iproc_pcie, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 4
  %reg_offsets.i = getelementptr inbounds %struct.iproc_msi, ptr %13, i32 0, i32 1
  %20 = ptrtoint ptr %reg_offsets.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg_offsets.i, align 4
  %arrayidx2.i = getelementptr [8 x i16], ptr %21, i32 %15, i32 5
  %22 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %arrayidx2.i, align 2
  %conv.i = zext i16 %23 to i32
  %add.ptr.i = getelementptr i8, ptr %19, i32 %conv.i
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !88
  %25 = lshr i32 %24, 24
  %and = and i32 %25, 63
  %26 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %13, align 4
  %base.i3351 = getelementptr inbounds %struct.iproc_pcie, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %base.i3351 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i3351, align 4
  %30 = ptrtoint ptr %reg_offsets.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %reg_offsets.i, align 4
  %arrayidx2.i3552 = getelementptr [8 x i16], ptr %31, i32 %15, i32 6
  %32 = ptrtoint ptr %arrayidx2.i3552 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %arrayidx2.i3552, align 2
  %conv.i3653 = zext i16 %33 to i32
  %add.ptr.i3754 = getelementptr i8, ptr %29, i32 %conv.i3653
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i3754) #7, !srcloc !88
  %35 = lshr i32 %34, 24
  %and655 = and i32 %35, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %and655, i32 %and)
  %cmp56 = icmp ult i32 %and655, %and
  %sub.neg57 = sub nsw i32 %and655, %and
  %sub758 = add nsw i32 %sub.neg57, 64
  %cond59 = select i1 %cmp56, i32 %sub758, i32 %sub.neg57
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond59)
  %tobool.not60 = icmp eq i32 %cond59, 0
  br i1 %tobool.not60, label %chained_irq_enter.exit.do.end_crit_edge, label %while.cond.preheader.lr.ph

chained_irq_enter.exit.do.end_crit_edge:          ; preds = %chained_irq_enter.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

while.cond.preheader.lr.ph:                       ; preds = %chained_irq_enter.exit
  %nr_eq_region.i.i = getelementptr inbounds %struct.iproc_msi, ptr %13, i32 0, i32 11
  %eq_cpu.i = getelementptr inbounds %struct.iproc_msi, ptr %13, i32 0, i32 13
  %nr_cpus.i.i.i = getelementptr inbounds %struct.iproc_msi, ptr %13, i32 0, i32 4
  %inner_domain = getelementptr inbounds %struct.iproc_msi, ptr %13, i32 0, i32 9
  br label %while.body

while.body:                                       ; preds = %while.body.backedge, %while.cond.preheader.lr.ph
  %nr_events.050 = phi i32 [ %cond59, %while.cond.preheader.lr.ph ], [ %nr_events.050.be, %while.body.backedge ]
  %head.149 = phi i32 [ %and, %while.cond.preheader.lr.ph ], [ %rem, %while.body.backedge ]
  %dec = add i32 %nr_events.050, -1
  %36 = ptrtoint ptr %nr_eq_region.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %nr_eq_region.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %37)
  %cmp.i.i = icmp ugt i32 %37, 1
  %retval.0.v.i.i = select i1 %cmp.i.i, i32 12, i32 8
  %retval.0.i.i = shl i32 %15, %retval.0.v.i.i
  %mul.i = shl nuw nsw i32 %head.149, 2
  %add.i = or i32 %retval.0.i.i, %mul.i
  %38 = ptrtoint ptr %eq_cpu.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %eq_cpu.i, align 4
  %add.ptr.i38 = getelementptr i8, ptr %39, i32 %add.i
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i38) #7, !srcloc !88
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  %shr.i = lshr i32 %41, 5
  %and.i = and i32 %41, 31
  %add3.i = add nuw nsw i32 %shr.i, %and.i
  %42 = ptrtoint ptr %nr_cpus.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %nr_cpus.i.i.i, align 4
  %rem.i.i.i = urem i32 %add3.i, %43
  %sub.i.i = sub nsw i32 %add3.i, %rem.i.i.i
  %44 = ptrtoint ptr %inner_domain to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %inner_domain, align 4
  %call11 = tail call i32 @generic_handle_domain_irq(ptr noundef %45, i32 noundef %sub.i.i) #7
  %inc = add nuw nsw i32 %head.149, 1
  %rem = and i32 %inc, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool9.not = icmp eq i32 %dec, 0
  br i1 %tobool9.not, label %while.cond.while.end_crit_edge, label %while.body.while.body.backedge_crit_edge

while.body.while.body.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.backedge

while.body.backedge:                              ; preds = %while.cond.while.end_crit_edge.while.body.backedge_crit_edge, %while.body.while.body.backedge_crit_edge
  %nr_events.050.be = phi i32 [ %dec, %while.body.while.body.backedge_crit_edge ], [ %cond, %while.cond.while.end_crit_edge.while.body.backedge_crit_edge ]
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.body
  %46 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %13, align 4
  %48 = shl nuw nsw i32 %rem, 24
  %base.i39 = getelementptr inbounds %struct.iproc_pcie, ptr %47, i32 0, i32 3
  %49 = ptrtoint ptr %base.i39 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base.i39, align 4
  %51 = ptrtoint ptr %reg_offsets.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %reg_offsets.i, align 4
  %arrayidx2.i41 = getelementptr [8 x i16], ptr %52, i32 %15, i32 5
  %53 = ptrtoint ptr %arrayidx2.i41 to i32
  call void @__asan_load2_noabort(i32 %53)
  %54 = load i16, ptr %arrayidx2.i41, align 2
  %conv.i42 = zext i16 %54 to i32
  %add.ptr.i43 = getelementptr i8, ptr %50, i32 %conv.i42
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i43, i32 %48) #7, !srcloc !86
  %55 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %13, align 4
  %base.i33 = getelementptr inbounds %struct.iproc_pcie, ptr %56, i32 0, i32 3
  %57 = ptrtoint ptr %base.i33 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base.i33, align 4
  %59 = ptrtoint ptr %reg_offsets.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %reg_offsets.i, align 4
  %arrayidx2.i35 = getelementptr [8 x i16], ptr %60, i32 %15, i32 6
  %61 = ptrtoint ptr %arrayidx2.i35 to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %arrayidx2.i35, align 2
  %conv.i36 = zext i16 %62 to i32
  %add.ptr.i37 = getelementptr i8, ptr %58, i32 %conv.i36
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i37) #7, !srcloc !88
  %64 = lshr i32 %63, 24
  %and6 = and i32 %64, 63
  call void @__sanitizer_cov_trace_cmp4(i32 %and6, i32 %rem)
  %cmp = icmp ult i32 %and6, %rem
  %sub.neg = sub nsw i32 %and6, %rem
  %sub7 = add nsw i32 %sub.neg, 64
  %cond = select i1 %cmp, i32 %sub7, i32 %sub.neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %tobool.not = icmp eq i32 %cond, 0
  br i1 %tobool.not, label %while.cond.while.end_crit_edge.do.end_crit_edge, label %while.cond.while.end_crit_edge.while.body.backedge_crit_edge

while.cond.while.end_crit_edge.while.body.backedge_crit_edge: ; preds = %while.cond.while.end_crit_edge
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.backedge

while.cond.while.end_crit_edge.do.end_crit_edge:  ; preds = %while.cond.while.end_crit_edge
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %while.cond.while.end_crit_edge.do.end_crit_edge, %chained_irq_enter.exit.do.end_crit_edge
  %65 = ptrtoint ptr %irq_eoi.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %irq_eoi.i, align 4
  %tobool.not.i45 = icmp eq ptr %66, null
  br i1 %tobool.not.i45, label %if.else.i46, label %do.end.chained_irq_exit.exit_crit_edge

do.end.chained_irq_exit.exit_crit_edge:           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %chained_irq_exit.exit

if.else.i46:                                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %irq_unmask.i = getelementptr inbounds %struct.irq_chip, ptr %1, i32 0, i32 9
  %67 = ptrtoint ptr %irq_unmask.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %irq_unmask.i, align 4
  br label %chained_irq_exit.exit

chained_irq_exit.exit:                            ; preds = %if.else.i46, %do.end.chained_irq_exit.exit_crit_edge
  %.sink.i = phi ptr [ %68, %if.else.i46 ], [ %66, %do.end.chained_irq_exit.exit_crit_edge ]
  %irq_data2.i = getelementptr inbounds %struct.irq_desc, ptr %desc, i32 0, i32 1
  tail call void %.sink.i(ptr noundef %irq_data2.i) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @alloc_cpumask_var(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_affinity(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_cpumask_var(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @generic_handle_domain_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !10, !11, !12, !13, !14, !15, !17, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !36, !37, !38, !40, !41, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !65, !66, !67, !69, !70, !71, !73}
!llvm.module.flags = !{!74, !75, !76, !77, !78, !79, !80, !81}
!llvm.ident = !{!82}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/pci/controller/pcie-iproc-msi.c", i32 525, i32 37}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/pci/controller/pcie-iproc-msi.c", i32 528, i32 30}
!4 = !{ptr @iproc_msi_init.__key, !5, !"__key", i1 false, i1 false}
!5 = !{!"../drivers/pci/controller/pcie-iproc-msi.c", i32 541, i32 2}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/pci/controller/pcie-iproc-msi.c", i32 549, i32 3}
!9 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.6, !8, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !8, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @iproc_msi_init._entry, !8, !"_entry", i1 false, i1 false}
!14 = !{ptr @iproc_msi_init._entry_ptr, !8, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/pci/controller/pcie-iproc-msi.c", i32 554, i32 3}
!17 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @iproc_msi_init._entry.8, !16, !"_entry", i1 false, i1 false}
!19 = !{ptr @iproc_msi_init._entry_ptr.11, !16, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/pci/controller/pcie-iproc-msi.c", i32 560, i32 3}
!22 = !{ptr @iproc_msi_init._entry.12, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @iproc_msi_init._entry_ptr.14, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.16, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/pci/controller/pcie-iproc-msi.c", i32 567, i32 3}
!26 = !{ptr @iproc_msi_init._entry.15, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @iproc_msi_init._entry_ptr.17, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.19, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/pci/controller/pcie-iproc-msi.c", i32 584, i32 3}
!30 = !{ptr @iproc_msi_init._entry.18, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @iproc_msi_init._entry_ptr.20, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.21, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/pci/controller/pcie-iproc-msi.c", i32 588, i32 29}
!34 = !{ptr @.str.23, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/pci/controller/pcie-iproc-msi.c", i32 606, i32 4}
!36 = !{ptr @iproc_msi_init._entry.22, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @iproc_msi_init._entry_ptr.24, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.26, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/pci/controller/pcie-iproc-msi.c", i32 626, i32 3}
!40 = !{ptr @iproc_msi_init._entry.25, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @iproc_msi_init._entry_ptr.27, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @__ksymtab_iproc_msi_init, !43, !"__ksymtab_iproc_msi_init", i1 false, i1 false}
!43 = !{!"../drivers/pci/controller/pcie-iproc-msi.c", i32 657, i32 1}
!44 = !{ptr @__ksymtab_iproc_msi_exit, !45, !"__ksymtab_iproc_msi_exit", i1 false, i1 false}
!45 = !{!"../drivers/pci/controller/pcie-iproc-msi.c", i32 682, i32 1}
!46 = !{ptr @iproc_msi_domain_info, !47, !"iproc_msi_domain_info", i1 false, i1 false}
!47 = !{!"../drivers/pci/controller/pcie-iproc-msi.c", i32 172, i32 31}
!48 = !{ptr @.str.28, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/pci/controller/pcie-iproc-msi.c", i32 169, i32 10}
!50 = !{ptr @iproc_msi_irq_chip, !51, !"iproc_msi_irq_chip", i1 false, i1 false}
!51 = !{!"../drivers/pci/controller/pcie-iproc-msi.c", i32 168, i32 24}
!52 = !{ptr @iproc_msi_reg_paxb, !53, !"iproc_msi_reg_paxb", i1 false, i1 false}
!53 = !{!"../drivers/pci/controller/pcie-iproc-msi.c", i32 112, i32 18}
!54 = !{ptr @iproc_msi_reg_paxc, !55, !"iproc_msi_reg_paxc", i1 false, i1 false}
!55 = !{!"../drivers/pci/controller/pcie-iproc-msi.c", i32 121, i32 18}
!56 = !{ptr @msi_domain_ops, !57, !"msi_domain_ops", i1 false, i1 false}
!57 = !{!"../drivers/pci/controller/pcie-iproc-msi.c", i32 298, i32 36}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/pci/controller/pcie-iproc-msi.c", i32 241, i32 10}
!60 = !{ptr @iproc_msi_bottom_irq_chip, !61, !"iproc_msi_bottom_irq_chip", i1 false, i1 false}
!61 = !{!"../drivers/pci/controller/pcie-iproc-msi.c", i32 240, i32 24}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/pci/controller/pcie-iproc-msi.c", i32 500, i32 5}
!64 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @iproc_msi_irq_setup._entry, !63, !"_entry", i1 false, i1 false}
!66 = !{ptr @iproc_msi_irq_setup._entry_ptr, !63, !"_entry_ptr", i1 false, i1 false}
!67 = !{ptr @.str.33, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/pci/controller/pcie-iproc-msi.c", i32 505, i32 4}
!69 = !{ptr @iproc_msi_irq_setup._entry.32, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @iproc_msi_irq_setup._entry_ptr.34, !68, !"_entry_ptr", i1 false, i1 false}
!71 = distinct !{null, !72, !"__already_done", i1 false, i1 false}
!72 = !{!"../include/linux/cpumask.h", i32 108, i32 2}
!73 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!74 = !{i32 1, !"wchar_size", i32 2}
!75 = !{i32 1, !"min_enum_size", i32 4}
!76 = !{i32 8, !"branch-target-enforcement", i32 0}
!77 = !{i32 8, !"sign-return-address", i32 0}
!78 = !{i32 8, !"sign-return-address-all", i32 0}
!79 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!80 = !{i32 7, !"uwtable", i32 1}
!81 = !{i32 7, !"frame-pointer", i32 2}
!82 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!83 = !{!"branch_weights", i32 1, i32 2000}
!84 = !{!"auto-init"}
!85 = !{!"branch_weights", i32 2000, i32 1}
!86 = !{i64 4213934}
!87 = !{i8 0, i8 2}
!88 = !{i64 4214352}
!89 = !{i32 0, i32 33}
!90 = !{i64 2154568101}
