; ModuleID = '/llk/IR_all_yes/arch/arm/mach-omap2/pm44xx.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/pm44xx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.static_dep_map = type { ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.powerdomain = type { ptr, %union.anon, i16, i8, i8, i8, i8, [5 x i8], [5 x i8], i8, [11 x ptr], %struct.list_head, %struct.list_head, i32, [4 x i32], i32, [5 x i32], %struct.spinlock, i32, i8, i8, i32, [5 x i32], [5 x i32], [5 x i32], [5 x i32], i64, [4 x i64], i32 }
%union.anon = type { ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.power_state = type { ptr, i32, i32, i32, i32, %struct.list_head }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@pm44xx_errata = dso_local global { i16, [30 x i8] } zeroinitializer, align 32
@.str = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"arch/arm/mach-omap2/pm44xx.c\00", [35 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Power Management not supported on OMAP4430 ES1.0\0A\00", [46 x i8] zeroinitializer }, align 32
@omap4_pm_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str, i32 251, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016Power Management for TI OMAP4+ devices.\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"omap4_pm_init\00", [18 x i8] zeroinitializer }, align 32
@omap4_pm_init._entry_ptr = internal global ptr @omap4_pm_init._entry, section ".printk_index", align 4
@omap4_pm_init._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.3, ptr @.str, i32 260, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"\014OMAP4 PM: u-boot >= v2012.07 is required for full PM support\0A\00", [32 x i8] zeroinitializer }, align 32
@omap4_pm_init._entry_ptr.6 = internal global ptr @omap4_pm_init._entry.4, section ".printk_index", align 4
@omap4_pm_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.3, ptr @.str, i32 264, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013Failed to setup powerdomains.\0A\00", [63 x i8] zeroinitializer }, align 32
@omap4_pm_init._entry_ptr.9 = internal global ptr @omap4_pm_init._entry.7, section ".printk_index", align 4
@omap4_static_dep_map = internal constant { [6 x %struct.static_dep_map], [48 x i8] } { [6 x %struct.static_dep_map] [%struct.static_dep_map { ptr @.str.24, ptr @.str.25 }, %struct.static_dep_map { ptr @.str.24, ptr @.str.26 }, %struct.static_dep_map { ptr @.str.24, ptr @.str.27 }, %struct.static_dep_map { ptr @.str.28, ptr @.str.26 }, %struct.static_dep_map { ptr @.str.28, ptr @.str.27 }, %struct.static_dep_map zeroinitializer], [48 x i8] zeroinitializer }, align 32
@omap5_dra7_static_dep_map = internal constant { [2 x %struct.static_dep_map], [16 x i8] } { [2 x %struct.static_dep_map] [%struct.static_dep_map { ptr @.str.29, ptr @.str.30 }, %struct.static_dep_map zeroinitializer], [16 x i8] zeroinitializer }, align 32
@omap4_pm_init._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.3, ptr @.str, i32 274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013Failed to initialise static dependencies.\0A\00", [51 x i8] zeroinitializer }, align 32
@omap4_pm_init._entry_ptr.12 = internal global ptr @omap4_pm_init._entry.10, section ".printk_index", align 4
@omap4_pm_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str, i32 280, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\013Failed to initialise OMAP4 MPUSS\0A\00", [60 x i8] zeroinitializer }, align 32
@omap4_pm_init._entry_ptr.15 = internal global ptr @omap4_pm_init._entry.13, section ".printk_index", align 4
@arm_pm_idle = external dso_local local_unnamed_addr global ptr, align 4
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cpu\00", [28 x i8] zeroinitializer }, align 32
@cpu_suspend_state = internal global { i1, [31 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"l4per\00", [26 x i8] zeroinitializer }, align 32
@pwrst_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @pwrst_list, ptr @pwrst_list }, [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@omap4plus_init_static_deps._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str, i32 203, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013Failed lookup %s or %s for wakeup dependency\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"omap4plus_init_static_deps\00", [37 x i8] zeroinitializer }, align 32
@omap4plus_init_static_deps._entry_ptr = internal global ptr @omap4plus_init_static_deps._entry, section ".printk_index", align 4
@omap4plus_init_static_deps._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.20, ptr @.str, i32 209, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013Failed to add %s -> %s wakeup dependency(%d)\0A\00", [48 x i8] zeroinitializer }, align 32
@omap4plus_init_static_deps._entry_ptr.23 = internal global ptr @omap4plus_init_static_deps._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mpuss_clkdm\00", [20 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"l3_emif_clkdm\00", [18 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"l3_1_clkdm\00", [21 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"l3_2_clkdm\00", [21 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ducati_clkdm\00", [19 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mpu_clkdm\00", [22 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"emif_clkdm\00", [21 x i8] zeroinitializer }, align 32
@omap4_pm_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str, i32 86, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016Powerdomain (%s) didn't enter target state %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"omap4_pm_suspend\00", [47 x i8] zeroinitializer }, align 32
@omap4_pm_suspend._entry_ptr = internal global ptr @omap4_pm_suspend._entry, section ".printk_index", align 4
@omap4_pm_suspend._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str, i32 93, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\012Could not enter target state in pm_suspend\0A\00", [50 x i8] zeroinitializer }, align 32
@omap4_pm_suspend._entry_ptr.35 = internal global ptr @omap4_pm_suspend._entry.33, section ".printk_index", align 4
@omap4_pm_suspend._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.32, ptr @.str, i32 102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\014A possible cause could be an old bootloader - try u-boot >= v2012.07\0A\00", [56 x i8] zeroinitializer }, align 32
@omap4_pm_suspend._entry_ptr.38 = internal global ptr @omap4_pm_suspend._entry.36, section ".printk_index", align 4
@omap4_pm_suspend._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.32, ptr @.str, i32 104, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016Successfully put all powerdomains to target state\0A\00", [43 x i8] zeroinitializer }, align 32
@omap4_pm_suspend._entry_ptr.41 = internal global ptr @omap4_pm_suspend._entry.39, section ".printk_index", align 4
@___asan_gen_.42 = private unnamed_addr constant [14 x i8] c"pm44xx_errata\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 24, i32 5 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 247, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 251, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 260, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 264, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant [21 x i8] c"omap4_static_dep_map\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 172, i32 36 }
@___asan_gen_.75 = private unnamed_addr constant [26 x i8] c"omap5_dra7_static_dep_map\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 181, i32 36 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 274, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 280, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 125, i32 28 }
@___asan_gen_.93 = private unnamed_addr constant [18 x i8] c"cpu_suspend_state\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 131, i32 28 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 132, i32 28 }
@___asan_gen_.100 = private unnamed_addr constant [11 x i8] c"pwrst_list\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 49, i32 8 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 202, i32 4 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 208, i32 4 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 173, i32 11 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 173, i32 32 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 174, i32 32 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 175, i32 32 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 176, i32 11 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 182, i32 11 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 182, i32 30 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 85, i32 4 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 93, i32 3 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 102, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.163 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.164 = private constant [32 x i8] c"../arch/arm/mach-omap2/pm44xx.c\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.164, i32 104, i32 3 }
@llvm.compiler.used = appending global [53 x ptr] [ptr @omap4_pm_init._entry, ptr @omap4_pm_init._entry.10, ptr @omap4_pm_init._entry.13, ptr @omap4_pm_init._entry.4, ptr @omap4_pm_init._entry.7, ptr @omap4_pm_init._entry_ptr, ptr @omap4_pm_init._entry_ptr.12, ptr @omap4_pm_init._entry_ptr.15, ptr @omap4_pm_init._entry_ptr.6, ptr @omap4_pm_init._entry_ptr.9, ptr @omap4_pm_suspend._entry, ptr @omap4_pm_suspend._entry.33, ptr @omap4_pm_suspend._entry.36, ptr @omap4_pm_suspend._entry.39, ptr @omap4_pm_suspend._entry_ptr, ptr @omap4_pm_suspend._entry_ptr.35, ptr @omap4_pm_suspend._entry_ptr.38, ptr @omap4_pm_suspend._entry_ptr.41, ptr @omap4plus_init_static_deps._entry, ptr @omap4plus_init_static_deps._entry.21, ptr @omap4plus_init_static_deps._entry_ptr, ptr @omap4plus_init_static_deps._entry_ptr.23, ptr @pm44xx_errata, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.5, ptr @.str.8, ptr @omap4_static_dep_map, ptr @omap5_dra7_static_dep_map, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @cpu_suspend_state, ptr @.str.17, ptr @.str.18, ptr @pwrst_list, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.34, ptr @.str.37, ptr @.str.40], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm44xx_errata to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_pm_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_pm_init._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_pm_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_static_dep_map to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap5_dra7_static_dep_map to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_pm_init._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_pm_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpu_suspend_state to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwrst_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4plus_init_static_deps._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4plus_init_static_deps._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_pm_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_pm_suspend._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_pm_suspend._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_pm_suspend._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap4_pm_init_early() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @omap_rev() #8
  %shr.mask.i = and i32 %call.i, -1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 1147142144, i32 %shr.mask.i)
  %cmp.i.not = icmp eq i32 %shr.mask.i, 1147142144
  br i1 %cmp.i.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %0 = load i16, ptr @pm44xx_errata, align 2
  %1 = or i16 %0, 1
  store i16 %1, ptr @pm44xx_errata, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %call.i11 = tail call i32 @omap_rev() #8
  %and.i = and i32 %call.i11, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 84, i32 %and.i)
  %cmp.i12.not = icmp eq i32 %and.i, 84
  br i1 %cmp.i12.not, label %if.end.if.then6_crit_edge, label %lor.lhs.false

