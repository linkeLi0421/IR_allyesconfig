; ModuleID = '/llk/IR_all_yes/arch/arm/mach-omap2/pm34xx.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/pm34xx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.powerdomain = type { ptr, %union.anon, i16, i8, i8, i8, i8, [5 x i8], [5 x i8], i8, [11 x ptr], %struct.list_head, %struct.list_head, i32, [4 x i32], i32, [5 x i32], %struct.spinlock, i32, i8, i8, i32, [5 x i32], [5 x i32], [5 x i32], [5 x i32], i64, [4 x i64], i32 }
%union.anon = type { ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.power_state = type { ptr, i32, i32, %struct.list_head }

@mpu_pwrdm = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@omap_sram_idle._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 204, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"\013Invalid mpu state in sram_idle\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"omap_sram_idle\00", [17 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"arch/arm/mach-omap2/pm34xx.c\00", [35 x i8] zeroinitializer }, align 32
@omap_sram_idle._entry_ptr = internal global ptr @omap_sram_idle._entry, section ".printk_index", align 4
@neon_pwrdm = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@per_pwrdm = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@core_pwrdm = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@omap3_arm_context = external dso_local local_unnamed_addr global [128 x i32], align 4
@pwrst_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @pwrst_list, ptr @pwrst_list }, [24 x i8] zeroinitializer }, align 32
@pm34xx_errata = dso_local global { i16, [30 x i8] } zeroinitializer, align 32
@omap3_pm_off_mode_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.2, i32 366, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\014%s: Core OFF disabled due to errata i583\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"omap3_pm_off_mode_enable\00", [39 x i8] zeroinitializer }, align 32
@omap3_pm_off_mode_enable._entry_ptr = internal global ptr @omap3_pm_off_mode_enable._entry, section ".printk_index", align 4
@omap3_do_wfi_sz = external dso_local local_unnamed_addr global i32, align 4
@omap3_do_wfi_sram = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@omap3_pm_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 471, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"\014PM: no software I/O chain control; some wakeups may be lost\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"omap3_pm_init\00", [18 x i8] zeroinitializer }, align 32
@omap3_pm_init._entry_ptr = internal global ptr @omap3_pm_init._entry, section ".printk_index", align 4
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"wkup\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pm_wkup\00", [24 x i8] zeroinitializer }, align 32
@omap3_pm_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.6, ptr @.str.2, i32 483, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013pm: Failed to request pm_wkup irq\0A\00", [59 x i8] zeroinitializer }, align 32
@omap3_pm_init._entry_ptr.11 = internal global ptr @omap3_pm_init._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"io\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pm_io\00", [26 x i8] zeroinitializer }, align 32
@omap3_pm_init._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.6, ptr @.str.2, i32 493, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013pm: Failed to request pm_io irq\0A\00", [61 x i8] zeroinitializer }, align 32
@omap3_pm_init._entry_ptr.16 = internal global ptr @omap3_pm_init._entry.14, section ".printk_index", align 4
@omap3_pm_init._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.6, ptr @.str.2, i32 501, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"\013Failed to setup powerdomains\0A\00", [32 x i8] zeroinitializer }, align 32
@omap3_pm_init._entry_ptr.19 = internal global ptr @omap3_pm_init._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mpu_pwrdm\00", [22 x i8] zeroinitializer }, align 32
@omap3_pm_init._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.6, ptr @.str.2, i32 509, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013Failed to get mpu_pwrdm\0A\00", [37 x i8] zeroinitializer }, align 32
@omap3_pm_init._entry_ptr.23 = internal global ptr @omap3_pm_init._entry.21, section ".printk_index", align 4
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"neon_pwrdm\00", [21 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"per_pwrdm\00", [22 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"core_pwrdm\00", [21 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"neon_clkdm\00", [21 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mpu_clkdm\00", [22 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"per_clkdm\00", [22 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wkup_clkdm\00", [21 x i8] zeroinitializer }, align 32
@arm_pm_idle = external dso_local local_unnamed_addr global ptr, align 4
@omap3_secure_ram_storage = external dso_local local_unnamed_addr global ptr, align 4
@omap3_pm_init._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.6, ptr @.str.2, i32 562, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [68 x i8], [60 x i8] } { [68 x i8] c"\013Memory allocation failed when allocating for secure sram context\0A\00", [60 x i8] zeroinitializer }, align 32
@omap3_pm_init._entry_ptr.33 = internal global ptr @omap3_pm_init._entry.31, section ".printk_index", align 4
@omap2_sdrc_base = external dso_local local_unnamed_addr global ptr, align 4
@omap_features = external dso_local local_unnamed_addr global i32, align 4
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ti,twl4030-power-idle\00", [42 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ti,twl4030-power-idle-osc-off\00", [34 x i8] zeroinitializer }, align 32
@enable_off_mode = external dso_local local_unnamed_addr global i32, align 4
@omap3_pm_suspend._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 327, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\016Powerdomain (%s) didn't enter target state %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"omap3_pm_suspend\00", [47 x i8] zeroinitializer }, align 32
@omap3_pm_suspend._entry_ptr = internal global ptr @omap3_pm_suspend._entry, section ".printk_index", align 4
@omap3_pm_suspend._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.2, i32 333, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013Could not enter target state in pm_suspend\0A\00", [50 x i8] zeroinitializer }, align 32
@omap3_pm_suspend._entry_ptr.40 = internal global ptr @omap3_pm_suspend._entry.38, section ".printk_index", align 4
@omap3_pm_suspend._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.37, ptr @.str.2, i32 335, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\016Successfully put all powerdomains to target state\0A\00", [43 x i8] zeroinitializer }, align 32
@omap3_pm_suspend._entry_ptr.43 = internal global ptr @omap3_pm_suspend._entry.41, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@omap3_save_secure_ram_context._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 118, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013save_secure_sram() returns %08x\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"omap3_save_secure_ram_context\00", [34 x i8] zeroinitializer }, align 32
@omap3_save_secure_ram_context._entry_ptr = internal global ptr @omap3_save_secure_ram_context._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 3]
@___asan_gen_.46 = private unnamed_addr constant [10 x i8] c"mpu_pwrdm\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 67, i32 28 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 204, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant [11 x i8] c"neon_pwrdm\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 67, i32 40 }
@___asan_gen_.64 = private unnamed_addr constant [10 x i8] c"per_pwrdm\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 68, i32 41 }
@___asan_gen_.67 = private unnamed_addr constant [11 x i8] c"core_pwrdm\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 68, i32 28 }
@___asan_gen_.70 = private unnamed_addr constant [11 x i8] c"pwrst_list\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 63, i32 8 }
@___asan_gen_.73 = private unnamed_addr constant [14 x i8] c"pm34xx_errata\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 52, i32 5 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 365, i32 4 }
@___asan_gen_.85 = private unnamed_addr constant [18 x i8] c"omap3_do_wfi_sram\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 65, i32 8 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 471, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 479, i32 43 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 480, i32 45 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 483, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 488, i32 43 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 489, i32 55 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 493, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 501, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 507, i32 27 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 509, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 514, i32 28 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 515, i32 27 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 516, i32 28 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 518, i32 28 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 519, i32 27 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 520, i32 27 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 521, i32 28 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 562, i32 4 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 452, i32 43 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 454, i32 44 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 326, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 333, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 335, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.196 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.197 = private constant [32 x i8] c"../arch/arm/mach-omap2/pm34xx.c\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.197, i32 118, i32 4 }
@llvm.compiler.used = appending global [63 x ptr] [ptr @omap3_pm_init._entry, ptr @omap3_pm_init._entry.14, ptr @omap3_pm_init._entry.17, ptr @omap3_pm_init._entry.21, ptr @omap3_pm_init._entry.31, ptr @omap3_pm_init._entry.9, ptr @omap3_pm_init._entry_ptr, ptr @omap3_pm_init._entry_ptr.11, ptr @omap3_pm_init._entry_ptr.16, ptr @omap3_pm_init._entry_ptr.19, ptr @omap3_pm_init._entry_ptr.23, ptr @omap3_pm_init._entry_ptr.33, ptr @omap3_pm_off_mode_enable._entry, ptr @omap3_pm_off_mode_enable._entry_ptr, ptr @omap3_pm_suspend._entry, ptr @omap3_pm_suspend._entry.38, ptr @omap3_pm_suspend._entry.41, ptr @omap3_pm_suspend._entry_ptr, ptr @omap3_pm_suspend._entry_ptr.40, ptr @omap3_pm_suspend._entry_ptr.43, ptr @omap3_save_secure_ram_context._entry, ptr @omap3_save_secure_ram_context._entry_ptr, ptr @omap_sram_idle._entry, ptr @omap_sram_idle._entry_ptr, ptr @mpu_pwrdm, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @neon_pwrdm, ptr @per_pwrdm, ptr @core_pwrdm, ptr @pwrst_list, ptr @pm34xx_errata, ptr @.str.3, ptr @.str.4, ptr @omap3_do_wfi_sram, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.42, ptr @.str.44, ptr @.str.45], section "llvm.metadata"
@0 = internal global [51 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu_pwrdm to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_sram_idle._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @neon_pwrdm to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @per_pwrdm to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_pwrdm to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwrst_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pm34xx_errata to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_pm_off_mode_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_do_wfi_sram to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_pm_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_pm_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_pm_init._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_pm_init._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_pm_init._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_pm_init._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_pm_suspend._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_pm_suspend._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_pm_suspend._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_save_secure_ram_context._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_sram_idle() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @mpu_pwrdm, align 4
  %call = tail call i32 @pwrdm_read_next_pwrst(ptr noundef %0) #9
  %1 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %do.end [
    i32 3, label %entry.sw.epilog_crit_edge
    i32 1, label %entry.sw.epilog_crit_edge111
    i32 0, label %sw.bb1
  ]

entry.sw.epilog_crit_edge111:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #12
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb1, %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge111
  %tobool41.not = phi i1 [ false, %sw.bb1 ], [ true, %entry.sw.epilog_crit_edge ], [ true, %entry.sw.epilog_crit_edge111 ]
  %cmp47 = phi i1 [ true, %sw.bb1 ], [ false, %entry.sw.epilog_crit_edge ], [ false, %entry.sw.epilog_crit_edge111 ]
  %save_state.0 = phi i32 [ 3, %sw.bb1 ], [ 0, %entry.sw.epilog_crit_edge ], [ 0, %entry.sw.epilog_crit_edge111 ]
  %2 = load ptr, ptr @neon_pwrdm, align 4
  %call3 = tail call i32 @pwrdm_read_pwrst(ptr noundef %2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call3)
  %cmp = icmp eq i32 %call3, 3
  br i1 %cmp, label %if.then, label %sw.epilog.if.end_crit_edge

sw.epilog.if.end_crit_edge:                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %3 = load ptr, ptr @neon_pwrdm, align 4
  %conv = trunc i32 %call to i8
  %call4 = tail call i32 @pwrdm_set_next_pwrst(ptr noundef %3, i8 noundef zeroext %conv) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %sw.epilog.if.end_crit_edge
  %4 = load ptr, ptr @per_pwrdm, align 4
  %call5 = tail call i32 @pwrdm_read_next_pwrst(ptr noundef %4) #9
  %5 = load ptr, ptr @core_pwrdm, align 4
  %call6 = tail call i32 @pwrdm_read_next_pwrst(ptr noundef %5) #9
  %call7 = tail call i32 @pwrdm_pre_transition(ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp8 = icmp eq i32 %call5, 0
  br i1 %cmp8, label %if.then10, label %if.end.if.end14_crit_edge

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.then10:                                        ; preds = %if.end
  %call11 = tail call i32 @cpu_cluster_pm_enter() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %if.then10.if.end14_crit_edge, label %if.then10.cleanup_crit_edge

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10.if.end14_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

if.end14:                                         ; preds = %if.then10.if.end14_crit_edge, %if.end.if.end14_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call6)
  %cmp15 = icmp slt i32 %call6, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp18 = icmp eq i32 %call6, 0
  br i1 %cmp18, label %if.then20, label %if.end14.if.end22_crit_edge

if.end14.if.end22_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then20:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 @omap3_ctrl_save_padconf() #9
  %call1.i = tail call i32 @omap_ctrl_readl(i16 noundef zeroext 1528) #9
  tail call void @omap_ctrl_writel(i32 noundef %call1.i, i16 noundef zeroext 2208) #9
  tail call void @omap_intc_save_context() #9
  tail call void @omap3_control_save_context() #9
  tail call void @omap3_cm_save_context() #9
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end14.if.end22_crit_edge
  tail call void @omap3_vc_set_pmic_signaling(i32 noundef %call6) #9
  tail call void @omap3_intc_prepare_idle() #9
  %call.i105 = tail call i32 @omap_rev() #9
  %shr.mask.i = and i32 %call.i105, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 875560960, i32 %shr.mask.i)
  %cmp.i.not = icmp eq i32 %shr.mask.i, 875560960
  br i1 %cmp.i.not, label %land.lhs.true, label %if.end22.if.end40_crit_edge

