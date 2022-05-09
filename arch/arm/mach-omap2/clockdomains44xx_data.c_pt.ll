; ModuleID = '/llk/IR_all_yes/arch/arm/mach-omap2/clockdomains44xx_data.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/clockdomains44xx_data.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clkdm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clockdomain = type { ptr, %union.anon, i16, i8, i8, i8, i8, i16, i16, ptr, ptr, i32, i32, %struct.list_head, i32 }
%union.anon = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.clkdm_dep = type { ptr, ptr, i16, i16 }

@omap4_clkdm_operations = external dso_local global %struct.clkdm_ops, align 4
@clockdomains_omap44xx = internal global [25 x ptr] [ptr @l4_cefuse_44xx_clkdm, ptr @l4_cfg_44xx_clkdm, ptr @tesla_44xx_clkdm, ptr @l3_gfx_44xx_clkdm, ptr @ivahd_44xx_clkdm, ptr @l4_secure_44xx_clkdm, ptr @l4_per_44xx_clkdm, ptr @abe_44xx_clkdm, ptr @l3_instr_44xx_clkdm, ptr @l3_init_44xx_clkdm, ptr @d2d_44xx_clkdm, ptr @mpu0_44xx_clkdm, ptr @mpu1_44xx_clkdm, ptr @l3_emif_44xx_clkdm, ptr @l4_ao_44xx_clkdm, ptr @ducati_44xx_clkdm, ptr @mpu_44xx_clkdm, ptr @l3_2_44xx_clkdm, ptr @l3_1_44xx_clkdm, ptr @iss_44xx_clkdm, ptr @l3_dss_44xx_clkdm, ptr @l4_wkup_44xx_clkdm, ptr @emu_sys_44xx_clkdm, ptr @l3_dma_44xx_clkdm, ptr null], section ".init.data", align 4
@l4_cefuse_44xx_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str, %union.anon { ptr @.str.1 }, i16 0, i8 14, i8 0, i8 0, i8 3, i16 5632, i16 0, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@l4_cfg_44xx_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.2, %union.anon { ptr @.str.3 }, i16 0, i8 12, i8 0, i8 12, i8 3, i16 1792, i16 1536, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@tesla_44xx_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.4, %union.anon { ptr @.str.5 }, i16 0, i8 15, i8 0, i8 1, i8 2, i16 1024, i16 0, ptr @tesla_wkup_sleep_deps, ptr @tesla_wkup_sleep_deps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@l3_gfx_44xx_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.14, %union.anon { ptr @.str.15 }, i16 0, i8 15, i8 0, i8 10, i8 3, i16 4608, i16 0, ptr @l3_gfx_wkup_sleep_deps, ptr @l3_gfx_wkup_sleep_deps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@ivahd_44xx_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.7, %union.anon { ptr @.str.16 }, i16 0, i8 15, i8 0, i8 2, i8 3, i16 3840, i16 0, ptr @ivahd_wkup_sleep_deps, ptr @ivahd_wkup_sleep_deps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@l4_secure_44xx_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.17, %union.anon { ptr @.str.18 }, i16 0, i8 3, i8 0, i8 14, i8 3, i16 5120, i16 384, ptr @l4_secure_wkup_sleep_deps, ptr @l4_secure_wkup_sleep_deps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@l4_per_44xx_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.12, %union.anon { ptr @.str.18 }, i16 0, i8 15, i8 0, i8 13, i8 3, i16 5120, i16 0, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@abe_44xx_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.6, %union.anon { ptr @.str.19 }, i16 0, i8 15, i8 0, i8 3, i8 2, i16 1280, i16 0, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@l3_instr_44xx_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.20, %union.anon { ptr @.str.3 }, i16 0, i8 0, i8 0, i8 0, i8 3, i16 1792, i16 1792, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@l3_init_44xx_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.11, %union.anon { ptr @.str.21 }, i16 0, i8 15, i8 0, i8 7, i8 3, i16 4864, i16 0, ptr @l3_init_wkup_sleep_deps, ptr @l3_init_wkup_sleep_deps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@d2d_44xx_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.22, %union.anon { ptr @.str.3 }, i16 0, i8 14, i8 0, i8 0, i8 3, i16 1792, i16 1280, ptr @d2d_wkup_sleep_deps, ptr @d2d_wkup_sleep_deps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@mpu0_44xx_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.23, %union.anon { ptr @.str.24 }, i16 0, i8 14, i8 0, i8 0, i8 5, i16 1024, i16 24, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@mpu1_44xx_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.25, %union.anon { ptr @.str.26 }, i16 0, i8 14, i8 0, i8 0, i8 5, i16 2048, i16 24, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@l3_emif_44xx_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.10, %union.anon { ptr @.str.3 }, i16 0, i8 14, i8 0, i8 4, i8 3, i16 1792, i16 1024, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@l4_ao_44xx_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.27, %union.anon { ptr @.str.28 }, i16 0, i8 14, i8 0, i8 0, i8 3, i16 1536, i16 0, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@ducati_44xx_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.29, %union.anon { ptr @.str.3 }, i16 0, i8 15, i8 0, i8 0, i8 3, i16 1792, i16 512, ptr @ducati_wkup_sleep_deps, ptr @ducati_wkup_sleep_deps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@mpu_44xx_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.31, %union.anon { ptr @.str.32 }, i16 0, i8 14, i8 0, i8 0, i8 2, i16 768, i16 0, ptr @mpu_wkup_sleep_deps, ptr @mpu_wkup_sleep_deps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@l3_2_44xx_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.9, %union.anon { ptr @.str.3 }, i16 0, i8 12, i8 0, i8 6, i8 3, i16 1792, i16 256, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@l3_1_44xx_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.8, %union.anon { ptr @.str.3 }, i16 0, i8 12, i8 0, i8 5, i8 3, i16 1792, i16 0, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@iss_44xx_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.33, %union.anon { ptr @.str.34 }, i16 0, i8 3, i8 0, i8 0, i8 3, i16 4096, i16 0, ptr @iss_wkup_sleep_deps, ptr @iss_wkup_sleep_deps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@l3_dss_44xx_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.30, %union.anon { ptr @.str.35 }, i16 0, i8 15, i8 0, i8 8, i8 3, i16 4352, i16 0, ptr @l3_dss_wkup_sleep_deps, ptr @l3_dss_wkup_sleep_deps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@l4_wkup_44xx_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.13, %union.anon { ptr @.str.36 }, i16 0, i8 44, i8 0, i8 15, i8 1, i16 6144, i16 0, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@emu_sys_44xx_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.37, %union.anon { ptr @.str.38 }, i16 0, i8 70, i8 0, i8 0, i8 1, i16 6656, i16 0, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@l3_dma_44xx_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.39, %union.anon { ptr @.str.3 }, i16 0, i8 14, i8 0, i8 0, i8 3, i16 1792, i16 768, ptr @l3_dma_wkup_sleep_deps, ptr @l3_dma_wkup_sleep_deps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"l4_cefuse_clkdm\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cefuse_pwrdm\00", [19 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"l4_cfg_clkdm\00", [19 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"core_pwrdm\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tesla_clkdm\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tesla_pwrdm\00", [20 x i8] zeroinitializer }, align 32
@tesla_wkup_sleep_deps = internal global { [10 x %struct.clkdm_dep], [40 x i8] } { [10 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.6, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.7, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.8, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.9, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.10, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.11, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.12, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.13, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"abe_clkdm\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ivahd_clkdm\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"l3_1_clkdm\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"l3_2_clkdm\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"l3_emif_clkdm\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"l3_init_clkdm\00", [18 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"l4_per_clkdm\00", [19 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"l4_wkup_clkdm\00", [18 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"l3_gfx_clkdm\00", [19 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gfx_pwrdm\00", [22 x i8] zeroinitializer }, align 32
@l3_gfx_wkup_sleep_deps = internal global { [4 x %struct.clkdm_dep], [48 x i8] } { [4 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.7, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.8, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.10, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ivahd_pwrdm\00", [20 x i8] zeroinitializer }, align 32
@ivahd_wkup_sleep_deps = internal global { [3 x %struct.clkdm_dep], [60 x i8] } { [3 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.8, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.10, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], [60 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"l4_secure_clkdm\00", [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"l4per_pwrdm\00", [20 x i8] zeroinitializer }, align 32
@l4_secure_wkup_sleep_deps = internal global { [4 x %struct.clkdm_dep], [48 x i8] } { [4 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.8, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.10, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.12, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"abe_pwrdm\00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"l3_instr_clkdm\00", [17 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"l3init_pwrdm\00", [19 x i8] zeroinitializer }, align 32
@l3_init_wkup_sleep_deps = internal global { [8 x %struct.clkdm_dep], [32 x i8] } { [8 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.6, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.7, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.10, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.12, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.17, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.13, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"d2d_clkdm\00", [22 x i8] zeroinitializer }, align 32
@d2d_wkup_sleep_deps = internal global { [9 x %struct.clkdm_dep], [52 x i8] } { [9 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.6, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.7, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.8, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.9, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.10, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.11, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.12, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], [52 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mpu0_clkdm\00", [21 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cpu0_pwrdm\00", [21 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mpu1_clkdm\00", [21 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cpu1_pwrdm\00", [21 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"l4_ao_clkdm\00", [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"always_on_core_pwrdm\00", [43 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ducati_clkdm\00", [19 x i8] zeroinitializer }, align 32
@ducati_wkup_sleep_deps = internal global { [14 x %struct.clkdm_dep], [56 x i8] } { [14 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.6, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.7, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.8, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.9, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.30, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.10, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.14, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.11, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.12, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.17, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.13, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.4, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"l3_dss_clkdm\00", [19 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mpuss_clkdm\00", [20 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mpu_pwrdm\00", [22 x i8] zeroinitializer }, align 32
@mpu_wkup_sleep_deps = internal global { [15 x %struct.clkdm_dep], [44 x i8] } { [15 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.6, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.29, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.7, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.8, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.9, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.30, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.10, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.14, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.11, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.12, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.17, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.13, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.4, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], [44 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"iss_clkdm\00", [22 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cam_pwrdm\00", [22 x i8] zeroinitializer }, align 32
@iss_wkup_sleep_deps = internal global { [4 x %struct.clkdm_dep], [48 x i8] } { [4 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.7, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.8, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.10, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dss_pwrdm\00", [22 x i8] zeroinitializer }, align 32
@l3_dss_wkup_sleep_deps = internal global { [4 x %struct.clkdm_dep], [48 x i8] } { [4 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.7, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.9, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.10, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wkup_pwrdm\00", [21 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"emu_sys_clkdm\00", [18 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"emu_pwrdm\00", [22 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"l3_dma_clkdm\00", [19 x i8] zeroinitializer }, align 32
@l3_dma_wkup_sleep_deps = internal global { [12 x %struct.clkdm_dep], [48 x i8] } { [12 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.6, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.29, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.7, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.8, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.30, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.10, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.11, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.12, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.17, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.13, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], [48 x i8] zeroinitializer }, align 32
@___asan_gen_.40 = private unnamed_addr constant [21 x i8] c"l4_cefuse_44xx_clkdm\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 153, i32 27 }
@___asan_gen_.43 = private unnamed_addr constant [18 x i8] c"l4_cfg_44xx_clkdm\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 162, i32 27 }
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"tesla_44xx_clkdm\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 172, i32 27 }
@___asan_gen_.49 = private unnamed_addr constant [18 x i8] c"l3_gfx_44xx_clkdm\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 184, i32 27 }
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"ivahd_44xx_clkdm\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 196, i32 27 }
@___asan_gen_.55 = private unnamed_addr constant [21 x i8] c"l4_secure_44xx_clkdm\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 208, i32 27 }
@___asan_gen_.58 = private unnamed_addr constant [18 x i8] c"l4_per_44xx_clkdm\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 220, i32 27 }
@___asan_gen_.61 = private unnamed_addr constant [15 x i8] c"abe_44xx_clkdm\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 230, i32 27 }
@___asan_gen_.64 = private unnamed_addr constant [20 x i8] c"l3_instr_44xx_clkdm\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 240, i32 27 }
@___asan_gen_.67 = private unnamed_addr constant [19 x i8] c"l3_init_44xx_clkdm\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 248, i32 27 }
@___asan_gen_.70 = private unnamed_addr constant [15 x i8] c"d2d_44xx_clkdm\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 260, i32 27 }
@___asan_gen_.73 = private unnamed_addr constant [16 x i8] c"mpu0_44xx_clkdm\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 271, i32 27 }
@___asan_gen_.76 = private unnamed_addr constant [16 x i8] c"mpu1_44xx_clkdm\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 280, i32 27 }
@___asan_gen_.79 = private unnamed_addr constant [19 x i8] c"l3_emif_44xx_clkdm\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 289, i32 27 }
@___asan_gen_.82 = private unnamed_addr constant [17 x i8] c"l4_ao_44xx_clkdm\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 299, i32 27 }
@___asan_gen_.85 = private unnamed_addr constant [18 x i8] c"ducati_44xx_clkdm\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 308, i32 27 }
@___asan_gen_.88 = private unnamed_addr constant [15 x i8] c"mpu_44xx_clkdm\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 320, i32 27 }
@___asan_gen_.91 = private unnamed_addr constant [16 x i8] c"l3_2_44xx_clkdm\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 331, i32 27 }
@___asan_gen_.94 = private unnamed_addr constant [16 x i8] c"l3_1_44xx_clkdm\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 341, i32 27 }
@___asan_gen_.97 = private unnamed_addr constant [15 x i8] c"iss_44xx_clkdm\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 351, i32 27 }
@___asan_gen_.100 = private unnamed_addr constant [18 x i8] c"l3_dss_44xx_clkdm\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 362, i32 27 }
@___asan_gen_.103 = private unnamed_addr constant [19 x i8] c"l4_wkup_44xx_clkdm\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 374, i32 27 }
@___asan_gen_.106 = private unnamed_addr constant [19 x i8] c"emu_sys_44xx_clkdm\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 384, i32 27 }
@___asan_gen_.109 = private unnamed_addr constant [18 x i8] c"l3_dma_44xx_clkdm\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 394, i32 27 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 154, i32 13 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 155, i32 24 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 163, i32 13 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 164, i32 24 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 173, i32 13 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 174, i32 24 }
@___asan_gen_.130 = private unnamed_addr constant [22 x i8] c"tesla_wkup_sleep_deps\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 140, i32 25 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 141, i32 18 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 142, i32 18 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 143, i32 18 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 144, i32 18 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 145, i32 18 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 146, i32 18 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 148, i32 18 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 149, i32 18 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 185, i32 13 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 186, i32 24 }
@___asan_gen_.163 = private unnamed_addr constant [23 x i8] c"l3_gfx_wkup_sleep_deps\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 97, i32 25 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 198, i32 24 }
@___asan_gen_.169 = private unnamed_addr constant [22 x i8] c"ivahd_wkup_sleep_deps\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 69, i32 25 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 209, i32 13 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 210, i32 24 }
@___asan_gen_.178 = private unnamed_addr constant [26 x i8] c"l4_secure_wkup_sleep_deps\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 115, i32 25 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 232, i32 24 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 241, i32 13 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 250, i32 24 }
@___asan_gen_.190 = private unnamed_addr constant [24 x i8] c"l3_init_wkup_sleep_deps\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 104, i32 25 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 261, i32 13 }
@___asan_gen_.196 = private unnamed_addr constant [20 x i8] c"d2d_wkup_sleep_deps\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 33, i32 25 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 272, i32 13 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 273, i32 24 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 281, i32 13 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 282, i32 24 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 300, i32 13 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 301, i32 24 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 309, i32 13 }
@___asan_gen_.220 = private unnamed_addr constant [23 x i8] c"ducati_wkup_sleep_deps\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 45, i32 25 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 50, i32 18 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 321, i32 13 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 322, i32 24 }
@___asan_gen_.232 = private unnamed_addr constant [20 x i8] c"mpu_wkup_sleep_deps\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 122, i32 25 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 352, i32 13 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 353, i32 24 }
@___asan_gen_.241 = private unnamed_addr constant [20 x i8] c"iss_wkup_sleep_deps\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 62, i32 25 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 364, i32 24 }
@___asan_gen_.247 = private unnamed_addr constant [23 x i8] c"l3_dss_wkup_sleep_deps\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 90, i32 25 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 376, i32 24 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 385, i32 13 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 386, i32 24 }
@___asan_gen_.259 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 395, i32 13 }
@___asan_gen_.262 = private unnamed_addr constant [23 x i8] c"l3_dma_wkup_sleep_deps\00", align 1
@___asan_gen_.263 = private constant [47 x i8] c"../arch/arm/mach-omap2/clockdomains44xx_data.c\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 75, i32 25 }
@llvm.compiler.used = appending global [75 x ptr] [ptr @l4_cefuse_44xx_clkdm, ptr @l4_cfg_44xx_clkdm, ptr @tesla_44xx_clkdm, ptr @l3_gfx_44xx_clkdm, ptr @ivahd_44xx_clkdm, ptr @l4_secure_44xx_clkdm, ptr @l4_per_44xx_clkdm, ptr @abe_44xx_clkdm, ptr @l3_instr_44xx_clkdm, ptr @l3_init_44xx_clkdm, ptr @d2d_44xx_clkdm, ptr @mpu0_44xx_clkdm, ptr @mpu1_44xx_clkdm, ptr @l3_emif_44xx_clkdm, ptr @l4_ao_44xx_clkdm, ptr @ducati_44xx_clkdm, ptr @mpu_44xx_clkdm, ptr @l3_2_44xx_clkdm, ptr @l3_1_44xx_clkdm, ptr @iss_44xx_clkdm, ptr @l3_dss_44xx_clkdm, ptr @l4_wkup_44xx_clkdm, ptr @emu_sys_44xx_clkdm, ptr @l3_dma_44xx_clkdm, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @tesla_wkup_sleep_deps, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @l3_gfx_wkup_sleep_deps, ptr @.str.16, ptr @ivahd_wkup_sleep_deps, ptr @.str.17, ptr @.str.18, ptr @l4_secure_wkup_sleep_deps, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @l3_init_wkup_sleep_deps, ptr @.str.22, ptr @d2d_wkup_sleep_deps, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @ducati_wkup_sleep_deps, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @mpu_wkup_sleep_deps, ptr @.str.33, ptr @.str.34, ptr @iss_wkup_sleep_deps, ptr @.str.35, ptr @l3_dss_wkup_sleep_deps, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @l3_dma_wkup_sleep_deps], section "llvm.metadata"
@0 = internal global [75 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l4_cefuse_44xx_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l4_cfg_44xx_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tesla_44xx_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l3_gfx_44xx_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivahd_44xx_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l4_secure_44xx_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l4_per_44xx_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abe_44xx_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l3_instr_44xx_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l3_init_44xx_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d2d_44xx_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu0_44xx_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu1_44xx_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l3_emif_44xx_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l4_ao_44xx_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ducati_44xx_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu_44xx_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l3_2_44xx_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l3_1_44xx_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iss_44xx_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l3_dss_44xx_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l4_wkup_44xx_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emu_sys_44xx_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l3_dma_44xx_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tesla_wkup_sleep_deps to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l3_gfx_wkup_sleep_deps to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivahd_wkup_sleep_deps to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l4_secure_wkup_sleep_deps to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l3_init_wkup_sleep_deps to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d2d_wkup_sleep_deps to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ducati_wkup_sleep_deps to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu_wkup_sleep_deps to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iss_wkup_sleep_deps to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l3_dss_wkup_sleep_deps to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l3_dma_wkup_sleep_deps to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @omap44xx_clockdomains_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @clkdm_register_platform_funcs(ptr noundef nonnull @omap4_clkdm_operations) #2
  %call1 = tail call i32 @clkdm_register_clkdms(ptr noundef nonnull @clockdomains_omap44xx) #2
  %call2 = tail call i32 @clkdm_complete_init() #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clkdm_register_platform_funcs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clkdm_register_clkdms(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clkdm_complete_init() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 75)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150}
!llvm.module.flags = !{!152, !153, !154, !155, !156, !157, !158, !159}
!llvm.ident = !{!160}

!0 = !{ptr @clockdomains_omap44xx, !1, !"clockdomains_omap44xx", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-omap2/clockdomains44xx_data.c", i32 406, i32 28}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-omap2/clockdomains44xx_data.c", i32 154, i32 13}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-omap2/clockdomains44xx_data.c", i32 155, i32 24}
!6 = !{ptr @l4_cefuse_44xx_clkdm, !7, !"l4_cefuse_44xx_clkdm", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-omap2/clockdomains44xx_data.c", i32 153, i32 27}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-omap2/clockdomains44xx_data.c", i32 163, i32 13}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../arch/arm/mach-omap2/clockdomains44xx_data.c", i32 164, i32 24}
!12 = !{ptr @l4_cfg_44xx_clkdm, !13, !"l4_cfg_44xx_clkdm", i1 false, i1 false}
!13 = !{!"../arch/arm/mach-omap2/clockdomains44xx_data.c", i32 162, i32 27}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../arch/arm/mach-omap2/clockdomains44xx_data.c", i32 173, i32 13}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../arch/arm/mach-omap2/clockdomains44xx_data.c", i32 174, i32 24}
!18 = !{ptr @tesla_44xx_clkdm, !19, !"tesla_44xx_clkdm", i1 false, i1 false}
!19 = !{!"../arch/arm/mach-omap2/clockdomains44xx_data.c", i32 172, i32 27}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../arch/arm/mach-omap2/clockdomains44xx_data.c", i32 141, i32 18}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../arch/arm/mach-omap2/clockdomains44xx_data.c", i32 142, i32 18}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../arch/arm/mach-omap2/clockdomains44xx_data.c", i32 143, i32 18}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../arch/arm/mach-omap2/clockdomains44xx_data.c", i32 144, i32 18}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../arch/arm/mach-omap2/clockdomains44xx_data.c", i32 145, i32 18}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../arch/arm/mach-omap2/clockdomains44xx_data.c", i32 146, i32 18}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../arch/arm/mach-omap2/clockdomains44xx_data.c", i32 148, i32 18}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../arch/arm/mach-omap2/clockdomains44xx_data.c", i32 149, i32 18}
!36 = !{ptr @tesla_wkup_sleep_deps, !37, !"tesla_wkup_sleep_deps", i1 false, i1 false}
!37 = !{!"../arch/arm/mach-omap2/clockdomains44xx_data.c", i32 140, i32 25}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../arch/arm/mach-omap2/clockdomains44xx_data.c", i32 185, i32 13}
!40 = !{ptr @.str.15, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../arch/arm/mach-omap2/clockdomains44xx_data.c", i32 186, i32 24}
!42 = !{ptr @l3_gfx_44xx_clkdm, !43, !"l3_gfx_44xx_clkdm", i1 false, i1 false}
!43 = !{!"../arch/arm/mach-omap2/clockdomains44xx_data.c", i32 184, i32 27}
!44 = !{ptr @l3_gfx_wkup_sleep_deps, !45, !"l3_gfx_wkup_sleep_deps", i1 false, i1 false}
!45 = !{!"../arch/arm/mach-omap2/clockdomains44xx_data.c", i32 97, i32 25}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../arch/arm/mach-omap2/clockdomains44xx_data.c", i32 198, i32 24}
!48 = !{ptr @ivahd_44xx_clkdm, !49, !"ivahd_44xx_clkdm", i1 false, i1 false}
!49 = !{!"../arch/arm/mach-omap2/clockdomains44xx_data.c", i32 196, i32 27}
!50 = !{ptr @ivahd_wkup_sleep_deps, !51, !"ivahd_wkup_sleep_deps", i1 false, i1 false}
!51 = !{!"../arch/arm/mach-omap2/clockdomains44xx_data.c", i32 69, i32 25}
!52 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../arch/arm/mach-omap2/clockdomains44xx_data.c", i32 209, i32 13}
!54 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../arch/arm/mach-omap2/clockdomains44xx_data.c", i32 210, i32 24}
!56 = !{ptr @l4_secure_44xx_clkdm, !57, !"l4_secure_44xx_clkdm", i1 false, i1 false}
!57 = !{!"../arch/arm/mach-omap2/clockdomains44xx_data.c", i32 208, i32 27}
!58 = !{ptr @l4_secure_wkup_sleep_deps, !59, !"l4_secure_wkup_sleep_deps", i1 false, i1 false}
!59 = !{!"../arch/arm/mach-omap2/clockdomains44xx_data.c", i32 115, i32 25}
!60 = !{ptr @l4_per_44xx_clkdm, !61, !"l4_per_44xx_clkdm", i1 false, i1 false}
!61 = !{!"../arch/arm/mach-omap2/clockdomains44xx_data.c", i32 220, i32 27}
!62 = !{ptr @.str.19, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../arch/arm/mach-omap2/clockdomains44xx_data.c", i32 232, i32 24}
!64 = !{ptr @abe_44xx_clkdm, !65, !"abe_44xx_clkdm", i1 false, i1 false}
!65 = !{!"../arch/arm/mach-omap2/clockdomains44xx_data.c", i32 230, i32 27}
!66 = !{ptr @.str.20, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../arch/arm/mach-omap2/clockdomains44xx_data.c", i32 241, i32 13}
!68 = !{ptr @l3_instr_44xx_clkdm, !69, !"l3_instr_44xx_clkdm", i1 false, i1 false}
!69 = !{!"../arch/arm/mach-omap2/clockdomains44xx_data.c", i32 240, i32 27}
!70 = !{ptr @.str.21, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../arch/arm/mach-omap2/clockdomains44xx_data.c", i32 250, i32 24}
!72 = !{ptr @l3_init_44xx_clkdm, !73, !"l3_init_44xx_clkdm", i1 false, i1 false}
!73 = !{!"../arch/arm/mach-omap2/clockdomains44xx_data.c", i32 248, i32 27}
!74 = !{ptr @l3_init_wkup_sleep_deps, !75, !"l3_init_wkup_sleep_deps", i1 false, i1 false}
!75 = !{!"../arch/arm/mach-omap2/clockdomains44xx_data.c", i32 104, i32 25}
!76 = !{ptr @.str.22, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../arch/arm/mach-omap2/clockdomains44xx_data.c", i32 261, i32 13}
!78 = !{ptr @d2d_44xx_clkdm, !79, !"d2d_44xx_clkdm", i1 false, i1 false}
!79 = !{!"../arch/arm/mach-omap2/clockdomains44xx_data.c", i32 260, i32 27}
!80 = !{ptr @d2d_wkup_sleep_deps, !81, !"d2d_wkup_sleep_deps", i1 false, i1 false}
!81 = !{!"../arch/arm/mach-omap2/clockdomains44xx_data.c", i32 33, i32 25}
!82 = !{ptr @.str.23, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../arch/arm/mach-omap2/clockdomains44xx_data.c", i32 272, i32 13}
!84 = !{ptr @.str.24, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../arch/arm/mach-omap2/clockdomains44xx_data.c", i32 273, i32 24}
!86 = !{ptr @mpu0_44xx_clkdm, !87, !"mpu0_44xx_clkdm", i1 false, i1 false}
!87 = !{!"../arch/arm/mach-omap2/clockdomains44xx_data.c", i32 271, i32 27}
!88 = !{ptr @.str.25, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../arch/arm/mach-omap2/clockdomains44xx_data.c", i32 281, i32 13}
!90 = !{ptr @.str.26, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../arch/arm/mach-omap2/clockdomains44xx_data.c", i32 282, i32 24}
!92 = !{ptr @mpu1_44xx_clkdm, !93, !"mpu1_44xx_clkdm", i1 false, i1 false}
!93 = !{!"../arch/arm/mach-omap2/clockdomains44xx_data.c", i32 280, i32 27}
!94 = !{ptr @l3_emif_44xx_clkdm, !95, !"l3_emif_44xx_clkdm", i1 false, i1 false}
!95 = !{!"../arch/arm/mach-omap2/clockdomains44xx_data.c", i32 289, i32 27}
!96 = !{ptr @.str.27, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../arch/arm/mach-omap2/clockdomains44xx_data.c", i32 300, i32 13}
!98 = !{ptr @.str.28, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../arch/arm/mach-omap2/clockdomains44xx_data.c", i32 301, i32 24}
!100 = !{ptr @l4_ao_44xx_clkdm, !101, !"l4_ao_44xx_clkdm", i1 false, i1 false}
!101 = !{!"../arch/arm/mach-omap2/clockdomains44xx_data.c", i32 299, i32 27}
!102 = !{ptr @.str.29, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../arch/arm/mach-omap2/clockdomains44xx_data.c", i32 309, i32 13}
!104 = !{ptr @ducati_44xx_clkdm, !105, !"ducati_44xx_clkdm", i1 false, i1 false}
!105 = !{!"../arch/arm/mach-omap2/clockdomains44xx_data.c", i32 308, i32 27}
!106 = !{ptr @.str.30, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../arch/arm/mach-omap2/clockdomains44xx_data.c", i32 50, i32 18}
!108 = !{ptr @ducati_wkup_sleep_deps, !109, !"ducati_wkup_sleep_deps", i1 false, i1 false}
!109 = !{!"../arch/arm/mach-omap2/clockdomains44xx_data.c", i32 45, i32 25}
!110 = !{ptr @.str.31, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../arch/arm/mach-omap2/clockdomains44xx_data.c", i32 321, i32 13}
!112 = !{ptr @.str.32, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../arch/arm/mach-omap2/clockdomains44xx_data.c", i32 322, i32 24}
!114 = !{ptr @mpu_44xx_clkdm, !115, !"mpu_44xx_clkdm", i1 false, i1 false}
!115 = !{!"../arch/arm/mach-omap2/clockdomains44xx_data.c", i32 320, i32 27}
!116 = !{ptr @mpu_wkup_sleep_deps, !117, !"mpu_wkup_sleep_deps", i1 false, i1 false}
!117 = !{!"../arch/arm/mach-omap2/clockdomains44xx_data.c", i32 122, i32 25}
!118 = !{ptr @l3_2_44xx_clkdm, !119, !"l3_2_44xx_clkdm", i1 false, i1 false}
!119 = !{!"../arch/arm/mach-omap2/clockdomains44xx_data.c", i32 331, i32 27}
!120 = !{ptr @l3_1_44xx_clkdm, !121, !"l3_1_44xx_clkdm", i1 false, i1 false}
!121 = !{!"../arch/arm/mach-omap2/clockdomains44xx_data.c", i32 341, i32 27}
!122 = !{ptr @.str.33, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../arch/arm/mach-omap2/clockdomains44xx_data.c", i32 352, i32 13}
!124 = !{ptr @.str.34, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../arch/arm/mach-omap2/clockdomains44xx_data.c", i32 353, i32 24}
!126 = !{ptr @iss_44xx_clkdm, !127, !"iss_44xx_clkdm", i1 false, i1 false}
!127 = !{!"../arch/arm/mach-omap2/clockdomains44xx_data.c", i32 351, i32 27}
!128 = !{ptr @iss_wkup_sleep_deps, !129, !"iss_wkup_sleep_deps", i1 false, i1 false}
!129 = !{!"../arch/arm/mach-omap2/clockdomains44xx_data.c", i32 62, i32 25}
!130 = !{ptr @.str.35, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../arch/arm/mach-omap2/clockdomains44xx_data.c", i32 364, i32 24}
!132 = !{ptr @l3_dss_44xx_clkdm, !133, !"l3_dss_44xx_clkdm", i1 false, i1 false}
!133 = !{!"../arch/arm/mach-omap2/clockdomains44xx_data.c", i32 362, i32 27}
!134 = !{ptr @l3_dss_wkup_sleep_deps, !135, !"l3_dss_wkup_sleep_deps", i1 false, i1 false}
!135 = !{!"../arch/arm/mach-omap2/clockdomains44xx_data.c", i32 90, i32 25}
!136 = !{ptr @.str.36, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../arch/arm/mach-omap2/clockdomains44xx_data.c", i32 376, i32 24}
!138 = !{ptr @l4_wkup_44xx_clkdm, !139, !"l4_wkup_44xx_clkdm", i1 false, i1 false}
!139 = !{!"../arch/arm/mach-omap2/clockdomains44xx_data.c", i32 374, i32 27}
!140 = !{ptr @.str.37, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../arch/arm/mach-omap2/clockdomains44xx_data.c", i32 385, i32 13}
!142 = !{ptr @.str.38, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../arch/arm/mach-omap2/clockdomains44xx_data.c", i32 386, i32 24}
!144 = !{ptr @emu_sys_44xx_clkdm, !145, !"emu_sys_44xx_clkdm", i1 false, i1 false}
!145 = !{!"../arch/arm/mach-omap2/clockdomains44xx_data.c", i32 384, i32 27}
!146 = !{ptr @.str.39, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../arch/arm/mach-omap2/clockdomains44xx_data.c", i32 395, i32 13}
!148 = !{ptr @l3_dma_44xx_clkdm, !149, !"l3_dma_44xx_clkdm", i1 false, i1 false}
!149 = !{!"../arch/arm/mach-omap2/clockdomains44xx_data.c", i32 394, i32 27}
!150 = !{ptr @l3_dma_wkup_sleep_deps, !151, !"l3_dma_wkup_sleep_deps", i1 false, i1 false}
!151 = !{!"../arch/arm/mach-omap2/clockdomains44xx_data.c", i32 75, i32 25}
!152 = !{i32 1, !"wchar_size", i32 2}
!153 = !{i32 1, !"min_enum_size", i32 4}
!154 = !{i32 8, !"branch-target-enforcement", i32 0}
!155 = !{i32 8, !"sign-return-address", i32 0}
!156 = !{i32 8, !"sign-return-address-all", i32 0}
!157 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!158 = !{i32 7, !"uwtable", i32 1}
!159 = !{i32 7, !"frame-pointer", i32 2}
!160 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