if.end.if.then6_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6

lor.lhs.false:                                    ; preds = %if.end
  %call.i14 = tail call i32 @omap_rev() #8
  %shr.mask.i15 = and i32 %call.i14, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 117440512, i32 %shr.mask.i15)
  %cmp.i16.not = icmp eq i32 %shr.mask.i15, 117440512
  br i1 %cmp.i16.not, label %lor.lhs.false.if.then6_crit_edge, label %lor.lhs.false.if.end10_crit_edge

lor.lhs.false.if.end10_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

lor.lhs.false.if.then6_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then6

if.then6:                                         ; preds = %lor.lhs.false.if.then6_crit_edge, %if.end.if.then6_crit_edge
  %2 = load i16, ptr @pm44xx_errata, align 2
  %3 = or i16 %2, 2
  store i16 %3, ptr @pm44xx_errata, align 2
  br label %if.end10

if.end10:                                         ; preds = %if.then6, %lor.lhs.false.if.end10_crit_edge
  ret i32 0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap4_pm_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @omap_rev() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1144000580, i32 %call)
  %cmp = icmp eq i32 %call, 1144000580
  br i1 %cmp, label %do.end, label %do.end19

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 247, i32 noundef 9, ptr noundef nonnull @.str.1) #8
  br label %cleanup