if.end22.if.end40_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

land.lhs.true:                                    ; preds = %if.end22
  %call25 = tail call i32 @omap_rev() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 875561779, i32 %call25)
  %cmp26 = icmp ugt i32 %call25, 875561779
  br i1 %cmp26, label %land.lhs.true28, label %land.lhs.true.if.end40_crit_edge

land.lhs.true.if.end40_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

land.lhs.true28:                                  ; preds = %land.lhs.true
  %call29 = tail call i32 @omap_type() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call29)
  %cmp30 = icmp eq i32 %call29, 1
  br i1 %cmp30, label %land.lhs.true35, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true28
  %call32 = tail call i32 @omap_type() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call32)
  %cmp33 = icmp eq i32 %call32, 2
  %or.cond103 = select i1 %cmp33, i1 %cmp18, i1 false
  br i1 %or.cond103, label %lor.lhs.false.if.then38_crit_edge, label %lor.lhs.false.if.end40_crit_edge

lor.lhs.false.if.end40_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

lor.lhs.false.if.then38_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38

land.lhs.true35:                                  ; preds = %land.lhs.true28
  br i1 %cmp18, label %land.lhs.true35.if.then38_crit_edge, label %land.lhs.true35.if.end40_crit_edge

land.lhs.true35.if.end40_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end40

land.lhs.true35.if.then38_crit_edge:              ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then38

if.then38:                                        ; preds = %land.lhs.true35.if.then38_crit_edge, %lor.lhs.false.if.then38_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @omap2_sdrc_base to i32))
  %6 = load ptr, ptr @omap2_sdrc_base, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 112
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #9, !srcloc !105
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #9
  br label %if.end40

