; ModuleID = '/llk/IR_all_yes/arch/arm/mach-omap2/pm24xx.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/pm24xx.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.omap_domain_base = type { i32, ptr, i16 }

@omap2_pm_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 250, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\016Power Management for OMAP2 initializing\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"omap2_pm_init\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"arch/arm/mach-omap2/pm24xx.c\00", [35 x i8] zeroinitializer }, align 32
@omap2_pm_init._entry_ptr = internal global ptr @omap2_pm_init._entry, section ".printk_index", align 4
@omap2_pm_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 252, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016PRCM revision %d.%d\0A\00", [41 x i8] zeroinitializer }, align 32
@omap2_pm_init._entry_ptr.5 = internal global ptr @omap2_pm_init._entry.3, section ".printk_index", align 4
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mpu_pwrdm\00", [22 x i8] zeroinitializer }, align 32
@mpu_pwrdm = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@omap2_pm_init._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.1, ptr @.str.2, i32 258, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013PM: mpu_pwrdm not found\0A\00", [37 x i8] zeroinitializer }, align 32
@omap2_pm_init._entry_ptr.9 = internal global ptr @omap2_pm_init._entry.7, section ".printk_index", align 4
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"core_pwrdm\00", [21 x i8] zeroinitializer }, align 32
@core_pwrdm = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@omap2_pm_init._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.1, ptr @.str.2, i32 262, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013PM: core_pwrdm not found\0A\00", [36 x i8] zeroinitializer }, align 32
@omap2_pm_init._entry_ptr.13 = internal global ptr @omap2_pm_init._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mpu_clkdm\00", [22 x i8] zeroinitializer }, align 32
@mpu_clkdm = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@omap2_pm_init._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.1, ptr @.str.2, i32 268, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013PM: mpu_clkdm not found\0A\00", [37 x i8] zeroinitializer }, align 32
@omap2_pm_init._entry_ptr.17 = internal global ptr @omap2_pm_init._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wkup_clkdm\00", [21 x i8] zeroinitializer }, align 32
@wkup_clkdm = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@omap2_pm_init._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.1, ptr @.str.2, i32 272, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"\013PM: wkup_clkdm not found\0A\00", [36 x i8] zeroinitializer }, align 32
@omap2_pm_init._entry_ptr.21 = internal global ptr @omap2_pm_init._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dsp_clkdm\00", [22 x i8] zeroinitializer }, align 32
@dsp_clkdm = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@omap2_pm_init._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.1, ptr @.str.2, i32 276, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013PM: dsp_clkdm not found\0A\00", [37 x i8] zeroinitializer }, align 32
@omap2_pm_init._entry_ptr.25 = internal global ptr @omap2_pm_init._entry.23, section ".printk_index", align 4
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gfx_clkdm\00", [22 x i8] zeroinitializer }, align 32
@gfx_clkdm = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@omap2_pm_init._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.1, ptr @.str.2, i32 280, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013PM: gfx_clkdm not found\0A\00", [37 x i8] zeroinitializer }, align 32
@omap2_pm_init._entry_ptr.29 = internal global ptr @omap2_pm_init._entry.27, section ".printk_index", align 4
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"osc_ck\00", [25 x i8] zeroinitializer }, align 32
@osc_ck = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@omap2_pm_init._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.1, ptr @.str.2, i32 285, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013could not get osc_ck\0A\00", [40 x i8] zeroinitializer }, align 32
@omap2_pm_init._entry_ptr.33 = internal global ptr @omap2_pm_init._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"emul_ck\00", [24 x i8] zeroinitializer }, align 32
@emul_ck = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@omap2_pm_init._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.1, ptr @.str.2, i32 292, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"\013could not get emul_ck\0A\00", [39 x i8] zeroinitializer }, align 32
@omap2_pm_init._entry_ptr.37 = internal global ptr @omap2_pm_init._entry.35, section ".printk_index", align 4
@omap24xx_cpu_suspend_sz = external dso_local local_unnamed_addr global i32, align 4
@omap2_sram_suspend = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@arm_pm_idle = external dso_local local_unnamed_addr global ptr, align 4
@prm_base = external dso_local local_unnamed_addr global %struct.omap_domain_base, align 4
@omap2_sdrc_base = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 250, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 252, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 256, i32 27 }
@___asan_gen_.59 = private unnamed_addr constant [10 x i8] c"mpu_pwrdm\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 57, i32 28 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 258, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 260, i32 28 }
@___asan_gen_.71 = private unnamed_addr constant [11 x i8] c"core_pwrdm\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 57, i32 40 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 262, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 266, i32 27 }
@___asan_gen_.83 = private unnamed_addr constant [10 x i8] c"mpu_clkdm\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 58, i32 40 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 268, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 270, i32 28 }
@___asan_gen_.95 = private unnamed_addr constant [11 x i8] c"wkup_clkdm\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 58, i32 52 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 272, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 274, i32 27 }
@___asan_gen_.107 = private unnamed_addr constant [10 x i8] c"dsp_clkdm\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 58, i32 28 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 276, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 278, i32 27 }
@___asan_gen_.119 = private unnamed_addr constant [10 x i8] c"gfx_clkdm\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 58, i32 65 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 280, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 283, i32 25 }
@___asan_gen_.131 = private unnamed_addr constant [7 x i8] c"osc_ck\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 60, i32 20 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 285, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 290, i32 27 }
@___asan_gen_.143 = private unnamed_addr constant [8 x i8] c"emul_ck\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 60, i32 29 }
@___asan_gen_.146 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.149 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 292, i32 4 }
@___asan_gen_.152 = private unnamed_addr constant [19 x i8] c"omap2_sram_suspend\00", align 1
@___asan_gen_.153 = private constant [32 x i8] c"../arch/arm/mach-omap2/pm24xx.c\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.153, i32 54, i32 15 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @omap2_pm_init._entry, ptr @omap2_pm_init._entry.11, ptr @omap2_pm_init._entry.15, ptr @omap2_pm_init._entry.19, ptr @omap2_pm_init._entry.23, ptr @omap2_pm_init._entry.27, ptr @omap2_pm_init._entry.3, ptr @omap2_pm_init._entry.31, ptr @omap2_pm_init._entry.35, ptr @omap2_pm_init._entry.7, ptr @omap2_pm_init._entry_ptr, ptr @omap2_pm_init._entry_ptr.13, ptr @omap2_pm_init._entry_ptr.17, ptr @omap2_pm_init._entry_ptr.21, ptr @omap2_pm_init._entry_ptr.25, ptr @omap2_pm_init._entry_ptr.29, ptr @omap2_pm_init._entry_ptr.33, ptr @omap2_pm_init._entry_ptr.37, ptr @omap2_pm_init._entry_ptr.5, ptr @omap2_pm_init._entry_ptr.9, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @mpu_pwrdm, ptr @.str.8, ptr @.str.10, ptr @core_pwrdm, ptr @.str.12, ptr @.str.14, ptr @mpu_clkdm, ptr @.str.16, ptr @.str.18, ptr @wkup_clkdm, ptr @.str.20, ptr @.str.22, ptr @dsp_clkdm, ptr @.str.24, ptr @.str.26, ptr @gfx_clkdm, ptr @.str.28, ptr @.str.30, ptr @osc_ck, ptr @.str.32, ptr @.str.34, ptr @emul_ck, ptr @.str.36, ptr @omap2_sram_suspend], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_pm_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_pm_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu_pwrdm to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_pm_init._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_pwrdm to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_pm_init._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu_clkdm to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_pm_init._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wkup_clkdm to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_pm_init._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_clkdm to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_pm_init._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_clkdm to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_pm_init._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @osc_ck to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_pm_init._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emul_ck to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_pm_init._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_sram_suspend to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap2_pm_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #5, !srcloc !87
  %2 = tail call i32 @llvm.bswap.i32(i32 %1) #5
  %shr = lshr i32 %2, 4
  %and = and i32 %shr, 15
  %and6 = and i32 %2, 15
  %call7 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, i32 noundef %and, i32 noundef %and6) #8
  %call8 = tail call ptr @pwrdm_lookup(ptr noundef nonnull @.str.6) #5
  store ptr %call8, ptr @mpu_pwrdm, align 4
  %tobool.not = icmp eq ptr %call8, null
  br i1 %tobool.not, label %do.end11, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end11:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call13 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #8
  br label %if.end

