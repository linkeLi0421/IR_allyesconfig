; ModuleID = '/llk/IR_all_yes/drivers/mfd/wm8994-irq.c_pt.bc'
source_filename = "../drivers/mfd/wm8994-irq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+wm8994_irq_init\22, \22a\22\09"
module asm "\09.weak\09__crc_wm8994_irq_init\09\09\09\09"
module asm "\09.long\09__crc_wm8994_irq_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wm8994_irq_init:\09\09\09\09\09"
module asm "\09.asciz \09\22wm8994_irq_init\22\09\09\09\09\09"
module asm "__kstrtabns_wm8994_irq_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+wm8994_irq_exit\22, \22a\22\09"
module asm "\09.weak\09__crc_wm8994_irq_exit\09\09\09\09"
module asm "\09.long\09__crc_wm8994_irq_exit\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_wm8994_irq_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22wm8994_irq_exit\22\09\09\09\09\09"
module asm "__kstrtabns_wm8994_irq_exit:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.irq_domain_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.irq_chip = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.regmap_irq = type { i32, i32, %struct.regmap_irq_type }
%struct.regmap_irq_type = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.wm8994 = type { %struct.wm8994_pdata, i32, i32, i32, ptr, ptr, i8, i32, i32, i32, ptr, ptr, i8, ptr, i32, ptr }
%struct.wm8994_pdata = type { i32, [11 x i32], [2 x %struct.wm8994_ldo_pdata], i32, i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, i8, i32, i32, i32, i8, [2 x i32], i16, i8, i8, i8, [3 x i32], i32 }
%struct.wm8994_ldo_pdata = type { ptr }
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