do.end19:                                         ; preds = %entry
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #11
  %call.i = tail call i32 @omap_rev() #8
  %and.i = and i32 %call.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 68
  br i1 %cmp.i.not, label %do.end27, label %do.end19.if.end30_crit_edge

do.end19.if.end30_crit_edge:                      ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

do.end27:                                         ; preds = %do.end19
  call void @__sanitizer_cov_trace_pc() #10
  %call29 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #11
  br label %if.end30

if.end30:                                         ; preds = %do.end27, %do.end19.if.end30_crit_edge
  %call31 = tail call i32 @pwrdm_for_each(ptr noundef nonnull @pwrdms_setup, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.end39, label %do.end36

do.end36:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  %call38 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #11
  br label %cleanup

if.end39:                                         ; preds = %if.end30
  %call.i82 = tail call i32 @omap_rev() #8
  %and.i83 = and i32 %call.i82, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %and.i83)
  %cmp.i84.not = icmp eq i32 %and.i83, 68
  br i1 %cmp.i84.not, label %if.end39.while.body.i_crit_edge, label %if.else

if.end39.while.body.i_crit_edge:                  ; preds = %if.end39
  br label %while.body.i

while.body.i:                                     ; preds = %if.end23.i.while.body.i_crit_edge, %if.end39.while.body.i_crit_edge
  %0 = phi ptr [ %12, %if.end23.i.while.body.i_crit_edge ], [ @.str.24, %if.end39.while.body.i_crit_edge ]
  %map.addr.044.i = phi ptr [ %incdec.ptr.i, %if.end23.i.while.body.i_crit_edge ], [ @omap4_static_dep_map, %if.end39.while.body.i_crit_edge ]
  %call.i86 = tail call ptr @clkdm_lookup(ptr noundef nonnull %0) #8
  %to4.i = getelementptr inbounds %struct.static_dep_map, ptr %map.addr.044.i, i32 0, i32 1
  %1 = ptrtoint ptr %to4.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %to4.i, align 4
  %call5.i = tail call ptr @clkdm_lookup(ptr noundef %2) #8
  %tobool6.not.i = icmp eq ptr %call.i86, null
  %tobool7.not.i = icmp eq ptr %call5.i, null
  %or.cond.i = select i1 %tobool6.not.i, i1 true, i1 %tobool7.not.i
  br i1 %or.cond.i, label %do.end.i, label %if.end12.i

do.end.i:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %to4.i.le126 = getelementptr inbounds %struct.static_dep_map, ptr %map.addr.044.i, i32 0, i32 1
  %3 = ptrtoint ptr %map.addr.044.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %map.addr.044.i, align 4
  %5 = ptrtoint ptr %to4.i.le126 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %to4.i.le126, align 4
  %call11.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %4, ptr noundef %6) #11
  br label %do.end56

if.end12.i:                                       ; preds = %while.body.i
  %call13.i = tail call i32 @clkdm_add_wkdep(ptr noundef nonnull %call.i86, ptr noundef nonnull %call5.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool14.not.i = icmp eq i32 %call13.i, 0
  br i1 %tobool14.not.i, label %if.end23.i, label %do.end18.i

do.end18.i:                                       ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #10
  %to4.i.le = getelementptr inbounds %struct.static_dep_map, ptr %map.addr.044.i, i32 0, i32 1
  %7 = ptrtoint ptr %map.addr.044.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %map.addr.044.i, align 4
  %9 = ptrtoint ptr %to4.i.le to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %to4.i.le, align 4
  %call22.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %8, ptr noundef %10, i32 noundef %call13.i) #11
  br label %do.end56

if.end23.i:                                       ; preds = %if.end12.i
  %incdec.ptr.i = getelementptr %struct.static_dep_map, ptr %map.addr.044.i, i32 1
  %11 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %incdec.ptr.i, align 4
  %tobool2.not.i = icmp eq ptr %12, null
  br i1 %tobool2.not.i, label %if.end23.i.if.end59_crit_edge, label %if.end23.i.while.body.i_crit_edge

