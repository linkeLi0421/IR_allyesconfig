; ModuleID = '/llk/IR_all_yes/arch/arm/mach-omap2/powerdomains7xx_data.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/powerdomains7xx_data.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pwrdm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.powerdomain = type { ptr, %union.anon, i16, i8, i8, i8, i8, [5 x i8], [5 x i8], i8, [11 x ptr], %struct.list_head, %struct.list_head, i32, [4 x i32], i32, [5 x i32], %struct.spinlock, i32, i8, i8, i32, [5 x i32], [5 x i32], [5 x i32], [5 x i32], i64, [4 x i64], i32 }
%union.anon = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }

@omap4_pwrdm_operations = external dso_local global %struct.pwrdm_ops, align 4
@powerdomains_dra7xx = internal global [23 x ptr] [ptr @iva_7xx_pwrdm, ptr @rtc_7xx_pwrdm, ptr @ipu_7xx_pwrdm, ptr @dss_7xx_pwrdm, ptr @l4per_7xx_pwrdm, ptr @gpu_7xx_pwrdm, ptr @wkupaon_7xx_pwrdm, ptr @core_7xx_pwrdm, ptr @coreaon_7xx_pwrdm, ptr @cpu0_7xx_pwrdm, ptr @cpu1_7xx_pwrdm, ptr @vpe_7xx_pwrdm, ptr @mpu_7xx_pwrdm, ptr @l3init_7xx_pwrdm, ptr @eve3_7xx_pwrdm, ptr @emu_7xx_pwrdm, ptr @dsp2_7xx_pwrdm, ptr @dsp1_7xx_pwrdm, ptr @cam_7xx_pwrdm, ptr @eve4_7xx_pwrdm, ptr @eve2_7xx_pwrdm, ptr @eve1_7xx_pwrdm, ptr null], section ".init.data", align 4
@powerdomains_dra76x = internal global [2 x ptr] [ptr @custefuse_aon_7xx_pwrdm, ptr null], section ".init.data", align 4
@powerdomains_dra74x = internal global [2 x ptr] [ptr @custefuse_7xx_pwrdm, ptr null], section ".init.data", align 4
@powerdomains_dra72x = internal global [2 x ptr] [ptr @custefuse_aon_7xx_pwrdm, ptr null], section ".init.data", align 4
@iva_7xx_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str, %union.anon zeroinitializer, i16 3840, i8 9, i8 0, i8 4, i8 4, [5 x i8] zeroinitializer, [5 x i8] c"\08\08\08\08\00", i8 1, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@rtc_7xx_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.1, %union.anon zeroinitializer, i16 7264, i8 8, i8 0, i8 0, i8 0, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, i8 1, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@ipu_7xx_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.2, %union.anon zeroinitializer, i16 1280, i8 9, i8 0, i8 4, i8 2, [5 x i8] zeroinitializer, [5 x i8] c"\08\08\00\00\00", i8 1, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@dss_7xx_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.3, %union.anon zeroinitializer, i16 4352, i8 9, i8 0, i8 4, i8 1, [5 x i8] zeroinitializer, [5 x i8] c"\08\00\00\00\00", i8 1, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@l4per_7xx_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.4, %union.anon zeroinitializer, i16 5120, i8 8, i8 0, i8 4, i8 2, [5 x i8] zeroinitializer, [5 x i8] c"\08\08\00\00\00", i8 1, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@gpu_7xx_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.5, %union.anon zeroinitializer, i16 4608, i8 9, i8 0, i8 4, i8 1, [5 x i8] zeroinitializer, [5 x i8] c"\08\00\00\00\00", i8 1, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@wkupaon_7xx_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.6, %union.anon zeroinitializer, i16 5924, i8 8, i8 0, i8 0, i8 1, [5 x i8] zeroinitializer, [5 x i8] c"\08\00\00\00\00", i8 1, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@core_7xx_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.7, %union.anon zeroinitializer, i16 1792, i8 8, i8 0, i8 4, i8 5, [5 x i8] zeroinitializer, [5 x i8] c"\08\08\08\08\08", i8 1, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@coreaon_7xx_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.8, %union.anon zeroinitializer, i16 1576, i8 8, i8 0, i8 0, i8 0, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, i8 1, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@cpu0_7xx_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.9, %union.anon zeroinitializer, i16 1024, i8 10, i8 2, i8 0, i8 1, [5 x i8] c"\03\00\00\00\00", [5 x i8] c"\08\00\00\00\00", i8 5, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@cpu1_7xx_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.10, %union.anon zeroinitializer, i16 2048, i8 10, i8 2, i8 0, i8 1, [5 x i8] c"\03\00\00\00\00", [5 x i8] c"\08\00\00\00\00", i8 5, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@vpe_7xx_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.11, %union.anon zeroinitializer, i16 7296, i8 9, i8 0, i8 4, i8 1, [5 x i8] zeroinitializer, [5 x i8] c"\08\00\00\00\00", i8 1, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@mpu_7xx_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.12, %union.anon zeroinitializer, i16 768, i8 10, i8 2, i8 0, i8 2, [5 x i8] c"\03\02\00\00\00", [5 x i8] c"\08\08\00\00\00", i8 1, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@l3init_7xx_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.13, %union.anon zeroinitializer, i16 4864, i8 8, i8 0, i8 4, i8 3, [5 x i8] zeroinitializer, [5 x i8] c"\08\08\08\00\00", i8 1, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@eve3_7xx_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.14, %union.anon zeroinitializer, i16 7104, i8 9, i8 0, i8 4, i8 1, [5 x i8] zeroinitializer, [5 x i8] c"\08\00\00\00\00", i8 1, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@emu_7xx_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.15, %union.anon zeroinitializer, i16 6400, i8 9, i8 0, i8 0, i8 1, [5 x i8] zeroinitializer, [5 x i8] c"\08\00\00\00\00", i8 1, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@dsp2_7xx_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.16, %union.anon zeroinitializer, i16 6912, i8 9, i8 0, i8 4, i8 3, [5 x i8] zeroinitializer, [5 x i8] c"\08\08\08\00\00", i8 1, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@dsp1_7xx_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.17, %union.anon zeroinitializer, i16 1024, i8 9, i8 0, i8 4, i8 3, [5 x i8] zeroinitializer, [5 x i8] c"\08\08\08\00\00", i8 1, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@cam_7xx_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.18, %union.anon zeroinitializer, i16 4096, i8 9, i8 0, i8 4, i8 1, [5 x i8] zeroinitializer, [5 x i8] c"\08\00\00\00\00", i8 1, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@eve4_7xx_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.19, %union.anon zeroinitializer, i16 7168, i8 9, i8 0, i8 4, i8 1, [5 x i8] zeroinitializer, [5 x i8] c"\08\00\00\00\00", i8 1, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@eve2_7xx_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.20, %union.anon zeroinitializer, i16 7040, i8 9, i8 0, i8 4, i8 1, [5 x i8] zeroinitializer, [5 x i8] c"\08\00\00\00\00", i8 1, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@eve1_7xx_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.21, %union.anon zeroinitializer, i16 6976, i8 9, i8 0, i8 4, i8 1, [5 x i8] zeroinitializer, [5 x i8] c"\08\00\00\00\00", i8 1, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"iva_pwrdm\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rtc_pwrdm\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ipu_pwrdm\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dss_pwrdm\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"l4per_pwrdm\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpu_pwrdm\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wkupaon_pwrdm\00", [18 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"core_pwrdm\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"coreaon_pwrdm\00", [18 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cpu0_pwrdm\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cpu1_pwrdm\00", [21 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vpe_pwrdm\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mpu_pwrdm\00", [22 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"l3init_pwrdm\00", [19 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"eve3_pwrdm\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"emu_pwrdm\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dsp2_pwrdm\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"dsp1_pwrdm\00", [21 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cam_pwrdm\00", [22 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"eve4_pwrdm\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"eve2_pwrdm\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"eve1_pwrdm\00", [21 x i8] zeroinitializer }, align 32
@custefuse_aon_7xx_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.22, %union.anon zeroinitializer, i16 5632, i8 8, i8 0, i8 0, i8 0, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, i8 1, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"custefuse_pwrdm\00", [16 x i8] zeroinitializer }, align 32
@custefuse_7xx_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.22, %union.anon zeroinitializer, i16 5632, i8 9, i8 0, i8 4, i8 0, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, i8 1, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@___asan_gen_.23 = private unnamed_addr constant [14 x i8] c"iva_7xx_pwrdm\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 32, i32 27 }
@___asan_gen_.26 = private unnamed_addr constant [14 x i8] c"rtc_7xx_pwrdm\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 48, i32 27 }
@___asan_gen_.29 = private unnamed_addr constant [14 x i8] c"ipu_7xx_pwrdm\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 73, i32 27 }
@___asan_gen_.32 = private unnamed_addr constant [14 x i8] c"dss_7xx_pwrdm\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 87, i32 27 }
@___asan_gen_.35 = private unnamed_addr constant [16 x i8] c"l4per_7xx_pwrdm\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 100, i32 27 }
@___asan_gen_.38 = private unnamed_addr constant [14 x i8] c"gpu_7xx_pwrdm\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 114, i32 27 }
@___asan_gen_.41 = private unnamed_addr constant [18 x i8] c"wkupaon_7xx_pwrdm\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 127, i32 27 }
@___asan_gen_.44 = private unnamed_addr constant [15 x i8] c"core_7xx_pwrdm\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 139, i32 27 }
@___asan_gen_.47 = private unnamed_addr constant [18 x i8] c"coreaon_7xx_pwrdm\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 156, i32 27 }
@___asan_gen_.50 = private unnamed_addr constant [15 x i8] c"cpu0_7xx_pwrdm\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 164, i32 27 }
@___asan_gen_.53 = private unnamed_addr constant [15 x i8] c"cpu1_7xx_pwrdm\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 180, i32 27 }
@___asan_gen_.56 = private unnamed_addr constant [14 x i8] c"vpe_7xx_pwrdm\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 196, i32 27 }
@___asan_gen_.59 = private unnamed_addr constant [14 x i8] c"mpu_7xx_pwrdm\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 209, i32 27 }
@___asan_gen_.62 = private unnamed_addr constant [17 x i8] c"l3init_7xx_pwrdm\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 227, i32 27 }
@___asan_gen_.65 = private unnamed_addr constant [15 x i8] c"eve3_7xx_pwrdm\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 242, i32 27 }
@___asan_gen_.68 = private unnamed_addr constant [14 x i8] c"emu_7xx_pwrdm\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 255, i32 27 }
@___asan_gen_.71 = private unnamed_addr constant [15 x i8] c"dsp2_7xx_pwrdm\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 267, i32 27 }
@___asan_gen_.74 = private unnamed_addr constant [15 x i8] c"dsp1_7xx_pwrdm\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 282, i32 27 }
@___asan_gen_.77 = private unnamed_addr constant [14 x i8] c"cam_7xx_pwrdm\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 297, i32 27 }
@___asan_gen_.80 = private unnamed_addr constant [15 x i8] c"eve4_7xx_pwrdm\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 310, i32 27 }
@___asan_gen_.83 = private unnamed_addr constant [15 x i8] c"eve2_7xx_pwrdm\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 323, i32 27 }
@___asan_gen_.86 = private unnamed_addr constant [15 x i8] c"eve1_7xx_pwrdm\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 336, i32 27 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 33, i32 13 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 49, i32 13 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 74, i32 13 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 88, i32 13 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 101, i32 13 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 115, i32 13 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 128, i32 13 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 140, i32 13 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 157, i32 13 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 165, i32 13 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 181, i32 13 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 197, i32 13 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 210, i32 13 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 228, i32 13 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 243, i32 13 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 256, i32 13 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 268, i32 13 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 283, i32 13 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 298, i32 13 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 311, i32 13 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 324, i32 13 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 337, i32 13 }
@___asan_gen_.155 = private unnamed_addr constant [24 x i8] c"custefuse_aon_7xx_pwrdm\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 65, i32 27 }
@___asan_gen_.158 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 66, i32 13 }
@___asan_gen_.161 = private unnamed_addr constant [20 x i8] c"custefuse_7xx_pwrdm\00", align 1
@___asan_gen_.162 = private constant [46 x i8] c"../arch/arm/mach-omap2/powerdomains7xx_data.c\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.162, i32 56, i32 27 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @iva_7xx_pwrdm, ptr @rtc_7xx_pwrdm, ptr @ipu_7xx_pwrdm, ptr @dss_7xx_pwrdm, ptr @l4per_7xx_pwrdm, ptr @gpu_7xx_pwrdm, ptr @wkupaon_7xx_pwrdm, ptr @core_7xx_pwrdm, ptr @coreaon_7xx_pwrdm, ptr @cpu0_7xx_pwrdm, ptr @cpu1_7xx_pwrdm, ptr @vpe_7xx_pwrdm, ptr @mpu_7xx_pwrdm, ptr @l3init_7xx_pwrdm, ptr @eve3_7xx_pwrdm, ptr @emu_7xx_pwrdm, ptr @dsp2_7xx_pwrdm, ptr @dsp1_7xx_pwrdm, ptr @cam_7xx_pwrdm, ptr @eve4_7xx_pwrdm, ptr @eve2_7xx_pwrdm, ptr @eve1_7xx_pwrdm, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @custefuse_aon_7xx_pwrdm, ptr @.str.22, ptr @custefuse_7xx_pwrdm], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iva_7xx_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_7xx_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipu_7xx_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dss_7xx_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l4per_7xx_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu_7xx_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wkupaon_7xx_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_7xx_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coreaon_7xx_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpu0_7xx_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpu1_7xx_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vpe_7xx_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu_7xx_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l3init_7xx_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eve3_7xx_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emu_7xx_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp2_7xx_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp1_7xx_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_7xx_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eve4_7xx_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eve2_7xx_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eve1_7xx_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @custefuse_aon_7xx_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @custefuse_7xx_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @dra7xx_powerdomains_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pwrdm_register_platform_funcs(ptr noundef nonnull @omap4_pwrdm_operations) #2
  %call1 = tail call i32 @pwrdm_register_pwrdms(ptr noundef nonnull @powerdomains_dra7xx) #2
  %call.i = tail call i32 @omap_rev() #2
  %shr.mask.i = and i32 %call.i, -1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 123731968, i32 %shr.mask.i)
  %cmp.i.not = icmp eq i32 %shr.mask.i, 123731968
  br i1 %cmp.i.not, label %entry.if.end14.sink.split_crit_edge, label %if.else

entry.if.end14.sink.split_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end14.sink.split

if.else:                                          ; preds = %entry
  %call.i16 = tail call i32 @omap_rev() #2
  %shr.mask.i17 = and i32 %call.i16, -1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 122683392, i32 %shr.mask.i17)
  %cmp.i18.not = icmp eq i32 %shr.mask.i17, 122683392
  br i1 %cmp.i18.not, label %if.else.if.end14.sink.split_crit_edge, label %if.else8