@wm8994_irq_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 188, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"No interrupt specified, no interrupts\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wm8994_irq_init\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/mfd/wm8994-irq.c\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@wm8994_irq_init._entry_ptr = internal global ptr @wm8994_irq_init._entry, section ".printk_index", align 4
@wm8994_irq_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 203, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"IRQ %d is not GPIO %d (%d)\0A\00", [36 x i8] zeroinitializer }, align 32
@wm8994_irq_init._entry_ptr.7 = internal global ptr @wm8994_irq_init._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"WM8994 IRQ\00", [21 x i8] zeroinitializer }, align 32
@wm8994_irq_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 212, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to get IRQ GPIO: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@wm8994_irq_init._entry_ptr.12 = internal global ptr @wm8994_irq_init._entry.9, section ".printk_index", align 4
@wm8994_edge_irq_ops = internal constant { %struct.irq_domain_ops, [52 x i8] } { %struct.irq_domain_ops { ptr null, ptr null, ptr @wm8994_edge_irq_map, ptr null, ptr @irq_domain_xlate_twocell, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [52 x i8] zeroinitializer }, align 32
@wm8994_irq_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.1, ptr @.str.2, i32 228, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to get IRQ: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@wm8994_irq_init._entry_ptr.15 = internal global ptr @wm8994_irq_init._entry.13, section ".printk_index", align 4
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"WM8994 edge\00", [20 x i8] zeroinitializer }, align 32
@wm8994_irq_init._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.1, ptr @.str.2, i32 244, ptr @.str.11, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to register IRQ chip: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@wm8994_irq_init._entry_ptr.19 = internal global ptr @wm8994_irq_init._entry.17, section ".printk_index", align 4
@__kstrtab_wm8994_irq_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_wm8994_irq_init = external dso_local constant [0 x i8], align 1
@__ksymtab_wm8994_irq_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wm8994_irq_init to i32), ptr @__kstrtab_wm8994_irq_init, ptr @__kstrtabns_wm8994_irq_init }, section "___ksymtab+wm8994_irq_init", align 4
@__kstrtab_wm8994_irq_exit = external dso_local constant [0 x i8], align 1
@__kstrtabns_wm8994_irq_exit = external dso_local constant [0 x i8], align 1
@__ksymtab_wm8994_irq_exit = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @wm8994_irq_exit to i32), ptr @__kstrtab_wm8994_irq_exit, ptr @__kstrtabns_wm8994_irq_exit }, section "___ksymtab+wm8994_irq_exit", align 4
@wm8994_edge_irq_chip = internal global { %struct.irq_chip, [56 x i8] } { %struct.irq_chip { ptr null, ptr @.str.20, ptr null, ptr null, ptr @wm8994_edge_irq_enable, ptr @wm8994_edge_irq_disable, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0 }, [56 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wm8994_edge\00", [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wm8994\00", [25 x i8] zeroinitializer }, align 32
@wm8994_irqs = internal constant { [27 x %struct.regmap_irq], [244 x i8] } { [27 x %struct.regmap_irq] [%struct.regmap_irq { i32 1, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 256, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 1024, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 2048, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 4096, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 8192, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 16384, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 1, i32 32768, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 1, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 2, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 4, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 8, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 16, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 32, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 64, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 128, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 512, %struct.regmap_irq_type zeroinitializer }, %struct.regmap_irq { i32 0, i32 1024, %struct.regmap_irq_type zeroinitializer }], [244 x i8] zeroinitializer }, align 32
@wm8994_irq_chip = internal constant { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr }, [32 x i8] } { { ptr, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i8, i8, i32, ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr } { ptr @.str.21, i32 0, i32 0, ptr null, i32 0, i32 1840, i32 1848, i32 0, i32 1840, i32 0, i32 0, ptr null, i32 0, i8 1, i8 0, i32 2, ptr @wm8994_irqs, i32 27, i32 0, i32 0, i32 0, ptr null, ptr null, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 187, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 201, i32 4 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 208, i32 20 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 211, i32 4 }
@___asan_gen_.59 = private unnamed_addr constant [20 x i8] c"wm8994_edge_irq_ops\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 175, i32 36 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 227, i32 4 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 235, i32 9 }
@___asan_gen_.71 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 244, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant [21 x i8] c"wm8994_edge_irq_chip\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 146, i32 24 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 147, i32 12 }
@___asan_gen_.83 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 127, i32 10 }
@___asan_gen_.86 = private unnamed_addr constant [12 x i8] c"wm8994_irqs\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 26, i32 32 }
@___asan_gen_.89 = private unnamed_addr constant [16 x i8] c"wm8994_irq_chip\00", align 1
@___asan_gen_.90 = private constant [28 x i8] c"../drivers/mfd/wm8994-irq.c\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.90, i32 126, i32 37 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @__ksymtab_wm8994_irq_exit, ptr @__ksymtab_wm8994_irq_init, ptr @wm8994_irq_init._entry, ptr @wm8994_irq_init._entry.13, ptr @wm8994_irq_init._entry.17, ptr @wm8994_irq_init._entry.5, ptr @wm8994_irq_init._entry.9, ptr @wm8994_irq_init._entry_ptr, ptr @wm8994_irq_init._entry_ptr.12, ptr @wm8994_irq_init._entry_ptr.15, ptr @wm8994_irq_init._entry_ptr.19, ptr @wm8994_irq_init._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.10, ptr @.str.11, ptr @wm8994_edge_irq_ops, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @wm8994_edge_irq_chip, ptr @.str.20, ptr @.str.21, ptr @wm8994_irqs, ptr @wm8994_irq_chip], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8994_irq_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8994_irq_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8994_irq_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8994_edge_irq_ops to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8994_irq_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8994_irq_init._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8994_edge_irq_chip to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8994_irqs to i32), i32 972, i32 1216, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wm8994_irq_chip to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @wm8994_irq_init(ptr noundef %wm8994) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.wm8994, ptr %wm8994, i32 0, i32 9
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.wm8994, ptr %wm8994, i32 0, i32 4
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %3, ptr noundef nonnull @.str) #8
  %irq_base = getelementptr inbounds %struct.wm8994, ptr %wm8994, i32 0, i32 8
  %4 = ptrtoint ptr %irq_base to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %irq_base, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %irq_flags = getelementptr inbounds %struct.wm8994_pdata, ptr %wm8994, i32 0, i32 4
  %5 = ptrtoint ptr %irq_flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not = icmp eq i32 %6, 0
  %spec.select = select i1 %tobool2.not, i32 8196, i32 %6
  %and = and i32 %spec.select, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end
  %irq_gpio = getelementptr inbounds %struct.wm8994_pdata, ptr %wm8994, i32 0, i32 32
  %7 = ptrtoint ptr %irq_gpio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq_gpio, align 4
  %call.i = tail call ptr @gpio_to_desc(i32 noundef %8) #5
  %call1.i = tail call i32 @gpiod_to_irq(ptr noundef %call.i) #5
  %9 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %irq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call1.i, i32 %10)
  %cmp.not = icmp eq i32 %call1.i, %10
  br i1 %cmp.not, label %if.then7.if.end21_crit_edge, label %do.end12

