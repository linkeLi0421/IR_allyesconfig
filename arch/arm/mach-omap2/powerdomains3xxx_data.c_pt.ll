; ModuleID = '/llk/IR_all_yes/arch/arm/mach-omap2/powerdomains3xxx_data.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/powerdomains3xxx_data.c"
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
%struct.omap_domain_base = type { i32, ptr, i16 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }

@omap3_pwrdm_operations = external dso_local global %struct.pwrdm_ops, align 4
@powerdomains_am35x = internal global [13 x ptr] [ptr @wkup_omap2_pwrdm, ptr @mpu_am35x_pwrdm, ptr @neon_am35x_pwrdm, ptr @core_am35x_pwrdm, ptr @sgx_am35x_pwrdm, ptr @dss_am35x_pwrdm, ptr @per_am35x_pwrdm, ptr @emu_pwrdm, ptr @dpll1_pwrdm, ptr @dpll3_pwrdm, ptr @dpll4_pwrdm, ptr @dpll5_pwrdm, ptr null], section ".init.data", align 4
@ti81xx_pwrdm_operations = internal global { %struct.pwrdm_ops, [44 x i8] } { %struct.pwrdm_ops { ptr @ti81xx_pwrdm_set_next_pwrst, ptr @ti81xx_pwrdm_read_next_pwrst, ptr @ti81xx_pwrdm_read_pwrst, ptr null, ptr null, ptr null, ptr null, ptr @ti81xx_pwrdm_read_logic_pwrst, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @ti81xx_pwrdm_wait_transition, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@powerdomains_ti814x = internal global [10 x ptr] [ptr @alwon_81xx_pwrdm, ptr @device_81xx_pwrdm, ptr @active_81xx_pwrdm, ptr @default_81xx_pwrdm, ptr @gem_814x_pwrdm, ptr @ivahd_814x_pwrdm, ptr @hdvpss_814x_pwrdm, ptr @sgx_814x_pwrdm, ptr @isp_814x_pwrdm, ptr null], section ".init.data", align 4
@powerdomains_ti816x = internal global [9 x ptr] [ptr @alwon_81xx_pwrdm, ptr @device_81xx_pwrdm, ptr @active_81xx_pwrdm, ptr @default_81xx_pwrdm, ptr @ivahd0_816x_pwrdm, ptr @ivahd1_816x_pwrdm, ptr @ivahd2_816x_pwrdm, ptr @sgx_816x_pwrdm, ptr null], section ".init.data", align 4
@powerdomains_omap3430_common = internal global [13 x ptr] [ptr @wkup_omap2_pwrdm, ptr @iva2_pwrdm, ptr @mpu_3xxx_pwrdm, ptr @neon_pwrdm, ptr @cam_pwrdm, ptr @dss_pwrdm, ptr @per_pwrdm, ptr @emu_pwrdm, ptr @dpll1_pwrdm, ptr @dpll2_pwrdm, ptr @dpll3_pwrdm, ptr @dpll4_pwrdm, ptr null], section ".init.data", align 4
@powerdomains_omap3430es1 = internal global [3 x ptr] [ptr @gfx_omap2_pwrdm, ptr @core_3xxx_pre_es3_1_pwrdm, ptr null], section ".init.data", align 4
@powerdomains_omap3430es2_es3_0 = internal global [5 x ptr] [ptr @core_3xxx_pre_es3_1_pwrdm, ptr @sgx_pwrdm, ptr @usbhost_pwrdm, ptr @dpll5_pwrdm, ptr null], section ".init.data", align 4
@powerdomains_omap3430es3_1plus = internal global [5 x ptr] [ptr @core_3xxx_es3_1_pwrdm, ptr @sgx_pwrdm, ptr @usbhost_pwrdm, ptr @dpll5_pwrdm, ptr null], section ".init.data", align 4
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"arch/arm/mach-omap2/powerdomains3xxx_data.c\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"OMAP3 powerdomain init: unknown chip type\0A\00", [53 x i8] zeroinitializer }, align 32
@wkup_omap2_pwrdm = external dso_local global %struct.powerdomain, align 8
@mpu_am35x_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.2, %union.anon { ptr @.str.3 }, i16 256, i8 8, i8 8, i8 2, i8 1, [5 x i8] c"\08\00\00\00\00", [5 x i8] c"\08\00\00\00\00", i8 0, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@neon_am35x_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.4, %union.anon { ptr @.str.3 }, i16 2816, i8 8, i8 8, i8 0, i8 0, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, i8 0, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@core_am35x_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.5, %union.anon { ptr @.str.6 }, i16 512, i8 8, i8 8, i8 0, i8 2, [5 x i8] c"\08\08\00\00\00", [5 x i8] c"\08\08\00\00\00", i8 0, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@sgx_am35x_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.7, %union.anon { ptr @.str.6 }, i16 768, i8 8, i8 8, i8 0, i8 1, [5 x i8] c"\08\00\00\00\00", [5 x i8] c"\08\00\00\00\00", i8 0, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@dss_am35x_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.8, %union.anon { ptr @.str.6 }, i16 1536, i8 8, i8 8, i8 0, i8 1, [5 x i8] c"\08\00\00\00\00", [5 x i8] c"\08\00\00\00\00", i8 0, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@per_am35x_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.9, %union.anon { ptr @.str.6 }, i16 2048, i8 8, i8 8, i8 0, i8 1, [5 x i8] c"\08\00\00\00\00", [5 x i8] c"\08\00\00\00\00", i8 0, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@emu_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.10, %union.anon { ptr @.str.6 }, i16 2304, i8 0, i8 0, i8 0, i8 0, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, i8 0, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@dpll1_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.11, %union.anon { ptr @.str.3 }, i16 256, i8 0, i8 0, i8 0, i8 0, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, i8 0, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@dpll3_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.12, %union.anon { ptr @.str.6 }, i16 1280, i8 0, i8 0, i8 0, i8 0, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, i8 0, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@dpll4_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.13, %union.anon { ptr @.str.6 }, i16 1280, i8 0, i8 0, i8 0, i8 0, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, i8 0, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@dpll5_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.14, %union.anon { ptr @.str.6 }, i16 1280, i8 0, i8 0, i8 0, i8 0, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, i8 0, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mpu_pwrdm\00", [22 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mpu_iva\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"neon_pwrdm\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"core_pwrdm\00", [21 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"core\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sgx_pwrdm\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dss_pwrdm\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"per_pwrdm\00", [22 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"emu_pwrdm\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dpll1_pwrdm\00", [20 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dpll3_pwrdm\00", [20 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dpll4_pwrdm\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dpll5_pwrdm\00", [20 x i8] zeroinitializer }, align 32
@prm_base = external dso_local local_unnamed_addr global %struct.omap_domain_base, align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@ti81xx_pwrdm_wait_transition._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str, i32 557, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013powerdomain: %s timeout waiting for transition\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ti81xx_pwrdm_wait_transition\00", [35 x i8] zeroinitializer }, align 32
@ti81xx_pwrdm_wait_transition._entry_ptr = internal global ptr @ti81xx_pwrdm_wait_transition._entry, section ".printk_index", align 4
@ti81xx_pwrdm_wait_transition.__UNIQUE_ID_ddebug167 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.17, ptr @.str.16, ptr @.str, ptr @.str.18, i8 0, i8 -116, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"powerdomains3xxx_data\00", [42 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"powerdomain: completed transition in %d loops\0A\00", [49 x i8] zeroinitializer }, align 32
@alwon_81xx_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.19, %union.anon { ptr @.str.6 }, i16 6144, i8 9, i8 0, i8 0, i8 0, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, i8 0, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@device_81xx_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.20, %union.anon { ptr @.str.6 }, i16 0, i8 0, i8 0, i8 0, i8 0, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, i8 0, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@active_81xx_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.21, %union.anon { ptr @.str.6 }, i16 2560, i8 9, i8 0, i8 0, i8 0, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, i8 0, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@default_81xx_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.22, %union.anon { ptr @.str.6 }, i16 2816, i8 9, i8 0, i8 0, i8 0, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, i8 0, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@gem_814x_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.23, %union.anon { ptr @.str.24 }, i16 2560, i8 9, i8 0, i8 0, i8 0, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, i8 0, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@ivahd_814x_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.25, %union.anon { ptr @.str.26 }, i16 3072, i8 9, i8 0, i8 0, i8 0, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, i8 0, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@hdvpss_814x_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.27, %union.anon { ptr @.str.24 }, i16 3584, i8 9, i8 0, i8 0, i8 0, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, i8 0, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@sgx_814x_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.7, %union.anon { ptr @.str.6 }, i16 3840, i8 9, i8 0, i8 0, i8 0, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, i8 0, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@isp_814x_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.28, %union.anon { ptr @.str.6 }, i16 3328, i8 9, i8 0, i8 0, i8 0, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, i8 0, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"alwon_pwrdm\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"device_pwrdm\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"active_pwrdm\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"default_pwrdm\00", [18 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gem_pwrdm\00", [22 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dsp\00", [28 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ivahd_pwrdm\00", [20 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"iva\00", [28 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hdvpss_pwrdm\00", [19 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"isp_pwrdm\00", [22 x i8] zeroinitializer }, align 32
@ivahd0_816x_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.29, %union.anon { ptr @.str.3 }, i16 3072, i8 9, i8 0, i8 0, i8 0, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, i8 0, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@ivahd1_816x_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.30, %union.anon { ptr @.str.3 }, i16 3328, i8 9, i8 0, i8 0, i8 0, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, i8 0, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@ivahd2_816x_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.31, %union.anon { ptr @.str.3 }, i16 3584, i8 9, i8 0, i8 0, i8 0, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, i8 0, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@sgx_816x_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.7, %union.anon { ptr @.str.6 }, i16 3840, i8 9, i8 0, i8 0, i8 0, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, i8 0, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ivahd0_pwrdm\00", [19 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ivahd1_pwrdm\00", [19 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ivahd2_pwrdm\00", [19 x i8] zeroinitializer }, align 32
@iva2_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.32, %union.anon { ptr @.str.3 }, i16 -2048, i8 11, i8 3, i8 0, i8 4, [5 x i8] c"\03\03\03\03\00", [5 x i8] c"\08\08\09\08\00", i8 0, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@mpu_3xxx_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.2, %union.anon { ptr @.str.3 }, i16 256, i8 11, i8 3, i8 2, i8 1, [5 x i8] c"\03\00\00\00\00", [5 x i8] c"\09\00\00\00\00", i8 0, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@neon_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.4, %union.anon { ptr @.str.3 }, i16 2816, i8 11, i8 2, i8 0, i8 0, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, i8 0, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@cam_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.33, %union.anon { ptr @.str.6 }, i16 1792, i8 11, i8 2, i8 0, i8 1, [5 x i8] c"\02\00\00\00\00", [5 x i8] c"\08\00\00\00\00", i8 0, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@dss_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.8, %union.anon { ptr @.str.6 }, i16 1536, i8 11, i8 2, i8 0, i8 1, [5 x i8] c"\02\00\00\00\00", [5 x i8] c"\08\00\00\00\00", i8 0, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@per_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.9, %union.anon { ptr @.str.6 }, i16 2048, i8 11, i8 3, i8 0, i8 1, [5 x i8] c"\02\00\00\00\00", [5 x i8] c"\08\00\00\00\00", i8 0, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@dpll2_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.34, %union.anon { ptr @.str.3 }, i16 -2048, i8 0, i8 0, i8 0, i8 0, [5 x i8] zeroinitializer, [5 x i8] zeroinitializer, i8 0, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"iva2_pwrdm\00", [21 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cam_pwrdm\00", [22 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dpll2_pwrdm\00", [20 x i8] zeroinitializer }, align 32
@gfx_omap2_pwrdm = external dso_local global %struct.powerdomain, align 8
@core_3xxx_pre_es3_1_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.5, %union.anon { ptr @.str.6 }, i16 512, i8 11, i8 3, i8 0, i8 2, [5 x i8] c"\03\03\00\00\00", [5 x i8] c"\0B\0B\00\00\00", i8 0, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@sgx_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.7, %union.anon { ptr @.str.6 }, i16 768, i8 9, i8 2, i8 0, i8 1, [5 x i8] c"\02\00\00\00\00", [5 x i8] c"\08\00\00\00\00", i8 0, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@usbhost_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.35, %union.anon { ptr @.str.6 }, i16 3072, i8 11, i8 2, i8 0, i8 1, [5 x i8] c"\02\00\00\00\00", [5 x i8] c"\08\00\00\00\00", i8 0, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"usbhost_pwrdm\00", [18 x i8] zeroinitializer }, align 32
@core_3xxx_es3_1_pwrdm = internal global { %struct.powerdomain, [64 x i8] } { %struct.powerdomain { ptr @.str.5, %union.anon { ptr @.str.6 }, i16 512, i8 11, i8 3, i8 1, i8 2, [5 x i8] c"\03\03\00\00\00", [5 x i8] c"\0B\0B\00\00\00", i8 0, [11 x ptr] zeroinitializer, %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, [4 x i32] zeroinitializer, i32 0, [5 x i32] zeroinitializer, %struct.spinlock zeroinitializer, i32 0, i8 0, i8 0, i32 0, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, [5 x i32] zeroinitializer, i64 0, [4 x i64] zeroinitializer, i32 0 }, [64 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [11 x i64] [i64 9, i64 32, i64 890699828, i64 890700084, i64 2168455297, i64 2168455553, i64 2168455809, i64 2170552449, i64 2170552705, i64 2170552961, i64 2170553217]
@__sancov_gen_cov_switch_values.36 = internal global [11 x i64] [i64 9, i64 32, i64 875561012, i64 875561268, i64 875561524, i64 875561780, i64 875562036, i64 875562292, i64 909115444, i64 909115700, i64 909115956]
@___asan_gen_.37 = private unnamed_addr constant [24 x i8] c"ti81xx_pwrdm_operations\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 567, i32 25 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 618, i32 4 }
@___asan_gen_.46 = private unnamed_addr constant [16 x i8] c"mpu_am35x_pwrdm\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 69, i32 27 }
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"neon_am35x_pwrdm\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 276, i32 27 }
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"core_am35x_pwrdm\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 134, i32 27 }
@___asan_gen_.55 = private unnamed_addr constant [16 x i8] c"sgx_am35x_pwrdm\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 202, i32 27 }
@___asan_gen_.58 = private unnamed_addr constant [16 x i8] c"dss_am35x_pwrdm\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 166, i32 27 }
@___asan_gen_.61 = private unnamed_addr constant [16 x i8] c"per_am35x_pwrdm\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 247, i32 27 }
@___asan_gen_.64 = private unnamed_addr constant [10 x i8] c"emu_pwrdm\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 262, i32 27 }
@___asan_gen_.67 = private unnamed_addr constant [12 x i8] c"dpll1_pwrdm\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 306, i32 27 }
@___asan_gen_.70 = private unnamed_addr constant [12 x i8] c"dpll3_pwrdm\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 318, i32 27 }
@___asan_gen_.73 = private unnamed_addr constant [12 x i8] c"dpll4_pwrdm\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 324, i32 27 }
@___asan_gen_.76 = private unnamed_addr constant [12 x i8] c"dpll5_pwrdm\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 330, i32 27 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 70, i32 13 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 82, i32 25 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 277, i32 13 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 135, i32 13 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 148, i32 25 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 203, i32 13 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 167, i32 13 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 248, i32 13 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 263, i32 11 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 307, i32 11 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 319, i32 11 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 325, i32 11 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 331, i32 11 }
@___asan_gen_.118 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 556, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 561, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant [17 x i8] c"alwon_81xx_pwrdm\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 336, i32 27 }
@___asan_gen_.136 = private unnamed_addr constant [18 x i8] c"device_81xx_pwrdm\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 343, i32 27 }
@___asan_gen_.139 = private unnamed_addr constant [18 x i8] c"active_81xx_pwrdm\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 384, i32 27 }
@___asan_gen_.142 = private unnamed_addr constant [19 x i8] c"default_81xx_pwrdm\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 391, i32 27 }
@___asan_gen_.145 = private unnamed_addr constant [15 x i8] c"gem_814x_pwrdm\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 349, i32 27 }
@___asan_gen_.148 = private unnamed_addr constant [17 x i8] c"ivahd_814x_pwrdm\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 356, i32 27 }
@___asan_gen_.151 = private unnamed_addr constant [18 x i8] c"hdvpss_814x_pwrdm\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 363, i32 27 }
@___asan_gen_.154 = private unnamed_addr constant [15 x i8] c"sgx_814x_pwrdm\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 370, i32 27 }
@___asan_gen_.157 = private unnamed_addr constant [15 x i8] c"isp_814x_pwrdm\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 377, i32 27 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 337, i32 13 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 344, i32 13 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 385, i32 13 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 392, i32 13 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 350, i32 11 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 353, i32 23 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 357, i32 11 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 360, i32 23 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 364, i32 11 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 378, i32 11 }
@___asan_gen_.190 = private unnamed_addr constant [18 x i8] c"ivahd0_816x_pwrdm\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 398, i32 27 }
@___asan_gen_.193 = private unnamed_addr constant [18 x i8] c"ivahd1_816x_pwrdm\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 405, i32 27 }
@___asan_gen_.196 = private unnamed_addr constant [18 x i8] c"ivahd2_816x_pwrdm\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 412, i32 27 }
@___asan_gen_.199 = private unnamed_addr constant [15 x i8] c"sgx_816x_pwrdm\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 419, i32 27 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 399, i32 13 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 406, i32 13 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 413, i32 13 }
@___asan_gen_.211 = private unnamed_addr constant [11 x i8] c"iva2_pwrdm\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 32, i32 27 }
@___asan_gen_.214 = private unnamed_addr constant [15 x i8] c"mpu_3xxx_pwrdm\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 53, i32 27 }
@___asan_gen_.217 = private unnamed_addr constant [11 x i8] c"neon_pwrdm\00", align 1
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 268, i32 27 }
@___asan_gen_.220 = private unnamed_addr constant [10 x i8] c"cam_pwrdm\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 217, i32 27 }
@___asan_gen_.223 = private unnamed_addr constant [10 x i8] c"dss_pwrdm\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 151, i32 27 }
@___asan_gen_.226 = private unnamed_addr constant [10 x i8] c"per_pwrdm\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 232, i32 27 }
@___asan_gen_.229 = private unnamed_addr constant [12 x i8] c"dpll2_pwrdm\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 312, i32 27 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 33, i32 13 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 218, i32 13 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 313, i32 11 }
@___asan_gen_.241 = private unnamed_addr constant [26 x i8] c"core_3xxx_pre_es3_1_pwrdm\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 95, i32 27 }
@___asan_gen_.244 = private unnamed_addr constant [10 x i8] c"sgx_pwrdm\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 186, i32 27 }
@___asan_gen_.247 = private unnamed_addr constant [14 x i8] c"usbhost_pwrdm\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 284, i32 27 }
@___asan_gen_.250 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 285, i32 13 }
@___asan_gen_.253 = private unnamed_addr constant [22 x i8] c"core_3xxx_es3_1_pwrdm\00", align 1
@___asan_gen_.254 = private constant [47 x i8] c"../arch/arm/mach-omap2/powerdomains3xxx_data.c\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.254, i32 112, i32 27 }
@llvm.compiler.used = appending global [74 x ptr] [ptr @ti81xx_pwrdm_wait_transition._entry, ptr @ti81xx_pwrdm_wait_transition._entry_ptr, ptr @ti81xx_pwrdm_operations, ptr @.str, ptr @.str.1, ptr @mpu_am35x_pwrdm, ptr @neon_am35x_pwrdm, ptr @core_am35x_pwrdm, ptr @sgx_am35x_pwrdm, ptr @dss_am35x_pwrdm, ptr @per_am35x_pwrdm, ptr @emu_pwrdm, ptr @dpll1_pwrdm, ptr @dpll3_pwrdm, ptr @dpll4_pwrdm, ptr @dpll5_pwrdm, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @alwon_81xx_pwrdm, ptr @device_81xx_pwrdm, ptr @active_81xx_pwrdm, ptr @default_81xx_pwrdm, ptr @gem_814x_pwrdm, ptr @ivahd_814x_pwrdm, ptr @hdvpss_814x_pwrdm, ptr @sgx_814x_pwrdm, ptr @isp_814x_pwrdm, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @ivahd0_816x_pwrdm, ptr @ivahd1_816x_pwrdm, ptr @ivahd2_816x_pwrdm, ptr @sgx_816x_pwrdm, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @iva2_pwrdm, ptr @mpu_3xxx_pwrdm, ptr @neon_pwrdm, ptr @cam_pwrdm, ptr @dss_pwrdm, ptr @per_pwrdm, ptr @dpll2_pwrdm, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @core_3xxx_pre_es3_1_pwrdm, ptr @sgx_pwrdm, ptr @usbhost_pwrdm, ptr @.str.35, ptr @core_3xxx_es3_1_pwrdm], section "llvm.metadata"
@0 = internal global [73 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti81xx_pwrdm_operations to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu_am35x_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @neon_am35x_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_am35x_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgx_am35x_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dss_am35x_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @per_am35x_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emu_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpll1_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpll3_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpll4_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpll5_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti81xx_pwrdm_wait_transition._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @alwon_81xx_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @device_81xx_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @active_81xx_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_81xx_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gem_814x_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivahd_814x_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdvpss_814x_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgx_814x_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp_814x_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivahd0_816x_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivahd1_816x_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ivahd2_816x_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgx_816x_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iva2_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpu_3xxx_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @neon_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dss_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @per_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpll2_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_3xxx_pre_es3_1_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sgx_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usbhost_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @core_3xxx_es3_1_pwrdm to i32), i32 320, i32 384, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @omap3xxx_powerdomains_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @omap_rev() #5
  %and.i = and i32 %call.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 52
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %call.i69 = tail call i32 @omap_rev() #5
  %shr.mask.i = and i32 %call.i69, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2130706432, i32 %shr.mask.i)
  %cmp.i70.not = icmp eq i32 %shr.mask.i, -2130706432
  br i1 %cmp.i70.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call.i72 = tail call i32 @omap_rev() #5
  %shr.mask.i73 = and i32 %call.i72, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2130706432, i32 %shr.mask.i73)
  %cmp.i74.not = icmp eq i32 %shr.mask.i73, -2130706432
  br i1 %cmp.i74.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %call6 = tail call i32 @pwrdm_register_platform_funcs(ptr noundef nonnull @omap3_pwrdm_operations) #5
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %call8 = tail call i32 @omap_rev() #5
  %0 = zext i32 %call8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call8, label %if.else31 [
    i32 890699828, label %if.end7.if.then10_crit_edge
    i32 890700084, label %if.end7.if.then10_crit_edge76
    i32 -2126511999, label %if.end7.if.then17_crit_edge
    i32 -2126511743, label %if.end7.if.then17_crit_edge77
    i32 -2126511487, label %if.end7.if.then17_crit_edge78
    i32 -2124414847, label %if.end7.if.then28_crit_edge
    i32 -2124414591, label %if.end7.if.then28_crit_edge79
    i32 -2124414335, label %if.end7.if.then28_crit_edge80
    i32 -2124414079, label %if.end7.if.then28_crit_edge81
  ]

if.end7.if.then28_crit_edge81:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then28

if.end7.if.then28_crit_edge80:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then28

if.end7.if.then28_crit_edge79:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then28

if.end7.if.then28_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then28

if.end7.if.then17_crit_edge78:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then17

if.end7.if.then17_crit_edge77:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then17

if.end7.if.then17_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then17

if.end7.if.then10_crit_edge76:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

if.end7.if.then10_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then10

if.then10:                                        ; preds = %if.end7.if.then10_crit_edge, %if.end7.if.then10_crit_edge76
  %call11 = tail call i32 @pwrdm_register_pwrdms(ptr noundef nonnull @powerdomains_am35x) #5
  br label %if.end57

if.then17:                                        ; preds = %if.end7.if.then17_crit_edge, %if.end7.if.then17_crit_edge77, %if.end7.if.then17_crit_edge78
  %call18 = tail call i32 @pwrdm_register_platform_funcs(ptr noundef nonnull @ti81xx_pwrdm_operations) #5
  %call19 = tail call i32 @pwrdm_register_pwrdms(ptr noundef nonnull @powerdomains_ti814x) #5
  br label %if.end57

if.then28:                                        ; preds = %if.end7.if.then28_crit_edge, %if.end7.if.then28_crit_edge79, %if.end7.if.then28_crit_edge80, %if.end7.if.then28_crit_edge81
  %call29 = tail call i32 @pwrdm_register_platform_funcs(ptr noundef nonnull @ti81xx_pwrdm_operations) #5
  %call30 = tail call i32 @pwrdm_register_pwrdms(ptr noundef nonnull @powerdomains_ti816x) #5
  br label %if.end57

if.else31:                                        ; preds = %if.end7
  %call32 = tail call i32 @pwrdm_register_pwrdms(ptr noundef nonnull @powerdomains_omap3430_common) #5
  %1 = zext i32 %call8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %call8, label %do.end [
    i32 875561012, label %sw.bb
    i32 875561268, label %if.else31.sw.bb34_crit_edge
    i32 875561524, label %if.else31.sw.bb34_crit_edge82
    i32 875561780, label %if.else31.sw.bb34_crit_edge83
    i32 909115444, label %if.else31.sw.bb34_crit_edge84
    i32 875562036, label %if.else31.sw.bb36_crit_edge
    i32 875562292, label %if.else31.sw.bb36_crit_edge85
    i32 909115700, label %if.else31.sw.bb36_crit_edge86
    i32 909115956, label %if.else31.sw.bb36_crit_edge87
  ]

if.else31.sw.bb36_crit_edge87:                    ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb36

if.else31.sw.bb36_crit_edge86:                    ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb36

if.else31.sw.bb36_crit_edge85:                    ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb36

if.else31.sw.bb36_crit_edge:                      ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb36

if.else31.sw.bb34_crit_edge84:                    ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb34

if.else31.sw.bb34_crit_edge83:                    ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb34

if.else31.sw.bb34_crit_edge82:                    ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb34

if.else31.sw.bb34_crit_edge:                      ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.bb34

sw.bb:                                            ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #7
  %call33 = tail call i32 @pwrdm_register_pwrdms(ptr noundef nonnull @powerdomains_omap3430es1) #5
  br label %if.end57

sw.bb34:                                          ; preds = %if.else31.sw.bb34_crit_edge, %if.else31.sw.bb34_crit_edge82, %if.else31.sw.bb34_crit_edge83, %if.else31.sw.bb34_crit_edge84
  %call35 = tail call i32 @pwrdm_register_pwrdms(ptr noundef nonnull @powerdomains_omap3430es2_es3_0) #5
  br label %if.end57

sw.bb36:                                          ; preds = %if.else31.sw.bb36_crit_edge, %if.else31.sw.bb36_crit_edge85, %if.else31.sw.bb36_crit_edge86, %if.else31.sw.bb36_crit_edge87
  %call37 = tail call i32 @pwrdm_register_pwrdms(ptr noundef nonnull @powerdomains_omap3430es3_1plus) #5
  br label %if.end57

do.end:                                           ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 618, i32 noundef 9, ptr noundef nonnull @.str.1) #5
  br label %if.end57

if.end57:                                         ; preds = %do.end, %sw.bb36, %sw.bb34, %sw.bb, %if.then28, %if.then17, %if.then10
  %call58 = tail call i32 @pwrdm_complete_init() #5
  br label %cleanup

cleanup:                                          ; preds = %if.end57, %land.lhs.true.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_register_platform_funcs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_rev() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_register_pwrdms(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pwrdm_complete_init() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti81xx_pwrdm_set_next_pwrst(ptr nocapture noundef readonly %pwrdm, i8 noundef zeroext %pwrst) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i8 %pwrst to i32
  %prcm_offs = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 2
  %0 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %prcm_offs, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %conv.i.i = sext i16 %1 to i32
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 %conv.i.i
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !167
  %4 = and i32 %3, -50331649
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #5
  %or.i = or i32 %5, %conv
  %6 = tail call i32 @llvm.bswap.i32(i32 %or.i) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %7 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %add.ptr.i2.i = getelementptr i8, ptr %7, i32 %conv.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i2.i, i32 %6) #5, !srcloc !168
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti81xx_pwrdm_read_next_pwrst(ptr nocapture noundef readonly %pwrdm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %prcm_offs = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 2
  %0 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %prcm_offs, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %conv.i.i = sext i16 %1 to i32
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 %conv.i.i
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !167
  %4 = lshr i32 %3, 24
  %and.i = and i32 %4, 3
  ret i32 %and.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti81xx_pwrdm_read_pwrst(ptr nocapture noundef readonly %pwrdm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %prcm_offs = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 2
  %0 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %prcm_offs, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 3840, i16 %1)
  %cmp = icmp eq i16 %1, 3840
  %conv3 = select i1 %cmp, i32 16, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %conv.i.i = sext i16 %1 to i32
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 %conv.i.i
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %conv3
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #5, !srcloc !167
  %4 = lshr i32 %3, 24
  %and.i = and i32 %4, 3
  ret i32 %and.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti81xx_pwrdm_read_logic_pwrst(ptr nocapture noundef readonly %pwrdm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %prcm_offs = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 2
  %0 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %prcm_offs, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 3840, i16 %1)
  %cmp = icmp eq i16 %1, 3840
  %conv3 = select i1 %cmp, i32 16, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %conv.i.i = sext i16 %1 to i32
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 %conv.i.i
  %add.ptr2.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %conv3
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #5, !srcloc !167
  %4 = lshr i32 %3, 26
  %and.i = and i32 %4, 1
  ret i32 %and.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti81xx_pwrdm_wait_transition(ptr nocapture noundef readonly %pwrdm) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %prcm_offs = getelementptr inbounds %struct.powerdomain, ptr %pwrdm, i32 0, i32 2
  %0 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %prcm_offs, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 3840, i16 %1)
  %cmp28 = icmp eq i16 %1, 3840
  %conv329 = select i1 %cmp28, i32 16, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %conv.i30 = sext i16 %1 to i32
  %add.ptr.i31 = getelementptr i8, ptr %2, i32 %conv.i30
  %add.ptr2.i32 = getelementptr i8, ptr %add.ptr.i31, i32 %conv329
  %3 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i32) #5, !srcloc !167
  %4 = and i32 %3, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not33 = icmp eq i32 %4, 0
  br i1 %tobool.not33, label %entry.do.body9_crit_edge, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  br label %land.rhs

entry.do.body9_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body9

land.rhs:                                         ; preds = %while.body.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %c.034 = phi i32 [ %inc, %while.body.land.rhs_crit_edge ], [ 0, %entry.land.rhs_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 100000, i32 %c.034)
  %exitcond.not = icmp eq i32 %c.034, 100000
  br i1 %exitcond.not, label %do.end, label %while.body

while.body:                                       ; preds = %land.rhs
  %inc = add nuw nsw i32 %c.034, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %5(i32 noundef 214748) #5
  %6 = ptrtoint ptr %prcm_offs to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %prcm_offs, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 3840, i16 %7)
  %cmp = icmp eq i16 %7, 3840
  %conv3 = select i1 %cmp, i32 16, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1) to i32))
  %8 = load ptr, ptr getelementptr inbounds (%struct.omap_domain_base, ptr @prm_base, i32 0, i32 1), align 4
  %conv.i = sext i16 %7 to i32
  %add.ptr.i = getelementptr i8, ptr %8, i32 %conv.i
  %add.ptr2.i = getelementptr i8, ptr %add.ptr.i, i32 %conv3
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #5, !srcloc !167
  %10 = and i32 %9, 4096
  %tobool.not = icmp eq i32 %10, 0
  br i1 %tobool.not, label %while.body.do.body9_crit_edge, label %while.body.land.rhs_crit_edge