if.end23.i.while.body.i_crit_edge:                ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

if.end23.i.if.end59_crit_edge:                    ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

if.else:                                          ; preds = %if.end39
  %call.i87 = tail call i32 @omap_rev() #8
  %and.i88 = and i32 %call.i87, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 84, i32 %and.i88)
  %cmp.i89.not = icmp eq i32 %and.i88, 84
  br i1 %cmp.i89.not, label %if.else.if.end51_crit_edge, label %lor.lhs.false

if.else.if.end51_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

lor.lhs.false:                                    ; preds = %if.else
  %call.i91 = tail call i32 @omap_rev() #8
  %shr.mask.i = and i32 %call.i91, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 117440512, i32 %shr.mask.i)
  %cmp.i92.not = icmp eq i32 %shr.mask.i, 117440512
  br i1 %cmp.i92.not, label %lor.lhs.false.if.end51_crit_edge, label %lor.lhs.false.if.end59_crit_edge

lor.lhs.false.if.end59_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

lor.lhs.false.if.end51_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.end51:                                         ; preds = %lor.lhs.false.if.end51_crit_edge, %if.else.if.end51_crit_edge
  %call49 = tail call fastcc i32 @omap4plus_init_static_deps(ptr noundef nonnull @omap5_dra7_static_dep_map)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool52.not = icmp eq i32 %call49, 0
  br i1 %tobool52.not, label %if.end51.if.end59_crit_edge, label %if.end51.do.end56_crit_edge

if.end51.do.end56_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end56

if.end51.if.end59_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

do.end56:                                         ; preds = %if.end51.do.end56_crit_edge, %do.end18.i, %do.end.i
  %ret.0108 = phi i32 [ %call49, %if.end51.do.end56_crit_edge ], [ -22, %do.end.i ], [ %call13.i, %do.end18.i ]
  %call58 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #11
  br label %cleanup

if.end59:                                         ; preds = %if.end51.if.end59_crit_edge, %lor.lhs.false.if.end59_crit_edge, %if.end23.i.if.end59_crit_edge
  %call60 = tail call i32 @omap4_mpuss_init() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %if.end68, label %do.end65

do.end65:                                         ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #11
  br label %cleanup

if.end68:                                         ; preds = %if.end59
  %call69 = tail call i32 @clkdm_for_each(ptr noundef nonnull @omap_pm_clkdms_setup, ptr noundef null) #8
  tail call void @omap_common_suspend_init(ptr noundef nonnull @omap4_pm_suspend) #8
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @arm_pm_idle to i32))
  store ptr @omap_default_idle, ptr @arm_pm_idle, align 4
  %call.i94 = tail call i32 @omap_rev() #8
  %and.i95 = and i32 %call.i94, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %and.i95)
  %cmp.i96.not = icmp eq i32 %and.i95, 68
  br i1 %cmp.i96.not, label %if.end68.if.then75_crit_edge, label %lor.lhs.false72

if.end68.if.then75_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then75

lor.lhs.false72:                                  ; preds = %if.end68
  %call.i98 = tail call i32 @omap_rev() #8
  %and.i99 = and i32 %call.i98, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 84, i32 %and.i99)
  %cmp.i100.not = icmp eq i32 %and.i99, 84
  br i1 %cmp.i100.not, label %lor.lhs.false72.if.then75_crit_edge, label %lor.lhs.false72.cleanup_crit_edge

lor.lhs.false72.cleanup_crit_edge:                ; preds = %lor.lhs.false72
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false72.if.then75_crit_edge:              ; preds = %lor.lhs.false72
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then75

if.then75:                                        ; preds = %lor.lhs.false72.if.then75_crit_edge, %if.end68.if.then75_crit_edge
  %call76 = tail call i32 @omap4_idle_init() #11
  br label %cleanup