if.end40:                                         ; preds = %if.then38, %land.lhs.true35.if.end40_crit_edge, %lor.lhs.false.if.end40_crit_edge, %land.lhs.true.if.end40_crit_edge, %if.end22.if.end40_crit_edge
  %sdrc_pwr.0 = phi i32 [ %8, %if.then38 ], [ 0, %land.lhs.true35.if.end40_crit_edge ], [ 0, %lor.lhs.false.if.end40_crit_edge ], [ 0, %land.lhs.true.if.end40_crit_edge ], [ 0, %if.end22.if.end40_crit_edge ]
  br i1 %tobool41.not, label %if.end40.lor.lhs.false46_crit_edge, label %if.then42

if.end40.lor.lhs.false46_crit_edge:               ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false46

if.then42:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  %9 = tail call i32 asm "mrc p15, 0, $0, c1, c0, 1", "=r"() #13, !srcloc !106
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @omap3_arm_context to i32))
  store i32 1, ptr @omap3_arm_context, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([128 x i32], ptr @omap3_arm_context, i32 0, i32 1) to i32))
  store i32 %9, ptr getelementptr inbounds ([128 x i32], ptr @omap3_arm_context, i32 0, i32 1), align 4
  %10 = tail call i32 asm "mrc p15, 1, $0, c9, c0, 2", "=r"() #13, !srcloc !107
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([128 x i32], ptr @omap3_arm_context, i32 0, i32 2) to i32))
  store i32 1, ptr getelementptr inbounds ([128 x i32], ptr @omap3_arm_context, i32 0, i32 2), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([128 x i32], ptr @omap3_arm_context, i32 0, i32 3) to i32))
  store i32 %10, ptr getelementptr inbounds ([128 x i32], ptr @omap3_arm_context, i32 0, i32 3), align 4
  br label %lor.lhs.false46

lor.lhs.false46:                                  ; preds = %if.then42, %if.end40.lor.lhs.false46_crit_edge
  br i1 %cmp47, label %if.then49, label %if.else

if.then49:                                        ; preds = %lor.lhs.false46
  call void @__sanitizer_cov_trace_pc() #11
  %call50 = tail call i32 @cpu_suspend(i32 noundef %save_state.0, ptr noundef nonnull @omap34xx_do_sram_idle) #9
  br label %if.end52

if.else:                                          ; preds = %lor.lhs.false46
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @omap34xx_cpu_suspend(i32 noundef %save_state.0) #9
  br label %if.end52

if.end52:                                         ; preds = %if.else, %if.then49
  %call.i106 = tail call i32 @omap_rev() #9
  %shr.mask.i107 = and i32 %call.i106, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 875560960, i32 %shr.mask.i107)
  %cmp.i108.not = icmp eq i32 %shr.mask.i107, 875560960
  br i1 %cmp.i108.not, label %land.lhs.true55, label %if.end52.if.end71_crit_edge

if.end52.if.end71_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71

land.lhs.true55:                                  ; preds = %if.end52
  %call56 = tail call i32 @omap_rev() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 875561779, i32 %call56)
  %cmp57 = icmp ugt i32 %call56, 875561779
  br i1 %cmp57, label %land.lhs.true59, label %land.lhs.true55.if.end71_crit_edge

land.lhs.true55.if.end71_crit_edge:               ; preds = %land.lhs.true55
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71

land.lhs.true59:                                  ; preds = %land.lhs.true55
  %call60 = tail call i32 @omap_type() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call60)
  %cmp61 = icmp eq i32 %call60, 1
  br i1 %cmp61, label %land.lhs.true67, label %lor.lhs.false63

lor.lhs.false63:                                  ; preds = %land.lhs.true59
  %call64 = tail call i32 @omap_type() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call64)
  %cmp65 = icmp eq i32 %call64, 2
  %or.cond104 = select i1 %cmp65, i1 %cmp18, i1 false
  br i1 %or.cond104, label %lor.lhs.false63.if.then70_crit_edge, label %lor.lhs.false63.if.end71_crit_edge

lor.lhs.false63.if.end71_crit_edge:               ; preds = %lor.lhs.false63
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71

lor.lhs.false63.if.then70_crit_edge:              ; preds = %lor.lhs.false63
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then70

land.lhs.true67:                                  ; preds = %land.lhs.true59
  br i1 %cmp18, label %land.lhs.true67.if.then70_crit_edge, label %land.lhs.true67.if.end71_crit_edge

land.lhs.true67.if.end71_crit_edge:               ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end71

land.lhs.true67.if.then70_crit_edge:              ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then70

if.then70:                                        ; preds = %land.lhs.true67.if.then70_crit_edge, %lor.lhs.false63.if.then70_crit_edge
  %11 = tail call i32 @llvm.bswap.i32(i32 %sdrc_pwr.0) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @omap2_sdrc_base to i32))
  %12 = load ptr, ptr @omap2_sdrc_base, align 4
  %add.ptr.i110 = getelementptr i8, ptr %12, i32 112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i110, i32 %11) #9, !srcloc !108
  br label %if.end71

if.end71:                                         ; preds = %if.then70, %land.lhs.true67.if.end71_crit_edge, %lor.lhs.false63.if.end71_crit_edge, %land.lhs.true55.if.end71_crit_edge, %if.end52.if.end71_crit_edge
  br i1 %cmp15, label %land.lhs.true74, label %if.end71.if.else79_crit_edge

if.end71.if.else79_crit_edge:                     ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else79

