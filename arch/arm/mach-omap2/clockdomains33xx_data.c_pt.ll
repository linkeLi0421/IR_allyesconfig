; ModuleID = '/llk/IR_all_yes/arch/arm/mach-omap2/clockdomains33xx_data.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/clockdomains33xx_data.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clkdm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clockdomain = type { ptr, %union.anon, i16, i8, i8, i8, i8, i16, i16, ptr, ptr, i32, i32, %struct.list_head, i32 }
%union.anon = type { ptr }
%struct.list_head = type { ptr, ptr }

@am33xx_clkdm_operations = external dso_local global %struct.clkdm_ops, align 4
@clockdomains_am33xx = internal global [19 x ptr] [ptr @l4ls_am33xx_clkdm, ptr @l3s_am33xx_clkdm, ptr @l4fw_am33xx_clkdm, ptr @l3_am33xx_clkdm, ptr @l4hs_am33xx_clkdm, ptr @ocpwp_l3_am33xx_clkdm, ptr @pruss_ocp_am33xx_clkdm, ptr @cpsw_125mhz_am33xx_clkdm, ptr @lcdc_am33xx_clkdm, ptr @clk_24mhz_am33xx_clkdm, ptr @l4_wkup_am33xx_clkdm, ptr @l3_aon_am33xx_clkdm, ptr @l4_wkup_aon_am33xx_clkdm, ptr @mpu_am33xx_clkdm, ptr @l4_rtc_am33xx_clkdm, ptr @gfx_l3_am33xx_clkdm, ptr @gfx_l4ls_gfx_am33xx_clkdm, ptr @l4_cefuse_am33xx_clkdm, ptr null], section ".init.data", align 4
@l4ls_am33xx_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str, %union.anon { ptr @.str.1 }, i16 0, i8 3, i8 0, i8 0, i8 0, i16 0, i16 0, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@l3s_am33xx_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.2, %union.anon { ptr @.str.1 }, i16 0, i8 3, i8 0, i8 0, i8 0, i16 0, i16 4, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@l4fw_am33xx_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.3, %union.anon { ptr @.str.1 }, i16 0, i8 3, i8 0, i8 0, i8 0, i16 0, i16 8, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@l3_am33xx_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.4, %union.anon { ptr @.str.1 }, i16 0, i8 3, i8 0, i8 0, i8 0, i16 0, i16 12, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@l4hs_am33xx_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.5, %union.anon { ptr @.str.1 }, i16 0, i8 3, i8 0, i8 0, i8 0, i16 0, i16 284, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@ocpwp_l3_am33xx_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.6, %union.anon { ptr @.str.1 }, i16 0, i8 3, i8 0, i8 0, i8 0, i16 0, i16 300, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@pruss_ocp_am33xx_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.7, %union.anon { ptr @.str.1 }, i16 0, i8 3, i8 0, i8 0, i8 0, i16 0, i16 320, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@cpsw_125mhz_am33xx_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.8, %union.anon { ptr @.str.1 }, i16 0, i8 3, i8 0, i8 0, i8 0, i16 0, i16 324, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@lcdc_am33xx_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.9, %union.anon { ptr @.str.1 }, i16 0, i8 3, i8 0, i8 0, i8 0, i16 0, i16 328, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@clk_24mhz_am33xx_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.10, %union.anon { ptr @.str.1 }, i16 0, i8 3, i8 0, i8 0, i8 0, i16 0, i16 336, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@l4_wkup_am33xx_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.11, %union.anon { ptr @.str.12 }, i16 0, i8 3, i8 0, i8 0, i8 0, i16 1024, i16 0, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@l3_aon_am33xx_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.13, %union.anon { ptr @.str.12 }, i16 0, i8 3, i8 0, i8 0, i8 0, i16 1024, i16 24, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@l4_wkup_aon_am33xx_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.14, %union.anon { ptr @.str.12 }, i16 0, i8 3, i8 0, i8 0, i8 0, i16 1024, i16 204, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@mpu_am33xx_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.15, %union.anon { ptr @.str.16 }, i16 0, i8 3, i8 0, i8 0, i8 0, i16 1536, i16 0, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@l4_rtc_am33xx_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.17, %union.anon { ptr @.str.18 }, i16 0, i8 3, i8 0, i8 0, i8 0, i16 2048, i16 4, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@gfx_l3_am33xx_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.19, %union.anon { ptr @.str.20 }, i16 0, i8 3, i8 0, i8 0, i8 0, i16 2304, i16 0, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@gfx_l4ls_gfx_am33xx_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.21, %union.anon { ptr @.str.20 }, i16 0, i8 3, i8 0, i8 0, i8 0, i16 2304, i16 12, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@l4_cefuse_am33xx_clkdm = internal global { %struct.clockdomain, [48 x i8] } { %struct.clockdomain { ptr @.str.22, %union.anon { ptr @.str.23 }, i16 0, i8 3, i8 0, i8 0, i8 0, i16 2560, i16 0, ptr null, ptr null, i32 0, i32 0, %struct.list_head zeroinitializer, i32 0 }, [48 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"l4ls_clkdm\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"per_pwrdm\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"l3s_clkdm\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"l4fw_clkdm\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"l3_clkdm\00", [23 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"l4hs_clkdm\00", [21 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ocpwp_l3_clkdm\00", [17 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pruss_ocp_clkdm\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cpsw_125mhz_clkdm\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lcdc_clkdm\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clk_24mhz_clkdm\00", [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"l4_wkup_clkdm\00", [18 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"wkup_pwrdm\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"l3_aon_clkdm\00", [19 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"l4_wkup_aon_clkdm\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mpu_clkdm\00", [22 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mpu_pwrdm\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"l4_rtc_clkdm\00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rtc_pwrdm\00", [22 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"gfx_l3_clkdm\00", [19 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gfx_pwrdm\00", [22 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gfx_l4ls_gfx_clkdm\00", [45 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"l4_cefuse_clkdm\00", [16 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cefuse_pwrdm\00", [19 x i8] zeroinitializer }, align 32
@___asan_gen_.24 = private unnamed_addr constant [18 x i8] c"l4ls_am33xx_clkdm\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 25, i32 27 }
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"l3s_am33xx_clkdm\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 33, i32 27 }
@___asan_gen_.30 = private unnamed_addr constant [18 x i8] c"l4fw_am33xx_clkdm\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 41, i32 27 }
@___asan_gen_.33 = private unnamed_addr constant [16 x i8] c"l3_am33xx_clkdm\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 49, i32 27 }
@___asan_gen_.36 = private unnamed_addr constant [18 x i8] c"l4hs_am33xx_clkdm\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 57, i32 27 }
@___asan_gen_.39 = private unnamed_addr constant [22 x i8] c"ocpwp_l3_am33xx_clkdm\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 65, i32 27 }
@___asan_gen_.42 = private unnamed_addr constant [23 x i8] c"pruss_ocp_am33xx_clkdm\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 73, i32 27 }
@___asan_gen_.45 = private unnamed_addr constant [25 x i8] c"cpsw_125mhz_am33xx_clkdm\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 81, i32 27 }
@___asan_gen_.48 = private unnamed_addr constant [18 x i8] c"lcdc_am33xx_clkdm\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 89, i32 27 }
@___asan_gen_.51 = private unnamed_addr constant [23 x i8] c"clk_24mhz_am33xx_clkdm\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 97, i32 27 }
@___asan_gen_.54 = private unnamed_addr constant [21 x i8] c"l4_wkup_am33xx_clkdm\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 105, i32 27 }
@___asan_gen_.57 = private unnamed_addr constant [20 x i8] c"l3_aon_am33xx_clkdm\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 113, i32 27 }
@___asan_gen_.60 = private unnamed_addr constant [25 x i8] c"l4_wkup_aon_am33xx_clkdm\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 121, i32 27 }
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"mpu_am33xx_clkdm\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 129, i32 27 }
@___asan_gen_.66 = private unnamed_addr constant [20 x i8] c"l4_rtc_am33xx_clkdm\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 137, i32 27 }
@___asan_gen_.69 = private unnamed_addr constant [20 x i8] c"gfx_l3_am33xx_clkdm\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 145, i32 27 }
@___asan_gen_.72 = private unnamed_addr constant [26 x i8] c"gfx_l4ls_gfx_am33xx_clkdm\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 153, i32 27 }
@___asan_gen_.75 = private unnamed_addr constant [23 x i8] c"l4_cefuse_am33xx_clkdm\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 161, i32 27 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 26, i32 11 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 27, i32 22 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 34, i32 11 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 42, i32 11 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 50, i32 11 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 58, i32 11 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 66, i32 11 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 74, i32 11 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 82, i32 11 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 90, i32 11 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 98, i32 11 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 106, i32 11 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 107, i32 22 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 114, i32 11 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 122, i32 11 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 130, i32 11 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 131, i32 22 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 138, i32 11 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 139, i32 22 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 146, i32 11 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 147, i32 22 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 154, i32 11 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 162, i32 11 }
@___asan_gen_.147 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.148 = private constant [47 x i8] c"../arch/arm/mach-omap2/clockdomains33xx_data.c\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 163, i32 22 }
@llvm.compiler.used = appending global [42 x ptr] [ptr @l4ls_am33xx_clkdm, ptr @l3s_am33xx_clkdm, ptr @l4fw_am33xx_clkdm, ptr @l3_am33xx_clkdm, ptr @l4hs_am33xx_clkdm, ptr @ocpwp_l3_am33xx_clkdm, ptr @pruss_ocp_am33xx_clkdm, ptr @cpsw_125mhz_am33xx_clkdm, ptr @lcdc_am33xx_clkdm, ptr @clk_24mhz_am33xx_clkdm, ptr @l4_wkup_am33xx_clkdm, ptr @l3_aon_am33xx_clkdm, ptr @l4_wkup_aon_am33xx_clkdm, ptr @mpu_am33xx_clkdm, ptr @l4_rtc_am33xx_clkdm, ptr @gfx_l3_am33xx_clkdm, ptr @gfx_l4ls_gfx_am33xx_clkdm, ptr @l4_cefuse_am33xx_clkdm, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [42 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l4ls_am33xx_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l3s_am33xx_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l4fw_am33xx_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l3_am33xx_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l4hs_am33xx_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ocpwp_l3_am33xx_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pruss_ocp_am33xx_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpsw_125mhz_am33xx_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcdc_am33xx_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_24mhz_am33xx_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l4_wkup_am33xx_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l3_aon_am33xx_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l4_wkup_aon_am33xx_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu_am33xx_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l4_rtc_am33xx_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_l3_am33xx_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gfx_l4ls_gfx_am33xx_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @l4_cefuse_am33xx_clkdm to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @am33xx_clockdomains_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @clkdm_register_platform_funcs(ptr noundef nonnull @am33xx_clkdm_operations) #2
  %call1 = tail call i32 @clkdm_register_clkdms(ptr noundef nonnull @clockdomains_am33xx) #2
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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 42)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84}
!llvm.module.flags = !{!86, !87, !88, !89, !90, !91, !92, !93}
!llvm.ident = !{!94}

!0 = !{ptr @clockdomains_am33xx, !1, !"clockdomains_am33xx", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-omap2/clockdomains33xx_data.c", i32 169, i32 28}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-omap2/clockdomains33xx_data.c", i32 26, i32 11}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-omap2/clockdomains33xx_data.c", i32 27, i32 22}
!6 = !{ptr @l4ls_am33xx_clkdm, !7, !"l4ls_am33xx_clkdm", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-omap2/clockdomains33xx_data.c", i32 25, i32 27}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-omap2/clockdomains33xx_data.c", i32 34, i32 11}
!10 = !{ptr @l3s_am33xx_clkdm, !11, !"l3s_am33xx_clkdm", i1 false, i1 false}
!11 = !{!"../arch/arm/mach-omap2/clockdomains33xx_data.c", i32 33, i32 27}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../arch/arm/mach-omap2/clockdomains33xx_data.c", i32 42, i32 11}
!14 = !{ptr @l4fw_am33xx_clkdm, !15, !"l4fw_am33xx_clkdm", i1 false, i1 false}
!15 = !{!"../arch/arm/mach-omap2/clockdomains33xx_data.c", i32 41, i32 27}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../arch/arm/mach-omap2/clockdomains33xx_data.c", i32 50, i32 11}
!18 = !{ptr @l3_am33xx_clkdm, !19, !"l3_am33xx_clkdm", i1 false, i1 false}
!19 = !{!"../arch/arm/mach-omap2/clockdomains33xx_data.c", i32 49, i32 27}
!20 = !{ptr @.str.5, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../arch/arm/mach-omap2/clockdomains33xx_data.c", i32 58, i32 11}
!22 = !{ptr @l4hs_am33xx_clkdm, !23, !"l4hs_am33xx_clkdm", i1 false, i1 false}
!23 = !{!"../arch/arm/mach-omap2/clockdomains33xx_data.c", i32 57, i32 27}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../arch/arm/mach-omap2/clockdomains33xx_data.c", i32 66, i32 11}
!26 = !{ptr @ocpwp_l3_am33xx_clkdm, !27, !"ocpwp_l3_am33xx_clkdm", i1 false, i1 false}
!27 = !{!"../arch/arm/mach-omap2/clockdomains33xx_data.c", i32 65, i32 27}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../arch/arm/mach-omap2/clockdomains33xx_data.c", i32 74, i32 11}
!30 = !{ptr @pruss_ocp_am33xx_clkdm, !31, !"pruss_ocp_am33xx_clkdm", i1 false, i1 false}
!31 = !{!"../arch/arm/mach-omap2/clockdomains33xx_data.c", i32 73, i32 27}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../arch/arm/mach-omap2/clockdomains33xx_data.c", i32 82, i32 11}
!34 = !{ptr @cpsw_125mhz_am33xx_clkdm, !35, !"cpsw_125mhz_am33xx_clkdm", i1 false, i1 false}
!35 = !{!"../arch/arm/mach-omap2/clockdomains33xx_data.c", i32 81, i32 27}
!36 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../arch/arm/mach-omap2/clockdomains33xx_data.c", i32 90, i32 11}
!38 = !{ptr @lcdc_am33xx_clkdm, !39, !"lcdc_am33xx_clkdm", i1 false, i1 false}
!39 = !{!"../arch/arm/mach-omap2/clockdomains33xx_data.c", i32 89, i32 27}
!40 = !{ptr @.str.10, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../arch/arm/mach-omap2/clockdomains33xx_data.c", i32 98, i32 11}
!42 = !{ptr @clk_24mhz_am33xx_clkdm, !43, !"clk_24mhz_am33xx_clkdm", i1 false, i1 false}
!43 = !{!"../arch/arm/mach-omap2/clockdomains33xx_data.c", i32 97, i32 27}
!44 = !{ptr @.str.11, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../arch/arm/mach-omap2/clockdomains33xx_data.c", i32 106, i32 11}
!46 = !{ptr @.str.12, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../arch/arm/mach-omap2/clockdomains33xx_data.c", i32 107, i32 22}
!48 = !{ptr @l4_wkup_am33xx_clkdm, !49, !"l4_wkup_am33xx_clkdm", i1 false, i1 false}
!49 = !{!"../arch/arm/mach-omap2/clockdomains33xx_data.c", i32 105, i32 27}
!50 = !{ptr @.str.13, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../arch/arm/mach-omap2/clockdomains33xx_data.c", i32 114, i32 11}
!52 = !{ptr @l3_aon_am33xx_clkdm, !53, !"l3_aon_am33xx_clkdm", i1 false, i1 false}
!53 = !{!"../arch/arm/mach-omap2/clockdomains33xx_data.c", i32 113, i32 27}
!54 = !{ptr @.str.14, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../arch/arm/mach-omap2/clockdomains33xx_data.c", i32 122, i32 11}
!56 = !{ptr @l4_wkup_aon_am33xx_clkdm, !57, !"l4_wkup_aon_am33xx_clkdm", i1 false, i1 false}
!57 = !{!"../arch/arm/mach-omap2/clockdomains33xx_data.c", i32 121, i32 27}
!58 = !{ptr @.str.15, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../arch/arm/mach-omap2/clockdomains33xx_data.c", i32 130, i32 11}
!60 = !{ptr @.str.16, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../arch/arm/mach-omap2/clockdomains33xx_data.c", i32 131, i32 22}
!62 = !{ptr @mpu_am33xx_clkdm, !63, !"mpu_am33xx_clkdm", i1 false, i1 false}
!63 = !{!"../arch/arm/mach-omap2/clockdomains33xx_data.c", i32 129, i32 27}
!64 = !{ptr @.str.17, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../arch/arm/mach-omap2/clockdomains33xx_data.c", i32 138, i32 11}
!66 = !{ptr @.str.18, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../arch/arm/mach-omap2/clockdomains33xx_data.c", i32 139, i32 22}
!68 = !{ptr @l4_rtc_am33xx_clkdm, !69, !"l4_rtc_am33xx_clkdm", i1 false, i1 false}
!69 = !{!"../arch/arm/mach-omap2/clockdomains33xx_data.c", i32 137, i32 27}
!70 = !{ptr @.str.19, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../arch/arm/mach-omap2/clockdomains33xx_data.c", i32 146, i32 11}
!72 = !{ptr @.str.20, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../arch/arm/mach-omap2/clockdomains33xx_data.c", i32 147, i32 22}
!74 = !{ptr @gfx_l3_am33xx_clkdm, !75, !"gfx_l3_am33xx_clkdm", i1 false, i1 false}
!75 = !{!"../arch/arm/mach-omap2/clockdomains33xx_data.c", i32 145, i32 27}
!76 = !{ptr @.str.21, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../arch/arm/mach-omap2/clockdomains33xx_data.c", i32 154, i32 11}
!78 = !{ptr @gfx_l4ls_gfx_am33xx_clkdm, !79, !"gfx_l4ls_gfx_am33xx_clkdm", i1 false, i1 false}
!79 = !{!"../arch/arm/mach-omap2/clockdomains33xx_data.c", i32 153, i32 27}
!80 = !{ptr @.str.22, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../arch/arm/mach-omap2/clockdomains33xx_data.c", i32 162, i32 11}
!82 = !{ptr @.str.23, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../arch/arm/mach-omap2/clockdomains33xx_data.c", i32 163, i32 22}
!84 = !{ptr @l4_cefuse_am33xx_clkdm, !85, !"l4_cefuse_am33xx_clkdm", i1 false, i1 false}
!85 = !{!"../arch/arm/mach-omap2/clockdomains33xx_data.c", i32 161, i32 27}
!86 = !{i32 1, !"wchar_size", i32 2}
!87 = !{i32 1, !"min_enum_size", i32 4}
!88 = !{i32 8, !"branch-target-enforcement", i32 0}
!89 = !{i32 8, !"sign-return-address", i32 0}
!90 = !{i32 8, !"sign-return-address-all", i32 0}
!91 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!92 = !{i32 7, !"uwtable", i32 1}
!93 = !{i32 7, !"frame-pointer", i32 2}
!94 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