if.end:                                           ; preds = %do.end11, %entry.if.end_crit_edge
  %call14 = tail call ptr @pwrdm_lookup(ptr noundef nonnull @.str.10) #5
  store ptr %call14, ptr @core_pwrdm, align 4
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %do.end19, label %if.end.if.end22_crit_edge

if.end.if.end22_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end22

do.end19:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call21 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12) #8
  br label %if.end22

if.end22:                                         ; preds = %do.end19, %if.end.if.end22_crit_edge
  %call23 = tail call ptr @clkdm_lookup(ptr noundef nonnull @.str.14) #5
  store ptr %call23, ptr @mpu_clkdm, align 4
  %tobool24.not = icmp eq ptr %call23, null
  br i1 %tobool24.not, label %do.end28, label %if.end22.if.end31_crit_edge

if.end22.if.end31_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end31

do.end28:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #7
  %call30 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16) #8
  br label %if.end31

if.end31:                                         ; preds = %do.end28, %if.end22.if.end31_crit_edge
  %call32 = tail call ptr @clkdm_lookup(ptr noundef nonnull @.str.18) #5
  store ptr %call32, ptr @wkup_clkdm, align 4
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %do.end37, label %if.end31.if.end40_crit_edge

if.end31.if.end40_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end40

do.end37:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20) #8
  br label %if.end40