land.lhs.true74:                                  ; preds = %if.end71
  %13 = load ptr, ptr @core_pwrdm, align 4
  %call75 = tail call i32 @pwrdm_read_prev_pwrst(ptr noundef %13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %cmp76 = icmp eq i32 %call75, 0
  br i1 %cmp76, label %if.then78, label %land.lhs.true74.if.else79_crit_edge

land.lhs.true74.if.else79_crit_edge:              ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else79

if.then78:                                        ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @omap3_control_restore_context() #9
  tail call void @omap_intc_restore_context() #9
  tail call void @omap3_cm_restore_context() #9
  tail call void @omap3_sram_restore_context() #9
  tail call void @omap2_sms_restore_context() #9
  br label %if.end80

if.else79:                                        ; preds = %land.lhs.true74.if.else79_crit_edge, %if.end71.if.else79_crit_edge
  tail call void @omap3_intc_resume_idle() #9
  br label %if.end80

if.end80:                                         ; preds = %if.else79, %if.then78
  %call81 = tail call i32 @pwrdm_post_transition(ptr noundef null) #9
  br i1 %cmp8, label %if.then84, label %if.end80.cleanup_crit_edge

if.end80.cleanup_crit_edge:                       ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then84:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  %call85 = tail call i32 @cpu_cluster_pm_exit() #9
  br label %cleanup

cleanup:                                          ; preds = %if.then84, %if.end80.cleanup_crit_edge, %if.then10.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_read_next_pwrst(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_read_pwrst(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_set_next_pwrst(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_pre_transition(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_cluster_pm_enter() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3_cm_save_context() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3_vc_set_pmic_signaling(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3_intc_prepare_idle() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_rev() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_type() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_suspend(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap34xx_do_sram_idle(i32 noundef %save_state) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @omap34xx_cpu_suspend(i32 noundef %save_state) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_read_prev_pwrst(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3_cm_restore_context() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3_sram_restore_context() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap2_sms_restore_context() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3_intc_resume_idle() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_post_transition(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_cluster_pm_exit() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3_pm_off_mode_enable(i32 noundef %enable) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %enable)
  %tobool.not = icmp eq i32 %enable, 0
  %. = zext i1 %tobool.not to i32
  %.pn27 = load ptr, ptr @pwrst_list, align 4
  %cmp.not29 = icmp eq ptr %.pn27, @pwrst_list
  br i1 %cmp.not29, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %if.end11.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn30 = phi ptr [ %.pn, %if.end11.for.body_crit_edge ], [ %.pn27, %entry.for.body_crit_edge ]
  %pwrst.031 = getelementptr i8, ptr %.pn30, i32 -12
  %0 = load i16, ptr @pm34xx_errata, align 2
  %1 = and i16 %0, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool1.not = icmp eq i16 %1, 0
  br i1 %tobool1.not, label %for.body.if.else9_crit_edge, label %land.lhs.true

for.body.if.else9_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else9

land.lhs.true:                                    ; preds = %for.body
  %2 = ptrtoint ptr %pwrst.031 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pwrst.031, align 4
  %4 = load ptr, ptr @core_pwrdm, align 4
  %cmp2 = icmp ne ptr %3, %4
  %brmerge = or i1 %tobool.not, %cmp2
  br i1 %brmerge, label %land.lhs.true.if.else9_crit_edge, label %if.then7

land.lhs.true.if.else9_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else9

if.then7:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %next_state = getelementptr i8, ptr %.pn30, i32 -8
  %5 = ptrtoint ptr %next_state to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %next_state, align 4
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4) #12
  br label %if.end11

if.else9:                                         ; preds = %land.lhs.true.if.else9_crit_edge, %for.body.if.else9_crit_edge
  %next_state10 = getelementptr i8, ptr %.pn30, i32 -8
  %6 = ptrtoint ptr %next_state10 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %., ptr %next_state10, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.else9, %if.then7
  %7 = ptrtoint ptr %pwrst.031 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pwrst.031, align 4
  %next_state13 = getelementptr i8, ptr %.pn30, i32 -8
  %9 = ptrtoint ptr %next_state13 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %next_state13, align 4
  %conv14 = trunc i32 %10 to i8
  %call15 = tail call i32 @omap_set_pwrdm_state(ptr noundef %8, i8 noundef zeroext %conv14) #9
  %11 = ptrtoint ptr %.pn30 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn = load ptr, ptr %.pn30, align 4
  %cmp.not = icmp eq ptr %.pn, @pwrst_list
  br i1 %cmp.not, label %if.end11.for.end_crit_edge, label %if.end11.for.body_crit_edge

if.end11.for.body_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %if.end11.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_set_pwrdm_state(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap3_pm_get_suspend_state(ptr noundef readnone %pwrdm) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ @pwrst_list, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, @pwrst_list
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %pwrst.0 = getelementptr i8, ptr %.pn, i32 -12
  %1 = ptrtoint ptr %pwrst.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pwrst.0, align 4
  %cmp2 = icmp eq ptr %2, %pwrdm
  br i1 %cmp2, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %next_state = getelementptr i8, ptr %.pn, i32 -8
  %3 = ptrtoint ptr %next_state to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %next_state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then ], [ -22, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap3_pm_set_suspend_state(ptr noundef readnone %pwrdm, i32 noundef %state) local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %entry
  %.pn.in = phi ptr [ @pwrst_list, %entry ], [ %.pn, %for.body.for.cond_crit_edge ]
  %0 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, @pwrst_list
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %pwrst.0 = getelementptr i8, ptr %.pn, i32 -12
  %1 = ptrtoint ptr %pwrst.0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pwrst.0, align 4
  %cmp2 = icmp eq ptr %2, %pwrdm
  br i1 %cmp2, label %if.then, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %next_state = getelementptr i8, ptr %.pn, i32 -8
  %3 = ptrtoint ptr %next_state to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %state, ptr %next_state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ -22, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap_push_sram_idle() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @omap3_do_wfi_sz to i32))
  %0 = load i32, ptr @omap3_do_wfi_sz, align 4
  %call = tail call ptr @omap_sram_push(ptr noundef nonnull @omap3_do_wfi, i32 noundef %0) #9
  store ptr %call, ptr @omap3_do_wfi_sram, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @omap_sram_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3_do_wfi() #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap3_pm_init() #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @omap_features to i32))
  %0 = load i32, ptr @omap_features, align 4
  %and.i = and i32 %0, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call fastcc void @pm_errata_configure() #14
  tail call fastcc void @prcm_setup_regs() #14
  %call3 = tail call i32 @omap_prcm_event_to_irq(ptr noundef nonnull @.str.7) #9
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %call3, ptr noundef nonnull @_prcm_int_handle_wakeup, ptr noundef null, i32 noundef 16384, ptr noundef nonnull @.str.8, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool5.not = icmp eq i32 %call.i, 0
  br i1 %tobool5.not, label %if.end12, label %do.end9

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #12
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %call13 = tail call i32 @omap_prcm_event_to_irq(ptr noundef nonnull @.str.12) #9
  %call.i116 = tail call i32 @request_threaded_irq(i32 noundef %call13, ptr noundef nonnull @_prcm_int_handle_io, ptr noundef null, i32 noundef 16512, ptr noundef nonnull @.str.13, ptr noundef nonnull @omap3_pm_init) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i116)
  %tobool15.not = icmp eq i32 %call.i116, 0
  br i1 %tobool15.not, label %if.end22, label %do.end19

do.end19:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15) #12
  br label %err2

if.end22:                                         ; preds = %if.end12
  tail call fastcc void @omap3_pm_check_pmic() #14
  %call23 = tail call i32 @pwrdm_for_each(ptr noundef nonnull @pwrdms_setup, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end31, label %if.end22.err3_crit_edge

if.end22.err3_crit_edge:                          ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %err3

if.end31:                                         ; preds = %if.end22
  %call32 = tail call i32 @clkdm_for_each(ptr noundef nonnull @omap_pm_clkdms_setup, ptr noundef null) #9
  %call33 = tail call ptr @pwrdm_lookup(ptr noundef nonnull @.str.20) #9
  store ptr %call33, ptr @mpu_pwrdm, align 4
  %cmp = icmp eq ptr %call33, null
  br i1 %cmp, label %if.end31.err3_crit_edge, label %if.end40

if.end31.err3_crit_edge:                          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %err3

if.end40:                                         ; preds = %if.end31
  %call41 = tail call ptr @pwrdm_lookup(ptr noundef nonnull @.str.24) #9
  store ptr %call41, ptr @neon_pwrdm, align 4
  %call42 = tail call ptr @pwrdm_lookup(ptr noundef nonnull @.str.25) #9
  store ptr %call42, ptr @per_pwrdm, align 4
  %call43 = tail call ptr @pwrdm_lookup(ptr noundef nonnull @.str.26) #9
  store ptr %call43, ptr @core_pwrdm, align 4
  %call44 = tail call ptr @clkdm_lookup(ptr noundef nonnull @.str.27) #9
  %call45 = tail call ptr @clkdm_lookup(ptr noundef nonnull @.str.28) #9
  %call46 = tail call ptr @clkdm_lookup(ptr noundef nonnull @.str.29) #9
  %call47 = tail call ptr @clkdm_lookup(ptr noundef nonnull @.str.30) #9
  tail call void @omap_common_suspend_init(ptr noundef nonnull @omap3_pm_suspend) #9
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @arm_pm_idle to i32))
  store ptr @omap3_pm_idle, ptr @arm_pm_idle, align 4
  %call48 = tail call i32 @omap3_idle_init() #12
  %1 = load i16, ptr @pm34xx_errata, align 2
  %2 = and i16 %1, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool49.not = icmp eq i16 %2, 0
  br i1 %tobool49.not, label %if.end40.if.end51_crit_edge, label %if.then50

if.end40.if.end51_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end51

if.then50:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @omap3630_ctrl_disable_rta() #9
  br label %if.end51

if.end51:                                         ; preds = %if.then50, %if.end40.if.end51_crit_edge
  %3 = load i16, ptr @pm34xx_errata, align 2
  %4 = and i16 %3, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool54.not = icmp eq i16 %4, 0
  br i1 %tobool54.not, label %if.end51.if.end57_crit_edge, label %if.then55

if.end51.if.end57_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57

if.then55:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #11
  %call56 = tail call i32 @clkdm_add_wkdep(ptr noundef %call46, ptr noundef %call47) #9
  br label %if.end57

if.end57:                                         ; preds = %if.then55, %if.end51.if.end57_crit_edge
  %call58 = tail call i32 @clkdm_add_wkdep(ptr noundef %call44, ptr noundef %call45) #9
  %call59 = tail call i32 @omap_type() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call59)
  %cmp60.not = icmp eq i32 %call59, 3
  br i1 %cmp60.not, label %if.end57.if.end83_crit_edge, label %if.then62

if.end57.if.end83_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83

if.then62:                                        ; preds = %if.end57
  %call1.i.i = tail call noalias align 4096 ptr @kmalloc_order_trace(i32 noundef 32831, i32 noundef 3264, i32 noundef 4) #15
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @omap3_secure_ram_storage to i32))
  store ptr %call1.i.i, ptr @omap3_secure_ram_storage, align 4
  %tobool64.not = icmp eq ptr %call1.i.i, null
  br i1 %tobool64.not, label %do.end68, label %if.then62.do.body72_crit_edge