if.then7.if.end21_crit_edge:                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

do.end12:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #7
  %dev13 = getelementptr inbounds %struct.wm8994, ptr %wm8994, i32 0, i32 4
  %11 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev13, align 4
  %13 = ptrtoint ptr %irq_gpio to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %irq_gpio, align 4
  %call.i103 = tail call ptr @gpio_to_desc(i32 noundef %14) #5
  %call1.i104 = tail call i32 @gpiod_to_irq(ptr noundef %call.i103) #5
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %12, ptr noundef nonnull @.str.6, i32 noundef %10, i32 noundef %14, i32 noundef %call1.i104) #8
  %15 = ptrtoint ptr %irq_gpio to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %irq_gpio, align 4
  %call.i105 = tail call ptr @gpio_to_desc(i32 noundef %16) #5
  %call1.i106 = tail call i32 @gpiod_to_irq(ptr noundef %call.i105) #5
  %17 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call1.i106, ptr %irq, align 4
  br label %if.end21

if.end21:                                         ; preds = %do.end12, %if.then7.if.end21_crit_edge
  %dev22 = getelementptr inbounds %struct.wm8994, ptr %wm8994, i32 0, i32 4
  %18 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev22, align 4
  %20 = ptrtoint ptr %irq_gpio to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irq_gpio, align 4
  %call24 = tail call i32 @devm_gpio_request_one(ptr noundef %19, i32 noundef %21, i32 noundef 1, ptr noundef nonnull @.str.8) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25.not = icmp eq i32 %call24, 0
  br i1 %cmp25.not, label %if.end31, label %do.end29

do.end29:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev22, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.10, i32 noundef %call24) #8
  br label %cleanup

if.end31:                                         ; preds = %if.end21
  %call1.i107 = tail call ptr @__irq_domain_add(ptr noundef null, i32 noundef 1, i32 noundef 1, i32 noundef 0, ptr noundef nonnull @wm8994_edge_irq_ops, ptr noundef %wm8994) #5
  %edge_irq = getelementptr inbounds %struct.wm8994, ptr %wm8994, i32 0, i32 11
  %24 = ptrtoint ptr %edge_irq to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call1.i107, ptr %edge_irq, align 4
  %regmap = getelementptr inbounds %struct.wm8994, ptr %wm8994, i32 0, i32 5
  %25 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regmap, align 4
  %call.i108 = tail call i32 @irq_create_mapping_affinity(ptr noundef %call1.i107, i32 noundef 0, ptr noundef null) #5
  %irq_base35 = getelementptr inbounds %struct.wm8994, ptr %wm8994, i32 0, i32 8
  %27 = ptrtoint ptr %irq_base35 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %irq_base35, align 4
  %irq_data = getelementptr inbounds %struct.wm8994, ptr %wm8994, i32 0, i32 10
  %call36 = tail call i32 @regmap_add_irq_chip(ptr noundef %26, i32 noundef %call.i108, i32 noundef 8192, i32 noundef %28, ptr noundef nonnull @wm8994_irq_chip, ptr noundef %irq_data) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37.not = icmp eq i32 %call36, 0
  br i1 %cmp37.not, label %if.end43, label %do.end41

do.end41:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %dev22 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev22, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.14, i32 noundef %call36) #8
  br label %cleanup

if.end43:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  %31 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %irq, align 4
  %call45 = tail call i32 @request_threaded_irq(i32 noundef %32, ptr noundef null, ptr noundef nonnull @wm8994_edge_irq, i32 noundef %spec.select, ptr noundef nonnull @.str.16, ptr noundef %wm8994) #5
  br label %if.end51

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %regmap46 = getelementptr inbounds %struct.wm8994, ptr %wm8994, i32 0, i32 5
  %33 = ptrtoint ptr %regmap46 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regmap46, align 4
  %irq_base48 = getelementptr inbounds %struct.wm8994, ptr %wm8994, i32 0, i32 8
  %35 = ptrtoint ptr %irq_base48 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %irq_base48, align 4
  %irq_data49 = getelementptr inbounds %struct.wm8994, ptr %wm8994, i32 0, i32 10
  %call50 = tail call i32 @regmap_add_irq_chip(ptr noundef %34, i32 noundef %1, i32 noundef %spec.select, i32 noundef %36, ptr noundef nonnull @wm8994_irq_chip, ptr noundef %irq_data49) #5
  br label %if.end51

