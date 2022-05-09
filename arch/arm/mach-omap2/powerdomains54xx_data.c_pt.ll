; ModuleID = '/llk/IR_all_yes/arch/arm/mach-omap2/powerdomains54xx_data.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/powerdomains54xx_data.c"
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
@powerdomains_omap54xx = internal global [16 x ptr] [ptr @core_54xx_pwrdm, ptr @abe_54xx_pwrdm, ptr @coreaon_54xx_pwrdm, ptr @dss_54xx_pwrdm, ptr @cpu0_54xx_pwrdm, ptr @cpu1_54xx_pwrdm, ptr @emu_54xx_pwrdm, ptr @mpu_54xx_pwrdm, ptr @custefuse_54xx_pwrdm, ptr @dsp_54xx_pwrdm, ptr @cam_54xx_pwrdm, ptr @l3init_54xx_pwrdm, ptr @gpu_54xx_pwrdm, ptr @wkupaon_54xx_pwrdm, ptr @iva_54xx_pwrdm, ptr null], section ".init.data", align 4
@core_54xx_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str, %union.anon { ptr @.str.1 }, i16 1792, i8 10, i8 2, i8 4, i8 5, [5 x i8] c"\03\03\03\03\03", [5 x i8] c"\03\03\03\03\03", i8 1, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@abe_54xx_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.2, %union.anon { ptr @.str.1 }, i16 1280, i8 11, i8 1, i8 4, i8 2, [5 x i8] c"\03\03\00\00\00", [5 x i8] c"\03\03\00\00\00", i8 1, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@coreaon_54xx_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.3, %union.anon { ptr @.str.1 }, i16 1536, i8 8, i8 0, i8 0, i8 0, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, i8 1, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@dss_54xx_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.4, %union.anon { ptr @.str.1 }, i16 5120, i8 11, i8 1, i8 4, i8 1, [5 x i8] c"\03\00\00\00\00", [5 x i8] c"\03\00\00\00\00", i8 1, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@cpu0_54xx_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.5, %union.anon { ptr @.str.6 }, i16 1024, i8 10, i8 2, i8 0, i8 1, [5 x i8] c"\03\00\00\00\00", [5 x i8] c"\08\00\00\00\00", i8 5, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@cpu1_54xx_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.7, %union.anon { ptr @.str.6 }, i16 2048, i8 10, i8 2, i8 0, i8 1, [5 x i8] c"\03\00\00\00\00", [5 x i8] c"\08\00\00\00\00", i8 5, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@emu_54xx_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.8, %union.anon { ptr @.str.9 }, i16 6656, i8 9, i8 0, i8 0, i8 1, [5 x i8] c"\03\00\00\00\00", [5 x i8] c"\03\00\00\00\00", i8 1, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@mpu_54xx_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.10, %union.anon { ptr @.str.6 }, i16 768, i8 10, i8 2, i8 0, i8 2, [5 x i8] c"\03\02\00\00\00", [5 x i8] c"\03\03\00\00\00", i8 1, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@custefuse_54xx_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.11, %union.anon { ptr @.str.1 }, i16 5888, i8 9, i8 0, i8 4, i8 0, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, i8 1, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@dsp_54xx_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.12, %union.anon { ptr @.str.13 }, i16 1024, i8 11, i8 3, i8 4, i8 3, [5 x i8] c"\03\03\03\00\00", [5 x i8] c"\03\03\03\00\00", i8 1, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@cam_54xx_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.14, %union.anon { ptr @.str.1 }, i16 4864, i8 9, i8 0, i8 4, i8 1, [5 x i8] c"\03\00\00\00\00", [5 x i8] c"\03\00\00\00\00", i8 1, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@l3init_54xx_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.15, %union.anon { ptr @.str.1 }, i16 5632, i8 10, i8 3, i8 4, i8 2, [5 x i8] c"\03\03\00\00\00", [5 x i8] c"\03\03\00\00\00", i8 1, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@gpu_54xx_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.16, %union.anon { ptr @.str.13 }, i16 5376, i8 9, i8 0, i8 4, i8 1, [5 x i8] c"\03\00\00\00\00", [5 x i8] c"\03\00\00\00\00", i8 1, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@wkupaon_54xx_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.17, %union.anon { ptr @.str.9 }, i16 6144, i8 8, i8 0, i8 0, i8 1, [5 x i8] zeroinitializer, [5 x i8] c"\08\00\00\00\00", i8 1, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@iva_54xx_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.18, %union.anon { ptr @.str.13 }, i16 4608, i8 11, i8 1, i8 4, i8 4, [5 x i8] c"\03\03\03\03\00", [5 x i8] c"\03\03\03\03\00", i8 1, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"core_pwrdm\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"abe_pwrdm\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"coreaon_pwrdm\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dss_pwrdm\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cpu0_pwrdm\00", [21 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mpu\00", [28 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cpu1_pwrdm\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"emu_pwrdm\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"wkup\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mpu_pwrdm\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"custefuse_pwrdm\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dsp_pwrdm\00", [22 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"mm\00", [29 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cam_pwrdm\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"l3init_pwrdm\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpu_pwrdm\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"wkupaon_pwrdm\00", [18 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"iva_pwrdm\00", [22 x i8] zeroinitializer }, align 32
@___asan_gen_.19 = private unnamed_addr constant [16 x i8] c"core_54xx_pwrdm\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 29, i32 27 }
@___asan_gen_.22 = private unnamed_addr constant [15 x i8] c"abe_54xx_pwrdm\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 55, i32 27 }
@___asan_gen_.25 = private unnamed_addr constant [19 x i8] c"coreaon_54xx_pwrdm\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 75, i32 27 }
@___asan_gen_.28 = private unnamed_addr constant [15 x i8] c"dss_54xx_pwrdm\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 84, i32 27 }
@___asan_gen_.31 = private unnamed_addr constant [16 x i8] c"cpu0_54xx_pwrdm\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 102, i32 27 }
@___asan_gen_.34 = private unnamed_addr constant [16 x i8] c"cpu1_54xx_pwrdm\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 119, i32 27 }
@___asan_gen_.37 = private unnamed_addr constant [15 x i8] c"emu_54xx_pwrdm\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 136, i32 27 }
@___asan_gen_.40 = private unnamed_addr constant [15 x i8] c"mpu_54xx_pwrdm\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 152, i32 27 }
@___asan_gen_.43 = private unnamed_addr constant [21 x i8] c"custefuse_54xx_pwrdm\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 171, i32 27 }
@___asan_gen_.46 = private unnamed_addr constant [15 x i8] c"dsp_54xx_pwrdm\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 181, i32 27 }
@___asan_gen_.49 = private unnamed_addr constant [15 x i8] c"cam_54xx_pwrdm\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 203, i32 27 }
@___asan_gen_.52 = private unnamed_addr constant [18 x i8] c"l3init_54xx_pwrdm\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 220, i32 27 }
@___asan_gen_.55 = private unnamed_addr constant [15 x i8] c"gpu_54xx_pwrdm\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 240, i32 27 }
@___asan_gen_.58 = private unnamed_addr constant [19 x i8] c"wkupaon_54xx_pwrdm\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 257, i32 27 }
@___asan_gen_.61 = private unnamed_addr constant [15 x i8] c"iva_54xx_pwrdm\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 272, i32 27 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 30, i32 13 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 31, i32 25 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 56, i32 13 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 76, i32 13 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 85, i32 13 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 103, i32 13 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 104, i32 25 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 120, i32 13 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 137, i32 13 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 138, i32 25 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 153, i32 13 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 172, i32 13 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 182, i32 13 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 183, i32 25 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 204, i32 13 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 221, i32 13 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 241, i32 13 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 258, i32 13 }
@___asan_gen_.118 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.119 = private constant [47 x i8] c"../arch/arm/mach-omap2/powerdomains54xx_data.c\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 273, i32 13 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @core_54xx_pwrdm, ptr @abe_54xx_pwrdm, ptr @coreaon_54xx_pwrdm, ptr @dss_54xx_pwrdm, ptr @cpu0_54xx_pwrdm, ptr @cpu1_54xx_pwrdm, ptr @emu_54xx_pwrdm, ptr @mpu_54xx_pwrdm, ptr @custefuse_54xx_pwrdm, ptr @dsp_54xx_pwrdm, ptr @cam_54xx_pwrdm, ptr @l3init_54xx_pwrdm, ptr @gpu_54xx_pwrdm, ptr @wkupaon_54xx_pwrdm, ptr @iva_54xx_pwrdm, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_54xx_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abe_54xx_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coreaon_54xx_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dss_54xx_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpu0_54xx_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpu1_54xx_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emu_54xx_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu_54xx_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @custefuse_54xx_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_54xx_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_54xx_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l3init_54xx_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gpu_54xx_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wkupaon_54xx_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iva_54xx_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @omap54xx_powerdomains_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pwrdm_register_platform_funcs(ptr noundef nonnull @omap4_pwrdm_operations) #2
  %call1 = tail call i32 @pwrdm_register_pwrdms(ptr noundef nonnull @powerdomains_omap54xx) #2
  %call2 = tail call i32 @pwrdm_complete_init() #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_register_platform_funcs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_register_pwrdms(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_complete_init() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @powerdomains_omap54xx, !1, !"powerdomains_omap54xx", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-omap2/powerdomains54xx_data.c", i32 303, i32 28}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-omap2/powerdomains54xx_data.c", i32 30, i32 13}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-omap2/powerdomains54xx_data.c", i32 31, i32 25}
!6 = !{ptr @core_54xx_pwrdm, !7, !"core_54xx_pwrdm", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-omap2/powerdomains54xx_data.c", i32 29, i32 27}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-omap2/powerdomains54xx_data.c", i32 56, i32 13}
!10 = !{ptr @abe_54xx_pwrdm, !11, !"abe_54xx_pwrdm", i1 false, i1 false}
!11 = !{!"../arch/arm/mach-omap2/powerdomains54xx_data.c", i32 55, i32 27}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../arch/arm/mach-omap2/powerdomains54xx_data.c", i32 76, i32 13}
!14 = !{ptr @coreaon_54xx_pwrdm, !15, !"coreaon_54xx_pwrdm", i1 false, i1 false}
!15 = !{!"../arch/arm/mach-omap2/powerdomains54xx_data.c", i32 75, i32 27}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../arch/arm/mach-omap2/powerdomains54xx_data.c", i32 85, i32 13}
!18 = !{ptr @dss_54xx_pwrdm, !19, !"dss_54xx_pwrdm", i1 false, i1 false}
!19 = !{!"../arch/arm/mach-omap2/powerdomains54xx_data.c", i32 84, i32 27}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../arch/arm/mach-omap2/powerdomains54xx_data.c", i32 103, i32 13}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../arch/arm/mach-omap2/powerdomains54xx_data.c", i32 104, i32 25}
!24 = !{ptr @cpu0_54xx_pwrdm, !25, !"cpu0_54xx_pwrdm", i1 false, i1 false}
!25 = !{!"../arch/arm/mach-omap2/powerdomains54xx_data.c", i32 102, i32 27}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../arch/arm/mach-omap2/powerdomains54xx_data.c", i32 120, i32 13}
!28 = !{ptr @cpu1_54xx_pwrdm, !29, !"cpu1_54xx_pwrdm", i1 false, i1 false}
!29 = !{!"../arch/arm/mach-omap2/powerdomains54xx_data.c", i32 119, i32 27}
!30 = !{ptr @.str.8, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../arch/arm/mach-omap2/powerdomains54xx_data.c", i32 137, i32 13}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../arch/arm/mach-omap2/powerdomains54xx_data.c", i32 138, i32 25}
!34 = !{ptr @emu_54xx_pwrdm, !35, !"emu_54xx_pwrdm", i1 false, i1 false}
!35 = !{!"../arch/arm/mach-omap2/powerdomains54xx_data.c", i32 136, i32 27}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../arch/arm/mach-omap2/powerdomains54xx_data.c", i32 153, i32 13}
!38 = !{ptr @mpu_54xx_pwrdm, !39, !"mpu_54xx_pwrdm", i1 false, i1 false}
!39 = !{!"../arch/arm/mach-omap2/powerdomains54xx_data.c", i32 152, i32 27}
!40 = !{ptr @.str.11, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../arch/arm/mach-omap2/powerdomains54xx_data.c", i32 172, i32 13}
!42 = !{ptr @custefuse_54xx_pwrdm, !43, !"custefuse_54xx_pwrdm", i1 false, i1 false}
!43 = !{!"../arch/arm/mach-omap2/powerdomains54xx_data.c", i32 171, i32 27}
!44 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../arch/arm/mach-omap2/powerdomains54xx_data.c", i32 182, i32 13}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../arch/arm/mach-omap2/powerdomains54xx_data.c", i32 183, i32 25}
!48 = !{ptr @dsp_54xx_pwrdm, !49, !"dsp_54xx_pwrdm", i1 false, i1 false}
!49 = !{!"../arch/arm/mach-omap2/powerdomains54xx_data.c", i32 181, i32 27}
!50 = !{ptr @.str.14, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../arch/arm/mach-omap2/powerdomains54xx_data.c", i32 204, i32 13}
!52 = !{ptr @cam_54xx_pwrdm, !53, !"cam_54xx_pwrdm", i1 false, i1 false}
!53 = !{!"../arch/arm/mach-omap2/powerdomains54xx_data.c", i32 203, i32 27}
!54 = !{ptr @.str.15, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../arch/arm/mach-omap2/powerdomains54xx_data.c", i32 221, i32 13}
!56 = !{ptr @l3init_54xx_pwrdm, !57, !"l3init_54xx_pwrdm", i1 false, i1 false}
!57 = !{!"../arch/arm/mach-omap2/powerdomains54xx_data.c", i32 220, i32 27}
!58 = !{ptr @.str.16, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../arch/arm/mach-omap2/powerdomains54xx_data.c", i32 241, i32 13}
!60 = !{ptr @gpu_54xx_pwrdm, !61, !"gpu_54xx_pwrdm", i1 false, i1 false}
!61 = !{!"../arch/arm/mach-omap2/powerdomains54xx_data.c", i32 240, i32 27}
!62 = !{ptr @.str.17, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../arch/arm/mach-omap2/powerdomains54xx_data.c", i32 258, i32 13}
!64 = !{ptr @wkupaon_54xx_pwrdm, !65, !"wkupaon_54xx_pwrdm", i1 false, i1 false}
!65 = !{!"../arch/arm/mach-omap2/powerdomains54xx_data.c", i32 257, i32 27}
!66 = !{ptr @.str.18, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../arch/arm/mach-omap2/powerdomains54xx_data.c", i32 273, i32 13}
!68 = !{ptr @iva_54xx_pwrdm, !69, !"iva_54xx_pwrdm", i1 false, i1 false}
!69 = !{!"../arch/arm/mach-omap2/powerdomains54xx_data.c", i32 272, i32 27}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