if.then62.do.body72_crit_edge:                    ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body72

do.end68:                                         ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #11
  %call70 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #12
  br label %do.body72

do.body72:                                        ; preds = %do.end68, %if.then62.do.body72_crit_edge
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !109
  %and.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool74.not = icmp eq i32 %and.i.i, 0
  tail call void asm sideeffect "\09cpsid i\09\09\09@ arch_local_irq_disable", "~{memory},~{cc}"() #9, !srcloc !110
  br i1 %tobool74.not, label %if.then76, label %do.body72.if.end77_crit_edge

do.body72.if.end77_crit_edge:                     ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end77

if.then76:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @trace_hardirqs_off() #9
  br label %if.end77

if.end77:                                         ; preds = %if.then76, %do.body72.if.end77_crit_edge
  %6 = load ptr, ptr @mpu_pwrdm, align 4
  %call.i117 = tail call i32 @pwrdm_read_next_pwrst(ptr noundef %6) #9
  %call1.i = tail call i32 @omap_type() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call1.i)
  %cmp.not.i = icmp eq i32 %call1.i, 3
  br i1 %cmp.not.i, label %if.end77.omap3_save_secure_ram_context.exit_crit_edge, label %if.then.i

if.end77.omap3_save_secure_ram_context.exit_crit_edge: ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #11
  br label %omap3_save_secure_ram_context.exit

if.then.i:                                        ; preds = %if.end77
  %7 = load ptr, ptr @mpu_pwrdm, align 4
  %call2.i = tail call i32 @pwrdm_set_next_pwrst(ptr noundef %7, i8 noundef zeroext 3) #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @omap3_secure_ram_storage to i32))
  %8 = load ptr, ptr @omap3_secure_ram_storage, align 4
  %call3.i = tail call i32 @omap3_save_secure_ram(ptr noundef %8, i32 noundef 32831) #9
  %9 = load ptr, ptr @mpu_pwrdm, align 4
  %conv.i = trunc i32 %call.i117 to i8
  %call4.i = tail call i32 @pwrdm_set_next_pwrst(ptr noundef %9, i8 noundef zeroext %conv.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %if.then.i.omap3_save_secure_ram_context.exit_crit_edge, label %do.end.i

if.then.i.omap3_save_secure_ram_context.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %omap3_save_secure_ram_context.exit

do.end.i:                                         ; preds = %if.then.i
  %call6.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.44, i32 noundef %call3.i) #12
  br label %while.cond.i

while.cond.i:                                     ; preds = %while.cond.i, %do.end.i
  br label %while.cond.i

omap3_save_secure_ram_context.exit:               ; preds = %if.then.i.omap3_save_secure_ram_context.exit_crit_edge, %if.end77.omap3_save_secure_ram_context.exit_crit_edge
  tail call void @trace_hardirqs_on() #9
  tail call void asm sideeffect "\09cpsie i\09\09\09@ arch_local_irq_enable", "~{memory},~{cc}"() #9, !srcloc !111
  br label %if.end83

if.end83:                                         ; preds = %omap3_save_secure_ram_context.exit, %if.end57.if.end83_crit_edge
  tail call void @omap3_save_scratchpad_contents() #9
  br label %cleanup

err3:                                             ; preds = %if.end31.err3_crit_edge, %if.end22.err3_crit_edge
  %.str.22.sink = phi ptr [ @.str.18, %if.end22.err3_crit_edge ], [ @.str.22, %if.end31.err3_crit_edge ]
  %ret.0 = phi i32 [ %call23, %if.end22.err3_crit_edge ], [ -22, %if.end31.err3_crit_edge ]
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.22.sink) #12
  %10 = load ptr, ptr @pwrst_list, align 4
  %cmp89.not118 = icmp eq ptr %10, @pwrst_list
  br i1 %cmp89.not118, label %err3.for.end_crit_edge, label %err3.for.body_crit_edge

err3.for.body_crit_edge:                          ; preds = %err3
  br label %for.body

err3.for.end_crit_edge:                           ; preds = %err3
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %err3.for.body_crit_edge
  %.pn.in119 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %10, %err3.for.body_crit_edge ]
  %pwrst.0 = getelementptr i8, ptr %.pn.in119, i32 -12
  %11 = ptrtoint ptr %.pn.in119 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn = load ptr, ptr %.pn.in119, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in119) #9
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in119, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %.pn.in119 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %.pn.in119, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %18 = ptrtoint ptr %.pn.in119 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in119, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in119, i32 0, i32 1
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %pwrst.0) #9
  %cmp89.not = icmp eq ptr %.pn, @pwrst_list
  br i1 %cmp89.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %err3.for.end_crit_edge
  %call97 = tail call i32 @omap_prcm_event_to_irq(ptr noundef nonnull @.str.12) #9
  %call98 = tail call ptr @free_irq(i32 noundef %call97, ptr noundef nonnull @omap3_pm_init) #9
  br label %err2

err2:                                             ; preds = %for.end, %do.end19
  %ret.1 = phi i32 [ %call.i116, %do.end19 ], [ %ret.0, %for.end ]
  %call99 = tail call i32 @omap_prcm_event_to_irq(ptr noundef nonnull @.str.7) #9
  %call100 = tail call ptr @free_irq(i32 noundef %call99, ptr noundef null) #9
  br label %cleanup