while.body.land.rhs_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.rhs

while.body.do.body9_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body9

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #7
  %11 = ptrtoint ptr %pwrdm to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %pwrdm, align 8
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.15, ptr noundef %12) #8
  br label %cleanup

do.body9:                                         ; preds = %while.body.do.body9_crit_edge, %entry.do.body9_crit_edge
  %c.125 = phi i32 [ 0, %entry.do.body9_crit_edge ], [ %inc, %while.body.do.body9_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ti81xx_pwrdm_wait_transition.__UNIQUE_ID_ddebug167, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ti81xx_pwrdm_wait_transition, %if.then15)) #5
          to label %cleanup [label %if.then15], !srcloc !169

if.then15:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ti81xx_pwrdm_wait_transition.__UNIQUE_ID_ddebug167, ptr noundef nonnull @.str.18, i32 noundef %c.125) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %do.body9, %do.end
  %retval.0 = phi i32 [ -11, %do.end ], [ 0, %if.then15 ], [ 0, %do.body9 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 73)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !58, !59, !60, !62, !63, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156}
!llvm.module.flags = !{!158, !159, !160, !161, !162, !163, !164, !165}
!llvm.ident = !{!166}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-omap2/powerdomains3xxx_data.c", i32 618, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @powerdomains_am35x, !4, !"powerdomains_am35x", i1 false, i1 false}
!4 = !{!"../arch/arm/mach-omap2/powerdomains3xxx_data.c", i32 467, i32 28}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../arch/arm/mach-omap2/powerdomains3xxx_data.c", i32 70, i32 13}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../arch/arm/mach-omap2/powerdomains3xxx_data.c", i32 82, i32 25}
!9 = !{ptr @mpu_am35x_pwrdm, !10, !"mpu_am35x_pwrdm", i1 false, i1 false}
!10 = !{!"../arch/arm/mach-omap2/powerdomains3xxx_data.c", i32 69, i32 27}
!11 = !{ptr @.str.4, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../arch/arm/mach-omap2/powerdomains3xxx_data.c", i32 277, i32 13}
!13 = !{ptr @neon_am35x_pwrdm, !14, !"neon_am35x_pwrdm", i1 false, i1 false}
!14 = !{!"../arch/arm/mach-omap2/powerdomains3xxx_data.c", i32 276, i32 27}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../arch/arm/mach-omap2/powerdomains3xxx_data.c", i32 135, i32 13}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../arch/arm/mach-omap2/powerdomains3xxx_data.c", i32 148, i32 25}
!19 = !{ptr @core_am35x_pwrdm, !20, !"core_am35x_pwrdm", i1 false, i1 false}
!20 = !{!"../arch/arm/mach-omap2/powerdomains3xxx_data.c", i32 134, i32 27}
!21 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../arch/arm/mach-omap2/powerdomains3xxx_data.c", i32 203, i32 13}
!23 = !{ptr @sgx_am35x_pwrdm, !24, !"sgx_am35x_pwrdm", i1 false, i1 false}
!24 = !{!"../arch/arm/mach-omap2/powerdomains3xxx_data.c", i32 202, i32 27}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../arch/arm/mach-omap2/powerdomains3xxx_data.c", i32 167, i32 13}
!27 = !{ptr @dss_am35x_pwrdm, !28, !"dss_am35x_pwrdm", i1 false, i1 false}
!28 = !{!"../arch/arm/mach-omap2/powerdomains3xxx_data.c", i32 166, i32 27}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../arch/arm/mach-omap2/powerdomains3xxx_data.c", i32 248, i32 13}
!31 = !{ptr @per_am35x_pwrdm, !32, !"per_am35x_pwrdm", i1 false, i1 false}
!32 = !{!"../arch/arm/mach-omap2/powerdomains3xxx_data.c", i32 247, i32 27}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../arch/arm/mach-omap2/powerdomains3xxx_data.c", i32 263, i32 11}
!35 = !{ptr @emu_pwrdm, !36, !"emu_pwrdm", i1 false, i1 false}
!36 = !{!"../arch/arm/mach-omap2/powerdomains3xxx_data.c", i32 262, i32 27}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../arch/arm/mach-omap2/powerdomains3xxx_data.c", i32 307, i32 11}
!39 = !{ptr @dpll1_pwrdm, !40, !"dpll1_pwrdm", i1 false, i1 false}
!40 = !{!"../arch/arm/mach-omap2/powerdomains3xxx_data.c", i32 306, i32 27}
!41 = !{ptr @.str.12, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../arch/arm/mach-omap2/powerdomains3xxx_data.c", i32 319, i32 11}
!43 = !{ptr @dpll3_pwrdm, !44, !"dpll3_pwrdm", i1 false, i1 false}
!44 = !{!"../arch/arm/mach-omap2/powerdomains3xxx_data.c", i32 318, i32 27}
!45 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../arch/arm/mach-omap2/powerdomains3xxx_data.c", i32 325, i32 11}
!47 = !{ptr @dpll4_pwrdm, !48, !"dpll4_pwrdm", i1 false, i1 false}
!48 = !{!"../arch/arm/mach-omap2/powerdomains3xxx_data.c", i32 324, i32 27}
!49 = !{ptr @.str.14, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../arch/arm/mach-omap2/powerdomains3xxx_data.c", i32 331, i32 11}
!51 = !{ptr @dpll5_pwrdm, !52, !"dpll5_pwrdm", i1 false, i1 false}
!52 = !{!"../arch/arm/mach-omap2/powerdomains3xxx_data.c", i32 330, i32 27}
!53 = !{ptr @ti81xx_pwrdm_operations, !54, !"ti81xx_pwrdm_operations", i1 false, i1 false}
!54 = !{!"../arch/arm/mach-omap2/powerdomains3xxx_data.c", i32 567, i32 25}
!55 = !{ptr @.str.15, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../arch/arm/mach-omap2/powerdomains3xxx_data.c", i32 556, i32 3}
!57 = !{ptr @.str.16, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @ti81xx_pwrdm_wait_transition._entry, !56, !"_entry", i1 false, i1 false}
!59 = !{ptr @ti81xx_pwrdm_wait_transition._entry_ptr, !56, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.17, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../arch/arm/mach-omap2/powerdomains3xxx_data.c", i32 561, i32 2}
!62 = !{ptr @.str.18, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @ti81xx_pwrdm_wait_transition.__UNIQUE_ID_ddebug167, !61, !"__UNIQUE_ID_ddebug167", i1 false, i1 false}
!64 = !{ptr @powerdomains_ti814x, !65, !"powerdomains_ti814x", i1 false, i1 false}
!65 = !{!"../arch/arm/mach-omap2/powerdomains3xxx_data.c", i32 483, i32 28}
!66 = !{ptr @.str.19, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../arch/arm/mach-omap2/powerdomains3xxx_data.c", i32 337, i32 13}
!68 = !{ptr @alwon_81xx_pwrdm, !69, !"alwon_81xx_pwrdm", i1 false, i1 false}
!69 = !{!"../arch/arm/mach-omap2/powerdomains3xxx_data.c", i32 336, i32 27}
!70 = !{ptr @.str.20, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../arch/arm/mach-omap2/powerdomains3xxx_data.c", i32 344, i32 13}
!72 = !{ptr @device_81xx_pwrdm, !73, !"device_81xx_pwrdm", i1 false, i1 false}
!73 = !{!"../arch/arm/mach-omap2/powerdomains3xxx_data.c", i32 343, i32 27}
!74 = !{ptr @.str.21, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../arch/arm/mach-omap2/powerdomains3xxx_data.c", i32 385, i32 13}
!76 = !{ptr @active_81xx_pwrdm, !77, !"active_81xx_pwrdm", i1 false, i1 false}
!77 = !{!"../arch/arm/mach-omap2/powerdomains3xxx_data.c", i32 384, i32 27}
!78 = !{ptr @.str.22, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../arch/arm/mach-omap2/powerdomains3xxx_data.c", i32 392, i32 13}
!80 = !{ptr @default_81xx_pwrdm, !81, !"default_81xx_pwrdm", i1 false, i1 false}
!81 = !{!"../arch/arm/mach-omap2/powerdomains3xxx_data.c", i32 391, i32 27}
!82 = !{ptr @.str.23, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../arch/arm/mach-omap2/powerdomains3xxx_data.c", i32 350, i32 11}
!84 = !{ptr @.str.24, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../arch/arm/mach-omap2/powerdomains3xxx_data.c", i32 353, i32 23}
!86 = !{ptr @gem_814x_pwrdm, !87, !"gem_814x_pwrdm", i1 false, i1 false}
!87 = !{!"../arch/arm/mach-omap2/powerdomains3xxx_data.c", i32 349, i32 27}
!88 = !{ptr @.str.25, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../arch/arm/mach-omap2/powerdomains3xxx_data.c", i32 357, i32 11}
!90 = !{ptr @.str.26, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../arch/arm/mach-omap2/powerdomains3xxx_data.c", i32 360, i32 23}
!92 = !{ptr @ivahd_814x_pwrdm, !93, !"ivahd_814x_pwrdm", i1 false, i1 false}
!93 = !{!"../arch/arm/mach-omap2/powerdomains3xxx_data.c", i32 356, i32 27}
!94 = !{ptr @.str.27, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../arch/arm/mach-omap2/powerdomains3xxx_data.c", i32 364, i32 11}
!96 = !{ptr @hdvpss_814x_pwrdm, !97, !"hdvpss_814x_pwrdm", i1 false, i1 false}
!97 = !{!"../arch/arm/mach-omap2/powerdomains3xxx_data.c", i32 363, i32 27}
!98 = !{ptr @sgx_814x_pwrdm, !99, !"sgx_814x_pwrdm", i1 false, i1 false}
!99 = !{!"../arch/arm/mach-omap2/powerdomains3xxx_data.c", i32 370, i32 27}
!100 = !{ptr @.str.28, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../arch/arm/mach-omap2/powerdomains3xxx_data.c", i32 378, i32 11}
!102 = !{ptr @isp_814x_pwrdm, !103, !"isp_814x_pwrdm", i1 false, i1 false}
!103 = !{!"../arch/arm/mach-omap2/powerdomains3xxx_data.c", i32 377, i32 27}
!104 = !{ptr @powerdomains_ti816x, !105, !"powerdomains_ti816x", i1 false, i1 false}
!105 = !{!"../arch/arm/mach-omap2/powerdomains3xxx_data.c", i32 496, i32 28}
!106 = !{ptr @.str.29, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../arch/arm/mach-omap2/powerdomains3xxx_data.c", i32 399, i32 13}
!108 = !{ptr @ivahd0_816x_pwrdm, !109, !"ivahd0_816x_pwrdm", i1 false, i1 false}
!109 = !{!"../arch/arm/mach-omap2/powerdomains3xxx_data.c", i32 398, i32 27}
!110 = !{ptr @.str.30, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../arch/arm/mach-omap2/powerdomains3xxx_data.c", i32 406, i32 13}
!112 = !{ptr @ivahd1_816x_pwrdm, !113, !"ivahd1_816x_pwrdm", i1 false, i1 false}
!113 = !{!"../arch/arm/mach-omap2/powerdomains3xxx_data.c", i32 405, i32 27}
!114 = !{ptr @.str.31, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../arch/arm/mach-omap2/powerdomains3xxx_data.c", i32 413, i32 13}
!116 = !{ptr @ivahd2_816x_pwrdm, !117, !"ivahd2_816x_pwrdm", i1 false, i1 false}
!117 = !{!"../arch/arm/mach-omap2/powerdomains3xxx_data.c", i32 412, i32 27}
!118 = !{ptr @sgx_816x_pwrdm, !119, !"sgx_816x_pwrdm", i1 false, i1 false}
!119 = !{!"../arch/arm/mach-omap2/powerdomains3xxx_data.c", i32 419, i32 27}
!120 = !{ptr @powerdomains_omap3430_common, !121, !"powerdomains_omap3430_common", i1 false, i1 false}
!121 = !{!"../arch/arm/mach-omap2/powerdomains3xxx_data.c", i32 427, i32 28}
!122 = !{ptr @.str.32, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../arch/arm/mach-omap2/powerdomains3xxx_data.c", i32 33, i32 13}
!124 = !{ptr @iva2_pwrdm, !125, !"iva2_pwrdm", i1 false, i1 false}
!125 = !{!"../arch/arm/mach-omap2/powerdomains3xxx_data.c", i32 32, i32 27}
!126 = !{ptr @mpu_3xxx_pwrdm, !127, !"mpu_3xxx_pwrdm", i1 false, i1 false}
!127 = !{!"../arch/arm/mach-omap2/powerdomains3xxx_data.c", i32 53, i32 27}
!128 = !{ptr @neon_pwrdm, !129, !"neon_pwrdm", i1 false, i1 false}
!129 = !{!"../arch/arm/mach-omap2/powerdomains3xxx_data.c", i32 268, i32 27}
!130 = !{ptr @.str.33, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../arch/arm/mach-omap2/powerdomains3xxx_data.c", i32 218, i32 13}
!132 = !{ptr @cam_pwrdm, !133, !"cam_pwrdm", i1 false, i1 false}
!133 = !{!"../arch/arm/mach-omap2/powerdomains3xxx_data.c", i32 217, i32 27}
!134 = !{ptr @dss_pwrdm, !135, !"dss_pwrdm", i1 false, i1 false}
!135 = !{!"../arch/arm/mach-omap2/powerdomains3xxx_data.c", i32 151, i32 27}
!136 = !{ptr @per_pwrdm, !137, !"per_pwrdm", i1 false, i1 false}
!137 = !{!"../arch/arm/mach-omap2/powerdomains3xxx_data.c", i32 232, i32 27}
!138 = !{ptr @.str.34, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../arch/arm/mach-omap2/powerdomains3xxx_data.c", i32 313, i32 11}
!140 = !{ptr @dpll2_pwrdm, !141, !"dpll2_pwrdm", i1 false, i1 false}
!141 = !{!"../arch/arm/mach-omap2/powerdomains3xxx_data.c", i32 312, i32 27}
!142 = !{ptr @powerdomains_omap3430es1, !143, !"powerdomains_omap3430es1", i1 false, i1 false}
!143 = !{!"../arch/arm/mach-omap2/powerdomains3xxx_data.c", i32 443, i32 28}
!144 = !{ptr @core_3xxx_pre_es3_1_pwrdm, !145, !"core_3xxx_pre_es3_1_pwrdm", i1 false, i1 false}
!145 = !{!"../arch/arm/mach-omap2/powerdomains3xxx_data.c", i32 95, i32 27}
!146 = !{ptr @powerdomains_omap3430es2_es3_0, !147, !"powerdomains_omap3430es2_es3_0", i1 false, i1 false}
!147 = !{!"../arch/arm/mach-omap2/powerdomains3xxx_data.c", i32 450, i32 28}
!148 = !{ptr @sgx_pwrdm, !149, !"sgx_pwrdm", i1 false, i1 false}
!149 = !{!"../arch/arm/mach-omap2/powerdomains3xxx_data.c", i32 186, i32 27}
!150 = !{ptr @.str.35, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../arch/arm/mach-omap2/powerdomains3xxx_data.c", i32 285, i32 13}
!152 = !{ptr @usbhost_pwrdm, !153, !"usbhost_pwrdm", i1 false, i1 false}
!153 = !{!"../arch/arm/mach-omap2/powerdomains3xxx_data.c", i32 284, i32 27}
!154 = !{ptr @powerdomains_omap3430es3_1plus, !155, !"powerdomains_omap3430es3_1plus", i1 false, i1 false}
!155 = !{!"../arch/arm/mach-omap2/powerdomains3xxx_data.c", i32 459, i32 28}
!156 = !{ptr @core_3xxx_es3_1_pwrdm, !157, !"core_3xxx_es3_1_pwrdm", i1 false, i1 false}
!157 = !{!"../arch/arm/mach-omap2/powerdomains3xxx_data.c", i32 112, i32 27}
!158 = !{i32 1, !"wchar_size", i32 2}
!159 = !{i32 1, !"min_enum_size", i32 4}
!160 = !{i32 8, !"branch-target-enforcement", i32 0}
!161 = !{i32 8, !"sign-return-address", i32 0}
!162 = !{i32 8, !"sign-return-address-all", i32 0}
!163 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!164 = !{i32 7, !"uwtable", i32 1}
!165 = !{i32 7, !"frame-pointer", i32 2}
!166 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!167 = !{i64 4586797}
!168 = !{i64 4586379}
!169 = !{i64 2148705058, i64 2148705063, i64 2148705076, i64 2148705120, i64 2148705154, i64 2148705175}
