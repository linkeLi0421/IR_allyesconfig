; ModuleID = '/llk/IR_all_yes/arch/arm/mach-omap2/clockdomains3xxx_data.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/clockdomains3xxx_data.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clkdm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clkdm_autodep = type { %union.anon.4 }
%union.anon.4 = type { ptr }
%struct.clockdomain = type { ptr, %union.anon, i16, i8, i8, i8, i8, i16, i16, ptr, ptr, i32, i32, %struct.list_head, i32 }
%union.anon = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.clkdm_dep = type { ptr, ptr, i16, i16 }

@omap3_clkdm_operations = external dso_local global %struct.clkdm_ops, align 4
@clockdomains_common = internal global [9 x ptr] [ptr @wkup_common_clkdm, ptr @neon_clkdm, ptr @core_l3_3xxx_clkdm, ptr @core_l4_3xxx_clkdm, ptr @emu_clkdm, ptr @dpll1_clkdm, ptr @dpll3_clkdm, ptr @dpll4_clkdm, ptr null], section ".init.data", align 4
@clockdomains_am35x = internal global [7 x ptr] [ptr @mpu_am35x_clkdm, ptr @sgx_am35x_clkdm, ptr @dss_am35x_clkdm, ptr @per_am35x_clkdm, ptr @usbhost_am35x_clkdm, ptr @dpll5_clkdm, ptr null], section ".init.data", align 4
@clkdm_am35x_autodeps = internal global { [2 x %struct.clkdm_autodep], [24 x i8] } { [2 x %struct.clkdm_autodep] [%struct.clkdm_autodep { %union.anon.4 { ptr @.str.2 } }, %struct.clkdm_autodep zeroinitializer], [24 x i8] zeroinitializer }, align 32
@clockdomains_omap3430 = internal global [8 x ptr] [ptr @mpu_3xxx_clkdm, ptr @iva2_clkdm, ptr @d2d_clkdm, ptr @dss_3xxx_clkdm, ptr @cam_clkdm, ptr @per_clkdm, ptr @dpll2_clkdm, ptr null], section ".init.data", align 4
@clockdomains_omap3430es1 = internal global [2 x ptr] [ptr @gfx_3430es1_clkdm, ptr null], section ".init.data", align 4
@clockdomains_omap3430es2plus = internal global [4 x ptr] [ptr @sgx_clkdm, ptr @dpll5_clkdm, ptr @usbhost_clkdm, ptr null], section ".init.data", align 4
@clkdm_autodeps = internal global { [3 x %struct.clkdm_autodep], [20 x i8] } { [3 x %struct.clkdm_autodep] [%struct.clkdm_autodep { %union.anon.4 { ptr @.str.2 } }, %struct.clkdm_autodep { %union.anon.4 { ptr @.str.25 } }, %struct.clkdm_autodep zeroinitializer], [20 x i8] zeroinitializer }, align 32
@wkup_common_clkdm = external dso_local global %struct.clockdomain, align 4
@neon_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str, %union.anon { ptr @.str.1 }, i16 3, i8 15, i8 0, i8 0, i8 0, i16 0, i16 0, ptr @neon_wkdeps, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@core_l3_3xxx_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.3, %union.anon { ptr @.str.4 }, i16 3, i8 12, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@core_l4_3xxx_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.5, %union.anon { ptr @.str.4 }, i16 12, i8 12, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@emu_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.6, %union.anon { ptr @.str.7 }, i16 3, i8 71, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@dpll1_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.8, %union.anon { ptr @.str.9 }, i16 0, i8 0, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@dpll3_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.10, %union.anon { ptr @.str.11 }, i16 0, i8 0, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@dpll4_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.12, %union.anon { ptr @.str.13 }, i16 0, i8 0, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"neon_clkdm\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"neon_pwrdm\00", [21 x i8] zeroinitializer }, align 32
@neon_wkdeps = internal global { [2 x %struct.clkdm_dep], [40 x i8] } { [2 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mpu_clkdm\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"core_l3_clkdm\00", [18 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"core_pwrdm\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"core_l4_clkdm\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"emu_clkdm\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"emu_pwrdm\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dpll1_clkdm\00", [20 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dpll1_pwrdm\00", [20 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dpll3_clkdm\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dpll3_pwrdm\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dpll4_clkdm\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dpll4_pwrdm\00", [20 x i8] zeroinitializer }, align 32
@mpu_am35x_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.2, %union.anon { ptr @.str.14 }, i16 3, i8 14, i8 0, i8 1, i8 0, i16 0, i16 0, ptr @mpu_am35x_wkdeps, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@sgx_am35x_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.17, %union.anon { ptr @.str.18 }, i16 3, i8 15, i8 0, i8 0, i8 0, i16 0, i16 0, ptr @gfx_sgx_am35x_wkdeps, ptr @gfx_sgx_sleepdeps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@dss_am35x_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.15, %union.anon { ptr @.str.20 }, i16 3, i8 15, i8 0, i8 5, i8 0, i16 0, i16 0, ptr @dss_am35x_wkdeps, ptr @dss_am35x_sleepdeps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@per_am35x_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.16, %union.anon { ptr @.str.21 }, i16 3, i8 15, i8 0, i8 7, i8 0, i16 0, i16 0, ptr @per_am35x_wkdeps, ptr @per_am35x_sleepdeps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@usbhost_am35x_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.22, %union.anon { ptr @.str.4 }, i16 3, i8 15, i8 0, i8 0, i8 0, i16 0, i16 0, ptr @usbhost_am35x_wkdeps, ptr @usbhost_am35x_sleepdeps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@dpll5_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.23, %union.anon { ptr @.str.24 }, i16 0, i8 0, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mpu_pwrdm\00", [22 x i8] zeroinitializer }, align 32
@mpu_am35x_wkdeps = internal global { [5 x %struct.clkdm_dep], [36 x i8] } { [5 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.3, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.5, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.15, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.16, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dss_clkdm\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"per_clkdm\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sgx_clkdm\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sgx_pwrdm\00", [22 x i8] zeroinitializer }, align 32
@gfx_sgx_am35x_wkdeps = internal global { [3 x %struct.clkdm_dep], [60 x i8] } { [3 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.19, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], [60 x i8] zeroinitializer }, align 32
@gfx_sgx_sleepdeps = internal global { [2 x %struct.clkdm_dep], [40 x i8] } { [2 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wkup_clkdm\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dss_pwrdm\00", [22 x i8] zeroinitializer }, align 32
@dss_am35x_wkdeps = internal global { [3 x %struct.clkdm_dep], [60 x i8] } { [3 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.19, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], [60 x i8] zeroinitializer }, align 32
@dss_am35x_sleepdeps = internal global { [2 x %struct.clkdm_dep], [40 x i8] } { [2 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"per_pwrdm\00", [22 x i8] zeroinitializer }, align 32
@per_am35x_wkdeps = internal global { [5 x %struct.clkdm_dep], [36 x i8] } { [5 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.3, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.5, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.19, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], [36 x i8] zeroinitializer }, align 32
@per_am35x_sleepdeps = internal global { [2 x %struct.clkdm_dep], [40 x i8] } { [2 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"usbhost_clkdm\00", [18 x i8] zeroinitializer }, align 32
@usbhost_am35x_wkdeps = internal global { [5 x %struct.clkdm_dep], [36 x i8] } { [5 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.3, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.5, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.19, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], [36 x i8] zeroinitializer }, align 32
@usbhost_am35x_sleepdeps = internal global { [2 x %struct.clkdm_dep], [40 x i8] } { [2 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dpll5_clkdm\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dpll5_pwrdm\00", [20 x i8] zeroinitializer }, align 32
@mpu_3xxx_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.2, %union.anon { ptr @.str.14 }, i16 3, i8 14, i8 0, i8 1, i8 0, i16 0, i16 0, ptr @mpu_3xxx_wkdeps, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@iva2_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.25, %union.anon { ptr @.str.26 }, i16 3, i8 3, i8 0, i8 2, i8 0, i16 0, i16 0, ptr @iva2_wkdeps, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@d2d_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.27, %union.anon { ptr @.str.4 }, i16 48, i8 15, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@dss_3xxx_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.15, %union.anon { ptr @.str.20 }, i16 3, i8 15, i8 0, i8 5, i8 0, i16 0, i16 0, ptr @dss_wkdeps, ptr @dss_sleepdeps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@cam_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.28, %union.anon { ptr @.str.29 }, i16 3, i8 15, i8 0, i8 0, i8 0, i16 0, i16 0, ptr @cam_wkdeps, ptr @cam_sleepdeps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@per_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.16, %union.anon { ptr @.str.21 }, i16 3, i8 15, i8 0, i8 7, i8 0, i16 0, i16 0, ptr @per_wkdeps, ptr @per_sleepdeps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@dpll2_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.30, %union.anon { ptr @.str.31 }, i16 0, i8 0, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@mpu_3xxx_wkdeps = internal global { [6 x %struct.clkdm_dep], [56 x i8] } { [6 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.3, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.5, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.25, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.15, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.16, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], [56 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"iva2_clkdm\00", [21 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"iva2_pwrdm\00", [21 x i8] zeroinitializer }, align 32
@iva2_wkdeps = internal global { [7 x %struct.clkdm_dep], [44 x i8] } { [7 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.3, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.5, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.19, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.15, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.16, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], [44 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"d2d_clkdm\00", [22 x i8] zeroinitializer }, align 32
@dss_wkdeps = internal global { [4 x %struct.clkdm_dep], [48 x i8] } { [4 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.25, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.19, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], [48 x i8] zeroinitializer }, align 32
@dss_sleepdeps = internal global { [3 x %struct.clkdm_dep], [60 x i8] } { [3 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.25, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], [60 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cam_clkdm\00", [22 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cam_pwrdm\00", [22 x i8] zeroinitializer }, align 32
@cam_wkdeps = internal global { [4 x %struct.clkdm_dep], [48 x i8] } { [4 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.25, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.19, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], [48 x i8] zeroinitializer }, align 32
@cam_sleepdeps = internal global { [2 x %struct.clkdm_dep], [40 x i8] } { [2 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], [40 x i8] zeroinitializer }, align 32
@per_wkdeps = internal global { [6 x %struct.clkdm_dep], [56 x i8] } { [6 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.3, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.5, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.25, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.19, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], [56 x i8] zeroinitializer }, align 32
@per_sleepdeps = internal global { [3 x %struct.clkdm_dep], [60 x i8] } { [3 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.25, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], [60 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dpll2_clkdm\00", [20 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dpll2_pwrdm\00", [20 x i8] zeroinitializer }, align 32
@gfx_3430es1_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.32, %union.anon { ptr @.str.33 }, i16 3, i8 15, i8 0, i8 0, i8 0, i16 0, i16 0, ptr @gfx_sgx_3xxx_wkdeps, ptr @gfx_sgx_sleepdeps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gfx_clkdm\00", [22 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gfx_pwrdm\00", [22 x i8] zeroinitializer }, align 32
@gfx_sgx_3xxx_wkdeps = internal global { [4 x %struct.clkdm_dep], [48 x i8] } { [4 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.25, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.19, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], [48 x i8] zeroinitializer }, align 32
@sgx_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.17, %union.anon { ptr @.str.18 }, i16 3, i8 15, i8 0, i8 0, i8 0, i16 0, i16 0, ptr @gfx_sgx_3xxx_wkdeps, ptr @gfx_sgx_sleepdeps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@usbhost_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.22, %union.anon { ptr @.str.34 }, i16 3, i8 15, i8 0, i8 0, i8 0, i16 0, i16 0, ptr @usbhost_wkdeps, ptr @usbhost_sleepdeps, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"usbhost_pwrdm\00", [18 x i8] zeroinitializer }, align 32
@usbhost_wkdeps = internal global { [6 x %struct.clkdm_dep], [56 x i8] } { [6 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.3, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.5, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.25, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.19, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], [56 x i8] zeroinitializer }, align 32
@usbhost_sleepdeps = internal global { [3 x %struct.clkdm_dep], [60 x i8] } { [3 x %struct.clkdm_dep] [%struct.clkdm_dep { ptr @.str.2, ptr null, i16 0, i16 0 }, %struct.clkdm_dep { ptr @.str.25, ptr null, i16 0, i16 0 }, %struct.clkdm_dep zeroinitializer], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 890699828, i64 890700084]
@___asan_gen_.35 = private unnamed_addr constant [21 x i8] c"clkdm_am35x_autodeps\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 441, i32 29 }
@___asan_gen_.38 = private unnamed_addr constant [15 x i8] c"clkdm_autodeps\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 429, i32 29 }
@___asan_gen_.41 = private unnamed_addr constant [11 x i8] c"neon_clkdm\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 240, i32 27 }
@___asan_gen_.44 = private unnamed_addr constant [19 x i8] c"core_l3_3xxx_clkdm\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 303, i32 27 }
@___asan_gen_.47 = private unnamed_addr constant [19 x i8] c"core_l4_3xxx_clkdm\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 316, i32 27 }
@___asan_gen_.50 = private unnamed_addr constant [10 x i8] c"emu_clkdm\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 392, i32 27 }
@___asan_gen_.53 = private unnamed_addr constant [12 x i8] c"dpll1_clkdm\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 400, i32 27 }
@___asan_gen_.56 = private unnamed_addr constant [12 x i8] c"dpll3_clkdm\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 410, i32 27 }
@___asan_gen_.59 = private unnamed_addr constant [12 x i8] c"dpll4_clkdm\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 415, i32 27 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 241, i32 11 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 242, i32 22 }
@___asan_gen_.68 = private unnamed_addr constant [12 x i8] c"neon_wkdeps\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 158, i32 25 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 159, i32 18 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 304, i32 11 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 305, i32 22 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 317, i32 11 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 393, i32 11 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 394, i32 22 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 401, i32 11 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 402, i32 22 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 411, i32 11 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 412, i32 22 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 416, i32 11 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 417, i32 22 }
@___asan_gen_.107 = private unnamed_addr constant [16 x i8] c"mpu_am35x_clkdm\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 231, i32 27 }
@___asan_gen_.110 = private unnamed_addr constant [16 x i8] c"sgx_am35x_clkdm\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 275, i32 27 }
@___asan_gen_.113 = private unnamed_addr constant [16 x i8] c"dss_am35x_clkdm\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 335, i32 27 }
@___asan_gen_.116 = private unnamed_addr constant [16 x i8] c"per_am35x_clkdm\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 382, i32 27 }
@___asan_gen_.119 = private unnamed_addr constant [20 x i8] c"usbhost_am35x_clkdm\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 363, i32 27 }
@___asan_gen_.122 = private unnamed_addr constant [12 x i8] c"dpll5_clkdm\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 420, i32 27 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 233, i32 22 }
@___asan_gen_.128 = private unnamed_addr constant [17 x i8] c"mpu_am35x_wkdeps\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 116, i32 25 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 119, i32 18 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 120, i32 18 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 276, i32 11 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 277, i32 22 }
@___asan_gen_.143 = private unnamed_addr constant [21 x i8] c"gfx_sgx_am35x_wkdeps\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 64, i32 25 }
@___asan_gen_.146 = private unnamed_addr constant [18 x i8] c"gfx_sgx_sleepdeps\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 213, i32 25 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 66, i32 18 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 337, i32 22 }
@___asan_gen_.155 = private unnamed_addr constant [17 x i8] c"dss_am35x_wkdeps\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 151, i32 25 }
@___asan_gen_.158 = private unnamed_addr constant [20 x i8] c"dss_am35x_sleepdeps\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 172, i32 25 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 384, i32 22 }
@___asan_gen_.164 = private unnamed_addr constant [17 x i8] c"per_am35x_wkdeps\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 80, i32 25 }
@___asan_gen_.167 = private unnamed_addr constant [20 x i8] c"per_am35x_sleepdeps\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 184, i32 25 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 364, i32 11 }
@___asan_gen_.173 = private unnamed_addr constant [21 x i8] c"usbhost_am35x_wkdeps\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 98, i32 25 }
@___asan_gen_.176 = private unnamed_addr constant [24 x i8] c"usbhost_am35x_sleepdeps\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 196, i32 25 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 421, i32 11 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 422, i32 22 }
@___asan_gen_.185 = private unnamed_addr constant [15 x i8] c"mpu_3xxx_clkdm\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 222, i32 27 }
@___asan_gen_.188 = private unnamed_addr constant [11 x i8] c"iva2_clkdm\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 248, i32 27 }
@___asan_gen_.191 = private unnamed_addr constant [10 x i8] c"d2d_clkdm\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 291, i32 27 }
@___asan_gen_.194 = private unnamed_addr constant [15 x i8] c"dss_3xxx_clkdm\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 325, i32 27 }
@___asan_gen_.197 = private unnamed_addr constant [10 x i8] c"cam_clkdm\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 345, i32 27 }
@___asan_gen_.200 = private unnamed_addr constant [10 x i8] c"per_clkdm\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 372, i32 27 }
@___asan_gen_.203 = private unnamed_addr constant [12 x i8] c"dpll2_clkdm\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 405, i32 27 }
@___asan_gen_.206 = private unnamed_addr constant [16 x i8] c"mpu_3xxx_wkdeps\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 107, i32 25 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 110, i32 18 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 250, i32 22 }
@___asan_gen_.215 = private unnamed_addr constant [12 x i8] c"iva2_wkdeps\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 125, i32 25 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 292, i32 11 }
@___asan_gen_.221 = private unnamed_addr constant [11 x i8] c"dss_wkdeps\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 144, i32 25 }
@___asan_gen_.224 = private unnamed_addr constant [14 x i8] c"dss_sleepdeps\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 166, i32 25 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 346, i32 11 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 347, i32 22 }
@___asan_gen_.233 = private unnamed_addr constant [11 x i8] c"cam_wkdeps\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 136, i32 25 }
@___asan_gen_.236 = private unnamed_addr constant [14 x i8] c"cam_sleepdeps\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 202, i32 25 }
@___asan_gen_.239 = private unnamed_addr constant [11 x i8] c"per_wkdeps\00", align 1
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 71, i32 25 }
@___asan_gen_.242 = private unnamed_addr constant [14 x i8] c"per_sleepdeps\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 178, i32 25 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 406, i32 11 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 407, i32 22 }
@___asan_gen_.251 = private unnamed_addr constant [18 x i8] c"gfx_3430es1_clkdm\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 257, i32 27 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 258, i32 11 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 259, i32 22 }
@___asan_gen_.260 = private unnamed_addr constant [20 x i8] c"gfx_sgx_3xxx_wkdeps\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 57, i32 25 }
@___asan_gen_.263 = private unnamed_addr constant [10 x i8] c"sgx_clkdm\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 266, i32 27 }
@___asan_gen_.266 = private unnamed_addr constant [14 x i8] c"usbhost_clkdm\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 354, i32 27 }
@___asan_gen_.269 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 356, i32 22 }
@___asan_gen_.272 = private unnamed_addr constant [15 x i8] c"usbhost_wkdeps\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 89, i32 25 }
@___asan_gen_.275 = private unnamed_addr constant [18 x i8] c"usbhost_sleepdeps\00", align 1
@___asan_gen_.276 = private constant [47 x i8] c"../arch/arm/mach-omap2/clockdomains3xxx_data.c\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.276, i32 190, i32 25 }
@llvm.compiler.used = appending global [81 x ptr] [ptr @clkdm_am35x_autodeps, ptr @clkdm_autodeps, ptr @neon_clkdm, ptr @core_l3_3xxx_clkdm, ptr @core_l4_3xxx_clkdm, ptr @emu_clkdm, ptr @dpll1_clkdm, ptr @dpll3_clkdm, ptr @dpll4_clkdm, ptr @.str, ptr @.str.1, ptr @neon_wkdeps, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @mpu_am35x_clkdm, ptr @sgx_am35x_clkdm, ptr @dss_am35x_clkdm, ptr @per_am35x_clkdm, ptr @usbhost_am35x_clkdm, ptr @dpll5_clkdm, ptr @.str.14, ptr @mpu_am35x_wkdeps, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @gfx_sgx_am35x_wkdeps, ptr @gfx_sgx_sleepdeps, ptr @.str.19, ptr @.str.20, ptr @dss_am35x_wkdeps, ptr @dss_am35x_sleepdeps, ptr @.str.21, ptr @per_am35x_wkdeps, ptr @per_am35x_sleepdeps, ptr @.str.22, ptr @usbhost_am35x_wkdeps, ptr @usbhost_am35x_sleepdeps, ptr @.str.23, ptr @.str.24, ptr @mpu_3xxx_clkdm, ptr @iva2_clkdm, ptr @d2d_clkdm, ptr @dss_3xxx_clkdm, ptr @cam_clkdm, ptr @per_clkdm, ptr @dpll2_clkdm, ptr @mpu_3xxx_wkdeps, ptr @.str.25, ptr @.str.26, ptr @iva2_wkdeps, ptr @.str.27, ptr @dss_wkdeps, ptr @dss_sleepdeps, ptr @.str.28, ptr @.str.29, ptr @cam_wkdeps, ptr @cam_sleepdeps, ptr @per_wkdeps, ptr @per_sleepdeps, ptr @.str.30, ptr @.str.31, ptr @gfx_3430es1_clkdm, ptr @.str.32, ptr @.str.33, ptr @gfx_sgx_3xxx_wkdeps, ptr @sgx_clkdm, ptr @usbhost_clkdm, ptr @.str.34, ptr @usbhost_wkdeps, ptr @usbhost_sleepdeps], section "llvm.metadata"
@0 = internal global [81 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clkdm_am35x_autodeps to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clkdm_autodeps to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @neon_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_l3_3xxx_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_l4_3xxx_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emu_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpll1_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpll3_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpll4_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @neon_wkdeps to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu_am35x_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgx_am35x_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dss_am35x_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @per_am35x_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhost_am35x_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpll5_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu_am35x_wkdeps to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_sgx_am35x_wkdeps to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_sgx_sleepdeps to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dss_am35x_wkdeps to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dss_am35x_sleepdeps to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @per_am35x_wkdeps to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @per_am35x_sleepdeps to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhost_am35x_wkdeps to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhost_am35x_sleepdeps to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu_3xxx_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iva2_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @d2d_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dss_3xxx_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @per_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpll2_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu_3xxx_wkdeps to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iva2_wkdeps to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dss_wkdeps to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dss_sleepdeps to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_wkdeps to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_sleepdeps to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @per_wkdeps to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @per_sleepdeps to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_3430es1_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_sgx_3xxx_wkdeps to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgx_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhost_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhost_wkdeps to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhost_sleepdeps to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3xxx_clockdomains_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @omap_rev() #2
  %and.i = and i32 %call.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 52
  br i1 %cmp.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clkdm_register_platform_funcs(ptr noundef nonnull @omap3_clkdm_operations) #2
  %call2 = tail call i32 @clkdm_register_clkdms(ptr noundef nonnull @clockdomains_common) #2
  %call3 = tail call i32 @omap_rev() #2
  %0 = zext i32 %call3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call3, label %if.else [
    i32 890699828, label %if.end.if.end12_crit_edge
    i32 890700084, label %if.end.if.end12_crit_edge17
  ]

if.end.if.end12_crit_edge17:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end12

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.end12

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #4
  %call8 = tail call i32 @clkdm_register_clkdms(ptr noundef nonnull @clockdomains_omap3430) #2
  call void @__sanitizer_cov_trace_const_cmp4(i32 875561012, i32 %call3)
  %cmp9 = icmp eq i32 %call3, 875561012
  %cond = select i1 %cmp9, ptr @clockdomains_omap3430es1, ptr @clockdomains_omap3430es2plus
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.end.if.end12_crit_edge, %if.end.if.end12_crit_edge17
  %cond.sink = phi ptr [ %cond, %if.else ], [ @clockdomains_am35x, %if.end.if.end12_crit_edge ], [ @clockdomains_am35x, %if.end.if.end12_crit_edge17 ]
  %clkdm_autodeps.sink = phi ptr [ @clkdm_autodeps, %if.else ], [ @clkdm_am35x_autodeps, %if.end.if.end12_crit_edge ], [ @clkdm_am35x_autodeps, %if.end.if.end12_crit_edge17 ]
  %call10 = tail call i32 @clkdm_register_clkdms(ptr noundef nonnull %cond.sink) #2
  %call11 = tail call i32 @clkdm_register_autodeps(ptr noundef nonnull %clkdm_autodeps.sink) #2
  %call13 = tail call i32 @clkdm_complete_init() #2
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clkdm_register_platform_funcs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clkdm_register_clkdms(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_rev() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clkdm_register_autodeps(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clkdm_complete_init() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 81)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170}
!llvm.module.flags = !{!172, !173, !174, !175, !176, !177, !178, !179}
!llvm.ident = !{!180}

!0 = !{ptr @clockdomains_common, !1, !"clockdomains_common", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 454, i32 28}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 241, i32 11}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 242, i32 22}
!6 = !{ptr @neon_clkdm, !7, !"neon_clkdm", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 240, i32 27}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 159, i32 18}
!10 = !{ptr @neon_wkdeps, !11, !"neon_wkdeps", i1 false, i1 false}
!11 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 158, i32 25}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 304, i32 11}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 305, i32 22}
!16 = !{ptr @core_l3_3xxx_clkdm, !17, !"core_l3_3xxx_clkdm", i1 false, i1 false}
!17 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 303, i32 27}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 317, i32 11}
!20 = !{ptr @core_l4_3xxx_clkdm, !21, !"core_l4_3xxx_clkdm", i1 false, i1 false}
!21 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 316, i32 27}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 393, i32 11}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 394, i32 22}
!26 = !{ptr @emu_clkdm, !27, !"emu_clkdm", i1 false, i1 false}
!27 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 392, i32 27}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 401, i32 11}
!30 = !{ptr @.str.9, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 402, i32 22}
!32 = !{ptr @dpll1_clkdm, !33, !"dpll1_clkdm", i1 false, i1 false}
!33 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 400, i32 27}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 411, i32 11}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 412, i32 22}
!38 = !{ptr @dpll3_clkdm, !39, !"dpll3_clkdm", i1 false, i1 false}
!39 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 410, i32 27}
!40 = !{ptr @.str.12, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 416, i32 11}
!42 = !{ptr @.str.13, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 417, i32 22}
!44 = !{ptr @dpll4_clkdm, !45, !"dpll4_clkdm", i1 false, i1 false}
!45 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 415, i32 27}
!46 = !{ptr @clockdomains_am35x, !47, !"clockdomains_am35x", i1 false, i1 false}
!47 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 489, i32 28}
!48 = !{ptr @.str.14, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 233, i32 22}
!50 = !{ptr @mpu_am35x_clkdm, !51, !"mpu_am35x_clkdm", i1 false, i1 false}
!51 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 231, i32 27}
!52 = !{ptr @.str.15, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 119, i32 18}
!54 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 120, i32 18}
!56 = !{ptr @mpu_am35x_wkdeps, !57, !"mpu_am35x_wkdeps", i1 false, i1 false}
!57 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 116, i32 25}
!58 = !{ptr @.str.17, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 276, i32 11}
!60 = !{ptr @.str.18, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 277, i32 22}
!62 = !{ptr @sgx_am35x_clkdm, !63, !"sgx_am35x_clkdm", i1 false, i1 false}
!63 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 275, i32 27}
!64 = !{ptr @.str.19, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 66, i32 18}
!66 = !{ptr @gfx_sgx_am35x_wkdeps, !67, !"gfx_sgx_am35x_wkdeps", i1 false, i1 false}
!67 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 64, i32 25}
!68 = !{ptr @gfx_sgx_sleepdeps, !69, !"gfx_sgx_sleepdeps", i1 false, i1 false}
!69 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 213, i32 25}
!70 = !{ptr @.str.20, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 337, i32 22}
!72 = !{ptr @dss_am35x_clkdm, !73, !"dss_am35x_clkdm", i1 false, i1 false}
!73 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 335, i32 27}
!74 = !{ptr @dss_am35x_wkdeps, !75, !"dss_am35x_wkdeps", i1 false, i1 false}
!75 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 151, i32 25}
!76 = !{ptr @dss_am35x_sleepdeps, !77, !"dss_am35x_sleepdeps", i1 false, i1 false}
!77 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 172, i32 25}
!78 = !{ptr @.str.21, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 384, i32 22}
!80 = !{ptr @per_am35x_clkdm, !81, !"per_am35x_clkdm", i1 false, i1 false}
!81 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 382, i32 27}
!82 = !{ptr @per_am35x_wkdeps, !83, !"per_am35x_wkdeps", i1 false, i1 false}
!83 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 80, i32 25}
!84 = !{ptr @per_am35x_sleepdeps, !85, !"per_am35x_sleepdeps", i1 false, i1 false}
!85 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 184, i32 25}
!86 = !{ptr @.str.22, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 364, i32 11}
!88 = !{ptr @usbhost_am35x_clkdm, !89, !"usbhost_am35x_clkdm", i1 false, i1 false}
!89 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 363, i32 27}
!90 = !{ptr @usbhost_am35x_wkdeps, !91, !"usbhost_am35x_wkdeps", i1 false, i1 false}
!91 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 98, i32 25}
!92 = !{ptr @usbhost_am35x_sleepdeps, !93, !"usbhost_am35x_sleepdeps", i1 false, i1 false}
!93 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 196, i32 25}
!94 = !{ptr @.str.23, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 421, i32 11}
!96 = !{ptr @.str.24, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 422, i32 22}
!98 = !{ptr @dpll5_clkdm, !99, !"dpll5_clkdm", i1 false, i1 false}
!99 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 420, i32 27}
!100 = !{ptr @clkdm_am35x_autodeps, !101, !"clkdm_am35x_autodeps", i1 false, i1 false}
!101 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 441, i32 29}
!102 = !{ptr @clockdomains_omap3430, !103, !"clockdomains_omap3430", i1 false, i1 false}
!103 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 466, i32 28}
!104 = !{ptr @mpu_3xxx_clkdm, !105, !"mpu_3xxx_clkdm", i1 false, i1 false}
!105 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 222, i32 27}
!106 = !{ptr @.str.25, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 110, i32 18}
!108 = !{ptr @mpu_3xxx_wkdeps, !109, !"mpu_3xxx_wkdeps", i1 false, i1 false}
!109 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 107, i32 25}
!110 = !{ptr @.str.26, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 250, i32 22}
!112 = !{ptr @iva2_clkdm, !113, !"iva2_clkdm", i1 false, i1 false}
!113 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 248, i32 27}
!114 = !{ptr @iva2_wkdeps, !115, !"iva2_wkdeps", i1 false, i1 false}
!115 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 125, i32 25}
!116 = !{ptr @.str.27, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 292, i32 11}
!118 = !{ptr @d2d_clkdm, !119, !"d2d_clkdm", i1 false, i1 false}
!119 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 291, i32 27}
!120 = !{ptr @dss_3xxx_clkdm, !121, !"dss_3xxx_clkdm", i1 false, i1 false}
!121 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 325, i32 27}
!122 = !{ptr @dss_wkdeps, !123, !"dss_wkdeps", i1 false, i1 false}
!123 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 144, i32 25}
!124 = !{ptr @dss_sleepdeps, !125, !"dss_sleepdeps", i1 false, i1 false}
!125 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 166, i32 25}
!126 = !{ptr @.str.28, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 346, i32 11}
!128 = !{ptr @.str.29, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 347, i32 22}
!130 = !{ptr @cam_clkdm, !131, !"cam_clkdm", i1 false, i1 false}
!131 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 345, i32 27}
!132 = !{ptr @cam_wkdeps, !133, !"cam_wkdeps", i1 false, i1 false}
!133 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 136, i32 25}
!134 = !{ptr @cam_sleepdeps, !135, !"cam_sleepdeps", i1 false, i1 false}
!135 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 202, i32 25}
!136 = !{ptr @per_clkdm, !137, !"per_clkdm", i1 false, i1 false}
!137 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 372, i32 27}
!138 = !{ptr @per_wkdeps, !139, !"per_wkdeps", i1 false, i1 false}
!139 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 71, i32 25}
!140 = !{ptr @per_sleepdeps, !141, !"per_sleepdeps", i1 false, i1 false}
!141 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 178, i32 25}
!142 = !{ptr @.str.30, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 406, i32 11}
!144 = !{ptr @.str.31, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 407, i32 22}
!146 = !{ptr @dpll2_clkdm, !147, !"dpll2_clkdm", i1 false, i1 false}
!147 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 405, i32 27}
!148 = !{ptr @clockdomains_omap3430es1, !149, !"clockdomains_omap3430es1", i1 false, i1 false}
!149 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 477, i32 28}
!150 = !{ptr @.str.32, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 258, i32 11}
!152 = !{ptr @.str.33, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 259, i32 22}
!154 = !{ptr @gfx_3430es1_clkdm, !155, !"gfx_3430es1_clkdm", i1 false, i1 false}
!155 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 257, i32 27}
!156 = !{ptr @gfx_sgx_3xxx_wkdeps, !157, !"gfx_sgx_3xxx_wkdeps", i1 false, i1 false}
!157 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 57, i32 25}
!158 = !{ptr @clockdomains_omap3430es2plus, !159, !"clockdomains_omap3430es2plus", i1 false, i1 false}
!159 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 482, i32 28}
!160 = !{ptr @sgx_clkdm, !161, !"sgx_clkdm", i1 false, i1 false}
!161 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 266, i32 27}
!162 = !{ptr @.str.34, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 356, i32 22}
!164 = !{ptr @usbhost_clkdm, !165, !"usbhost_clkdm", i1 false, i1 false}
!165 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 354, i32 27}
!166 = !{ptr @usbhost_wkdeps, !167, !"usbhost_wkdeps", i1 false, i1 false}
!167 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 89, i32 25}
!168 = !{ptr @usbhost_sleepdeps, !169, !"usbhost_sleepdeps", i1 false, i1 false}
!169 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 190, i32 25}
!170 = !{ptr @clkdm_autodeps, !171, !"clkdm_autodeps", i1 false, i1 false}
!171 = !{!"../arch/arm/mach-omap2/clockdomains3xxx_data.c", i32 429, i32 29}
!172 = !{i32 1, !"wchar_size", i32 2}
!173 = !{i32 1, !"min_enum_size", i32 4}
!174 = !{i32 8, !"branch-target-enforcement", i32 0}
!175 = !{i32 8, !"sign-return-address", i32 0}
!176 = !{i32 8, !"sign-return-address-all", i32 0}
!177 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!178 = !{i32 7, !"uwtable", i32 1}
!179 = !{i32 7, !"frame-pointer", i32 2}
!180 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