cleanup:                                          ; preds = %if.then75, %lor.lhs.false72.cleanup_crit_edge, %do.end65, %do.end56, %do.end36, %do.end
  %retval.0 = phi i32 [ -19, %do.end ], [ %call31, %do.end36 ], [ %ret.0108, %do.end56 ], [ %call60, %do.end65 ], [ 0, %if.then75 ], [ 0, %lor.lhs.false72.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_rev() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_for_each(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pwrdms_setup(ptr noundef %pwrdm, ptr nocapture noundef readnone %unused) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pwrsts = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 3
  %0 = ptrtoint ptr %pwrsts to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pwrsts, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pwrdm, align 8
  %call = tail call i32 @strncmp(ptr noundef %3, ptr noundef nonnull dereferenceable(4) @.str.16, i32 noundef 3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %if.then2, label %if.end6

if.then2:                                         ; preds = %if.end
  %4 = load i16, ptr @pm44xx_errata, align 2
  %5 = and i16 %4, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool3.not = icmp eq i16 %5, 0
  br i1 %tobool3.not, label %if.then2.cleanup_crit_edge, label %if.then4

if.then2.cleanup_crit_edge:                       ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then4:                                         ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cpu_suspend_state, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call8 = tail call i32 @strncmp(ptr noundef %3, ptr noundef nonnull dereferenceable(5) @.str.17, i32 noundef 4)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end6.if.then13_crit_edge, label %lor.lhs.false

if.end6.if.then13_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

lor.lhs.false:                                    ; preds = %if.end6
  %call11 = tail call i32 @strncmp(ptr noundef %3, ptr noundef nonnull dereferenceable(6) @.str.18, i32 noundef 5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %lor.lhs.false.if.then13_crit_edge, label %lor.lhs.false.if.end15_crit_edge

lor.lhs.false.if.end15_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

lor.lhs.false.if.then13_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then13

if.then13:                                        ; preds = %lor.lhs.false.if.then13_crit_edge, %if.end6.if.then13_crit_edge
  %call14 = tail call i32 @pwrdm_set_logic_retst(ptr noundef %pwrdm, i8 noundef zeroext 0) #8
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %lor.lhs.false.if.end15_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 2592, i32 noundef 28) #12
  %tobool17.not = icmp eq ptr %call7.i, null
  br i1 %tobool17.not, label %if.end15.cleanup_crit_edge, label %if.end19

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %7 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %pwrdm, ptr %call7.i, align 8
  %call21 = tail call zeroext i8 @pwrdm_get_valid_lp_state(ptr noundef %pwrdm, i1 noundef zeroext false, i8 noundef zeroext 1) #8
  %conv22 = zext i8 %call21 to i32
  %next_state = getelementptr inbounds %struct.power_state, ptr %call7.i, i32 0, i32 1
  %8 = ptrtoint ptr %next_state to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv22, ptr %next_state, align 4
  %call23 = tail call zeroext i8 @pwrdm_get_valid_lp_state(ptr noundef %pwrdm, i1 noundef zeroext true, i8 noundef zeroext 0) #8
  %conv24 = zext i8 %call23 to i32
  %next_logic_state = getelementptr inbounds %struct.power_state, ptr %call7.i, i32 0, i32 2
  %9 = ptrtoint ptr %next_logic_state to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv24, ptr %next_logic_state, align 8
  %node = getelementptr inbounds %struct.power_state, ptr %call7.i, i32 0, i32 5
  %10 = load ptr, ptr @pwrst_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef nonnull @pwrst_list, ptr noundef %10) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end19.list_add.exit_crit_edge

if.end19.list_add.exit_crit_edge:                 ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %node, ptr %prev1.i.i, align 4
  %12 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %10, ptr %node, align 4
  %prev3.i.i = getelementptr inbounds %struct.power_state, ptr %call7.i, i32 0, i32 5, i32 1
  %13 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @pwrst_list, ptr %prev3.i.i, align 8
  store volatile ptr %node, ptr @pwrst_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end19.list_add.exit_crit_edge
  %14 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %call7.i, align 8
  %16 = ptrtoint ptr %next_state to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %next_state, align 4
  %conv27 = trunc i32 %17 to i8
  %call28 = tail call i32 @omap_set_pwrdm_state(ptr noundef %15, i8 noundef zeroext %conv27) #8
  br label %cleanup

cleanup:                                          ; preds = %list_add.exit, %if.end15.cleanup_crit_edge, %if.then4, %if.then2.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call28, %list_add.exit ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then4 ], [ 0, %if.then2.cleanup_crit_edge ], [ -12, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @omap4plus_init_static_deps(ptr noundef readonly %map) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %tobool.not = icmp eq ptr %map, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %0 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %map, align 4
  %tobool2.not43 = icmp eq ptr %1, null
  br i1 %tobool2.not43, label %while.cond.preheader.cleanup_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body:                                       ; preds = %if.end23.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %2 = phi ptr [ %14, %if.end23.while.body_crit_edge ], [ %1, %while.cond.preheader.while.body_crit_edge ]
  %map.addr.044 = phi ptr [ %incdec.ptr, %if.end23.while.body_crit_edge ], [ %map, %while.cond.preheader.while.body_crit_edge ]
  %call = tail call ptr @clkdm_lookup(ptr noundef nonnull %2) #8
  %to4 = getelementptr inbounds %struct.static_dep_map, ptr %map.addr.044, i32 0, i32 1
  %3 = ptrtoint ptr %to4 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %to4, align 4
  %call5 = tail call ptr @clkdm_lookup(ptr noundef %4) #8
  %tobool6.not = icmp eq ptr %call, null
  %tobool7.not = icmp eq ptr %call5, null
  %or.cond = select i1 %tobool6.not, i1 true, i1 %tobool7.not
  br i1 %or.cond, label %do.end, label %if.end12

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  %to4.le54 = getelementptr inbounds %struct.static_dep_map, ptr %map.addr.044, i32 0, i32 1
  %5 = ptrtoint ptr %map.addr.044 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %map.addr.044, align 4
  %7 = ptrtoint ptr %to4.le54 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %to4.le54, align 4
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, ptr noundef %6, ptr noundef %8) #11
  br label %cleanup

if.end12:                                         ; preds = %while.body
  %call13 = tail call i32 @clkdm_add_wkdep(ptr noundef nonnull %call, ptr noundef nonnull %call5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end23, label %do.end18

do.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %to4.le = getelementptr inbounds %struct.static_dep_map, ptr %map.addr.044, i32 0, i32 1
  %9 = ptrtoint ptr %map.addr.044 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %map.addr.044, align 4
  %11 = ptrtoint ptr %to4.le to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %to4.le, align 4
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %10, ptr noundef %12, i32 noundef %call13) #11
  br label %cleanup

if.end23:                                         ; preds = %if.end12
  %incdec.ptr = getelementptr %struct.static_dep_map, ptr %map.addr.044, i32 1
  %13 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %incdec.ptr, align 4
  %tobool2.not = icmp eq ptr %14, null
  br i1 %tobool2.not, label %if.end23.cleanup_crit_edge, label %if.end23.while.body_crit_edge

if.end23.while.body_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %if.end23.cleanup_crit_edge, %do.end18, %do.end, %while.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call13, %do.end18 ], [ -22, %do.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %while.cond.preheader.cleanup_crit_edge ], [ 0, %if.end23.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4_mpuss_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clkdm_for_each(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_pm_clkdms_setup(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_common_suspend_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap4_pm_suspend() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.read_register.i32(metadata !80) #8
  %and.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cpu, align 4
  %.pn102 = load ptr, ptr @pwrst_list, align 4
  %cmp.not103 = icmp eq ptr %.pn102, @pwrst_list
  br i1 %cmp.not103, label %entry.for.end27_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end27_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end27

for.cond11.preheader:                             ; preds = %for.body
  %.pn100105.pr = load ptr, ptr @pwrst_list, align 4
  %cmp13.not106 = icmp eq ptr %.pn100105.pr, @pwrst_list
  br i1 %cmp13.not106, label %for.cond11.preheader.for.end27_crit_edge, label %for.cond11.preheader.for.body15_crit_edge

for.cond11.preheader.for.body15_crit_edge:        ; preds = %for.cond11.preheader
  br label %for.body15

for.cond11.preheader.for.end27_crit_edge:         ; preds = %for.cond11.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end27

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn104 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn102, %entry.for.body_crit_edge ]
  %pwrst.0 = getelementptr i8, ptr %.pn104, i32 -20
  %4 = ptrtoint ptr %pwrst.0 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pwrst.0, align 4
  %call1 = tail call i32 @pwrdm_read_next_pwrst(ptr noundef %5) #8
  %saved_state = getelementptr i8, ptr %.pn104, i32 -8
  %6 = ptrtoint ptr %saved_state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call1, ptr %saved_state, align 4
  %7 = ptrtoint ptr %pwrst.0 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pwrst.0, align 4
  %call3 = tail call i32 @pwrdm_read_logic_retst(ptr noundef %8) #8
  %saved_logic_state = getelementptr i8, ptr %.pn104, i32 -4
  %9 = ptrtoint ptr %saved_logic_state to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %call3, ptr %saved_logic_state, align 4
  %10 = ptrtoint ptr %.pn104 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn = load ptr, ptr %.pn104, align 4
  %cmp.not = icmp eq ptr %.pn, @pwrst_list
  br i1 %cmp.not, label %for.cond11.preheader, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body15:                                       ; preds = %for.body15.for.body15_crit_edge, %for.cond11.preheader.for.body15_crit_edge
  %.pn100107 = phi ptr [ %.pn100, %for.body15.for.body15_crit_edge ], [ %.pn100105.pr, %for.cond11.preheader.for.body15_crit_edge ]
  %pwrst.1 = getelementptr i8, ptr %.pn100107, i32 -20
  %11 = ptrtoint ptr %pwrst.1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pwrst.1, align 4
  %next_state = getelementptr i8, ptr %.pn100107, i32 -16
  %13 = ptrtoint ptr %next_state to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %next_state, align 4
  %conv = trunc i32 %14 to i8
  %call17 = tail call i32 @omap_set_pwrdm_state(ptr noundef %12, i8 noundef zeroext %conv) #8
  %15 = ptrtoint ptr %pwrst.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pwrst.1, align 4
  %next_logic_state = getelementptr i8, ptr %.pn100107, i32 -12
  %17 = ptrtoint ptr %next_logic_state to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %next_logic_state, align 4
  %conv19 = trunc i32 %18 to i8
  %call20 = tail call i32 @pwrdm_set_logic_retst(ptr noundef %16, i8 noundef zeroext %conv19) #8
  %19 = ptrtoint ptr %.pn100107 to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn100 = load ptr, ptr %.pn100107, align 4
  %cmp13.not = icmp eq ptr %.pn100, @pwrst_list
  br i1 %cmp13.not, label %for.body15.for.end27_crit_edge, label %for.body15.for.body15_crit_edge

for.body15.for.body15_crit_edge:                  ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body15

for.body15.for.end27_crit_edge:                   ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end27

for.end27:                                        ; preds = %for.body15.for.end27_crit_edge, %for.cond11.preheader.for.end27_crit_edge, %entry.for.end27_crit_edge
  %.b = load i1, ptr @cpu_suspend_state, align 4
  %20 = zext i1 %.b to i32
  %call28 = tail call i32 @omap4_enter_lowpower(i32 noundef %3, i32 noundef %20) #8
  %.pn101108 = load ptr, ptr @pwrst_list, align 4
  %cmp34.not110 = icmp eq ptr %.pn101108, @pwrst_list
  br i1 %cmp34.not110, label %for.end27.if.end78_crit_edge, label %for.end27.for.body37_crit_edge

for.end27.for.body37_crit_edge:                   ; preds = %for.end27
  br label %for.body37

for.end27.if.end78_crit_edge:                     ; preds = %for.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78

for.body37:                                       ; preds = %if.end.for.body37_crit_edge, %for.end27.for.body37_crit_edge
  %.pn101112 = phi ptr [ %.pn101, %if.end.for.body37_crit_edge ], [ %.pn101108, %for.end27.for.body37_crit_edge ]
  %ret.0111 = phi i32 [ %ret.1, %if.end.for.body37_crit_edge ], [ 0, %for.end27.for.body37_crit_edge ]
  %pwrst.2113 = getelementptr i8, ptr %.pn101112, i32 -20
  %21 = ptrtoint ptr %pwrst.2113 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pwrst.2113, align 4
  %call39 = tail call i32 @pwrdm_read_prev_pwrst(ptr noundef %22) #8
  %next_state40 = getelementptr i8, ptr %.pn101112, i32 -16
  %23 = ptrtoint ptr %next_state40 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %next_state40, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call39, i32 %24)
  %cmp41 = icmp ugt i32 %call39, %24
  br i1 %cmp41, label %do.end, label %for.body37.if.end_crit_edge

for.body37.if.end_crit_edge:                      ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %for.body37
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %pwrst.2113 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pwrst.2113, align 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 8
  %call46 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31, ptr noundef %28, i32 noundef %24) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %for.body37.if.end_crit_edge
  %ret.1 = phi i32 [ -1, %do.end ], [ %ret.0111, %for.body37.if.end_crit_edge ]
  %29 = ptrtoint ptr %pwrst.2113 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pwrst.2113, align 4
  %saved_state48 = getelementptr i8, ptr %.pn101112, i32 -8
  %31 = ptrtoint ptr %saved_state48 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %saved_state48, align 4
  %conv49 = trunc i32 %32 to i8
  %call50 = tail call i32 @omap_set_pwrdm_state(ptr noundef %30, i8 noundef zeroext %conv49) #8
  %33 = ptrtoint ptr %pwrst.2113 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pwrst.2113, align 4
  %saved_logic_state52 = getelementptr i8, ptr %.pn101112, i32 -4
  %35 = ptrtoint ptr %saved_logic_state52 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %saved_logic_state52, align 4
  %conv53 = trunc i32 %36 to i8
  %call54 = tail call i32 @pwrdm_set_logic_retst(ptr noundef %34, i8 noundef zeroext %conv53) #8
  %37 = ptrtoint ptr %.pn101112 to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pn101 = load ptr, ptr %.pn101112, align 4
  %cmp34.not = icmp eq ptr %.pn101, @pwrst_list
  br i1 %cmp34.not, label %for.end61, label %if.end.for.body37_crit_edge