if.end40:                                         ; preds = %do.end37, %if.end31.if.end40_crit_edge
  %call41 = tail call ptr @clkdm_lookup(ptr noundef nonnull @.str.22) #5
  store ptr %call41, ptr @dsp_clkdm, align 4
  %tobool42.not = icmp eq ptr %call41, null
  br i1 %tobool42.not, label %do.end46, label %if.end40.if.end49_crit_edge

if.end40.if.end49_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end49

do.end46:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #7
  %call48 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24) #8
  br label %if.end49

if.end49:                                         ; preds = %do.end46, %if.end40.if.end49_crit_edge
  %call50 = tail call ptr @clkdm_lookup(ptr noundef nonnull @.str.26) #5
  store ptr %call50, ptr @gfx_clkdm, align 4
  %tobool51.not = icmp eq ptr %call50, null
  br i1 %tobool51.not, label %do.end55, label %if.end49.if.end58_crit_edge

if.end49.if.end58_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end58

do.end55:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  %call57 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28) #8
  br label %if.end58

if.end58:                                         ; preds = %do.end55, %if.end49.if.end58_crit_edge
  %call59 = tail call ptr @clk_get(ptr noundef null, ptr noundef nonnull @.str.30) #5
  store ptr %call59, ptr @osc_ck, align 4
  %cmp.i = icmp ugt ptr %call59, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end64, label %if.end67

do.end64:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #7
  %call66 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #8
  br label %cleanup

if.end67:                                         ; preds = %if.end58
  %call.i = tail call i32 @omap_rev() #5
  %shr.mask.i = and i32 %call.i, -1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 606076928, i32 %shr.mask.i)
  %cmp.i83.not = icmp eq i32 %shr.mask.i, 606076928
  br i1 %cmp.i83.not, label %if.then70, label %if.end67.if.end80_crit_edge

if.end67.if.end80_crit_edge:                      ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end80

if.then70:                                        ; preds = %if.end67
  %call71 = tail call ptr @clk_get(ptr noundef null, ptr noundef nonnull @.str.34) #5
  store ptr %call71, ptr @emul_ck, align 4
  %cmp.i84 = icmp ugt ptr %call71, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i84, label %do.end76, label %if.then70.if.end80_crit_edge

if.then70.if.end80_crit_edge:                     ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end80

do.end76:                                         ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #7
  %call78 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #8
  %3 = load ptr, ptr @osc_ck, align 4
  tail call void @clk_put(ptr noundef %3) #5
  br label %cleanup

