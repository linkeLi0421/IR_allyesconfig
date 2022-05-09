; ModuleID = '/llk/IR_all_yes/arch/arm/mach-omap2/omap_hwmod_2420_data.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/omap_hwmod_2420_data.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.omap_hwmod_ocp_if = type { ptr, ptr, ptr, ptr, ptr, %struct.list_head, %union.anon.3, i8, i8, i8, i8 }
%struct.list_head = type { ptr, ptr }
%union.anon.3 = type { %struct.omap_hwmod_omap2_firewall }
%struct.omap_hwmod_omap2_firewall = type { i8, i8, i8, i8 }
%struct.omap_hwmod = type { ptr, ptr, ptr, ptr, %union.anon, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr }
%union.anon = type { %struct.omap_hwmod_omap4_prcm }
%struct.omap_hwmod_omap4_prcm = type { i16, i16, i16, i16, i32, i8, i8, i8, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.lock_class_key = type { %union.anon.2 }
%union.anon.2 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.omap_hwmod_class = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.omap_hwmod_omap2_prcm = type { i16, i8, i8 }
%struct.omap_hwmod_class_sysconfig = type { i32, i32, i32, i16, ptr, i8, i8 }
%struct.sysc_regbits = type opaque
%struct.omap_hwmod_rst_info = type { ptr, i8, i8 }
%struct.omap_hwmod_opt_clk = type { ptr, ptr, ptr }

@omap2420_hwmod_ocp_ifs = internal global [42 x ptr] [ptr @omap2xxx_l3_main__l4_core, ptr @omap2xxx_mpu__l3_main, ptr @omap2xxx_dss__l3, ptr @omap2xxx_l4_core__mcspi1, ptr @omap2xxx_l4_core__mcspi2, ptr @omap2xxx_l4_core__l4_wkup, ptr @omap2_l4_core__uart1, ptr @omap2_l4_core__uart2, ptr @omap2_l4_core__uart3, ptr @omap2420_l4_core__i2c1, ptr @omap2420_l4_core__i2c2, ptr @omap2420_l3__iva, ptr @omap2420_l3__dsp, ptr @omap2xxx_l4_core__timer3, ptr @omap2xxx_l4_core__timer4, ptr @omap2xxx_l4_core__timer5, ptr @omap2xxx_l4_core__timer6, ptr @omap2xxx_l4_core__timer7, ptr @omap2xxx_l4_core__timer8, ptr @omap2xxx_l4_core__timer9, ptr @omap2xxx_l4_core__timer10, ptr @omap2xxx_l4_core__timer11, ptr @omap2xxx_l4_core__timer12, ptr @omap2420_l4_wkup__wd_timer2, ptr @omap2xxx_l4_core__dss, ptr @omap2xxx_l4_core__dss_dispc, ptr @omap2xxx_l4_core__dss_rfbi, ptr @omap2xxx_l4_core__dss_venc, ptr @omap2420_l4_wkup__gpio1, ptr @omap2420_l4_wkup__gpio2, ptr @omap2420_l4_wkup__gpio3, ptr @omap2420_l4_wkup__gpio4, ptr @omap2420_l4_core__mailbox, ptr @omap2420_l4_core__mcbsp1, ptr @omap2420_l4_core__mcbsp2, ptr @omap2420_l4_core__msdi1, ptr @omap2xxx_l4_core__rng, ptr @omap2xxx_l4_core__sham, ptr @omap2xxx_l4_core__aes, ptr @omap2420_l4_core__hdq1w, ptr @omap2420_l3__gpmc, ptr null], section ".init.data", align 4
@omap2xxx_l3_main__l4_core = external dso_local global %struct.omap_hwmod_ocp_if, align 4
@omap2xxx_mpu__l3_main = external dso_local global %struct.omap_hwmod_ocp_if, align 4
@omap2xxx_dss__l3 = external dso_local global %struct.omap_hwmod_ocp_if, align 4
@omap2xxx_l4_core__mcspi1 = external dso_local global %struct.omap_hwmod_ocp_if, align 4
@omap2xxx_l4_core__mcspi2 = external dso_local global %struct.omap_hwmod_ocp_if, align 4
@omap2xxx_l4_core__l4_wkup = external dso_local global %struct.omap_hwmod_ocp_if, align 4
@omap2_l4_core__uart1 = external dso_local global %struct.omap_hwmod_ocp_if, align 4
@omap2_l4_core__uart2 = external dso_local global %struct.omap_hwmod_ocp_if, align 4
@omap2_l4_core__uart3 = external dso_local global %struct.omap_hwmod_ocp_if, align 4
@omap2420_l4_core__i2c1 = internal global { %struct.omap_hwmod_ocp_if, [60 x i8] } { %struct.omap_hwmod_ocp_if { ptr @omap2xxx_l4_core_hwmod, ptr @omap2420_i2c1_hwmod, ptr null, ptr @.str, ptr null, %struct.list_head zeroinitializer, %union.anon.3 zeroinitializer, i8 0, i8 3, i8 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@omap2420_l4_core__i2c2 = internal global { %struct.omap_hwmod_ocp_if, [60 x i8] } { %struct.omap_hwmod_ocp_if { ptr @omap2xxx_l4_core_hwmod, ptr @omap2420_i2c2_hwmod, ptr null, ptr @.str.5, ptr null, %struct.list_head zeroinitializer, %union.anon.3 zeroinitializer, i8 0, i8 3, i8 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@omap2420_l3__iva = internal global { %struct.omap_hwmod_ocp_if, [60 x i8] } { %struct.omap_hwmod_ocp_if { ptr @omap2xxx_l3_main_hwmod, ptr @omap2420_iva_hwmod, ptr null, ptr @.str.9, ptr null, %struct.list_head zeroinitializer, %union.anon.3 zeroinitializer, i8 0, i8 3, i8 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@omap2420_l3__dsp = internal global { %struct.omap_hwmod_ocp_if, [60 x i8] } { %struct.omap_hwmod_ocp_if { ptr @omap2xxx_l3_main_hwmod, ptr @omap2420_dsp_hwmod, ptr null, ptr @.str.14, ptr null, %struct.list_head zeroinitializer, %union.anon.3 zeroinitializer, i8 0, i8 3, i8 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@omap2xxx_l4_core__timer3 = external dso_local global %struct.omap_hwmod_ocp_if, align 4
@omap2xxx_l4_core__timer4 = external dso_local global %struct.omap_hwmod_ocp_if, align 4
@omap2xxx_l4_core__timer5 = external dso_local global %struct.omap_hwmod_ocp_if, align 4
@omap2xxx_l4_core__timer6 = external dso_local global %struct.omap_hwmod_ocp_if, align 4
@omap2xxx_l4_core__timer7 = external dso_local global %struct.omap_hwmod_ocp_if, align 4
@omap2xxx_l4_core__timer8 = external dso_local global %struct.omap_hwmod_ocp_if, align 4
@omap2xxx_l4_core__timer9 = external dso_local global %struct.omap_hwmod_ocp_if, align 4
@omap2xxx_l4_core__timer10 = external dso_local global %struct.omap_hwmod_ocp_if, align 4
@omap2xxx_l4_core__timer11 = external dso_local global %struct.omap_hwmod_ocp_if, align 4
@omap2xxx_l4_core__timer12 = external dso_local global %struct.omap_hwmod_ocp_if, align 4
@omap2420_l4_wkup__wd_timer2 = internal global { %struct.omap_hwmod_ocp_if, [60 x i8] } { %struct.omap_hwmod_ocp_if { ptr @omap2xxx_l4_wkup_hwmod, ptr @omap2xxx_wd_timer2_hwmod, ptr null, ptr @.str.20, ptr null, %struct.list_head zeroinitializer, %union.anon.3 zeroinitializer, i8 0, i8 3, i8 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@omap2xxx_l4_core__dss = external dso_local global %struct.omap_hwmod_ocp_if, align 4
@omap2xxx_l4_core__dss_dispc = external dso_local global %struct.omap_hwmod_ocp_if, align 4
@omap2xxx_l4_core__dss_rfbi = external dso_local global %struct.omap_hwmod_ocp_if, align 4
@omap2xxx_l4_core__dss_venc = external dso_local global %struct.omap_hwmod_ocp_if, align 4
@omap2420_l4_wkup__gpio1 = internal global { %struct.omap_hwmod_ocp_if, [60 x i8] } { %struct.omap_hwmod_ocp_if { ptr @omap2xxx_l4_wkup_hwmod, ptr @omap2xxx_gpio1_hwmod, ptr null, ptr @.str.21, ptr null, %struct.list_head zeroinitializer, %union.anon.3 zeroinitializer, i8 0, i8 3, i8 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@omap2420_l4_wkup__gpio2 = internal global { %struct.omap_hwmod_ocp_if, [60 x i8] } { %struct.omap_hwmod_ocp_if { ptr @omap2xxx_l4_wkup_hwmod, ptr @omap2xxx_gpio2_hwmod, ptr null, ptr @.str.21, ptr null, %struct.list_head zeroinitializer, %union.anon.3 zeroinitializer, i8 0, i8 3, i8 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@omap2420_l4_wkup__gpio3 = internal global { %struct.omap_hwmod_ocp_if, [60 x i8] } { %struct.omap_hwmod_ocp_if { ptr @omap2xxx_l4_wkup_hwmod, ptr @omap2xxx_gpio3_hwmod, ptr null, ptr @.str.21, ptr null, %struct.list_head zeroinitializer, %union.anon.3 zeroinitializer, i8 0, i8 3, i8 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@omap2420_l4_wkup__gpio4 = internal global { %struct.omap_hwmod_ocp_if, [60 x i8] } { %struct.omap_hwmod_ocp_if { ptr @omap2xxx_l4_wkup_hwmod, ptr @omap2xxx_gpio4_hwmod, ptr null, ptr @.str.21, ptr null, %struct.list_head zeroinitializer, %union.anon.3 zeroinitializer, i8 0, i8 3, i8 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@omap2420_l4_core__mailbox = internal global { %struct.omap_hwmod_ocp_if, [60 x i8] } { %struct.omap_hwmod_ocp_if { ptr @omap2xxx_l4_core_hwmod, ptr @omap2420_mailbox_hwmod, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, %union.anon.3 zeroinitializer, i8 0, i8 3, i8 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@omap2420_l4_core__mcbsp1 = internal global { %struct.omap_hwmod_ocp_if, [60 x i8] } { %struct.omap_hwmod_ocp_if { ptr @omap2xxx_l4_core_hwmod, ptr @omap2420_mcbsp1_hwmod, ptr null, ptr @.str.25, ptr null, %struct.list_head zeroinitializer, %union.anon.3 zeroinitializer, i8 0, i8 3, i8 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@omap2420_l4_core__mcbsp2 = internal global { %struct.omap_hwmod_ocp_if, [60 x i8] } { %struct.omap_hwmod_ocp_if { ptr @omap2xxx_l4_core_hwmod, ptr @omap2420_mcbsp2_hwmod, ptr null, ptr @.str.34, ptr null, %struct.list_head zeroinitializer, %union.anon.3 zeroinitializer, i8 0, i8 3, i8 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@omap2420_l4_core__msdi1 = internal global { %struct.omap_hwmod_ocp_if, [60 x i8] } { %struct.omap_hwmod_ocp_if { ptr @omap2xxx_l4_core_hwmod, ptr @omap2420_msdi1_hwmod, ptr null, ptr @.str.38, ptr null, %struct.list_head zeroinitializer, %union.anon.3 zeroinitializer, i8 0, i8 3, i8 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@omap2xxx_l4_core__rng = external dso_local global %struct.omap_hwmod_ocp_if, align 4
@omap2xxx_l4_core__sham = external dso_local global %struct.omap_hwmod_ocp_if, align 4
@omap2xxx_l4_core__aes = external dso_local global %struct.omap_hwmod_ocp_if, align 4
@omap2420_l4_core__hdq1w = internal global { %struct.omap_hwmod_ocp_if, [60 x i8] } { %struct.omap_hwmod_ocp_if { ptr @omap2xxx_l4_core_hwmod, ptr @omap2420_hdq1w_hwmod, ptr null, ptr @.str.43, ptr null, %struct.list_head zeroinitializer, %union.anon.3 zeroinitializer, i8 0, i8 3, i8 3, i8 0 }, [60 x i8] zeroinitializer }, align 32
@omap2420_l3__gpmc = internal global { %struct.omap_hwmod_ocp_if, [60 x i8] } { %struct.omap_hwmod_ocp_if { ptr @omap2xxx_l3_main_hwmod, ptr @omap2xxx_gpmc_hwmod, ptr null, ptr @.str.9, ptr null, %struct.list_head zeroinitializer, %union.anon.3 zeroinitializer, i8 0, i8 3, i8 0, i8 0 }, [60 x i8] zeroinitializer }, align 32
@omap2xxx_l4_core_hwmod = external dso_local global %struct.omap_hwmod, align 4
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2c1_ick\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c1\00", [27 x i8] zeroinitializer }, align 32
@i2c_class = internal global { %struct.omap_hwmod_class, [40 x i8] } { %struct.omap_hwmod_class { ptr @.str.4, ptr @i2c_sysc, ptr null, ptr @omap_i2c_reset, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2c1_fck\00", [23 x i8] zeroinitializer }, align 32
@omap2420_i2c1_hwmod = internal global { { ptr, ptr, ptr, ptr, { %struct.omap_hwmod_omap2_prcm, [16 x i8] }, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr }, [32 x i8] } { { ptr, ptr, ptr, ptr, { %struct.omap_hwmod_omap2_prcm, [16 x i8] }, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr } { ptr @.str.1, ptr @i2c_class, ptr null, ptr null, { %struct.omap_hwmod_omap2_prcm, [16 x i8] } { %struct.omap_hwmod_omap2_prcm { i16 512, i8 1, i8 19 }, [16 x i8] undef }, ptr @.str.2, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 1280, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"i2c\00", [28 x i8] zeroinitializer }, align 32
@i2c_sysc = internal global { %struct.omap_hwmod_class_sysconfig, [40 x i8] } { %struct.omap_hwmod_class_sysconfig { i32 0, i32 32, i32 16, i16 130, ptr @omap_hwmod_sysc_type1, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@omap_hwmod_sysc_type1 = external dso_local global %struct.sysc_regbits, align 1
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2c2_ick\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"i2c2\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"i2c2_fck\00", [23 x i8] zeroinitializer }, align 32
@omap2420_i2c2_hwmod = internal global { { ptr, ptr, ptr, ptr, { %struct.omap_hwmod_omap2_prcm, [16 x i8] }, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr }, [32 x i8] } { { ptr, ptr, ptr, ptr, { %struct.omap_hwmod_omap2_prcm, [16 x i8] }, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr } { ptr @.str.6, ptr @i2c_class, ptr null, ptr null, { %struct.omap_hwmod_omap2_prcm, [16 x i8] } { %struct.omap_hwmod_omap2_prcm { i16 512, i8 1, i8 20 }, [16 x i8] undef }, ptr @.str.7, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 256, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, [32 x i8] zeroinitializer }, align 32
@omap2xxx_l3_main_hwmod = external dso_local global %struct.omap_hwmod, align 4
@omap2420_iva_hwmod = internal global { %struct.omap_hwmod, [32 x i8] } { %struct.omap_hwmod { ptr @.str.10, ptr @iva1_hwmod_class, ptr null, ptr @omap2420_iva_resets, %union.anon zeroinitializer, ptr @.str.11, ptr null, ptr null, ptr @.str.12, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 0, i8 0, i8 0, i8 1, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"core_l3_ck\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"iva\00", [28 x i8] zeroinitializer }, align 32
@iva1_hwmod_class = internal global { %struct.omap_hwmod_class, [40 x i8] } { %struct.omap_hwmod_class { ptr @.str.13, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@omap2420_iva_resets = internal global { [1 x %struct.omap_hwmod_rst_info], [24 x i8] } { [1 x %struct.omap_hwmod_rst_info] [%struct.omap_hwmod_rst_info { ptr @.str.10, i8 8, i8 0 }], [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"iva1_ifck\00", [22 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"iva1_clkdm\00", [21 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"iva1\00", [27 x i8] zeroinitializer }, align 32
@omap2420_dsp_hwmod = internal global { %struct.omap_hwmod, [32 x i8] } { %struct.omap_hwmod { ptr @.str.15, ptr @dsp_hwmod_class, ptr null, ptr @omap2420_dsp_resets, %union.anon zeroinitializer, ptr @.str.16, ptr null, ptr null, ptr @.str.17, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 0, i8 0, i8 0, i8 2, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dsp_ick\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dsp\00", [28 x i8] zeroinitializer }, align 32
@dsp_hwmod_class = internal global { %struct.omap_hwmod_class, [40 x i8] } { %struct.omap_hwmod_class { ptr @.str.15, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@omap2420_dsp_resets = internal global { [2 x %struct.omap_hwmod_rst_info], [16 x i8] } { [2 x %struct.omap_hwmod_rst_info] [%struct.omap_hwmod_rst_info { ptr @.str.18, i8 0, i8 0 }, %struct.omap_hwmod_rst_info { ptr @.str.19, i8 1, i8 0 }], [16 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dsp_fck\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dsp_clkdm\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"logic\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"mmu\00", [28 x i8] zeroinitializer }, align 32
@omap2xxx_l4_wkup_hwmod = external dso_local global %struct.omap_hwmod, align 4
@omap2xxx_wd_timer2_hwmod = external dso_local global %struct.omap_hwmod, align 4
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mpu_wdt_ick\00", [20 x i8] zeroinitializer }, align 32
@omap2xxx_gpio1_hwmod = external dso_local global %struct.omap_hwmod, align 4
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gpios_ick\00", [22 x i8] zeroinitializer }, align 32
@omap2xxx_gpio2_hwmod = external dso_local global %struct.omap_hwmod, align 4
@omap2xxx_gpio3_hwmod = external dso_local global %struct.omap_hwmod, align 4
@omap2xxx_gpio4_hwmod = external dso_local global %struct.omap_hwmod, align 4
@.str.22 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mailbox\00", [24 x i8] zeroinitializer }, align 32
@omap2xxx_mailbox_hwmod_class = external dso_local global %struct.omap_hwmod_class, align 4
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mailboxes_ick\00", [18 x i8] zeroinitializer }, align 32
@omap2420_mailbox_hwmod = internal global { { ptr, ptr, ptr, ptr, { %struct.omap_hwmod_omap2_prcm, [16 x i8] }, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr }, [32 x i8] } { { ptr, ptr, ptr, ptr, { %struct.omap_hwmod_omap2_prcm, [16 x i8] }, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr } { ptr @.str.22, ptr @omap2xxx_mailbox_hwmod_class, ptr null, ptr null, { %struct.omap_hwmod_omap2_prcm, [16 x i8] } { %struct.omap_hwmod_omap2_prcm { i16 512, i8 1, i8 30 }, [16 x i8] undef }, ptr @.str.23, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mcbsp1_ick\00", [21 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mcbsp1\00", [25 x i8] zeroinitializer }, align 32
@omap2420_mcbsp_hwmod_class = internal global { %struct.omap_hwmod_class, [40 x i8] } { %struct.omap_hwmod_class { ptr @.str.29, ptr null, ptr null, ptr null, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mcbsp1_fck\00", [21 x i8] zeroinitializer }, align 32
@mcbsp_opt_clks = internal global { [2 x %struct.omap_hwmod_opt_clk], [40 x i8] } { [2 x %struct.omap_hwmod_opt_clk] [%struct.omap_hwmod_opt_clk { ptr @.str.30, ptr @.str.31, ptr null }, %struct.omap_hwmod_opt_clk { ptr @.str.32, ptr @.str.33, ptr null }], [40 x i8] zeroinitializer }, align 32
@omap2420_mcbsp1_hwmod = internal global { { ptr, ptr, ptr, ptr, { %struct.omap_hwmod_omap2_prcm, [16 x i8] }, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr }, [32 x i8] } { { ptr, ptr, ptr, ptr, { %struct.omap_hwmod_omap2_prcm, [16 x i8] }, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr } { ptr @.str.26, ptr @omap2420_mcbsp_hwmod_class, ptr null, ptr null, { %struct.omap_hwmod_omap2_prcm, [16 x i8] } { %struct.omap_hwmod_omap2_prcm { i16 512, i8 1, i8 15 }, [16 x i8] undef }, ptr @.str.27, ptr null, ptr @mcbsp_opt_clks, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 0, i8 0, i8 0, i8 0, i8 2, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mcbsp\00", [26 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pad_fck\00", [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mcbsp_clks\00", [21 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"prcm_fck\00", [23 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"func_96m_ck\00", [20 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mcbsp2_ick\00", [21 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mcbsp2\00", [25 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mcbsp2_fck\00", [21 x i8] zeroinitializer }, align 32
@omap2420_mcbsp2_hwmod = internal global { { ptr, ptr, ptr, ptr, { %struct.omap_hwmod_omap2_prcm, [16 x i8] }, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr }, [32 x i8] } { { ptr, ptr, ptr, ptr, { %struct.omap_hwmod_omap2_prcm, [16 x i8] }, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr } { ptr @.str.35, ptr @omap2420_mcbsp_hwmod_class, ptr null, ptr null, { %struct.omap_hwmod_omap2_prcm, [16 x i8] } { %struct.omap_hwmod_omap2_prcm { i16 512, i8 1, i8 16 }, [16 x i8] undef }, ptr @.str.36, ptr null, ptr @mcbsp_opt_clks, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 0, i8 0, i8 0, i8 0, i8 2, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mmc_ick\00", [24 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"msdi1\00", [26 x i8] zeroinitializer }, align 32
@omap2420_msdi_hwmod_class = internal global { %struct.omap_hwmod_class, [40 x i8] } { %struct.omap_hwmod_class { ptr @.str.42, ptr @omap2420_msdi_sysc, ptr null, ptr @omap_msdi_reset, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mmc_fck\00", [24 x i8] zeroinitializer }, align 32
@omap2420_msdi1_hwmod = internal global { { ptr, ptr, ptr, ptr, { %struct.omap_hwmod_omap2_prcm, [16 x i8] }, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr }, [32 x i8] } { { ptr, ptr, ptr, ptr, { %struct.omap_hwmod_omap2_prcm, [16 x i8] }, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr } { ptr @.str.39, ptr @omap2420_msdi_hwmod_class, ptr null, ptr null, { %struct.omap_hwmod_omap2_prcm, [16 x i8] } { %struct.omap_hwmod_omap2_prcm { i16 512, i8 1, i8 26 }, [16 x i8] undef }, ptr @.str.40, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 256, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, [32 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"msdi\00", [27 x i8] zeroinitializer }, align 32
@omap2420_msdi_sysc = internal global { %struct.omap_hwmod_class_sysconfig, [40 x i8] } { %struct.omap_hwmod_class_sysconfig { i32 60, i32 100, i32 104, i16 130, ptr @omap_hwmod_sysc_type1, i8 0, i8 0 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hdq_ick\00", [24 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"hdq1w\00", [26 x i8] zeroinitializer }, align 32
@omap2_hdq1w_class = external dso_local global %struct.omap_hwmod_class, align 4
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hdq_fck\00", [24 x i8] zeroinitializer }, align 32
@omap2420_hdq1w_hwmod = internal global { { ptr, ptr, ptr, ptr, { %struct.omap_hwmod_omap2_prcm, [16 x i8] }, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr }, [32 x i8] } { { ptr, ptr, ptr, ptr, { %struct.omap_hwmod_omap2_prcm, [16 x i8] }, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, i32, ptr, %struct.spinlock, %struct.lock_class_key, %struct.list_head, ptr, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, ptr } { ptr @.str.44, ptr @omap2_hdq1w_class, ptr null, ptr null, { %struct.omap_hwmod_omap2_prcm, [16 x i8] } { %struct.omap_hwmod_omap2_prcm { i16 512, i8 1, i8 23 }, [16 x i8] undef }, ptr @.str.45, ptr null, ptr null, ptr null, ptr null, %struct.list_head zeroinitializer, ptr null, i32 0, ptr null, %struct.spinlock zeroinitializer, %struct.lock_class_key zeroinitializer, %struct.list_head zeroinitializer, ptr null, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, ptr null }, [32 x i8] zeroinitializer }, align 32
@omap2xxx_gpmc_hwmod = external dso_local global %struct.omap_hwmod, align 4
@___asan_gen_.47 = private unnamed_addr constant [23 x i8] c"omap2420_l4_core__i2c1\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 236, i32 33 }
@___asan_gen_.50 = private unnamed_addr constant [23 x i8] c"omap2420_l4_core__i2c2\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 244, i32 33 }
@___asan_gen_.53 = private unnamed_addr constant [17 x i8] c"omap2420_l3__iva\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 252, i32 33 }
@___asan_gen_.56 = private unnamed_addr constant [17 x i8] c"omap2420_l3__dsp\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 260, i32 33 }
@___asan_gen_.59 = private unnamed_addr constant [28 x i8] c"omap2420_l4_wkup__wd_timer2\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 268, i32 33 }
@___asan_gen_.62 = private unnamed_addr constant [24 x i8] c"omap2420_l4_wkup__gpio1\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 276, i32 33 }
@___asan_gen_.65 = private unnamed_addr constant [24 x i8] c"omap2420_l4_wkup__gpio2\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 284, i32 33 }
@___asan_gen_.68 = private unnamed_addr constant [24 x i8] c"omap2420_l4_wkup__gpio3\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 292, i32 33 }
@___asan_gen_.71 = private unnamed_addr constant [24 x i8] c"omap2420_l4_wkup__gpio4\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 300, i32 33 }
@___asan_gen_.74 = private unnamed_addr constant [26 x i8] c"omap2420_l4_core__mailbox\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 308, i32 33 }
@___asan_gen_.77 = private unnamed_addr constant [25 x i8] c"omap2420_l4_core__mcbsp1\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 315, i32 33 }
@___asan_gen_.80 = private unnamed_addr constant [25 x i8] c"omap2420_l4_core__mcbsp2\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 323, i32 33 }
@___asan_gen_.83 = private unnamed_addr constant [24 x i8] c"omap2420_l4_core__msdi1\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 331, i32 33 }
@___asan_gen_.86 = private unnamed_addr constant [24 x i8] c"omap2420_l4_core__hdq1w\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 339, i32 33 }
@___asan_gen_.89 = private unnamed_addr constant [18 x i8] c"omap2420_l3__gpmc\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 347, i32 33 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 239, i32 10 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 95, i32 11 }
@___asan_gen_.98 = private unnamed_addr constant [10 x i8] c"i2c_class\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 87, i32 32 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 96, i32 14 }
@___asan_gen_.104 = private unnamed_addr constant [20 x i8] c"omap2420_i2c1_hwmod\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 94, i32 26 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 88, i32 11 }
@___asan_gen_.110 = private unnamed_addr constant [9 x i8] c"i2c_sysc\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 79, i32 42 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 247, i32 10 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 115, i32 11 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 116, i32 14 }
@___asan_gen_.122 = private unnamed_addr constant [20 x i8] c"omap2420_i2c2_hwmod\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 114, i32 26 }
@___asan_gen_.125 = private unnamed_addr constant [19 x i8] c"omap2420_iva_hwmod\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 50, i32 26 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 255, i32 10 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 51, i32 11 }
@___asan_gen_.134 = private unnamed_addr constant [17 x i8] c"iva1_hwmod_class\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 42, i32 32 }
@___asan_gen_.137 = private unnamed_addr constant [20 x i8] c"omap2420_iva_resets\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 46, i32 35 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 56, i32 14 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 53, i32 16 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 43, i32 11 }
@___asan_gen_.149 = private unnamed_addr constant [19 x i8] c"omap2420_dsp_hwmod\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 69, i32 26 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 263, i32 10 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 70, i32 11 }
@___asan_gen_.158 = private unnamed_addr constant [16 x i8] c"dsp_hwmod_class\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 60, i32 32 }
@___asan_gen_.161 = private unnamed_addr constant [20 x i8] c"omap2420_dsp_resets\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 64, i32 35 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 75, i32 14 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 72, i32 16 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 65, i32 12 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 66, i32 12 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 271, i32 10 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 279, i32 10 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 130, i32 11 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 132, i32 14 }
@___asan_gen_.188 = private unnamed_addr constant [23 x i8] c"omap2420_mailbox_hwmod\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 129, i32 26 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 318, i32 10 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 158, i32 11 }
@___asan_gen_.197 = private unnamed_addr constant [27 x i8] c"omap2420_mcbsp_hwmod_class\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 147, i32 32 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 160, i32 14 }
@___asan_gen_.203 = private unnamed_addr constant [15 x i8] c"mcbsp_opt_clks\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 151, i32 34 }
@___asan_gen_.206 = private unnamed_addr constant [22 x i8] c"omap2420_mcbsp1_hwmod\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 157, i32 26 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 148, i32 10 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 152, i32 12 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 152, i32 30 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 153, i32 12 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 153, i32 31 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 326, i32 10 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 174, i32 11 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 176, i32 14 }
@___asan_gen_.233 = private unnamed_addr constant [22 x i8] c"omap2420_mcbsp2_hwmod\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 173, i32 26 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 334, i32 10 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 204, i32 11 }
@___asan_gen_.242 = private unnamed_addr constant [26 x i8] c"omap2420_msdi_hwmod_class\00", align 1
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 196, i32 32 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 206, i32 14 }
@___asan_gen_.248 = private unnamed_addr constant [21 x i8] c"omap2420_msdi1_hwmod\00", align 1
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 203, i32 26 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 197, i32 10 }
@___asan_gen_.254 = private unnamed_addr constant [19 x i8] c"omap2420_msdi_sysc\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 188, i32 42 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 342, i32 10 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 219, i32 11 }
@___asan_gen_.263 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 220, i32 14 }
@___asan_gen_.266 = private unnamed_addr constant [21 x i8] c"omap2420_hdq1w_hwmod\00", align 1
@___asan_gen_.267 = private constant [46 x i8] c"../arch/arm/mach-omap2/omap_hwmod_2420_data.c\00", align 1
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.267, i32 218, i32 26 }
@llvm.compiler.used = appending global [74 x ptr] [ptr @omap2420_l4_core__i2c1, ptr @omap2420_l4_core__i2c2, ptr @omap2420_l3__iva, ptr @omap2420_l3__dsp, ptr @omap2420_l4_wkup__wd_timer2, ptr @omap2420_l4_wkup__gpio1, ptr @omap2420_l4_wkup__gpio2, ptr @omap2420_l4_wkup__gpio3, ptr @omap2420_l4_wkup__gpio4, ptr @omap2420_l4_core__mailbox, ptr @omap2420_l4_core__mcbsp1, ptr @omap2420_l4_core__mcbsp2, ptr @omap2420_l4_core__msdi1, ptr @omap2420_l4_core__hdq1w, ptr @omap2420_l3__gpmc, ptr @.str, ptr @.str.1, ptr @i2c_class, ptr @.str.2, ptr @omap2420_i2c1_hwmod, ptr @.str.4, ptr @i2c_sysc, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @omap2420_i2c2_hwmod, ptr @omap2420_iva_hwmod, ptr @.str.9, ptr @.str.10, ptr @iva1_hwmod_class, ptr @omap2420_iva_resets, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @omap2420_dsp_hwmod, ptr @.str.14, ptr @.str.15, ptr @dsp_hwmod_class, ptr @omap2420_dsp_resets, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @omap2420_mailbox_hwmod, ptr @.str.25, ptr @.str.26, ptr @omap2420_mcbsp_hwmod_class, ptr @.str.27, ptr @mcbsp_opt_clks, ptr @omap2420_mcbsp1_hwmod, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @omap2420_mcbsp2_hwmod, ptr @.str.38, ptr @.str.39, ptr @omap2420_msdi_hwmod_class, ptr @.str.40, ptr @omap2420_msdi1_hwmod, ptr @.str.42, ptr @omap2420_msdi_sysc, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @omap2420_hdq1w_hwmod], section "llvm.metadata"
@0 = internal global [74 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2420_l4_core__i2c1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2420_l4_core__i2c2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2420_l3__iva to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2420_l3__dsp to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2420_l4_wkup__wd_timer2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2420_l4_wkup__gpio1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2420_l4_wkup__gpio2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2420_l4_wkup__gpio3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2420_l4_wkup__gpio4 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2420_l4_core__mailbox to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2420_l4_core__mcbsp1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2420_l4_core__mcbsp2 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2420_l4_core__msdi1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2420_l4_core__hdq1w to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2420_l3__gpmc to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_class to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2420_i2c1_hwmod to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_sysc to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2420_i2c2_hwmod to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2420_iva_hwmod to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @iva1_hwmod_class to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2420_iva_resets to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2420_dsp_hwmod to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_hwmod_class to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2420_dsp_resets to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2420_mailbox_hwmod to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2420_mcbsp_hwmod_class to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcbsp_opt_clks to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2420_mcbsp1_hwmod to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2420_mcbsp2_hwmod to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2420_msdi_hwmod_class to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2420_msdi1_hwmod to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2420_msdi_sysc to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2420_hdq1w_hwmod to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap2420_hwmod_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @omap_hwmod_init() #6
  %call = tail call i32 @omap_hwmod_register_links(ptr noundef nonnull @omap2420_hwmod_ocp_ifs) #6
  ret i32 %call
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @omap_hwmod_init() local_unnamed_addr #1 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @omap_hwmod_register_links(ptr noundef) local_unnamed_addr #1 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_i2c_reset(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_msdi_reset(ptr noundef) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148}
!llvm.module.flags = !{!150, !151, !152, !153, !154, !155, !156, !157}
!llvm.ident = !{!158}

!0 = !{ptr @omap2420_hwmod_ocp_ifs, !1, !"omap2420_hwmod_ocp_ifs", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-omap2/omap_hwmod_2420_data.c", i32 354, i32 34}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-omap2/omap_hwmod_2420_data.c", i32 239, i32 10}
!4 = !{ptr @omap2420_l4_core__i2c1, !5, !"omap2420_l4_core__i2c1", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-omap2/omap_hwmod_2420_data.c", i32 236, i32 33}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-omap2/omap_hwmod_2420_data.c", i32 95, i32 11}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-omap2/omap_hwmod_2420_data.c", i32 96, i32 14}
!10 = !{ptr @omap2420_i2c1_hwmod, !11, !"omap2420_i2c1_hwmod", i1 false, i1 false}
!11 = !{!"../arch/arm/mach-omap2/omap_hwmod_2420_data.c", i32 94, i32 26}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../arch/arm/mach-omap2/omap_hwmod_2420_data.c", i32 88, i32 11}
!14 = !{ptr @i2c_class, !15, !"i2c_class", i1 false, i1 false}
!15 = !{!"../arch/arm/mach-omap2/omap_hwmod_2420_data.c", i32 87, i32 32}
!16 = !{ptr @i2c_sysc, !17, !"i2c_sysc", i1 false, i1 false}
!17 = !{!"../arch/arm/mach-omap2/omap_hwmod_2420_data.c", i32 79, i32 42}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../arch/arm/mach-omap2/omap_hwmod_2420_data.c", i32 247, i32 10}
!20 = !{ptr @omap2420_l4_core__i2c2, !21, !"omap2420_l4_core__i2c2", i1 false, i1 false}
!21 = !{!"../arch/arm/mach-omap2/omap_hwmod_2420_data.c", i32 244, i32 33}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../arch/arm/mach-omap2/omap_hwmod_2420_data.c", i32 115, i32 11}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../arch/arm/mach-omap2/omap_hwmod_2420_data.c", i32 116, i32 14}
!26 = !{ptr @omap2420_i2c2_hwmod, !27, !"omap2420_i2c2_hwmod", i1 false, i1 false}
!27 = !{!"../arch/arm/mach-omap2/omap_hwmod_2420_data.c", i32 114, i32 26}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../arch/arm/mach-omap2/omap_hwmod_2420_data.c", i32 255, i32 10}
!30 = !{ptr @omap2420_l3__iva, !31, !"omap2420_l3__iva", i1 false, i1 false}
!31 = !{!"../arch/arm/mach-omap2/omap_hwmod_2420_data.c", i32 252, i32 33}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../arch/arm/mach-omap2/omap_hwmod_2420_data.c", i32 51, i32 11}
!34 = !{ptr @.str.11, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../arch/arm/mach-omap2/omap_hwmod_2420_data.c", i32 56, i32 14}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../arch/arm/mach-omap2/omap_hwmod_2420_data.c", i32 53, i32 16}
!38 = !{ptr @omap2420_iva_hwmod, !39, !"omap2420_iva_hwmod", i1 false, i1 false}
!39 = !{!"../arch/arm/mach-omap2/omap_hwmod_2420_data.c", i32 50, i32 26}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../arch/arm/mach-omap2/omap_hwmod_2420_data.c", i32 43, i32 11}
!42 = !{ptr @iva1_hwmod_class, !43, !"iva1_hwmod_class", i1 false, i1 false}
!43 = !{!"../arch/arm/mach-omap2/omap_hwmod_2420_data.c", i32 42, i32 32}
!44 = !{ptr @omap2420_iva_resets, !45, !"omap2420_iva_resets", i1 false, i1 false}
!45 = !{!"../arch/arm/mach-omap2/omap_hwmod_2420_data.c", i32 46, i32 35}
!46 = !{ptr @.str.14, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../arch/arm/mach-omap2/omap_hwmod_2420_data.c", i32 263, i32 10}
!48 = !{ptr @omap2420_l3__dsp, !49, !"omap2420_l3__dsp", i1 false, i1 false}
!49 = !{!"../arch/arm/mach-omap2/omap_hwmod_2420_data.c", i32 260, i32 33}
!50 = !{ptr @.str.15, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../arch/arm/mach-omap2/omap_hwmod_2420_data.c", i32 70, i32 11}
!52 = !{ptr @.str.16, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../arch/arm/mach-omap2/omap_hwmod_2420_data.c", i32 75, i32 14}
!54 = !{ptr @.str.17, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../arch/arm/mach-omap2/omap_hwmod_2420_data.c", i32 72, i32 16}
!56 = !{ptr @omap2420_dsp_hwmod, !57, !"omap2420_dsp_hwmod", i1 false, i1 false}
!57 = !{!"../arch/arm/mach-omap2/omap_hwmod_2420_data.c", i32 69, i32 26}
!58 = !{ptr @dsp_hwmod_class, !59, !"dsp_hwmod_class", i1 false, i1 false}
!59 = !{!"../arch/arm/mach-omap2/omap_hwmod_2420_data.c", i32 60, i32 32}
!60 = !{ptr @.str.18, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../arch/arm/mach-omap2/omap_hwmod_2420_data.c", i32 65, i32 12}
!62 = !{ptr @.str.19, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../arch/arm/mach-omap2/omap_hwmod_2420_data.c", i32 66, i32 12}
!64 = !{ptr @omap2420_dsp_resets, !65, !"omap2420_dsp_resets", i1 false, i1 false}
!65 = !{!"../arch/arm/mach-omap2/omap_hwmod_2420_data.c", i32 64, i32 35}
!66 = !{ptr @.str.20, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../arch/arm/mach-omap2/omap_hwmod_2420_data.c", i32 271, i32 10}
!68 = !{ptr @omap2420_l4_wkup__wd_timer2, !69, !"omap2420_l4_wkup__wd_timer2", i1 false, i1 false}
!69 = !{!"../arch/arm/mach-omap2/omap_hwmod_2420_data.c", i32 268, i32 33}
!70 = !{ptr @.str.21, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../arch/arm/mach-omap2/omap_hwmod_2420_data.c", i32 279, i32 10}
!72 = !{ptr @omap2420_l4_wkup__gpio1, !73, !"omap2420_l4_wkup__gpio1", i1 false, i1 false}
!73 = !{!"../arch/arm/mach-omap2/omap_hwmod_2420_data.c", i32 276, i32 33}
!74 = !{ptr @omap2420_l4_wkup__gpio2, !75, !"omap2420_l4_wkup__gpio2", i1 false, i1 false}
!75 = !{!"../arch/arm/mach-omap2/omap_hwmod_2420_data.c", i32 284, i32 33}
!76 = !{ptr @omap2420_l4_wkup__gpio3, !77, !"omap2420_l4_wkup__gpio3", i1 false, i1 false}
!77 = !{!"../arch/arm/mach-omap2/omap_hwmod_2420_data.c", i32 292, i32 33}
!78 = !{ptr @omap2420_l4_wkup__gpio4, !79, !"omap2420_l4_wkup__gpio4", i1 false, i1 false}
!79 = !{!"../arch/arm/mach-omap2/omap_hwmod_2420_data.c", i32 300, i32 33}
!80 = !{ptr @omap2420_l4_core__mailbox, !81, !"omap2420_l4_core__mailbox", i1 false, i1 false}
!81 = !{!"../arch/arm/mach-omap2/omap_hwmod_2420_data.c", i32 308, i32 33}
!82 = !{ptr @.str.22, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../arch/arm/mach-omap2/omap_hwmod_2420_data.c", i32 130, i32 11}
!84 = !{ptr @.str.23, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../arch/arm/mach-omap2/omap_hwmod_2420_data.c", i32 132, i32 14}
!86 = !{ptr @omap2420_mailbox_hwmod, !87, !"omap2420_mailbox_hwmod", i1 false, i1 false}
!87 = !{!"../arch/arm/mach-omap2/omap_hwmod_2420_data.c", i32 129, i32 26}
!88 = !{ptr @.str.25, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../arch/arm/mach-omap2/omap_hwmod_2420_data.c", i32 318, i32 10}
!90 = !{ptr @omap2420_l4_core__mcbsp1, !91, !"omap2420_l4_core__mcbsp1", i1 false, i1 false}
!91 = !{!"../arch/arm/mach-omap2/omap_hwmod_2420_data.c", i32 315, i32 33}
!92 = !{ptr @.str.26, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../arch/arm/mach-omap2/omap_hwmod_2420_data.c", i32 158, i32 11}
!94 = !{ptr @.str.27, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../arch/arm/mach-omap2/omap_hwmod_2420_data.c", i32 160, i32 14}
!96 = !{ptr @omap2420_mcbsp1_hwmod, !97, !"omap2420_mcbsp1_hwmod", i1 false, i1 false}
!97 = !{!"../arch/arm/mach-omap2/omap_hwmod_2420_data.c", i32 157, i32 26}
!98 = !{ptr @.str.29, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../arch/arm/mach-omap2/omap_hwmod_2420_data.c", i32 148, i32 10}
!100 = !{ptr @omap2420_mcbsp_hwmod_class, !101, !"omap2420_mcbsp_hwmod_class", i1 false, i1 false}
!101 = !{!"../arch/arm/mach-omap2/omap_hwmod_2420_data.c", i32 147, i32 32}
!102 = !{ptr @.str.30, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../arch/arm/mach-omap2/omap_hwmod_2420_data.c", i32 152, i32 12}
!104 = !{ptr @.str.31, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../arch/arm/mach-omap2/omap_hwmod_2420_data.c", i32 152, i32 30}
!106 = !{ptr @.str.32, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../arch/arm/mach-omap2/omap_hwmod_2420_data.c", i32 153, i32 12}
!108 = !{ptr @.str.33, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../arch/arm/mach-omap2/omap_hwmod_2420_data.c", i32 153, i32 31}
!110 = !{ptr @mcbsp_opt_clks, !111, !"mcbsp_opt_clks", i1 false, i1 false}
!111 = !{!"../arch/arm/mach-omap2/omap_hwmod_2420_data.c", i32 151, i32 34}
!112 = !{ptr @.str.34, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../arch/arm/mach-omap2/omap_hwmod_2420_data.c", i32 326, i32 10}
!114 = !{ptr @omap2420_l4_core__mcbsp2, !115, !"omap2420_l4_core__mcbsp2", i1 false, i1 false}
!115 = !{!"../arch/arm/mach-omap2/omap_hwmod_2420_data.c", i32 323, i32 33}
!116 = !{ptr @.str.35, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../arch/arm/mach-omap2/omap_hwmod_2420_data.c", i32 174, i32 11}
!118 = !{ptr @.str.36, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../arch/arm/mach-omap2/omap_hwmod_2420_data.c", i32 176, i32 14}
!120 = !{ptr @omap2420_mcbsp2_hwmod, !121, !"omap2420_mcbsp2_hwmod", i1 false, i1 false}
!121 = !{!"../arch/arm/mach-omap2/omap_hwmod_2420_data.c", i32 173, i32 26}
!122 = !{ptr @.str.38, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../arch/arm/mach-omap2/omap_hwmod_2420_data.c", i32 334, i32 10}
!124 = !{ptr @omap2420_l4_core__msdi1, !125, !"omap2420_l4_core__msdi1", i1 false, i1 false}
!125 = !{!"../arch/arm/mach-omap2/omap_hwmod_2420_data.c", i32 331, i32 33}
!126 = !{ptr @.str.39, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../arch/arm/mach-omap2/omap_hwmod_2420_data.c", i32 204, i32 11}
!128 = !{ptr @.str.40, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../arch/arm/mach-omap2/omap_hwmod_2420_data.c", i32 206, i32 14}
!130 = !{ptr @omap2420_msdi1_hwmod, !131, !"omap2420_msdi1_hwmod", i1 false, i1 false}
!131 = !{!"../arch/arm/mach-omap2/omap_hwmod_2420_data.c", i32 203, i32 26}
!132 = !{ptr @.str.42, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../arch/arm/mach-omap2/omap_hwmod_2420_data.c", i32 197, i32 10}
!134 = !{ptr @omap2420_msdi_hwmod_class, !135, !"omap2420_msdi_hwmod_class", i1 false, i1 false}
!135 = !{!"../arch/arm/mach-omap2/omap_hwmod_2420_data.c", i32 196, i32 32}
!136 = !{ptr @omap2420_msdi_sysc, !137, !"omap2420_msdi_sysc", i1 false, i1 false}
!137 = !{!"../arch/arm/mach-omap2/omap_hwmod_2420_data.c", i32 188, i32 42}
!138 = !{ptr @.str.43, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../arch/arm/mach-omap2/omap_hwmod_2420_data.c", i32 342, i32 10}
!140 = !{ptr @omap2420_l4_core__hdq1w, !141, !"omap2420_l4_core__hdq1w", i1 false, i1 false}
!141 = !{!"../arch/arm/mach-omap2/omap_hwmod_2420_data.c", i32 339, i32 33}
!142 = !{ptr @.str.44, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../arch/arm/mach-omap2/omap_hwmod_2420_data.c", i32 219, i32 11}
!144 = !{ptr @.str.45, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../arch/arm/mach-omap2/omap_hwmod_2420_data.c", i32 220, i32 14}
!146 = !{ptr @omap2420_hdq1w_hwmod, !147, !"omap2420_hdq1w_hwmod", i1 false, i1 false}
!147 = !{!"../arch/arm/mach-omap2/omap_hwmod_2420_data.c", i32 218, i32 26}
!148 = !{ptr @omap2420_l3__gpmc, !149, !"omap2420_l3__gpmc", i1 false, i1 false}
!149 = !{!"../arch/arm/mach-omap2/omap_hwmod_2420_data.c", i32 347, i32 33}
!150 = !{i32 1, !"wchar_size", i32 2}
!151 = !{i32 1, !"min_enum_size", i32 4}
!152 = !{i32 8, !"branch-target-enforcement", i32 0}
!153 = !{i32 8, !"sign-return-address", i32 0}
!154 = !{i32 8, !"sign-return-address-all", i32 0}
!155 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!156 = !{i32 7, !"uwtable", i32 1}
!157 = !{i32 7, !"frame-pointer", i32 2}
!158 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
