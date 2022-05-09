; ModuleID = '/llk/IR_all_yes/arch/arm/mach-omap2/clockdomains54xx_data.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/clockdomains54xx_data.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clkdm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clockdomain = type { ptr, %union.anon, i16, i8, i8, i8, i8, i16, i16, ptr, ptr, i32, i32, %struct.list_head, i32 }
%union.anon = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.clkdm_dep = type { ptr, ptr, i16, i16 }

@omap4_clkdm_operations = external dso_local global %struct.clkdm_ops, align 4
@clockdomains_omap54xx = internal global [26 x ptr] [ptr @l4sec_54xx_clkdm, ptr @iva_54xx_clkdm, ptr @mipiext_54xx_clkdm, ptr @l3main2_54xx_clkdm, ptr @l3main1_54xx_clkdm, ptr @custefuse_54xx_clkdm, ptr @ipu_54xx_clkdm, ptr @l4cfg_54xx_clkdm, ptr @abe_54xx_clkdm, ptr @dss_54xx_clkdm, ptr @dsp_54xx_clkdm, ptr @c2c_54xx_clkdm, ptr @l4per_54xx_clkdm, ptr @gpu_54xx_clkdm, ptr @wkupaon_54xx_clkdm, ptr @mpu0_54xx_clkdm, ptr @mpu1_54xx_clkdm, ptr @coreaon_54xx_clkdm, ptr @mpu_54xx_clkdm, ptr @l3init_54xx_clkdm, ptr @dma_54xx_clkdm, ptr @l3instr_54xx_clkdm, ptr @emif_54xx_clkdm, ptr @emu_54xx_clkdm, ptr @cam_54xx_clkdm, ptr null], section ".init.data", align 4
@l4sec_54xx_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str, %union.anon { ptr @.str.1 }, i16 0, i8 3, i8 0, i8 14, i8 3, i16 1792, i16 2688, ptr @l4sec_wkup_sleep_deps, ptr @l4sec_wkup_sleep_deps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@iva_54xx_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.5, %union.anon { ptr @.str.6 }, i16 0, i8 15, i8 0, i8 2, i8 3, i16 4608, i16 0, ptr @iva_wkup_sleep_deps, ptr @iva_wkup_sleep_deps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@mipiext_54xx_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.7, %union.anon { ptr @.str.1 }, i16 0, i8 14, i8 0, i8 0, i8 3, i16 1792, i16 2048, ptr @mipiext_wkup_sleep_deps, ptr @mipiext_wkup_sleep_deps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@l3main2_54xx_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.10, %union.anon { ptr @.str.1 }, i16 0, i8 12, i8 0, i8 6, i8 3, i16 1792, i16 256, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@l3main1_54xx_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.3, %union.anon { ptr @.str.1 }, i16 0, i8 12, i8 0, i8 5, i8 3, i16 1792, i16 0, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@custefuse_54xx_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.12, %union.anon { ptr @.str.13 }, i16 0, i8 14, i8 0, i8 0, i8 3, i16 5888, i16 0, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@ipu_54xx_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.14, %union.anon { ptr @.str.1 }, i16 0, i8 15, i8 0, i8 0, i8 3, i16 1792, i16 512, ptr @ipu_wkup_sleep_deps, ptr @ipu_wkup_sleep_deps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@l4cfg_54xx_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.11, %union.anon { ptr @.str.1 }, i16 0, i8 12, i8 0, i8 12, i8 3, i16 1792, i16 1536, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@abe_54xx_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.8, %union.anon { ptr @.str.19 }, i16 0, i8 15, i8 0, i8 3, i8 2, i16 1280, i16 0, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@dss_54xx_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.16, %union.anon { ptr @.str.20 }, i16 0, i8 15, i8 0, i8 8, i8 3, i16 5120, i16 0, ptr @dss_wkup_sleep_deps, ptr @dss_wkup_sleep_deps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@dsp_54xx_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.15, %union.anon { ptr @.str.21 }, i16 0, i8 15, i8 0, i8 1, i8 2, i16 1024, i16 0, ptr @dsp_wkup_sleep_deps, ptr @dsp_wkup_sleep_deps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@c2c_54xx_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.22, %union.anon { ptr @.str.1 }, i16 0, i8 14, i8 0, i8 0, i8 3, i16 1792, i16 1280, ptr @c2c_wkup_sleep_deps, ptr @c2c_wkup_sleep_deps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@l4per_54xx_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.4, %union.anon { ptr @.str.1 }, i16 0, i8 15, i8 0, i8 13, i8 3, i16 1792, i16 2304, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@gpu_54xx_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.17, %union.anon { ptr @.str.23 }, i16 0, i8 15, i8 0, i8 10, i8 3, i16 5376, i16 0, ptr @gpu_wkup_sleep_deps, ptr @gpu_wkup_sleep_deps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@wkupaon_54xx_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.18, %union.anon { ptr @.str.24 }, i16 0, i8 14, i8 0, i8 15, i8 1, i16 6400, i16 0, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@mpu0_54xx_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.25, %union.anon { ptr @.str.26 }, i16 0, i8 14, i8 0, i8 0, i8 5, i16 1536, i16 0, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@mpu1_54xx_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.27, %union.anon { ptr @.str.28 }, i16 0, i8 14, i8 0, i8 0, i8 5, i16 2560, i16 0, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@coreaon_54xx_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.29, %union.anon { ptr @.str.30 }, i16 0, i8 14, i8 0, i8 0, i8 3, i16 1536, i16 0, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@mpu_54xx_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.31, %union.anon { ptr @.str.32 }, i16 0, i8 14, i8 0, i8 0, i8 2, i16 768, i16 0, ptr @mpu_wkup_sleep_deps, ptr @mpu_wkup_sleep_deps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@l3init_54xx_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.9, %union.anon { ptr @.str.33 }, i16 0, i8 15, i8 0, i8 7, i8 3, i16 5632, i16 0, ptr @l3init_wkup_sleep_deps, ptr @l3init_wkup_sleep_deps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@dma_54xx_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.34, %union.anon { ptr @.str.1 }, i16 0, i8 14, i8 0, i8 0, i8 3, i16 1792, i16 768, ptr @dma_wkup_sleep_deps, ptr @dma_wkup_sleep_deps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@l3instr_54xx_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.35, %union.anon { ptr @.str.1 }, i16 0, i8 0, i8 0, i8 0, i8 3, i16 1792, i16 1792, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@emif_54xx_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.2, %union.anon { ptr @.str.1 }, i16 0, i8 14, i8 0, i8 4, i8 3, i16 1792, i16 1024, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@emu_54xx_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.36, %union.anon { ptr @.str.37 }, i16 0, i8 14, i8 0, i8 0, i8 1, i16 6912, i16 0, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@cam_54xx_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.38, %union.anon { ptr @.str.39 }, i16 0, i8 15, i8 0, i8 0, i8 3, i16 4864, i16 0, ptr @cam_wkup_sleep_deps, ptr @cam_wkup_sleep_deps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"l4sec_clkdm\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"core_pwrdm\00", [21 x i8] zeroinitializer }, align 32
@l4sec_wkup_sleep_deps = internal global { [4 x %struct.clkdm_dep], [48 x i8] } { [4 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.3, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.4, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"emif_clkdm\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"l3main1_clkdm\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"l4per_clkdm\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"iva_clkdm\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"iva_pwrdm\00", [22 x i8] zeroinitializer }, align 32
@iva_wkup_sleep_deps = internal global { [3 x %struct.clkdm_dep], [60 x i8] } { [3 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.3, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], [60 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mipiext_clkdm\00", [18 x i8] zeroinitializer }, align 32
@mipiext_wkup_sleep_deps = internal global { [9 x %struct.clkdm_dep], [52 x i8] } { [9 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.8, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.5, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.9, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.3, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.10, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.11, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.4, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], [52 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"abe_clkdm\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"l3init_clkdm\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"l3main2_clkdm\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"l4cfg_clkdm\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"custefuse_clkdm\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"custefuse_pwrdm\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ipu_clkdm\00", [22 x i8] zeroinitializer }, align 32
@ipu_wkup_sleep_deps = internal global { [14 x %struct.clkdm_dep], [56 x i8] } { [14 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.8, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.15, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.16, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.17, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.5, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.9, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.3, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.10, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.11, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.4, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.18, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dsp_clkdm\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dss_clkdm\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpu_clkdm\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wkupaon_clkdm\00", [18 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"abe_pwrdm\00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dss_pwrdm\00", [22 x i8] zeroinitializer }, align 32
@dss_wkup_sleep_deps = internal global { [4 x %struct.clkdm_dep], [48 x i8] } { [4 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.5, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.10, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dsp_pwrdm\00", [22 x i8] zeroinitializer }, align 32
@dsp_wkup_sleep_deps = internal global { [10 x %struct.clkdm_dep], [40 x i8] } { [10 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.8, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.5, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.9, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.3, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.10, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.11, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.4, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.18, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"c2c_clkdm\00", [22 x i8] zeroinitializer }, align 32
@c2c_wkup_sleep_deps = internal global { [9 x %struct.clkdm_dep], [52 x i8] } { [9 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.8, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.5, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.9, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.3, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.10, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.11, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.4, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], [52 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpu_pwrdm\00", [22 x i8] zeroinitializer }, align 32
@gpu_wkup_sleep_deps = internal global { [4 x %struct.clkdm_dep], [48 x i8] } { [4 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.5, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.3, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wkupaon_pwrdm\00", [18 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mpu0_clkdm\00", [21 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cpu0_pwrdm\00", [21 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mpu1_clkdm\00", [21 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cpu1_pwrdm\00", [21 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"coreaon_clkdm\00", [18 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"coreaon_pwrdm\00", [18 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mpu_clkdm\00", [22 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mpu_pwrdm\00", [22 x i8] zeroinitializer }, align 32
@mpu_wkup_sleep_deps = internal global { [15 x %struct.clkdm_dep], [44 x i8] } { [15 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.8, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.15, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.16, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.17, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.14, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.5, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.9, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.3, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.10, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.11, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.4, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.18, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], [44 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"l3init_pwrdm\00", [19 x i8] zeroinitializer }, align 32
@l3init_wkup_sleep_deps = internal global { [8 x %struct.clkdm_dep], [32 x i8] } { [8 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.8, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.5, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.11, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.4, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.18, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dma_clkdm\00", [22 x i8] zeroinitializer }, align 32
@dma_wkup_sleep_deps = internal global { [12 x %struct.clkdm_dep], [48 x i8] } { [12 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.8, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.16, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.14, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.5, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.9, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.3, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.11, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.4, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.18, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"l3instr_clkdm\00", [18 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"emu_clkdm\00", [22 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"emu_pwrdm\00", [22 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cam_clkdm\00", [22 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cam_pwrdm\00", [22 x i8] zeroinitializer }, align 32
@cam_wkup_sleep_deps = internal global { [4 x %struct.clkdm_dep], [48 x i8] } { [4 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.5, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.3, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], [48 x i8] zeroinitializer }, align 32
@___asan_gen_.40 = private unnamed_addr constant [17 x i8] c"l4sec_54xx_clkdm\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 164, i32 27 }
@___asan_gen_.43 = private unnamed_addr constant [15 x i8] c"iva_54xx_clkdm\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 176, i32 27 }
@___asan_gen_.46 = private unnamed_addr constant [19 x i8] c"mipiext_54xx_clkdm\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 188, i32 27 }
@___asan_gen_.49 = private unnamed_addr constant [19 x i8] c"l3main2_54xx_clkdm\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 199, i32 27 }
@___asan_gen_.52 = private unnamed_addr constant [19 x i8] c"l3main1_54xx_clkdm\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 209, i32 27 }
@___asan_gen_.55 = private unnamed_addr constant [21 x i8] c"custefuse_54xx_clkdm\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 219, i32 27 }
@___asan_gen_.58 = private unnamed_addr constant [15 x i8] c"ipu_54xx_clkdm\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 228, i32 27 }
@___asan_gen_.61 = private unnamed_addr constant [17 x i8] c"l4cfg_54xx_clkdm\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 240, i32 27 }
@___asan_gen_.64 = private unnamed_addr constant [15 x i8] c"abe_54xx_clkdm\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 250, i32 27 }
@___asan_gen_.67 = private unnamed_addr constant [15 x i8] c"dss_54xx_clkdm\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 260, i32 27 }
@___asan_gen_.70 = private unnamed_addr constant [15 x i8] c"dsp_54xx_clkdm\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 272, i32 27 }
@___asan_gen_.73 = private unnamed_addr constant [15 x i8] c"c2c_54xx_clkdm\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 284, i32 27 }
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"l4per_54xx_clkdm\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 295, i32 27 }
@___asan_gen_.79 = private unnamed_addr constant [15 x i8] c"gpu_54xx_clkdm\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 305, i32 27 }
@___asan_gen_.82 = private unnamed_addr constant [19 x i8] c"wkupaon_54xx_clkdm\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 317, i32 27 }
@___asan_gen_.85 = private unnamed_addr constant [16 x i8] c"mpu0_54xx_clkdm\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 327, i32 27 }
@___asan_gen_.88 = private unnamed_addr constant [16 x i8] c"mpu1_54xx_clkdm\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 336, i32 27 }
@___asan_gen_.91 = private unnamed_addr constant [19 x i8] c"coreaon_54xx_clkdm\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 345, i32 27 }
@___asan_gen_.94 = private unnamed_addr constant [15 x i8] c"mpu_54xx_clkdm\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 354, i32 27 }
@___asan_gen_.97 = private unnamed_addr constant [18 x i8] c"l3init_54xx_clkdm\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 365, i32 27 }
@___asan_gen_.100 = private unnamed_addr constant [15 x i8] c"dma_54xx_clkdm\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 377, i32 27 }
@___asan_gen_.103 = private unnamed_addr constant [19 x i8] c"l3instr_54xx_clkdm\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 388, i32 27 }
@___asan_gen_.106 = private unnamed_addr constant [16 x i8] c"emif_54xx_clkdm\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 396, i32 27 }
@___asan_gen_.109 = private unnamed_addr constant [15 x i8] c"emu_54xx_clkdm\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 406, i32 27 }
@___asan_gen_.112 = private unnamed_addr constant [15 x i8] c"cam_54xx_clkdm\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 415, i32 27 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 165, i32 13 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 166, i32 24 }
@___asan_gen_.121 = private unnamed_addr constant [22 x i8] c"l4sec_wkup_sleep_deps\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 127, i32 25 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 128, i32 18 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 129, i32 18 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 130, i32 18 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 177, i32 13 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 178, i32 24 }
@___asan_gen_.139 = private unnamed_addr constant [20 x i8] c"iva_wkup_sleep_deps\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 110, i32 25 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 189, i32 13 }
@___asan_gen_.145 = private unnamed_addr constant [24 x i8] c"mipiext_wkup_sleep_deps\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 134, i32 25 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 135, i32 18 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 138, i32 18 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 140, i32 18 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 141, i32 18 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 220, i32 13 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 221, i32 24 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 229, i32 13 }
@___asan_gen_.169 = private unnamed_addr constant [20 x i8] c"ipu_wkup_sleep_deps\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 93, i32 25 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 95, i32 18 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 96, i32 18 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 98, i32 18 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 106, i32 18 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 252, i32 24 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 262, i32 24 }
@___asan_gen_.190 = private unnamed_addr constant [20 x i8] c"dss_wkup_sleep_deps\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 79, i32 25 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 274, i32 24 }
@___asan_gen_.196 = private unnamed_addr constant [20 x i8] c"dsp_wkup_sleep_deps\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 66, i32 25 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 285, i32 13 }
@___asan_gen_.202 = private unnamed_addr constant [20 x i8] c"c2c_wkup_sleep_deps\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 32, i32 25 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 307, i32 24 }
@___asan_gen_.208 = private unnamed_addr constant [20 x i8] c"gpu_wkup_sleep_deps\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 86, i32 25 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 319, i32 24 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 328, i32 13 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 329, i32 24 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 337, i32 13 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 338, i32 24 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 346, i32 13 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 347, i32 24 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 355, i32 13 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 356, i32 24 }
@___asan_gen_.238 = private unnamed_addr constant [20 x i8] c"mpu_wkup_sleep_deps\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 146, i32 25 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 367, i32 24 }
@___asan_gen_.244 = private unnamed_addr constant [23 x i8] c"l3init_wkup_sleep_deps\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 116, i32 25 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 378, i32 13 }
@___asan_gen_.250 = private unnamed_addr constant [20 x i8] c"dma_wkup_sleep_deps\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 51, i32 25 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 389, i32 13 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 407, i32 13 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 408, i32 24 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 416, i32 13 }
@___asan_gen_.265 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 417, i32 24 }
@___asan_gen_.268 = private unnamed_addr constant [20 x i8] c"cam_wkup_sleep_deps\00", align 1
@___asan_gen_.269 = private constant [47 x i8] c"../arch/arm/mach-omap2/clockdomains54xx_data.c\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.269, i32 44, i32 25 }
@llvm.compiler.used = appending global [77 x ptr] [ptr @l4sec_54xx_clkdm, ptr @iva_54xx_clkdm, ptr @mipiext_54xx_clkdm, ptr @l3main2_54xx_clkdm, ptr @l3main1_54xx_clkdm, ptr @custefuse_54xx_clkdm, ptr @ipu_54xx_clkdm, ptr @l4cfg_54xx_clkdm, ptr @abe_54xx_clkdm, ptr @dss_54xx_clkdm, ptr @dsp_54xx_clkdm, ptr @c2c_54xx_clkdm, ptr @l4per_54xx_clkdm, ptr @gpu_54xx_clkdm, ptr @wkupaon_54xx_clkdm, ptr @mpu0_54xx_clkdm, ptr @mpu1_54xx_clkdm, ptr @coreaon_54xx_clkdm, ptr @mpu_54xx_clkdm, ptr @l3init_54xx_clkdm, ptr @dma_54xx_clkdm, ptr @l3instr_54xx_clkdm, ptr @emif_54xx_clkdm, ptr @emu_54xx_clkdm, ptr @cam_54xx_clkdm, ptr @.str, ptr @.str.1, ptr @l4sec_wkup_sleep_deps, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @iva_wkup_sleep_deps, ptr @.str.7, ptr @mipiext_wkup_sleep_deps, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @ipu_wkup_sleep_deps, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @dss_wkup_sleep_deps, ptr @.str.21, ptr @dsp_wkup_sleep_deps, ptr @.str.22, ptr @c2c_wkup_sleep_deps, ptr @.str.23, ptr @gpu_wkup_sleep_deps, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @mpu_wkup_sleep_deps, ptr @.str.33, ptr @l3init_wkup_sleep_deps, ptr @.str.34, ptr @dma_wkup_sleep_deps, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @cam_wkup_sleep_deps], section "llvm.metadata"
@0 = internal global [77 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l4sec_54xx_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iva_54xx_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipiext_54xx_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l3main2_54xx_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l3main1_54xx_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @custefuse_54xx_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipu_54xx_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l4cfg_54xx_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abe_54xx_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dss_54xx_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_54xx_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c2c_54xx_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l4per_54xx_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu_54xx_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wkupaon_54xx_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu0_54xx_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu1_54xx_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coreaon_54xx_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu_54xx_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l3init_54xx_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_54xx_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l3instr_54xx_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emif_54xx_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emu_54xx_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_54xx_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l4sec_wkup_sleep_deps to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iva_wkup_sleep_deps to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipiext_wkup_sleep_deps to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipu_wkup_sleep_deps to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dss_wkup_sleep_deps to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_wkup_sleep_deps to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @c2c_wkup_sleep_deps to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu_wkup_sleep_deps to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu_wkup_sleep_deps to i32), i32 180, i32 224, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l3init_wkup_sleep_deps to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_wkup_sleep_deps to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_wkup_sleep_deps to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @omap54xx_clockdomains_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @clkdm_register_platform_funcs(ptr noundef nonnull @omap4_clkdm_operations) #2
  %call1 = tail call i32 @clkdm_register_clkdms(ptr noundef nonnull @clockdomains_omap54xx) #2
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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 77)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 77)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154}
!llvm.module.flags = !{!156, !157, !158, !159, !160, !161, !162, !163}
!llvm.ident = !{!164}

!0 = !{ptr @clockdomains_omap54xx, !1, !"clockdomains_omap54xx", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-omap2/clockdomains54xx_data.c", i32 427, i32 28}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-omap2/clockdomains54xx_data.c", i32 165, i32 13}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-omap2/clockdomains54xx_data.c", i32 166, i32 24}
!6 = !{ptr @l4sec_54xx_clkdm, !7, !"l4sec_54xx_clkdm", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-omap2/clockdomains54xx_data.c", i32 164, i32 27}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-omap2/clockdomains54xx_data.c", i32 128, i32 18}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../arch/arm/mach-omap2/clockdomains54xx_data.c", i32 129, i32 18}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../arch/arm/mach-omap2/clockdomains54xx_data.c", i32 130, i32 18}
!14 = !{ptr @l4sec_wkup_sleep_deps, !15, !"l4sec_wkup_sleep_deps", i1 false, i1 false}
!15 = !{!"../arch/arm/mach-omap2/clockdomains54xx_data.c", i32 127, i32 25}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../arch/arm/mach-omap2/clockdomains54xx_data.c", i32 177, i32 13}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../arch/arm/mach-omap2/clockdomains54xx_data.c", i32 178, i32 24}
!20 = !{ptr @iva_54xx_clkdm, !21, !"iva_54xx_clkdm", i1 false, i1 false}
!21 = !{!"../arch/arm/mach-omap2/clockdomains54xx_data.c", i32 176, i32 27}
!22 = !{ptr @iva_wkup_sleep_deps, !23, !"iva_wkup_sleep_deps", i1 false, i1 false}
!23 = !{!"../arch/arm/mach-omap2/clockdomains54xx_data.c", i32 110, i32 25}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../arch/arm/mach-omap2/clockdomains54xx_data.c", i32 189, i32 13}
!26 = !{ptr @mipiext_54xx_clkdm, !27, !"mipiext_54xx_clkdm", i1 false, i1 false}
!27 = !{!"../arch/arm/mach-omap2/clockdomains54xx_data.c", i32 188, i32 27}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../arch/arm/mach-omap2/clockdomains54xx_data.c", i32 135, i32 18}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../arch/arm/mach-omap2/clockdomains54xx_data.c", i32 138, i32 18}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../arch/arm/mach-omap2/clockdomains54xx_data.c", i32 140, i32 18}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../arch/arm/mach-omap2/clockdomains54xx_data.c", i32 141, i32 18}
!36 = !{ptr @mipiext_wkup_sleep_deps, !37, !"mipiext_wkup_sleep_deps", i1 false, i1 false}
!37 = !{!"../arch/arm/mach-omap2/clockdomains54xx_data.c", i32 134, i32 25}
!38 = !{ptr @l3main2_54xx_clkdm, !39, !"l3main2_54xx_clkdm", i1 false, i1 false}
!39 = !{!"../arch/arm/mach-omap2/clockdomains54xx_data.c", i32 199, i32 27}
!40 = !{ptr @l3main1_54xx_clkdm, !41, !"l3main1_54xx_clkdm", i1 false, i1 false}
!41 = !{!"../arch/arm/mach-omap2/clockdomains54xx_data.c", i32 209, i32 27}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../arch/arm/mach-omap2/clockdomains54xx_data.c", i32 220, i32 13}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../arch/arm/mach-omap2/clockdomains54xx_data.c", i32 221, i32 24}
!46 = !{ptr @custefuse_54xx_clkdm, !47, !"custefuse_54xx_clkdm", i1 false, i1 false}
!47 = !{!"../arch/arm/mach-omap2/clockdomains54xx_data.c", i32 219, i32 27}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../arch/arm/mach-omap2/clockdomains54xx_data.c", i32 229, i32 13}
!50 = !{ptr @ipu_54xx_clkdm, !51, !"ipu_54xx_clkdm", i1 false, i1 false}
!51 = !{!"../arch/arm/mach-omap2/clockdomains54xx_data.c", i32 228, i32 27}
!52 = !{ptr @.str.15, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../arch/arm/mach-omap2/clockdomains54xx_data.c", i32 95, i32 18}
!54 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../arch/arm/mach-omap2/clockdomains54xx_data.c", i32 96, i32 18}
!56 = !{ptr @.str.17, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../arch/arm/mach-omap2/clockdomains54xx_data.c", i32 98, i32 18}
!58 = !{ptr @.str.18, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../arch/arm/mach-omap2/clockdomains54xx_data.c", i32 106, i32 18}
!60 = !{ptr @ipu_wkup_sleep_deps, !61, !"ipu_wkup_sleep_deps", i1 false, i1 false}
!61 = !{!"../arch/arm/mach-omap2/clockdomains54xx_data.c", i32 93, i32 25}
!62 = !{ptr @l4cfg_54xx_clkdm, !63, !"l4cfg_54xx_clkdm", i1 false, i1 false}
!63 = !{!"../arch/arm/mach-omap2/clockdomains54xx_data.c", i32 240, i32 27}
!64 = !{ptr @.str.19, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../arch/arm/mach-omap2/clockdomains54xx_data.c", i32 252, i32 24}
!66 = !{ptr @abe_54xx_clkdm, !67, !"abe_54xx_clkdm", i1 false, i1 false}
!67 = !{!"../arch/arm/mach-omap2/clockdomains54xx_data.c", i32 250, i32 27}
!68 = !{ptr @.str.20, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../arch/arm/mach-omap2/clockdomains54xx_data.c", i32 262, i32 24}
!70 = !{ptr @dss_54xx_clkdm, !71, !"dss_54xx_clkdm", i1 false, i1 false}
!71 = !{!"../arch/arm/mach-omap2/clockdomains54xx_data.c", i32 260, i32 27}
!72 = !{ptr @dss_wkup_sleep_deps, !73, !"dss_wkup_sleep_deps", i1 false, i1 false}
!73 = !{!"../arch/arm/mach-omap2/clockdomains54xx_data.c", i32 79, i32 25}
!74 = !{ptr @.str.21, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../arch/arm/mach-omap2/clockdomains54xx_data.c", i32 274, i32 24}
!76 = !{ptr @dsp_54xx_clkdm, !77, !"dsp_54xx_clkdm", i1 false, i1 false}
!77 = !{!"../arch/arm/mach-omap2/clockdomains54xx_data.c", i32 272, i32 27}
!78 = !{ptr @dsp_wkup_sleep_deps, !79, !"dsp_wkup_sleep_deps", i1 false, i1 false}
!79 = !{!"../arch/arm/mach-omap2/clockdomains54xx_data.c", i32 66, i32 25}
!80 = !{ptr @.str.22, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../arch/arm/mach-omap2/clockdomains54xx_data.c", i32 285, i32 13}
!82 = !{ptr @c2c_54xx_clkdm, !83, !"c2c_54xx_clkdm", i1 false, i1 false}
!83 = !{!"../arch/arm/mach-omap2/clockdomains54xx_data.c", i32 284, i32 27}
!84 = !{ptr @c2c_wkup_sleep_deps, !85, !"c2c_wkup_sleep_deps", i1 false, i1 false}
!85 = !{!"../arch/arm/mach-omap2/clockdomains54xx_data.c", i32 32, i32 25}
!86 = !{ptr @l4per_54xx_clkdm, !87, !"l4per_54xx_clkdm", i1 false, i1 false}
!87 = !{!"../arch/arm/mach-omap2/clockdomains54xx_data.c", i32 295, i32 27}
!88 = !{ptr @.str.23, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../arch/arm/mach-omap2/clockdomains54xx_data.c", i32 307, i32 24}
!90 = !{ptr @gpu_54xx_clkdm, !91, !"gpu_54xx_clkdm", i1 false, i1 false}
!91 = !{!"../arch/arm/mach-omap2/clockdomains54xx_data.c", i32 305, i32 27}
!92 = !{ptr @gpu_wkup_sleep_deps, !93, !"gpu_wkup_sleep_deps", i1 false, i1 false}
!93 = !{!"../arch/arm/mach-omap2/clockdomains54xx_data.c", i32 86, i32 25}
!94 = !{ptr @.str.24, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../arch/arm/mach-omap2/clockdomains54xx_data.c", i32 319, i32 24}
!96 = !{ptr @wkupaon_54xx_clkdm, !97, !"wkupaon_54xx_clkdm", i1 false, i1 false}
!97 = !{!"../arch/arm/mach-omap2/clockdomains54xx_data.c", i32 317, i32 27}
!98 = !{ptr @.str.25, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../arch/arm/mach-omap2/clockdomains54xx_data.c", i32 328, i32 13}
!100 = !{ptr @.str.26, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../arch/arm/mach-omap2/clockdomains54xx_data.c", i32 329, i32 24}
!102 = !{ptr @mpu0_54xx_clkdm, !103, !"mpu0_54xx_clkdm", i1 false, i1 false}
!103 = !{!"../arch/arm/mach-omap2/clockdomains54xx_data.c", i32 327, i32 27}
!104 = !{ptr @.str.27, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../arch/arm/mach-omap2/clockdomains54xx_data.c", i32 337, i32 13}
!106 = !{ptr @.str.28, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../arch/arm/mach-omap2/clockdomains54xx_data.c", i32 338, i32 24}
!108 = !{ptr @mpu1_54xx_clkdm, !109, !"mpu1_54xx_clkdm", i1 false, i1 false}
!109 = !{!"../arch/arm/mach-omap2/clockdomains54xx_data.c", i32 336, i32 27}
!110 = !{ptr @.str.29, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../arch/arm/mach-omap2/clockdomains54xx_data.c", i32 346, i32 13}
!112 = !{ptr @.str.30, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../arch/arm/mach-omap2/clockdomains54xx_data.c", i32 347, i32 24}
!114 = !{ptr @coreaon_54xx_clkdm, !115, !"coreaon_54xx_clkdm", i1 false, i1 false}
!115 = !{!"../arch/arm/mach-omap2/clockdomains54xx_data.c", i32 345, i32 27}
!116 = !{ptr @.str.31, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../arch/arm/mach-omap2/clockdomains54xx_data.c", i32 355, i32 13}
!118 = !{ptr @.str.32, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../arch/arm/mach-omap2/clockdomains54xx_data.c", i32 356, i32 24}
!120 = !{ptr @mpu_54xx_clkdm, !121, !"mpu_54xx_clkdm", i1 false, i1 false}
!121 = !{!"../arch/arm/mach-omap2/clockdomains54xx_data.c", i32 354, i32 27}
!122 = !{ptr @mpu_wkup_sleep_deps, !123, !"mpu_wkup_sleep_deps", i1 false, i1 false}
!123 = !{!"../arch/arm/mach-omap2/clockdomains54xx_data.c", i32 146, i32 25}
!124 = !{ptr @.str.33, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../arch/arm/mach-omap2/clockdomains54xx_data.c", i32 367, i32 24}
!126 = !{ptr @l3init_54xx_clkdm, !127, !"l3init_54xx_clkdm", i1 false, i1 false}
!127 = !{!"../arch/arm/mach-omap2/clockdomains54xx_data.c", i32 365, i32 27}
!128 = !{ptr @l3init_wkup_sleep_deps, !129, !"l3init_wkup_sleep_deps", i1 false, i1 false}
!129 = !{!"../arch/arm/mach-omap2/clockdomains54xx_data.c", i32 116, i32 25}
!130 = !{ptr @.str.34, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../arch/arm/mach-omap2/clockdomains54xx_data.c", i32 378, i32 13}
!132 = !{ptr @dma_54xx_clkdm, !133, !"dma_54xx_clkdm", i1 false, i1 false}
!133 = !{!"../arch/arm/mach-omap2/clockdomains54xx_data.c", i32 377, i32 27}
!134 = !{ptr @dma_wkup_sleep_deps, !135, !"dma_wkup_sleep_deps", i1 false, i1 false}
!135 = !{!"../arch/arm/mach-omap2/clockdomains54xx_data.c", i32 51, i32 25}
!136 = !{ptr @.str.35, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../arch/arm/mach-omap2/clockdomains54xx_data.c", i32 389, i32 13}
!138 = !{ptr @l3instr_54xx_clkdm, !139, !"l3instr_54xx_clkdm", i1 false, i1 false}
!139 = !{!"../arch/arm/mach-omap2/clockdomains54xx_data.c", i32 388, i32 27}
!140 = !{ptr @emif_54xx_clkdm, !141, !"emif_54xx_clkdm", i1 false, i1 false}
!141 = !{!"../arch/arm/mach-omap2/clockdomains54xx_data.c", i32 396, i32 27}
!142 = !{ptr @.str.36, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../arch/arm/mach-omap2/clockdomains54xx_data.c", i32 407, i32 13}
!144 = !{ptr @.str.37, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../arch/arm/mach-omap2/clockdomains54xx_data.c", i32 408, i32 24}
!146 = !{ptr @emu_54xx_clkdm, !147, !"emu_54xx_clkdm", i1 false, i1 false}
!147 = !{!"../arch/arm/mach-omap2/clockdomains54xx_data.c", i32 406, i32 27}
!148 = !{ptr @.str.38, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../arch/arm/mach-omap2/clockdomains54xx_data.c", i32 416, i32 13}
!150 = !{ptr @.str.39, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../arch/arm/mach-omap2/clockdomains54xx_data.c", i32 417, i32 24}
!152 = !{ptr @cam_54xx_clkdm, !153, !"cam_54xx_clkdm", i1 false, i1 false}
!153 = !{!"../arch/arm/mach-omap2/clockdomains54xx_data.c", i32 415, i32 27}
!154 = !{ptr @cam_wkup_sleep_deps, !155, !"cam_wkup_sleep_deps", i1 false, i1 false}
!155 = !{!"../arch/arm/mach-omap2/clockdomains54xx_data.c", i32 44, i32 25}
!156 = !{i32 1, !"wchar_size", i32 2}
!157 = !{i32 1, !"min_enum_size", i32 4}
!158 = !{i32 8, !"branch-target-enforcement", i32 0}
!159 = !{i32 8, !"sign-return-address", i32 0}
!160 = !{i32 8, !"sign-return-address-all", i32 0}
!161 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!162 = !{i32 7, !"uwtable", i32 1}
!163 = !{i32 7, !"frame-pointer", i32 2}
!164 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