cleanup:                                          ; preds = %err2, %if.end83, %do.end9
  %retval.0 = phi i32 [ 0, %if.end83 ], [ %call.i, %do.end9 ], [ %ret.1, %err2 ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pm_errata_configure() unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @omap_rev() #9
  %shr.mask.i = and i32 %call.i, -1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 909115392, i32 %shr.mask.i)
  %cmp.i.not = icmp eq i32 %shr.mask.i, 909115392
  br i1 %cmp.i.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = load i16, ptr @pm34xx_errata, align 2
  %1 = or i16 %0, 1
  store i16 %1, ptr @pm34xx_errata, align 2
  tail call void @enable_omap3630_toggle_l2_on_restore() #9
  %call2 = tail call i32 @omap_rev() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 909115956, i32 %call2)
  %cmp = icmp ult i32 %call2, 909115956
  br i1 %cmp, label %if.then.if.end15.sink.split_crit_edge, label %if.then.if.end15_crit_edge

if.then.if.end15_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then.if.end15.sink.split_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split

if.else:                                          ; preds = %entry
  %call.i16 = tail call i32 @omap_rev() #9
  %and.i = and i32 %call.i16, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %and.i)
  %cmp.i17.not = icmp eq i32 %and.i, 52
  br i1 %cmp.i17.not, label %if.else.if.end15.sink.split_crit_edge, label %if.else.if.end15_crit_edge

if.else.if.end15_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.else.if.end15.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split

if.end15.sink.split:                              ; preds = %if.else.if.end15.sink.split_crit_edge, %if.then.if.end15.sink.split_crit_edge
  %.sink20 = phi i16 [ 6, %if.then.if.end15.sink.split_crit_edge ], [ 4, %if.else.if.end15.sink.split_crit_edge ]
  %2 = load i16, ptr @pm34xx_errata, align 2
  %3 = or i16 %2, %.sink20
  store i16 %3, ptr @pm34xx_errata, align 2
  br label %if.end15

if.end15:                                         ; preds = %if.end15.sink.split, %if.else.if.end15_crit_edge, %if.then.if.end15_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @prcm_setup_regs() unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @omap3_ctrl_init() #9
  %call.i = tail call i32 @omap_rev() #9
  %shr.mask.i = and i32 %call.i, -1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 909115392, i32 %shr.mask.i)
  %cmp.i = icmp eq i32 %shr.mask.i, 909115392
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @omap_features to i32))
  %0 = load i32, ptr @omap_features, align 4
  %and.i = and i32 %0, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool2 = icmp ne i32 %and.i, 0
  tail call void @omap3_prm_init_pm(i1 noundef zeroext %cmp.i, i1 noundef zeroext %tobool2) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_prcm_event_to_irq(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_prcm_int_handle_wakeup(i32 noundef %irq, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @omap_prm_clear_mod_irqs(i16 noundef signext 1024, i8 noundef zeroext 1, i32 noundef -65793) #9
  %call1 = tail call i32 @omap_prm_clear_mod_irqs(i16 noundef signext 512, i8 noundef zeroext 1, i32 noundef -1) #9
  %add = add i32 %call1, %call
  %call2 = tail call i32 @omap_prm_clear_mod_irqs(i16 noundef signext 2048, i8 noundef zeroext 1, i32 noundef -1) #9
  %add3 = add i32 %add, %call2
  %call4 = tail call i32 @omap_rev() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 875561012, i32 %call4)
  %cmp = icmp ugt i32 %call4, 875561012
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call i32 @omap_prm_clear_mod_irqs(i16 noundef signext 512, i8 noundef zeroext 3, i32 noundef -1) #9
  %add6 = add i32 %call5, %add3
  %call7 = tail call i32 @omap_prm_clear_mod_irqs(i16 noundef signext 3072, i8 noundef zeroext 1, i32 noundef -1) #9
  %add8 = add i32 %add6, %call7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %c.0 = phi i32 [ %add8, %if.then ], [ %add3, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %c.0)
  %tobool.not = icmp ne i32 %c.0, 0
  %cond = zext i1 %tobool.not to i32
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_prcm_int_handle_io(i32 noundef %irq, ptr nocapture noundef readnone %unused) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @omap_prm_clear_mod_irqs(i16 noundef signext 1024, i8 noundef zeroext 1, i32 noundef 65792) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp ne i32 %call, 0
  %cond = zext i1 %tobool.not to i32
  ret i32 %cond
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @omap3_pm_check_pmic() unnamed_addr #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.34) #9
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end, label %entry.if.then3_crit_edge

entry.if.then3_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.35) #9
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.if.end4_crit_edge, label %if.end.if.then3_crit_edge

if.end.if.then3_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then3

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then3:                                         ; preds = %if.end.if.then3_crit_edge, %entry.if.then3_crit_edge
  %np.09 = phi ptr [ %call1, %if.end.if.then3_crit_edge ], [ %call, %entry.if.then3_crit_edge ]
  tail call void @of_node_put(ptr noundef nonnull %np.09) #9
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %if.end.if.end4_crit_edge
  %storemerge = phi i32 [ 1, %if.then3 ], [ 0, %if.end.if.end4_crit_edge ]
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @enable_off_mode to i32))
  store i32 %storemerge, ptr @enable_off_mode, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_for_each(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pwrdms_setup(ptr noundef %pwrdm, ptr nocapture noundef readnone %unused) #5 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pwrsts = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 3
  %0 = ptrtoint ptr %pwrsts to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pwrsts, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 2592, i32 noundef 20) #16
  %tobool1.not = icmp eq ptr %call7.i, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %3 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %pwrdm, ptr %call7.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @enable_off_mode to i32))
  %4 = load i32, ptr @enable_off_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool5.not = icmp eq i32 %4, 0
  %spec.select = zext i1 %tobool5.not to i32
  %5 = getelementptr inbounds %struct.power_state, ptr %call7.i, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %spec.select, ptr %5, align 4
  %node = getelementptr inbounds %struct.power_state, ptr %call7.i, i32 0, i32 3
  %7 = load ptr, ptr @pwrst_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef nonnull @pwrst_list, ptr noundef %7) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end3.list_add.exit_crit_edge

if.end3.list_add.exit_crit_edge:                  ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add.exit

if.end.i.i:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #11
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %node, ptr %prev1.i.i, align 4
  %9 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %7, ptr %node, align 4
  %prev3.i.i = getelementptr inbounds %struct.power_state, ptr %call7.i, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @pwrst_list, ptr %prev3.i.i, align 8
  store volatile ptr %node, ptr @pwrst_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %if.end3.list_add.exit_crit_edge
  %call9 = tail call zeroext i1 @pwrdm_has_hdwr_sar(ptr noundef %pwrdm) #9
  br i1 %call9, label %if.then10, label %list_add.exit.if.end12_crit_edge

