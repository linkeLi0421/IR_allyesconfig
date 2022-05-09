; ModuleID = '/llk/IR_all_yes/arch/arm/mach-omap2/powerdomains44xx_data.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/powerdomains44xx_data.c"
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
@powerdomains_omap44xx = internal global [17 x ptr] [ptr @core_44xx_pwrdm, ptr @gfx_44xx_pwrdm, ptr @abe_44xx_pwrdm, ptr @dss_44xx_pwrdm, ptr @tesla_44xx_pwrdm, ptr @wkup_44xx_pwrdm, ptr @cpu0_44xx_pwrdm, ptr @cpu1_44xx_pwrdm, ptr @emu_44xx_pwrdm, ptr @mpu_44xx_pwrdm, ptr @ivahd_44xx_pwrdm, ptr @cam_44xx_pwrdm, ptr @l3init_44xx_pwrdm, ptr @l4per_44xx_pwrdm, ptr @always_on_core_44xx_pwrdm, ptr @cefuse_44xx_pwrdm, ptr null], section ".init.data", align 4
@core_44xx_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str, %union.anon { ptr @.str.1 }, i16 1792, i8 10, i8 3, i8 4, i8 5, [5 x i8] c"\01\02\02\03\03", [5 x i8] c"\08\08\08\08\08", i8 1, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@gfx_44xx_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.2, %union.anon { ptr @.str.1 }, i16 4608, i8 9, i8 0, i8 4, i8 1, [5 x i8] c"\01\00\00\00\00", [5 x i8] c"\08\00\00\00\00", i8 1, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@abe_44xx_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.3, %union.anon { ptr @.str.4 }, i16 1280, i8 11, i8 1, i8 4, i8 2, [5 x i8] c"\02\01\00\00\00", [5 x i8] c"\08\08\00\00\00", i8 1, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@dss_44xx_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.5, %union.anon { ptr @.str.1 }, i16 4352, i8 11, i8 1, i8 4, i8 1, [5 x i8] c"\01\00\00\00\00", [5 x i8] c"\08\00\00\00\00", i8 1, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@tesla_44xx_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.6, %union.anon { ptr @.str.4 }, i16 1024, i8 11, i8 3, i8 4, i8 3, [5 x i8] c"\02\03\03\00\00", [5 x i8] c"\08\08\08\00\00", i8 1, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@wkup_44xx_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.7, %union.anon { ptr @.str.8 }, i16 5888, i8 8, i8 0, i8 0, i8 1, [5 x i8] c"\01\00\00\00\00", [5 x i8] c"\08\00\00\00\00", i8 1, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@cpu0_44xx_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.9, %union.anon { ptr @.str.10 }, i16 1024, i8 11, i8 3, i8 0, i8 1, [5 x i8] c"\03\00\00\00\00", [5 x i8] c"\08\00\00\00\00", i8 5, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@cpu1_44xx_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.11, %union.anon { ptr @.str.10 }, i16 2048, i8 11, i8 3, i8 0, i8 1, [5 x i8] c"\03\00\00\00\00", [5 x i8] c"\08\00\00\00\00", i8 5, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@emu_44xx_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.12, %union.anon { ptr @.str.8 }, i16 6400, i8 9, i8 0, i8 0, i8 1, [5 x i8] c"\01\00\00\00\00", [5 x i8] c"\08\00\00\00\00", i8 1, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@mpu_44xx_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.13, %union.anon { ptr @.str.10 }, i16 768, i8 10, i8 3, i8 0, i8 3, [5 x i8] c"\03\03\02\00\00", [5 x i8] c"\08\08\08\00\00", i8 1, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@ivahd_44xx_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.14, %union.anon { ptr @.str.4 }, i16 3840, i8 11, i8 1, i8 4, i8 4, [5 x i8] c"\01\03\03\03\00", [5 x i8] c"\08\08\08\08\00", i8 1, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@cam_44xx_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.15, %union.anon { ptr @.str.1 }, i16 4096, i8 9, i8 0, i8 4, i8 1, [5 x i8] c"\01\00\00\00\00", [5 x i8] c"\08\00\00\00\00", i8 1, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@l3init_44xx_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.16, %union.anon { ptr @.str.1 }, i16 4864, i8 10, i8 3, i8 4, i8 1, [5 x i8] c"\01\00\00\00\00", [5 x i8] c"\08\00\00\00\00", i8 1, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@l4per_44xx_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.17, %union.anon { ptr @.str.1 }, i16 5120, i8 10, i8 3, i8 4, i8 2, [5 x i8] c"\01\02\00\00\00", [5 x i8] c"\08\08\00\00\00", i8 1, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@always_on_core_44xx_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.18, %union.anon { ptr @.str.1 }, i16 1536, i8 8, i8 0, i8 0, i8 0, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, i8 1, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@cefuse_44xx_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.19, %union.anon { ptr @.str.1 }, i16 5632, i8 9, i8 0, i8 4, i8 0, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, i8 1, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"core_pwrdm\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gfx_pwrdm\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"abe_pwrdm\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"iva\00", [28 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dss_pwrdm\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tesla_pwrdm\00", [20 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wkup_pwrdm\00", [21 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"wakeup\00", [25 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cpu0_pwrdm\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mpu\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cpu1_pwrdm\00", [21 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"emu_pwrdm\00", [22 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mpu_pwrdm\00", [22 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ivahd_pwrdm\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cam_pwrdm\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"l3init_pwrdm\00", [19 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"l4per_pwrdm\00", [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"always_on_core_pwrdm\00", [43 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cefuse_pwrdm\00", [19 x i8] zeroinitializer }, align 32
@___asan_gen_.20 = private unnamed_addr constant [16 x i8] c"core_44xx_pwrdm\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 31, i32 27 }
@___asan_gen_.23 = private unnamed_addr constant [15 x i8] c"gfx_44xx_pwrdm\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 57, i32 27 }
@___asan_gen_.26 = private unnamed_addr constant [15 x i8] c"abe_44xx_pwrdm\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 74, i32 27 }
@___asan_gen_.29 = private unnamed_addr constant [15 x i8] c"dss_44xx_pwrdm\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 94, i32 27 }
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"tesla_44xx_pwrdm\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 112, i32 27 }
@___asan_gen_.35 = private unnamed_addr constant [16 x i8] c"wkup_44xx_pwrdm\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 134, i32 27 }
@___asan_gen_.38 = private unnamed_addr constant [16 x i8] c"cpu0_44xx_pwrdm\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 150, i32 27 }
@___asan_gen_.41 = private unnamed_addr constant [16 x i8] c"cpu1_44xx_pwrdm\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 167, i32 27 }
@___asan_gen_.44 = private unnamed_addr constant [15 x i8] c"emu_44xx_pwrdm\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 184, i32 27 }
@___asan_gen_.47 = private unnamed_addr constant [15 x i8] c"mpu_44xx_pwrdm\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 200, i32 27 }
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"ivahd_44xx_pwrdm\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 221, i32 27 }
@___asan_gen_.53 = private unnamed_addr constant [15 x i8] c"cam_44xx_pwrdm\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 245, i32 27 }
@___asan_gen_.56 = private unnamed_addr constant [18 x i8] c"l3init_44xx_pwrdm\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 262, i32 27 }
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"l4per_44xx_pwrdm\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 280, i32 27 }
@___asan_gen_.62 = private unnamed_addr constant [26 x i8] c"always_on_core_44xx_pwrdm\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 303, i32 27 }
@___asan_gen_.65 = private unnamed_addr constant [18 x i8] c"cefuse_44xx_pwrdm\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 312, i32 27 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 32, i32 13 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 33, i32 25 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 58, i32 13 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 75, i32 13 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 76, i32 25 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 95, i32 13 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 113, i32 13 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 135, i32 13 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 136, i32 25 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 151, i32 13 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 152, i32 25 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 168, i32 13 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 185, i32 13 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 201, i32 13 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 222, i32 13 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 246, i32 13 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 263, i32 13 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 281, i32 13 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 304, i32 13 }
@___asan_gen_.125 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.126 = private constant [47 x i8] c"../arch/arm/mach-omap2/powerdomains44xx_data.c\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.126, i32 313, i32 13 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @core_44xx_pwrdm, ptr @gfx_44xx_pwrdm, ptr @abe_44xx_pwrdm, ptr @dss_44xx_pwrdm, ptr @tesla_44xx_pwrdm, ptr @wkup_44xx_pwrdm, ptr @cpu0_44xx_pwrdm, ptr @cpu1_44xx_pwrdm, ptr @emu_44xx_pwrdm, ptr @mpu_44xx_pwrdm, ptr @ivahd_44xx_pwrdm, ptr @cam_44xx_pwrdm, ptr @l3init_44xx_pwrdm, ptr @l4per_44xx_pwrdm, ptr @always_on_core_44xx_pwrdm, ptr @cefuse_44xx_pwrdm, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_44xx_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_44xx_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @abe_44xx_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dss_44xx_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tesla_44xx_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wkup_44xx_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpu0_44xx_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpu1_44xx_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emu_44xx_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu_44xx_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivahd_44xx_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_44xx_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l3init_44xx_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l4per_44xx_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @always_on_core_44xx_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cefuse_44xx_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @omap44xx_powerdomains_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @pwrdm_register_platform_funcs(ptr noundef nonnull @omap4_pwrdm_operations) #2
  %call1 = tail call i32 @pwrdm_register_pwrdms(ptr noundef nonnull @powerdomains_omap44xx) #2
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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72}
!llvm.module.flags = !{!74, !75, !76, !77, !78, !79, !80, !81}
!llvm.ident = !{!82}

!0 = !{ptr @powerdomains_omap44xx, !1, !"powerdomains_omap44xx", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-omap2/powerdomains44xx_data.c", i32 330, i32 28}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-omap2/powerdomains44xx_data.c", i32 32, i32 13}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-omap2/powerdomains44xx_data.c", i32 33, i32 25}
!6 = !{ptr @core_44xx_pwrdm, !7, !"core_44xx_pwrdm", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-omap2/powerdomains44xx_data.c", i32 31, i32 27}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-omap2/powerdomains44xx_data.c", i32 58, i32 13}
!10 = !{ptr @gfx_44xx_pwrdm, !11, !"gfx_44xx_pwrdm", i1 false, i1 false}
!11 = !{!"../arch/arm/mach-omap2/powerdomains44xx_data.c", i32 57, i32 27}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../arch/arm/mach-omap2/powerdomains44xx_data.c", i32 75, i32 13}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../arch/arm/mach-omap2/powerdomains44xx_data.c", i32 76, i32 25}
!16 = !{ptr @abe_44xx_pwrdm, !17, !"abe_44xx_pwrdm", i1 false, i1 false}
!17 = !{!"../arch/arm/mach-omap2/powerdomains44xx_data.c", i32 74, i32 27}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../arch/arm/mach-omap2/powerdomains44xx_data.c", i32 95, i32 13}
!20 = !{ptr @dss_44xx_pwrdm, !21, !"dss_44xx_pwrdm", i1 false, i1 false}
!21 = !{!"../arch/arm/mach-omap2/powerdomains44xx_data.c", i32 94, i32 27}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../arch/arm/mach-omap2/powerdomains44xx_data.c", i32 113, i32 13}
!24 = !{ptr @tesla_44xx_pwrdm, !25, !"tesla_44xx_pwrdm", i1 false, i1 false}
!25 = !{!"../arch/arm/mach-omap2/powerdomains44xx_data.c", i32 112, i32 27}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../arch/arm/mach-omap2/powerdomains44xx_data.c", i32 135, i32 13}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../arch/arm/mach-omap2/powerdomains44xx_data.c", i32 136, i32 25}
!30 = !{ptr @wkup_44xx_pwrdm, !31, !"wkup_44xx_pwrdm", i1 false, i1 false}
!31 = !{!"../arch/arm/mach-omap2/powerdomains44xx_data.c", i32 134, i32 27}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../arch/arm/mach-omap2/powerdomains44xx_data.c", i32 151, i32 13}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../arch/arm/mach-omap2/powerdomains44xx_data.c", i32 152, i32 25}
!36 = !{ptr @cpu0_44xx_pwrdm, !37, !"cpu0_44xx_pwrdm", i1 false, i1 false}
!37 = !{!"../arch/arm/mach-omap2/powerdomains44xx_data.c", i32 150, i32 27}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../arch/arm/mach-omap2/powerdomains44xx_data.c", i32 168, i32 13}
!40 = !{ptr @cpu1_44xx_pwrdm, !41, !"cpu1_44xx_pwrdm", i1 false, i1 false}
!41 = !{!"../arch/arm/mach-omap2/powerdomains44xx_data.c", i32 167, i32 27}
!42 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../arch/arm/mach-omap2/powerdomains44xx_data.c", i32 185, i32 13}
!44 = !{ptr @emu_44xx_pwrdm, !45, !"emu_44xx_pwrdm", i1 false, i1 false}
!45 = !{!"../arch/arm/mach-omap2/powerdomains44xx_data.c", i32 184, i32 27}
!46 = !{ptr @.str.13, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../arch/arm/mach-omap2/powerdomains44xx_data.c", i32 201, i32 13}
!48 = !{ptr @mpu_44xx_pwrdm, !49, !"mpu_44xx_pwrdm", i1 false, i1 false}
!49 = !{!"../arch/arm/mach-omap2/powerdomains44xx_data.c", i32 200, i32 27}
!50 = !{ptr @.str.14, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../arch/arm/mach-omap2/powerdomains44xx_data.c", i32 222, i32 13}
!52 = !{ptr @ivahd_44xx_pwrdm, !53, !"ivahd_44xx_pwrdm", i1 false, i1 false}
!53 = !{!"../arch/arm/mach-omap2/powerdomains44xx_data.c", i32 221, i32 27}
!54 = !{ptr @.str.15, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../arch/arm/mach-omap2/powerdomains44xx_data.c", i32 246, i32 13}
!56 = !{ptr @cam_44xx_pwrdm, !57, !"cam_44xx_pwrdm", i1 false, i1 false}
!57 = !{!"../arch/arm/mach-omap2/powerdomains44xx_data.c", i32 245, i32 27}
!58 = !{ptr @.str.16, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../arch/arm/mach-omap2/powerdomains44xx_data.c", i32 263, i32 13}
!60 = !{ptr @l3init_44xx_pwrdm, !61, !"l3init_44xx_pwrdm", i1 false, i1 false}
!61 = !{!"../arch/arm/mach-omap2/powerdomains44xx_data.c", i32 262, i32 27}
!62 = !{ptr @.str.17, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../arch/arm/mach-omap2/powerdomains44xx_data.c", i32 281, i32 13}
!64 = !{ptr @l4per_44xx_pwrdm, !65, !"l4per_44xx_pwrdm", i1 false, i1 false}
!65 = !{!"../arch/arm/mach-omap2/powerdomains44xx_data.c", i32 280, i32 27}
!66 = !{ptr @.str.18, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../arch/arm/mach-omap2/powerdomains44xx_data.c", i32 304, i32 13}
!68 = !{ptr @always_on_core_44xx_pwrdm, !69, !"always_on_core_44xx_pwrdm", i1 false, i1 false}
!69 = !{!"../arch/arm/mach-omap2/powerdomains44xx_data.c", i32 303, i32 27}
!70 = !{ptr @.str.19, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../arch/arm/mach-omap2/powerdomains44xx_data.c", i32 313, i32 13}
!72 = !{ptr @cefuse_44xx_pwrdm, !73, !"cefuse_44xx_pwrdm", i1 false, i1 false}
!73 = !{!"../arch/arm/mach-omap2/powerdomains44xx_data.c", i32 312, i32 27}
!74 = !{i32 1, !"wchar_size", i32 2}
!75 = !{i32 1, !"min_enum_size", i32 4}
!76 = !{i32 8, !"branch-target-enforcement", i32 0}
!77 = !{i32 8, !"sign-return-address", i32 0}
!78 = !{i32 8, !"sign-return-address-all", i32 0}
!79 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!80 = !{i32 7, !"uwtable", i32 1}
!81 = !{i32 7, !"frame-pointer", i32 2}
!82 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