if.end.for.body37_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body37

for.end61:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool.not = icmp eq i32 %ret.1, 0
  br i1 %tobool.not, label %for.end61.if.end78_crit_edge, label %do.end65

for.end61.if.end78_crit_edge:                     ; preds = %for.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78

do.end65:                                         ; preds = %for.end61
  call void @__sanitizer_cov_trace_pc() #10
  %call67 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34) #11
  br label %if.end78

if.end78:                                         ; preds = %do.end65, %for.end61.if.end78_crit_edge, %for.end27.if.end78_crit_edge
  %.str.40.sink = phi ptr [ @.str.37, %do.end65 ], [ @.str.40, %for.end27.if.end78_crit_edge ], [ @.str.40, %for.end61.if.end78_crit_edge ]
  %call77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.40.sink) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_default_idle() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @omap_do_wfi() #8
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @omap4_idle_init() local_unnamed_addr #2 section ".init.text"

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_set_logic_retst(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @pwrdm_get_valid_lp_state(ptr noundef, i1 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_set_pwrdm_state(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clkdm_lookup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clkdm_add_wkdep(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_read_next_pwrst(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_read_logic_retst(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4_enter_lowpower(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_read_prev_pwrst(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_do_wfi() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind readonly }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !19, !20, !22, !23, !24, !26, !28, !30, !32, !34, !36, !38, !39, !40, !41, !43, !44, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79}
!llvm.named.register.sp = !{!80}
!llvm.module.flags = !{!81, !82, !83, !84, !85, !86, !87, !88}
!llvm.ident = !{!89}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-omap2/pm44xx.c", i32 247, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../arch/arm/mach-omap2/pm44xx.c", i32 251, i32 2}
!5 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @omap4_pm_init._entry, !4, !"_entry", i1 false, i1 false}
!7 = !{ptr @omap4_pm_init._entry_ptr, !4, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-omap2/pm44xx.c", i32 260, i32 3}
!10 = !{ptr @omap4_pm_init._entry.4, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @omap4_pm_init._entry_ptr.6, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../arch/arm/mach-omap2/pm44xx.c", i32 264, i32 3}
!14 = !{ptr @omap4_pm_init._entry.7, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @omap4_pm_init._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../arch/arm/mach-omap2/pm44xx.c", i32 274, i32 3}
!18 = !{ptr @omap4_pm_init._entry.10, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @omap4_pm_init._entry_ptr.12, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.14, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../arch/arm/mach-omap2/pm44xx.c", i32 280, i32 3}
!22 = !{ptr @omap4_pm_init._entry.13, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @omap4_pm_init._entry_ptr.15, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @pm44xx_errata, !25, !"pm44xx_errata", i1 false, i1 false}
!25 = !{!"../arch/arm/mach-omap2/pm44xx.c", i32 24, i32 5}
!26 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../arch/arm/mach-omap2/pm44xx.c", i32 125, i32 28}
!28 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../arch/arm/mach-omap2/pm44xx.c", i32 131, i32 28}
!30 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../arch/arm/mach-omap2/pm44xx.c", i32 132, i32 28}
!32 = distinct !{null, !33, !"cpu_suspend_state", i1 false, i1 false}
!33 = !{!"../arch/arm/mach-omap2/pm44xx.c", i32 47, i32 12}
!34 = !{ptr @pwrst_list, !35, !"pwrst_list", i1 false, i1 false}
!35 = !{!"../arch/arm/mach-omap2/pm44xx.c", i32 49, i32 8}
!36 = !{ptr @.str.19, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../arch/arm/mach-omap2/pm44xx.c", i32 202, i32 4}
!38 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @omap4plus_init_static_deps._entry, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @omap4plus_init_static_deps._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.22, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../arch/arm/mach-omap2/pm44xx.c", i32 208, i32 4}
!43 = !{ptr @omap4plus_init_static_deps._entry.21, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @omap4plus_init_static_deps._entry_ptr.23, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.24, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../arch/arm/mach-omap2/pm44xx.c", i32 173, i32 11}
!47 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../arch/arm/mach-omap2/pm44xx.c", i32 173, i32 32}
!49 = !{ptr @.str.26, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../arch/arm/mach-omap2/pm44xx.c", i32 174, i32 32}
!51 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../arch/arm/mach-omap2/pm44xx.c", i32 175, i32 32}
!53 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../arch/arm/mach-omap2/pm44xx.c", i32 176, i32 11}
!55 = !{ptr @omap4_static_dep_map, !56, !"omap4_static_dep_map", i1 false, i1 false}
!56 = !{!"../arch/arm/mach-omap2/pm44xx.c", i32 172, i32 36}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../arch/arm/mach-omap2/pm44xx.c", i32 182, i32 11}
!59 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../arch/arm/mach-omap2/pm44xx.c", i32 182, i32 30}
!61 = !{ptr @omap5_dra7_static_dep_map, !62, !"omap5_dra7_static_dep_map", i1 false, i1 false}
!62 = !{!"../arch/arm/mach-omap2/pm44xx.c", i32 181, i32 36}
!63 = !{ptr @.str.31, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../arch/arm/mach-omap2/pm44xx.c", i32 85, i32 4}
!65 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @omap4_pm_suspend._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @omap4_pm_suspend._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../arch/arm/mach-omap2/pm44xx.c", i32 93, i32 3}
!70 = !{ptr @omap4_pm_suspend._entry.33, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @omap4_pm_suspend._entry_ptr.35, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../arch/arm/mach-omap2/pm44xx.c", i32 102, i32 3}
!74 = !{ptr @omap4_pm_suspend._entry.36, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @omap4_pm_suspend._entry_ptr.38, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.40, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../arch/arm/mach-omap2/pm44xx.c", i32 104, i32 3}
!78 = !{ptr @omap4_pm_suspend._entry.39, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @omap4_pm_suspend._entry_ptr.41, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{!"sp"}
!81 = !{i32 1, !"wchar_size", i32 2}
!82 = !{i32 1, !"min_enum_size", i32 4}
!83 = !{i32 8, !"branch-target-enforcement", i32 0}
!84 = !{i32 8, !"sign-return-address", i32 0}
!85 = !{i32 8, !"sign-return-address-all", i32 0}
!86 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!87 = !{i32 7, !"uwtable", i32 1}
!88 = !{i32 7, !"frame-pointer", i32 2}
!89 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