list_add.exit.if.end12_crit_edge:                 ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then10:                                        ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call11 = tail call i32 @pwrdm_enable_hdwr_sar(ptr noundef %pwrdm) #9
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %list_add.exit.if.end12_crit_edge
  %11 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call7.i, align 8
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %5, align 4
  %conv = trunc i32 %14 to i8
  %call15 = tail call i32 @omap_set_pwrdm_state(ptr noundef %12, i8 noundef zeroext %conv) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call15, %if.end12 ], [ 0, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clkdm_for_each(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_pm_clkdms_setup(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pwrdm_lookup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clkdm_lookup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_common_suspend_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap3_pm_suspend() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %.pn90 = load ptr, ptr @pwrst_list, align 4
  %cmp.not91 = icmp eq ptr %.pn90, @pwrst_list
  br i1 %cmp.not91, label %entry.for.cond8.preheader_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.cond8.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond8.preheader

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn92 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn90, %entry.for.body_crit_edge ]
  %pwrst.0 = getelementptr i8, ptr %.pn92, i32 -12
  %0 = ptrtoint ptr %pwrst.0 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pwrst.0, align 4
  %call = tail call i32 @pwrdm_read_next_pwrst(ptr noundef %1) #9
  %saved_state = getelementptr i8, ptr %.pn92, i32 -4
  %2 = ptrtoint ptr %saved_state to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call, ptr %saved_state, align 4
  %3 = ptrtoint ptr %.pn92 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn = load ptr, ptr %.pn92, align 4
  %cmp.not = icmp eq ptr %.pn, @pwrst_list
  br i1 %cmp.not, label %for.body.for.cond8.preheader_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.cond8.preheader_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond8.preheader

for.cond8.preheader:                              ; preds = %for.body.for.cond8.preheader_crit_edge, %entry.for.cond8.preheader_crit_edge
  br label %for.cond8

for.cond8:                                        ; preds = %if.end.for.cond8_crit_edge, %for.cond8.preheader
  %.pn88.in = phi ptr [ %.pn88, %if.end.for.cond8_crit_edge ], [ @pwrst_list, %for.cond8.preheader ]
  %4 = ptrtoint ptr %.pn88.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn88 = load ptr, ptr %.pn88.in, align 4
  %pwrst.1 = getelementptr i8, ptr %.pn88, i32 -12
  %cmp10.not = icmp eq ptr %.pn88, @pwrst_list
  br i1 %cmp10.not, label %for.end26, label %for.body12

for.body12:                                       ; preds = %for.cond8
  %5 = ptrtoint ptr %pwrst.1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pwrst.1, align 4
  %next_state = getelementptr i8, ptr %.pn88, i32 -8
  %7 = ptrtoint ptr %next_state to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %next_state, align 4
  %conv = trunc i32 %8 to i8
  %call14 = tail call i32 @omap_set_pwrdm_state(ptr noundef %6, i8 noundef zeroext %conv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool.not = icmp eq i32 %call14, 0
  br i1 %tobool.not, label %if.end, label %for.body12.restore_crit_edge

for.body12.restore_crit_edge:                     ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #11
  br label %restore

if.end:                                           ; preds = %for.body12
  %9 = ptrtoint ptr %pwrst.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pwrst.1, align 4
  %call16 = tail call i32 @pwrdm_clear_all_prev_pwrst(ptr noundef %10) #9
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end.for.cond8_crit_edge, label %if.end.restore_crit_edge

if.end.restore_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %restore

if.end.for.cond8_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond8

for.end26:                                        ; preds = %for.cond8
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @omap3_intc_suspend() #9
  tail call void @omap_sram_idle()
  br label %restore

restore:                                          ; preds = %for.end26, %if.end.restore_crit_edge, %for.body12.restore_crit_edge
  %.pn8993 = load ptr, ptr @pwrst_list, align 4
  %cmp32.not95 = icmp eq ptr %.pn8993, @pwrst_list
  br i1 %cmp32.not95, label %restore.do.end67_crit_edge, label %restore.for.body35_crit_edge

restore.for.body35_crit_edge:                     ; preds = %restore
  br label %for.body35

restore.do.end67_crit_edge:                       ; preds = %restore
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

for.body35:                                       ; preds = %if.end46.for.body35_crit_edge, %restore.for.body35_crit_edge
  %.pn8997 = phi ptr [ %.pn89, %if.end46.for.body35_crit_edge ], [ %.pn8993, %restore.for.body35_crit_edge ]
  %ret.096 = phi i32 [ %ret.1, %if.end46.for.body35_crit_edge ], [ 0, %restore.for.body35_crit_edge ]
  %pwrst.298 = getelementptr i8, ptr %.pn8997, i32 -12
  %11 = ptrtoint ptr %pwrst.298 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pwrst.298, align 4
  %call37 = tail call i32 @pwrdm_read_prev_pwrst(ptr noundef %12) #9
  %next_state38 = getelementptr i8, ptr %.pn8997, i32 -8
  %13 = ptrtoint ptr %next_state38 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %next_state38, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call37, i32 %14)
  %cmp39 = icmp ugt i32 %call37, %14
  br i1 %cmp39, label %do.end, label %for.body35.if.end46_crit_edge

for.body35.if.end46_crit_edge:                    ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end46

do.end:                                           ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %pwrst.298 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pwrst.298, align 4
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %16, align 8
  %call45 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, ptr noundef %18, i32 noundef %14) #12
  br label %if.end46

if.end46:                                         ; preds = %do.end, %for.body35.if.end46_crit_edge
  %ret.1 = phi i32 [ -1, %do.end ], [ %ret.096, %for.body35.if.end46_crit_edge ]
  %19 = ptrtoint ptr %pwrst.298 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pwrst.298, align 4
  %saved_state48 = getelementptr i8, ptr %.pn8997, i32 -4
  %21 = ptrtoint ptr %saved_state48 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %saved_state48, align 4
  %conv49 = trunc i32 %22 to i8
  %call50 = tail call i32 @omap_set_pwrdm_state(ptr noundef %20, i8 noundef zeroext %conv49) #9
  %23 = ptrtoint ptr %.pn8997 to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn89 = load ptr, ptr %.pn8997, align 4
  %cmp32.not = icmp eq ptr %.pn89, @pwrst_list
  br i1 %cmp32.not, label %for.end57, label %if.end46.for.body35_crit_edge

if.end46.for.body35_crit_edge:                    ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body35

for.end57:                                        ; preds = %if.end46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.1)
  %tobool58.not = icmp eq i32 %ret.1, 0
  br i1 %tobool58.not, label %for.end57.do.end67_crit_edge, label %for.end57.if.end70_crit_edge

for.end57.if.end70_crit_edge:                     ; preds = %for.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

for.end57.do.end67_crit_edge:                     ; preds = %for.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

do.end67:                                         ; preds = %for.end57.do.end67_crit_edge, %restore.do.end67_crit_edge
  br label %if.end70