if.else.if.end14.sink.split_crit_edge:            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end14.sink.split

if.else8:                                         ; preds = %if.else
  %call.i20 = tail call i32 @omap_rev() #2
  %shr.mask.i21 = and i32 %call.i20, -1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 119537664, i32 %shr.mask.i21)
  %cmp.i22.not = icmp eq i32 %shr.mask.i21, 119537664
  br i1 %cmp.i22.not, label %if.else8.if.end14.sink.split_crit_edge, label %if.else8.if.end14_crit_edge

if.else8.if.end14_crit_edge:                      ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end14

if.else8.if.end14.sink.split_crit_edge:           ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end14.sink.split

if.end14.sink.split:                              ; preds = %if.else8.if.end14.sink.split_crit_edge, %if.else.if.end14.sink.split_crit_edge, %entry.if.end14.sink.split_crit_edge
  %powerdomains_dra74x.sink = phi ptr [ @powerdomains_dra76x, %entry.if.end14.sink.split_crit_edge ], [ @powerdomains_dra74x, %if.else.if.end14.sink.split_crit_edge ], [ @powerdomains_dra72x, %if.else8.if.end14.sink.split_crit_edge ]
  %call7 = tail call i32 @pwrdm_register_pwrdms(ptr noundef nonnull %powerdomains_dra74x.sink) #2
  br label %if.end14