if.end80:                                         ; preds = %if.then70.if.end80_crit_edge, %if.end67.if.end80_crit_edge
  tail call fastcc void @prcm_setup_regs() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @omap24xx_cpu_suspend_sz to i32))
  %4 = load i32, ptr @omap24xx_cpu_suspend_sz, align 4
  %call81 = tail call ptr @omap_sram_push(ptr noundef nonnull @omap24xx_cpu_suspend, i32 noundef %4) #5
  store ptr %call81, ptr @omap2_sram_suspend, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @arm_pm_idle to i32))
  store ptr @omap2_pm_idle, ptr @arm_pm_idle, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end80, %do.end76, %do.end64
  %retval.0 = phi i32 [ -19, %do.end64 ], [ -19, %do.end76 ], [ 0, %if.end80 ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @pwrdm_lookup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clkdm_lookup(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @prcm_setup_regs() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %0 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr2.i = getelementptr i8, ptr %0, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 16777216) #5, !srcloc !88
  %1 = load ptr, ptr @core_pwrdm, align 4
  %call = tail call i32 @pwrdm_get_mem_bank_count(ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp18 = icmp sgt i32 %call, 0
  br i1 %cmp18, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.019 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %2 = load ptr, ptr @core_pwrdm, align 4
  %conv = trunc i32 %i.019 to i8
  %call1 = tail call i32 @pwrdm_set_mem_retst(ptr noundef %2, i8 noundef zeroext %conv, i8 noundef zeroext 1) #5
  %inc = add nuw nsw i32 %i.019, 1
  %exitcond.not = icmp eq i32 %inc, %call
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %3 = load ptr, ptr @core_pwrdm, align 4
  %call2 = tail call i32 @pwrdm_set_logic_retst(ptr noundef %3, i8 noundef zeroext 1) #5
  %4 = load ptr, ptr @mpu_pwrdm, align 4
  %call3 = tail call i32 @pwrdm_set_logic_retst(ptr noundef %4, i8 noundef zeroext 1) #5
  %5 = load ptr, ptr @dsp_clkdm, align 4
  %call4 = tail call ptr @clkdm_get_pwrdm(ptr noundef %5) #5
  %call5 = tail call i32 @pwrdm_set_next_pwrst(ptr noundef %call4, i8 noundef zeroext 0) #5
  %6 = load ptr, ptr @gfx_clkdm, align 4
  %call6 = tail call ptr @clkdm_get_pwrdm(ptr noundef %6) #5
  %call7 = tail call i32 @pwrdm_set_next_pwrst(ptr noundef %call6, i8 noundef zeroext 0) #5
  %call8 = tail call i32 @clkdm_for_each(ptr noundef nonnull @omap_pm_clkdms_setup, ptr noundef null) #5
  %7 = load ptr, ptr @mpu_clkdm, align 4
  %8 = load ptr, ptr @wkup_clkdm, align 4
  %call9 = tail call i32 @clkdm_add_wkdep(ptr noundef %7, ptr noundef %8) #5
  tail call void @omap_common_suspend_init(ptr noundef nonnull @omap2_enter_full_retention) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr2.i14 = getelementptr i8, ptr %9, i32 148
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i14, i32 251658240) #5, !srcloc !88
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr2.i15 = getelementptr i8, ptr %10, i32 144
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i15, i32 33554432) #5, !srcloc !88
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %11 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr2.i16 = getelementptr i8, ptr %11, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i16, i32 1083244544) #5, !srcloc !88
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr2.i17 = getelementptr i8, ptr %12, i32 1184
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i17, i32 83886080) #5, !srcloc !88
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %13 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr2.i.i.i = getelementptr i8, ptr %13, i32 96
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i.i) #5, !srcloc !87
  %15 = or i32 %14, 402653184
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr2.i1.i.i = getelementptr i8, ptr %16, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i1.i.i, i32 %15) #5, !srcloc !88
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @omap_sram_push(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap24xx_cpu_suspend(i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap2_pm_idle() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @omap_irq_pending() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @cpu_cluster_pm_enter() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %lor.lhs.false, label %if.end.if.then5_crit_edge

if.end.if.then5_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then5

lor.lhs.false:                                    ; preds = %if.end
  %call.i = tail call i32 @omap2xxx_cm_fclks_active() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %omap2_can_sleep.exit, label %lor.lhs.false.if.then5_crit_edge

lor.lhs.false.if.then5_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then5

omap2_can_sleep.exit:                             ; preds = %lor.lhs.false
  %0 = load ptr, ptr @osc_ck, align 4
  %call1.i = tail call zeroext i1 @__clk_is_enabled(ptr noundef %0) #5
  br i1 %call1.i, label %omap2_can_sleep.exit.if.then5_crit_edge, label %if.end6

omap2_can_sleep.exit.if.then5_crit_edge:          ; preds = %omap2_can_sleep.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then5

if.then5:                                         ; preds = %omap2_can_sleep.exit.if.then5_crit_edge, %lor.lhs.false.if.then5_crit_edge, %if.end.if.then5_crit_edge
  %call.i.i = tail call i32 @omap2xxx_cm_mpu_retention_allowed() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.not.i, label %if.then5.omap2_enter_mpu_retention.exit_crit_edge, label %if.then.i

if.then5.omap2_enter_mpu_retention.exit_crit_edge: ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  br label %omap2_enter_mpu_retention.exit

if.then.i:                                        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #7
  %call1.i9 = tail call i32 @omap_prm_clear_mod_irqs(i16 noundef signext 512, i8 noundef zeroext -80, i32 noundef -1) #5
  %call2.i = tail call i32 @omap_prm_clear_mod_irqs(i16 noundef signext 512, i8 noundef zeroext -76, i32 noundef -1) #5
  %call3.i = tail call i32 @omap_prm_clear_mod_irqs(i16 noundef signext 1024, i8 noundef zeroext -80, i32 noundef -1) #5
  br label %omap2_enter_mpu_retention.exit

omap2_enter_mpu_retention.exit:                   ; preds = %if.then.i, %if.then5.omap2_enter_mpu_retention.exit_crit_edge
  %.sink7.i = phi i8 [ 1, %if.then.i ], [ 3, %if.then5.omap2_enter_mpu_retention.exit_crit_edge ]
  %1 = load ptr, ptr @mpu_pwrdm, align 4
  %call5.i = tail call i32 @pwrdm_set_next_pwrst(ptr noundef %1, i8 noundef zeroext %.sink7.i) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c0, 4", "r,~{memory},~{cc}"(i32 0) #5, !srcloc !89
  %2 = load ptr, ptr @mpu_pwrdm, align 4
  %call6.i = tail call i32 @pwrdm_set_next_pwrst(ptr noundef %2, i8 noundef zeroext 3) #5
  br label %out_cpu_cluster_pm

if.end6:                                          ; preds = %omap2_can_sleep.exit
  call void @__sanitizer_cov_trace_pc() #7
  %call7 = tail call i32 @omap2_enter_full_retention()
  br label %out_cpu_cluster_pm

out_cpu_cluster_pm:                               ; preds = %if.end6, %omap2_enter_mpu_retention.exit
  %call8 = tail call i32 @cpu_cluster_pm_exit() #5
  br label %cleanup

cleanup:                                          ; preds = %out_cpu_cluster_pm, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_rev() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_get_mem_bank_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_set_mem_retst(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_set_logic_retst(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clkdm_get_pwrdm(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_set_next_pwrst(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clkdm_for_each(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_pm_clkdms_setup(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clkdm_add_wkdep(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_common_suspend_init(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap2_enter_full_retention() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @osc_ck, align 4
  tail call void @clk_disable(ptr noundef %0) #5
  %call = tail call i32 @omap_prm_clear_mod_irqs(i16 noundef signext 512, i8 noundef zeroext -80, i32 noundef -1) #5
  %call1 = tail call i32 @omap_prm_clear_mod_irqs(i16 noundef signext 512, i8 noundef zeroext -76, i32 noundef -1) #5
  %call2 = tail call i32 @omap_prm_clear_mod_irqs(i16 noundef signext 1024, i8 noundef zeroext -80, i32 noundef -1) #5
  %1 = load ptr, ptr @core_pwrdm, align 4
  %call3 = tail call i32 @pwrdm_set_next_pwrst(ptr noundef %1, i8 noundef zeroext 1) #5
  %2 = load ptr, ptr @mpu_pwrdm, align 4
  %call4 = tail call i32 @pwrdm_set_next_pwrst(ptr noundef %2, i8 noundef zeroext 1) #5
  %call5 = tail call i32 @omap_ctrl_readl(i16 noundef zeroext 628) #5
  %or = or i32 %call5, 32768
  tail call void @omap_ctrl_writel(i32 noundef %or, i16 noundef zeroext 628) #5
  %call6 = tail call i32 @omap_irq_pending() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not = icmp eq i32 %call6, 0
  br i1 %tobool.not, label %if.end, label %entry.no_sleep_crit_edge

entry.no_sleep_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %no_sleep

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %3 = load ptr, ptr @omap2_sram_suspend, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @omap2_sdrc_base to i32))
  %4 = load ptr, ptr @omap2_sdrc_base, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 96
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !87
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @omap2_sdrc_base to i32))
  %7 = load ptr, ptr @omap2_sdrc_base, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 96
  %add.ptr8 = getelementptr i8, ptr %7, i32 112
  tail call void %3(i32 noundef %6, ptr noundef %add.ptr, ptr noundef %add.ptr8) #5
  br label %no_sleep

no_sleep:                                         ; preds = %if.end, %entry.no_sleep_crit_edge
  %8 = load ptr, ptr @osc_ck, align 4
  %call9 = tail call i32 @clk_enable(ptr noundef %8) #5
  %call10 = tail call i32 @omap_prm_clear_mod_irqs(i16 noundef signext 512, i8 noundef zeroext -80, i32 noundef -1) #5
  %call11 = tail call i32 @omap_prm_clear_mod_irqs(i16 noundef signext 512, i8 noundef zeroext -76, i32 noundef -1) #5
  %call12 = tail call i32 @omap_prm_clear_mod_irqs(i16 noundef signext 1024, i8 noundef zeroext -80, i32 noundef 5) #5
  %call13 = tail call i32 @omap_prm_clear_mod_irqs(i16 noundef signext 0, i8 noundef zeroext 24, i32 noundef 1) #5
  %call14 = tail call i32 @omap_prm_clear_mod_irqs(i16 noundef signext 0, i8 noundef zeroext 24, i32 noundef 32) #5
  %9 = load ptr, ptr @mpu_pwrdm, align 4
  %call15 = tail call i32 @pwrdm_set_next_pwrst(ptr noundef %9, i8 noundef zeroext 3) #5
  %10 = load ptr, ptr @core_pwrdm, align 4
  %call16 = tail call i32 @pwrdm_set_next_pwrst(ptr noundef %10, i8 noundef zeroext 3) #5
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_prm_clear_mod_irqs(i16 noundef signext, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_ctrl_readl(i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_ctrl_writel(i32 noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_irq_pending() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_cluster_pm_enter() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_cluster_pm_exit() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2xxx_cm_fclks_active() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__clk_is_enabled(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2xxx_cm_mpu_retention_allowed() local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }
attributes #9 = { cold }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !14, !15, !16, !18, !20, !21, !22, !24, !26, !27, !28, !30, !32, !33, !34, !36, !38, !39, !40, !42, !44, !45, !46, !48, !50, !51, !52, !54, !56, !57, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76}
!llvm.module.flags = !{!78, !79, !80, !81, !82, !83, !84, !85}
!llvm.ident = !{!86}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-omap2/pm24xx.c", i32 250, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @omap2_pm_init._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @omap2_pm_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-omap2/pm24xx.c", i32 252, i32 2}
!8 = !{ptr @omap2_pm_init._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @omap2_pm_init._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../arch/arm/mach-omap2/pm24xx.c", i32 256, i32 27}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../arch/arm/mach-omap2/pm24xx.c", i32 258, i32 3}
!14 = !{ptr @omap2_pm_init._entry.7, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @omap2_pm_init._entry_ptr.9, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../arch/arm/mach-omap2/pm24xx.c", i32 260, i32 28}
!18 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../arch/arm/mach-omap2/pm24xx.c", i32 262, i32 3}
!20 = !{ptr @omap2_pm_init._entry.11, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @omap2_pm_init._entry_ptr.13, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../arch/arm/mach-omap2/pm24xx.c", i32 266, i32 27}
!24 = !{ptr @.str.16, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../arch/arm/mach-omap2/pm24xx.c", i32 268, i32 3}
!26 = !{ptr @omap2_pm_init._entry.15, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @omap2_pm_init._entry_ptr.17, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.18, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../arch/arm/mach-omap2/pm24xx.c", i32 270, i32 28}
!30 = !{ptr @.str.20, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../arch/arm/mach-omap2/pm24xx.c", i32 272, i32 3}
!32 = !{ptr @omap2_pm_init._entry.19, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @omap2_pm_init._entry_ptr.21, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.22, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../arch/arm/mach-omap2/pm24xx.c", i32 274, i32 27}
!36 = !{ptr @.str.24, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../arch/arm/mach-omap2/pm24xx.c", i32 276, i32 3}
!38 = !{ptr @omap2_pm_init._entry.23, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @omap2_pm_init._entry_ptr.25, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.26, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../arch/arm/mach-omap2/pm24xx.c", i32 278, i32 27}
!42 = !{ptr @.str.28, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../arch/arm/mach-omap2/pm24xx.c", i32 280, i32 3}
!44 = !{ptr @omap2_pm_init._entry.27, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @omap2_pm_init._entry_ptr.29, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.30, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../arch/arm/mach-omap2/pm24xx.c", i32 283, i32 25}
!48 = !{ptr @.str.32, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../arch/arm/mach-omap2/pm24xx.c", i32 285, i32 3}
!50 = !{ptr @omap2_pm_init._entry.31, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @omap2_pm_init._entry_ptr.33, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.34, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../arch/arm/mach-omap2/pm24xx.c", i32 290, i32 27}
!54 = !{ptr @.str.36, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../arch/arm/mach-omap2/pm24xx.c", i32 292, i32 4}
!56 = !{ptr @omap2_pm_init._entry.35, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @omap2_pm_init._entry_ptr.37, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @omap2_sram_suspend, !59, !"omap2_sram_suspend", i1 false, i1 false}
!59 = !{!"../arch/arm/mach-omap2/pm24xx.c", i32 54, i32 15}
!60 = !{ptr @mpu_pwrdm, !61, !"mpu_pwrdm", i1 false, i1 false}
!61 = !{!"../arch/arm/mach-omap2/pm24xx.c", i32 57, i32 28}
!62 = !{ptr @core_pwrdm, !63, !"core_pwrdm", i1 false, i1 false}
!63 = !{!"../arch/arm/mach-omap2/pm24xx.c", i32 57, i32 40}
!64 = !{ptr @dsp_clkdm, !65, !"dsp_clkdm", i1 false, i1 false}
!65 = !{!"../arch/arm/mach-omap2/pm24xx.c", i32 58, i32 28}
!66 = !{ptr @mpu_clkdm, !67, !"mpu_clkdm", i1 false, i1 false}
!67 = !{!"../arch/arm/mach-omap2/pm24xx.c", i32 58, i32 40}
!68 = !{ptr @wkup_clkdm, !69, !"wkup_clkdm", i1 false, i1 false}
!69 = !{!"../arch/arm/mach-omap2/pm24xx.c", i32 58, i32 52}
!70 = !{ptr @gfx_clkdm, !71, !"gfx_clkdm", i1 false, i1 false}
!71 = !{!"../arch/arm/mach-omap2/pm24xx.c", i32 58, i32 65}
!72 = !{ptr @osc_ck, !73, !"osc_ck", i1 false, i1 false}
!73 = !{!"../arch/arm/mach-omap2/pm24xx.c", i32 60, i32 20}
!74 = !{ptr @emul_ck, !75, !"emul_ck", i1 false, i1 false}
!75 = !{!"../arch/arm/mach-omap2/pm24xx.c", i32 60, i32 29}
!76 = distinct !{null, !77, !"sti_console_enabled", i1 false, i1 false}
!77 = !{!"../arch/arm/mach-omap2/pm24xx.c", i32 117, i32 12}
!78 = !{i32 1, !"wchar_size", i32 2}
!79 = !{i32 1, !"min_enum_size", i32 4}
!80 = !{i32 8, !"branch-target-enforcement", i32 0}
!81 = !{i32 8, !"sign-return-address", i32 0}
!82 = !{i32 8, !"sign-return-address-all", i32 0}
!83 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!84 = !{i32 7, !"uwtable", i32 1}
!85 = !{i32 7, !"frame-pointer", i32 2}
!86 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!87 = !{i64 5371933}
!88 = !{i64 5371515}
!89 = !{i64 3874}