if.end70:                                         ; preds = %do.end67, %for.end57.if.end70_crit_edge
  %.str.42.sink = phi ptr [ @.str.42, %do.end67 ], [ @.str.39, %for.end57.if.end70_crit_edge ]
  %ret.0.lcssa102 = phi i32 [ 0, %do.end67 ], [ %ret.1, %for.end57.if.end70_crit_edge ]
  %call69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull %.str.42.sink) #12
  ret i32 %ret.0.lcssa102
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap3_pm_idle() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @omap_irq_pending() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @omap_sram_idle()
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @omap3_idle_init() local_unnamed_addr #2 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3630_ctrl_disable_rta() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clkdm_add_wkdep(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3_save_scratchpad_contents() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3_ctrl_save_padconf() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_ctrl_writel(i32 noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_ctrl_readl(i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_intc_save_context() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3_control_save_context() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap34xx_cpu_suspend(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3_control_restore_context() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_intc_restore_context() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_omap3630_toggle_l2_on_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3_ctrl_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3_prm_init_pm(i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_prm_clear_mod_irqs(i16 noundef signext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @pwrdm_has_hdwr_sar(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_enable_hdwr_sar(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_clear_all_prev_pwrst(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3_intc_suspend() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_irq_pending() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kmalloc_order_trace(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3_save_secure_ram(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 51)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind readnone }
attributes #14 = { cold }
attributes #15 = { nounwind allocsize(0) }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !11, !13, !14, !15, !16, !18, !20, !22, !23, !24, !26, !28, !30, !31, !32, !34, !35, !36, !38, !40, !41, !42, !44, !46, !48, !50, !52, !54, !56, !58, !59, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !81, !82, !83, !85, !86, !87, !89, !90, !91, !93, !94, !95}
!llvm.module.flags = !{!96, !97, !98, !99, !100, !101, !102, !103}
!llvm.ident = !{!104}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-omap2/pm34xx.c", i32 204, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @omap_sram_idle._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @omap_sram_idle._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-omap2/pm34xx.c", i32 365, i32 4}
!8 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @omap3_pm_off_mode_enable._entry, !7, !"_entry", i1 false, i1 false}
!10 = !{ptr @omap3_pm_off_mode_enable._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../arch/arm/mach-omap2/pm34xx.c", i32 471, i32 3}
!13 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @omap3_pm_init._entry, !12, !"_entry", i1 false, i1 false}
!15 = !{ptr @omap3_pm_init._entry_ptr, !12, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../arch/arm/mach-omap2/pm34xx.c", i32 479, i32 43}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../arch/arm/mach-omap2/pm34xx.c", i32 480, i32 45}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../arch/arm/mach-omap2/pm34xx.c", i32 483, i32 3}
!22 = !{ptr @omap3_pm_init._entry.9, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @omap3_pm_init._entry_ptr.11, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../arch/arm/mach-omap2/pm34xx.c", i32 488, i32 43}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../arch/arm/mach-omap2/pm34xx.c", i32 489, i32 55}
!28 = !{ptr @.str.15, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../arch/arm/mach-omap2/pm34xx.c", i32 493, i32 3}
!30 = !{ptr @omap3_pm_init._entry.14, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @omap3_pm_init._entry_ptr.16, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../arch/arm/mach-omap2/pm34xx.c", i32 501, i32 3}
!34 = !{ptr @omap3_pm_init._entry.17, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @omap3_pm_init._entry_ptr.19, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../arch/arm/mach-omap2/pm34xx.c", i32 507, i32 27}
!38 = !{ptr @.str.22, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../arch/arm/mach-omap2/pm34xx.c", i32 509, i32 3}
!40 = !{ptr @omap3_pm_init._entry.21, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @omap3_pm_init._entry_ptr.23, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.24, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../arch/arm/mach-omap2/pm34xx.c", i32 514, i32 28}
!44 = !{ptr @.str.25, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../arch/arm/mach-omap2/pm34xx.c", i32 515, i32 27}
!46 = !{ptr @.str.26, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../arch/arm/mach-omap2/pm34xx.c", i32 516, i32 28}
!48 = !{ptr @.str.27, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../arch/arm/mach-omap2/pm34xx.c", i32 518, i32 28}
!50 = !{ptr @.str.28, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../arch/arm/mach-omap2/pm34xx.c", i32 519, i32 27}
!52 = !{ptr @.str.29, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../arch/arm/mach-omap2/pm34xx.c", i32 520, i32 27}
!54 = !{ptr @.str.30, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../arch/arm/mach-omap2/pm34xx.c", i32 521, i32 28}
!56 = !{ptr @.str.32, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../arch/arm/mach-omap2/pm34xx.c", i32 562, i32 4}
!58 = !{ptr @omap3_pm_init._entry.31, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @omap3_pm_init._entry_ptr.33, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @pm34xx_errata, !61, !"pm34xx_errata", i1 false, i1 false}
!61 = !{!"../arch/arm/mach-omap2/pm34xx.c", i32 52, i32 5}
!62 = !{ptr @omap3_do_wfi_sram, !63, !"omap3_do_wfi_sram", i1 false, i1 false}
!63 = !{!"../arch/arm/mach-omap2/pm34xx.c", i32 65, i32 8}
!64 = !{ptr @mpu_pwrdm, !65, !"mpu_pwrdm", i1 false, i1 false}
!65 = !{!"../arch/arm/mach-omap2/pm34xx.c", i32 67, i32 28}
!66 = !{ptr @neon_pwrdm, !67, !"neon_pwrdm", i1 false, i1 false}
!67 = !{!"../arch/arm/mach-omap2/pm34xx.c", i32 67, i32 40}
!68 = !{ptr @core_pwrdm, !69, !"core_pwrdm", i1 false, i1 false}
!69 = !{!"../arch/arm/mach-omap2/pm34xx.c", i32 68, i32 28}
!70 = !{ptr @per_pwrdm, !71, !"per_pwrdm", i1 false, i1 false}
!71 = !{!"../arch/arm/mach-omap2/pm34xx.c", i32 68, i32 41}
!72 = !{ptr @pwrst_list, !73, !"pwrst_list", i1 false, i1 false}
!73 = !{!"../arch/arm/mach-omap2/pm34xx.c", i32 63, i32 8}
!74 = !{ptr @.str.34, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../arch/arm/mach-omap2/pm34xx.c", i32 452, i32 43}
!76 = !{ptr @.str.35, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../arch/arm/mach-omap2/pm34xx.c", i32 454, i32 44}
!78 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../arch/arm/mach-omap2/pm34xx.c", i32 326, i32 4}
!80 = !{ptr @.str.37, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @omap3_pm_suspend._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @omap3_pm_suspend._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.39, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../arch/arm/mach-omap2/pm34xx.c", i32 333, i32 3}
!85 = !{ptr @omap3_pm_suspend._entry.38, !84, !"_entry", i1 false, i1 false}
!86 = !{ptr @omap3_pm_suspend._entry_ptr.40, !84, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @.str.42, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../arch/arm/mach-omap2/pm34xx.c", i32 335, i32 3}
!89 = !{ptr @omap3_pm_suspend._entry.41, !88, !"_entry", i1 false, i1 false}
!90 = !{ptr @omap3_pm_suspend._entry_ptr.43, !88, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @.str.44, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../arch/arm/mach-omap2/pm34xx.c", i32 118, i32 4}
!93 = !{ptr @.str.45, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @omap3_save_secure_ram_context._entry, !92, !"_entry", i1 false, i1 false}
!95 = !{ptr @omap3_save_secure_ram_context._entry_ptr, !92, !"_entry_ptr", i1 false, i1 false}
!96 = !{i32 1, !"wchar_size", i32 2}
!97 = !{i32 1, !"min_enum_size", i32 4}
!98 = !{i32 8, !"branch-target-enforcement", i32 0}
!99 = !{i32 8, !"sign-return-address", i32 0}
!100 = !{i32 8, !"sign-return-address-all", i32 0}
!101 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!102 = !{i32 7, !"uwtable", i32 1}
!103 = !{i32 7, !"frame-pointer", i32 2}
!104 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!105 = !{i64 5414564}
!106 = !{i64 3999}
!107 = !{i64 4111}
!108 = !{i64 5414146}
!109 = !{i64 620238}
!110 = !{i64 617941}
!111 = !{i64 617751}