if.end14:                                         ; preds = %if.end14.sink.split, %if.else8.if.end14_crit_edge
  %call15 = tail call i32 @pwrdm_complete_init() #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_register_platform_funcs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_register_pwrdms(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_complete_init() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_rev() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100}
!llvm.module.flags = !{!102, !103, !104, !105, !106, !107, !108, !109}
!llvm.ident = !{!110}

!0 = !{ptr @powerdomains_dra7xx, !1, !"powerdomains_dra7xx", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-omap2/powerdomains7xx_data.c", i32 356, i32 28}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-omap2/powerdomains7xx_data.c", i32 33, i32 13}
!4 = !{ptr @iva_7xx_pwrdm, !5, !"iva_7xx_pwrdm", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-omap2/powerdomains7xx_data.c", i32 32, i32 27}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-omap2/powerdomains7xx_data.c", i32 49, i32 13}
!8 = !{ptr @rtc_7xx_pwrdm, !9, !"rtc_7xx_pwrdm", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-omap2/powerdomains7xx_data.c", i32 48, i32 27}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../arch/arm/mach-omap2/powerdomains7xx_data.c", i32 74, i32 13}
!12 = !{ptr @ipu_7xx_pwrdm, !13, !"ipu_7xx_pwrdm", i1 false, i1 false}
!13 = !{!"../arch/arm/mach-omap2/powerdomains7xx_data.c", i32 73, i32 27}
!14 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../arch/arm/mach-omap2/powerdomains7xx_data.c", i32 88, i32 13}
!16 = !{ptr @dss_7xx_pwrdm, !17, !"dss_7xx_pwrdm", i1 false, i1 false}
!17 = !{!"../arch/arm/mach-omap2/powerdomains7xx_data.c", i32 87, i32 27}
!18 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../arch/arm/mach-omap2/powerdomains7xx_data.c", i32 101, i32 13}
!20 = !{ptr @l4per_7xx_pwrdm, !21, !"l4per_7xx_pwrdm", i1 false, i1 false}
!21 = !{!"../arch/arm/mach-omap2/powerdomains7xx_data.c", i32 100, i32 27}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../arch/arm/mach-omap2/powerdomains7xx_data.c", i32 115, i32 13}
!24 = !{ptr @gpu_7xx_pwrdm, !25, !"gpu_7xx_pwrdm", i1 false, i1 false}
!25 = !{!"../arch/arm/mach-omap2/powerdomains7xx_data.c", i32 114, i32 27}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../arch/arm/mach-omap2/powerdomains7xx_data.c", i32 128, i32 13}
!28 = !{ptr @wkupaon_7xx_pwrdm, !29, !"wkupaon_7xx_pwrdm", i1 false, i1 false}
!29 = !{!"../arch/arm/mach-omap2/powerdomains7xx_data.c", i32 127, i32 27}
!30 = !{ptr @.str.7, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../arch/arm/mach-omap2/powerdomains7xx_data.c", i32 140, i32 13}
!32 = !{ptr @core_7xx_pwrdm, !33, !"core_7xx_pwrdm", i1 false, i1 false}
!33 = !{!"../arch/arm/mach-omap2/powerdomains7xx_data.c", i32 139, i32 27}
!34 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../arch/arm/mach-omap2/powerdomains7xx_data.c", i32 157, i32 13}
!36 = !{ptr @coreaon_7xx_pwrdm, !37, !"coreaon_7xx_pwrdm", i1 false, i1 false}
!37 = !{!"../arch/arm/mach-omap2/powerdomains7xx_data.c", i32 156, i32 27}
!38 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../arch/arm/mach-omap2/powerdomains7xx_data.c", i32 165, i32 13}
!40 = !{ptr @cpu0_7xx_pwrdm, !41, !"cpu0_7xx_pwrdm", i1 false, i1 false}
!41 = !{!"../arch/arm/mach-omap2/powerdomains7xx_data.c", i32 164, i32 27}
!42 = !{ptr @.str.10, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../arch/arm/mach-omap2/powerdomains7xx_data.c", i32 181, i32 13}
!44 = !{ptr @cpu1_7xx_pwrdm, !45, !"cpu1_7xx_pwrdm", i1 false, i1 false}
!45 = !{!"../arch/arm/mach-omap2/powerdomains7xx_data.c", i32 180, i32 27}
!46 = !{ptr @.str.11, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../arch/arm/mach-omap2/powerdomains7xx_data.c", i32 197, i32 13}
!48 = !{ptr @vpe_7xx_pwrdm, !49, !"vpe_7xx_pwrdm", i1 false, i1 false}
!49 = !{!"../arch/arm/mach-omap2/powerdomains7xx_data.c", i32 196, i32 27}
!50 = !{ptr @.str.12, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../arch/arm/mach-omap2/powerdomains7xx_data.c", i32 210, i32 13}
!52 = !{ptr @mpu_7xx_pwrdm, !53, !"mpu_7xx_pwrdm", i1 false, i1 false}
!53 = !{!"../arch/arm/mach-omap2/powerdomains7xx_data.c", i32 209, i32 27}
!54 = !{ptr @.str.13, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../arch/arm/mach-omap2/powerdomains7xx_data.c", i32 228, i32 13}
!56 = !{ptr @l3init_7xx_pwrdm, !57, !"l3init_7xx_pwrdm", i1 false, i1 false}
!57 = !{!"../arch/arm/mach-omap2/powerdomains7xx_data.c", i32 227, i32 27}
!58 = !{ptr @.str.14, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../arch/arm/mach-omap2/powerdomains7xx_data.c", i32 243, i32 13}
!60 = !{ptr @eve3_7xx_pwrdm, !61, !"eve3_7xx_pwrdm", i1 false, i1 false}
!61 = !{!"../arch/arm/mach-omap2/powerdomains7xx_data.c", i32 242, i32 27}
!62 = !{ptr @.str.15, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../arch/arm/mach-omap2/powerdomains7xx_data.c", i32 256, i32 13}
!64 = !{ptr @emu_7xx_pwrdm, !65, !"emu_7xx_pwrdm", i1 false, i1 false}
!65 = !{!"../arch/arm/mach-omap2/powerdomains7xx_data.c", i32 255, i32 27}
!66 = !{ptr @.str.16, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../arch/arm/mach-omap2/powerdomains7xx_data.c", i32 268, i32 13}
!68 = !{ptr @dsp2_7xx_pwrdm, !69, !"dsp2_7xx_pwrdm", i1 false, i1 false}
!69 = !{!"../arch/arm/mach-omap2/powerdomains7xx_data.c", i32 267, i32 27}
!70 = !{ptr @.str.17, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../arch/arm/mach-omap2/powerdomains7xx_data.c", i32 283, i32 13}
!72 = !{ptr @dsp1_7xx_pwrdm, !73, !"dsp1_7xx_pwrdm", i1 false, i1 false}
!73 = !{!"../arch/arm/mach-omap2/powerdomains7xx_data.c", i32 282, i32 27}
!74 = !{ptr @.str.18, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../arch/arm/mach-omap2/powerdomains7xx_data.c", i32 298, i32 13}
!76 = !{ptr @cam_7xx_pwrdm, !77, !"cam_7xx_pwrdm", i1 false, i1 false}
!77 = !{!"../arch/arm/mach-omap2/powerdomains7xx_data.c", i32 297, i32 27}
!78 = !{ptr @.str.19, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../arch/arm/mach-omap2/powerdomains7xx_data.c", i32 311, i32 13}
!80 = !{ptr @eve4_7xx_pwrdm, !81, !"eve4_7xx_pwrdm", i1 false, i1 false}
!81 = !{!"../arch/arm/mach-omap2/powerdomains7xx_data.c", i32 310, i32 27}
!82 = !{ptr @.str.20, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../arch/arm/mach-omap2/powerdomains7xx_data.c", i32 324, i32 13}
!84 = !{ptr @eve2_7xx_pwrdm, !85, !"eve2_7xx_pwrdm", i1 false, i1 false}
!85 = !{!"../arch/arm/mach-omap2/powerdomains7xx_data.c", i32 323, i32 27}
!86 = !{ptr @.str.21, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../arch/arm/mach-omap2/powerdomains7xx_data.c", i32 337, i32 13}
!88 = !{ptr @eve1_7xx_pwrdm, !89, !"eve1_7xx_pwrdm", i1 false, i1 false}
!89 = !{!"../arch/arm/mach-omap2/powerdomains7xx_data.c", i32 336, i32 27}
!90 = !{ptr @powerdomains_dra76x, !91, !"powerdomains_dra76x", i1 false, i1 false}
!91 = !{!"../arch/arm/mach-omap2/powerdomains7xx_data.c", i32 382, i32 28}
!92 = !{ptr @.str.22, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../arch/arm/mach-omap2/powerdomains7xx_data.c", i32 66, i32 13}
!94 = !{ptr @custefuse_aon_7xx_pwrdm, !95, !"custefuse_aon_7xx_pwrdm", i1 false, i1 false}
!95 = !{!"../arch/arm/mach-omap2/powerdomains7xx_data.c", i32 65, i32 27}
!96 = !{ptr @powerdomains_dra74x, !97, !"powerdomains_dra74x", i1 false, i1 false}
!97 = !{!"../arch/arm/mach-omap2/powerdomains7xx_data.c", i32 387, i32 28}
!98 = !{ptr @custefuse_7xx_pwrdm, !99, !"custefuse_7xx_pwrdm", i1 false, i1 false}
!99 = !{!"../arch/arm/mach-omap2/powerdomains7xx_data.c", i32 56, i32 27}
!100 = !{ptr @powerdomains_dra72x, !101, !"powerdomains_dra72x", i1 false, i1 false}
!101 = !{!"../arch/arm/mach-omap2/powerdomains7xx_data.c", i32 392, i32 28}
!102 = !{i32 1, !"wchar_size", i32 2}
!103 = !{i32 1, !"min_enum_size", i32 4}
!104 = !{i32 8, !"branch-target-enforcement", i32 0}
!105 = !{i32 8, !"sign-return-address", i32 0}
!106 = !{i32 8, !"sign-return-address-all", i32 0}
!107 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!108 = !{i32 7, !"uwtable", i32 1}
!109 = !{i32 7, !"frame-pointer", i32 2}
!110 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