if.end51:                                         ; preds = %if.else, %if.end43
  %ret.0 = phi i32 [ %call45, %if.end43 ], [ %call50, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %cmp52.not = icmp eq i32 %ret.0, 0
  br i1 %cmp52.not, label %if.end58, label %do.end56

do.end56:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  %dev57 = getelementptr inbounds %struct.wm8994, ptr %wm8994, i32 0, i32 4
  %37 = ptrtoint ptr %dev57 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev57, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %38, ptr noundef nonnull @.str.18, i32 noundef %ret.0) #8
  br label %cleanup

if.end58:                                         ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #7
  %regmap.i = getelementptr inbounds %struct.wm8994, ptr %wm8994, i32 0, i32 5
  %39 = ptrtoint ptr %regmap.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %regmap.i, align 4
  %call.i109 = tail call i32 @regmap_write(ptr noundef %40, i32 noundef 1856, i32 noundef 0) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end58, %do.end56, %do.end41, %do.end29, %do.end
  %retval.0 = phi i32 [ %call24, %do.end29 ], [ %call36, %do.end41 ], [ %ret.0, %do.end56 ], [ 0, %if.end58 ], [ 0, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_gpio_request_one(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_add_irq_chip(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8994_edge_irq(i32 noundef %irq, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  %irq.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_gpio = getelementptr inbounds %struct.wm8994_pdata, ptr %data, i32 0, i32 32
  %0 = ptrtoint ptr %irq_gpio to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq_gpio, align 4
  %call.i4 = call ptr @gpio_to_desc(i32 noundef %1) #5
  %call1.i5 = call i32 @gpiod_get_raw_value_cansleep(ptr noundef %call.i4) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i5)
  %tobool.not6 = icmp eq i32 %call1.i5, 0
  br i1 %tobool.not6, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %edge_irq = getelementptr inbounds %struct.wm8994, ptr %data, i32 0, i32 11
  br label %while.body

while.body:                                       ; preds = %irq_find_mapping.exit.while.body_crit_edge, %while.body.lr.ph
  %2 = ptrtoint ptr %edge_irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %edge_irq, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %irq.i) #5
  %4 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %irq.i, align 4, !annotation !54
  %call.i3 = call ptr @__irq_resolve_mapping(ptr noundef %3, i32 noundef 0, ptr noundef nonnull %irq.i) #5
  %tobool.not.i = icmp eq ptr %call.i3, null
  br i1 %tobool.not.i, label %while.body.irq_find_mapping.exit_crit_edge, label %if.then.i

while.body.irq_find_mapping.exit_crit_edge:       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %irq_find_mapping.exit

if.then.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %irq.i, align 4
  br label %irq_find_mapping.exit

irq_find_mapping.exit:                            ; preds = %if.then.i, %while.body.irq_find_mapping.exit_crit_edge
  %retval.0.i = phi i32 [ %6, %if.then.i ], [ 0, %while.body.irq_find_mapping.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %irq.i) #5
  call void @handle_nested_irq(i32 noundef %retval.0.i) #5
  %7 = ptrtoint ptr %irq_gpio to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq_gpio, align 4
  %call.i = call ptr @gpio_to_desc(i32 noundef %8) #5
  %call1.i = call i32 @gpiod_get_raw_value_cansleep(ptr noundef %call.i) #5
  %tobool.not = icmp eq i32 %call1.i, 0
  br i1 %tobool.not, label %irq_find_mapping.exit.while.end_crit_edge, label %irq_find_mapping.exit.while.body_crit_edge

irq_find_mapping.exit.while.body_crit_edge:       ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

irq_find_mapping.exit.while.end_crit_edge:        ; preds = %irq_find_mapping.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.end:                                        ; preds = %irq_find_mapping.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret i32 1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @wm8994_irq_exit(ptr nocapture noundef readonly %wm8994) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.wm8994, ptr %wm8994, i32 0, i32 9
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  %irq_data = getelementptr inbounds %struct.wm8994, ptr %wm8994, i32 0, i32 10
  %2 = ptrtoint ptr %irq_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %irq_data, align 4
  tail call void @regmap_del_irq_chip(i32 noundef %1, ptr noundef %3) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @regmap_del_irq_chip(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_to_irq(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @gpio_to_desc(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_domain_add(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @wm8994_edge_irq_map(ptr nocapture noundef readonly %h, i32 noundef %virq, i32 noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %host_data = getelementptr inbounds %struct.irq_domain, ptr %h, i32 0, i32 3
  %0 = ptrtoint ptr %host_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %host_data, align 4
  %call = tail call i32 @irq_set_chip_data(i32 noundef %virq, ptr noundef %1) #5
  tail call void @irq_set_chip_and_handler_name(i32 noundef %virq, ptr noundef nonnull @wm8994_edge_irq_chip, ptr noundef nonnull @handle_edge_irq, ptr noundef null) #5
  tail call void @irq_modify_status(i32 noundef %virq, i32 noundef 0, i32 noundef 32768) #5
  tail call void @irq_modify_status(i32 noundef %virq, i32 noundef 0, i32 noundef 1024) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_domain_xlate_twocell(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_set_chip_data(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_edge_irq(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_set_chip_and_handler_name(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @wm8994_edge_irq_enable(ptr nocapture noundef %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @wm8994_edge_irq_disable(ptr nocapture noundef %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_modify_status(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_create_mapping_affinity(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @handle_nested_irq(i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gpiod_get_raw_value_cansleep(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__irq_resolve_mapping(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !16, !17, !18, !19, !21, !22, !23, !25, !27, !28, !29, !31, !33, !35, !37, !39, !41, !43}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/mfd/wm8994-irq.c", i32 187, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @wm8994_irq_init._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @wm8994_irq_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/mfd/wm8994-irq.c", i32 201, i32 4}
!10 = !{ptr @wm8994_irq_init._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @wm8994_irq_init._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/mfd/wm8994-irq.c", i32 208, i32 20}
!14 = !{ptr @.str.10, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/mfd/wm8994-irq.c", i32 211, i32 4}
!16 = !{ptr @.str.11, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @wm8994_irq_init._entry.9, !15, !"_entry", i1 false, i1 false}
!18 = !{ptr @wm8994_irq_init._entry_ptr.12, !15, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.14, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/mfd/wm8994-irq.c", i32 227, i32 4}
!21 = !{ptr @wm8994_irq_init._entry.13, !20, !"_entry", i1 false, i1 false}
!22 = !{ptr @wm8994_irq_init._entry_ptr.15, !20, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.16, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/mfd/wm8994-irq.c", i32 235, i32 9}
!25 = !{ptr @.str.18, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/mfd/wm8994-irq.c", i32 244, i32 3}
!27 = !{ptr @wm8994_irq_init._entry.17, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @wm8994_irq_init._entry_ptr.19, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @__ksymtab_wm8994_irq_init, !30, !"__ksymtab_wm8994_irq_init", i1 false, i1 false}
!30 = !{!"../drivers/mfd/wm8994-irq.c", i32 253, i32 1}
!31 = !{ptr @__ksymtab_wm8994_irq_exit, !32, !"__ksymtab_wm8994_irq_exit", i1 false, i1 false}
!32 = !{!"../drivers/mfd/wm8994-irq.c", i32 259, i32 1}
!33 = !{ptr @wm8994_edge_irq_ops, !34, !"wm8994_edge_irq_ops", i1 false, i1 false}
!34 = !{!"../drivers/mfd/wm8994-irq.c", i32 175, i32 36}
!35 = !{ptr @.str.20, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/mfd/wm8994-irq.c", i32 147, i32 12}
!37 = !{ptr @wm8994_edge_irq_chip, !38, !"wm8994_edge_irq_chip", i1 false, i1 false}
!38 = !{!"../drivers/mfd/wm8994-irq.c", i32 146, i32 24}
!39 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mfd/wm8994-irq.c", i32 127, i32 10}
!41 = !{ptr @wm8994_irq_chip, !42, !"wm8994_irq_chip", i1 false, i1 false}
!42 = !{!"../drivers/mfd/wm8994-irq.c", i32 126, i32 37}
!43 = !{ptr @wm8994_irqs, !44, !"wm8994_irqs", i1 false, i1 false}
!44 = !{!"../drivers/mfd/wm8994-irq.c", i32 26, i32 32}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!54 = !{!"auto-init"}
