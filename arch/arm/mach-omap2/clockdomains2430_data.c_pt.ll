; ModuleID = '/llk/IR_all_yes/arch/arm/mach-omap2/clockdomains2430_data.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/clockdomains2430_data.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clkdm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clockdomain = type { ptr, %union.anon, i16, i8, i8, i8, i8, i16, i16, ptr, ptr, i32, i32, %struct.list_head, i32 }
%union.anon = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.clkdm_dep = type { ptr, ptr, i16, i16 }

@omap2_clkdm_operations = external dso_local global %struct.clkdm_ops, align 4
@clockdomains_omap243x = internal global [9 x ptr] [ptr @wkup_common_clkdm, ptr @mpu_2430_clkdm, ptr @mdm_clkdm, ptr @dsp_2430_clkdm, ptr @gfx_2430_clkdm, ptr @core_l3_2430_clkdm, ptr @core_l4_2430_clkdm, ptr @dss_2430_clkdm, ptr null], section ".init.data", align 4
@wkup_common_clkdm = external dso_local global %struct.clockdomain, align 4
@mpu_2430_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str, %union.anon { ptr @.str.1 }, i16 1, i8 15, i8 0, i8 0, i8 0, i16 0, i16 0, ptr @mpu_2430_wkdeps, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@mdm_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.6, %union.anon { ptr @.str.7 }, i16 1, i8 15, i8 0, i8 5, i8 0, i16 0, i16 0, ptr @mdm_2430_wkdeps, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@dsp_2430_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.4, %union.anon { ptr @.str.8 }, i16 1, i8 15, i8 0, i8 2, i8 0, i16 0, i16 0, ptr @dsp_24xx_wkdeps, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@gfx_2430_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.9, %union.anon { ptr @.str.10 }, i16 1, i8 15, i8 0, i8 0, i8 0, i16 0, i16 0, ptr @gfx_24xx_wkdeps, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@core_l3_2430_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.2, %union.anon { ptr @.str.11 }, i16 1, i8 12, i8 0, i8 0, i8 0, i16 0, i16 0, ptr @core_2430_wkdeps, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@core_l4_2430_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.3, %union.anon { ptr @.str.11 }, i16 2, i8 12, i8 0, i8 0, i8 0, i16 0, i16 0, ptr @core_2430_wkdeps, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@dss_2430_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.12, %union.anon { ptr @.str.11 }, i16 4, i8 12, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mpu_clkdm\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mpu_pwrdm\00", [22 x i8] zeroinitializer }, align 32
@mpu_2430_wkdeps = internal global { [6 x %struct.clkdm_dep], [56 x i8] } { [6 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.3, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.4, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.5, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.6, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"core_l3_clkdm\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"core_l4_clkdm\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dsp_clkdm\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wkup_clkdm\00", [21 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mdm_clkdm\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mdm_pwrdm\00", [22 x i8] zeroinitializer }, align 32
@mdm_2430_wkdeps = internal global { [5 x %struct.clkdm_dep], [36 x i8] } { [5 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.3, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.5, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dsp_pwrdm\00", [22 x i8] zeroinitializer }, align 32
@dsp_24xx_wkdeps = external dso_local global [0 x %struct.clkdm_dep], align 4
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gfx_clkdm\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gfx_pwrdm\00", [22 x i8] zeroinitializer }, align 32
@gfx_24xx_wkdeps = external dso_local global [0 x %struct.clkdm_dep], align 4
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"core_pwrdm\00", [21 x i8] zeroinitializer }, align 32
@core_2430_wkdeps = internal global { [6 x %struct.clkdm_dep], [56 x i8] } { [6 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.4, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.9, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.5, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.6, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dss_clkdm\00", [22 x i8] zeroinitializer }, align 32
@___asan_gen_.13 = private unnamed_addr constant [15 x i8] c"mpu_2430_clkdm\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 90, i32 27 }
@___asan_gen_.16 = private unnamed_addr constant [10 x i8] c"mdm_clkdm\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 99, i32 27 }
@___asan_gen_.19 = private unnamed_addr constant [15 x i8] c"dsp_2430_clkdm\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 108, i32 27 }
@___asan_gen_.22 = private unnamed_addr constant [15 x i8] c"gfx_2430_clkdm\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 117, i32 27 }
@___asan_gen_.25 = private unnamed_addr constant [19 x i8] c"core_l3_2430_clkdm\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 130, i32 27 }
@___asan_gen_.28 = private unnamed_addr constant [19 x i8] c"core_l4_2430_clkdm\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 144, i32 27 }
@___asan_gen_.31 = private unnamed_addr constant [15 x i8] c"dss_2430_clkdm\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 153, i32 27 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 91, i32 11 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 92, i32 22 }
@___asan_gen_.40 = private unnamed_addr constant [16 x i8] c"mpu_2430_wkdeps\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 68, i32 25 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 69, i32 18 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 70, i32 18 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 71, i32 18 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 72, i32 18 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 73, i32 18 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 101, i32 22 }
@___asan_gen_.61 = private unnamed_addr constant [16 x i8] c"mdm_2430_wkdeps\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 78, i32 25 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 110, i32 22 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 118, i32 11 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 119, i32 22 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 132, i32 22 }
@___asan_gen_.76 = private unnamed_addr constant [17 x i8] c"core_2430_wkdeps\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 58, i32 25 }
@___asan_gen_.79 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.80 = private constant [47 x i8] c"../arch/arm/mach-omap2/clockdomains2430_data.c\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.80, i32 154, i32 11 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @mpu_2430_clkdm, ptr @mdm_clkdm, ptr @dsp_2430_clkdm, ptr @gfx_2430_clkdm, ptr @core_l3_2430_clkdm, ptr @core_l4_2430_clkdm, ptr @dss_2430_clkdm, ptr @.str, ptr @.str.1, ptr @mpu_2430_wkdeps, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @mdm_2430_wkdeps, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @core_2430_wkdeps, ptr @.str.12], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu_2430_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdm_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_2430_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_2430_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_l3_2430_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_l4_2430_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dss_2430_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu_2430_wkdeps to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdm_2430_wkdeps to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_2430_wkdeps to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @omap243x_clockdomains_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @omap_rev() #2
  %shr.mask.i = and i32 %call.i, -1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 607125504, i32 %shr.mask.i)
  %cmp.i.not = icmp eq i32 %shr.mask.i, 607125504
  br i1 %cmp.i.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %call1 = tail call i32 @clkdm_register_platform_funcs(ptr noundef nonnull @omap2_clkdm_operations) #2
  %call2 = tail call i32 @clkdm_register_clkdms(ptr noundef nonnull @clockdomains_omap243x) #2
  %call3 = tail call i32 @clkdm_complete_init() #2
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clkdm_register_platform_funcs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clkdm_register_clkdms(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clkdm_complete_init() local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46}
!llvm.module.flags = !{!48, !49, !50, !51, !52, !53, !54, !55}
!llvm.ident = !{!56}

!0 = !{ptr @clockdomains_omap243x, !1, !"clockdomains_omap243x", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-omap2/clockdomains2430_data.c", i32 160, i32 28}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-omap2/clockdomains2430_data.c", i32 91, i32 11}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-omap2/clockdomains2430_data.c", i32 92, i32 22}
!6 = !{ptr @mpu_2430_clkdm, !7, !"mpu_2430_clkdm", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-omap2/clockdomains2430_data.c", i32 90, i32 27}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-omap2/clockdomains2430_data.c", i32 69, i32 18}
!10 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../arch/arm/mach-omap2/clockdomains2430_data.c", i32 70, i32 18}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../arch/arm/mach-omap2/clockdomains2430_data.c", i32 71, i32 18}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../arch/arm/mach-omap2/clockdomains2430_data.c", i32 72, i32 18}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../arch/arm/mach-omap2/clockdomains2430_data.c", i32 73, i32 18}
!18 = !{ptr @mpu_2430_wkdeps, !19, !"mpu_2430_wkdeps", i1 false, i1 false}
!19 = !{!"../arch/arm/mach-omap2/clockdomains2430_data.c", i32 68, i32 25}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../arch/arm/mach-omap2/clockdomains2430_data.c", i32 101, i32 22}
!22 = !{ptr @mdm_clkdm, !23, !"mdm_clkdm", i1 false, i1 false}
!23 = !{!"../arch/arm/mach-omap2/clockdomains2430_data.c", i32 99, i32 27}
!24 = !{ptr @mdm_2430_wkdeps, !25, !"mdm_2430_wkdeps", i1 false, i1 false}
!25 = !{!"../arch/arm/mach-omap2/clockdomains2430_data.c", i32 78, i32 25}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../arch/arm/mach-omap2/clockdomains2430_data.c", i32 110, i32 22}
!28 = !{ptr @dsp_2430_clkdm, !29, !"dsp_2430_clkdm", i1 false, i1 false}
!29 = !{!"../arch/arm/mach-omap2/clockdomains2430_data.c", i32 108, i32 27}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../arch/arm/mach-omap2/clockdomains2430_data.c", i32 118, i32 11}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../arch/arm/mach-omap2/clockdomains2430_data.c", i32 119, i32 22}
!34 = !{ptr @gfx_2430_clkdm, !35, !"gfx_2430_clkdm", i1 false, i1 false}
!35 = !{!"../arch/arm/mach-omap2/clockdomains2430_data.c", i32 117, i32 27}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../arch/arm/mach-omap2/clockdomains2430_data.c", i32 132, i32 22}
!38 = !{ptr @core_l3_2430_clkdm, !39, !"core_l3_2430_clkdm", i1 false, i1 false}
!39 = !{!"../arch/arm/mach-omap2/clockdomains2430_data.c", i32 130, i32 27}
!40 = !{ptr @core_2430_wkdeps, !41, !"core_2430_wkdeps", i1 false, i1 false}
!41 = !{!"../arch/arm/mach-omap2/clockdomains2430_data.c", i32 58, i32 25}
!42 = !{ptr @core_l4_2430_clkdm, !43, !"core_l4_2430_clkdm", i1 false, i1 false}
!43 = !{!"../arch/arm/mach-omap2/clockdomains2430_data.c", i32 144, i32 27}
!44 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../arch/arm/mach-omap2/clockdomains2430_data.c", i32 154, i32 11}
!46 = !{ptr @dss_2430_clkdm, !47, !"dss_2430_clkdm", i1 false, i1 false}
!47 = !{!"../arch/arm/mach-omap2/clockdomains2430_data.c", i32 153, i32 27}
!48 = !{i32 1, !"wchar_size", i32 2}
!49 = !{i32 1, !"min_enum_size", i32 4}
!50 = !{i32 8, !"branch-target-enforcement", i32 0}
!51 = !{i32 8, !"sign-return-address", i32 0}
!52 = !{i32 8, !"sign-return-address-all", i32 0}
!53 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!54 = !{i32 7, !"uwtable", i32 1}
!55 = !{i32 7, !"frame-pointer", i32 2}
!56 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
