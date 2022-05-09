; ModuleID = '/llk/IR_all_yes/drivers/clk/bcm/clk-bcm21664.c_pt.bc'
source_filename = "../drivers/clk/bcm/clk-bcm21664.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.ccu_policy = type { %struct.bcm_lvm_en, %struct.bcm_policy_ctl }
%struct.bcm_lvm_en = type { i32, i32 }
%struct.bcm_policy_ctl = type { i32, i32, i32, i32 }
%struct.kona_clk = type { %struct.clk_hw, %struct.clk_init_data, ptr, i32, %union.anon.43 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%union.anon.43 = type { ptr }
%struct.bcm_clk_policy = type { i32, i32 }
%struct.bcm_clk_gate = type { i32, i32, i32, i32, i32 }
%struct.bcm_clk_hyst = type { i32, i32, i32 }
%struct.bcm_clk_trig = type { i32, i32, i32 }
%struct.bcm_clk_div = type { %union.anon.44, i32 }
%union.anon.44 = type { %struct.anon.45 }
%struct.anon.45 = type { i32, i32, i32, i32, i64 }
%struct.bcm_clk_sel = type { i32, i32, i32, i32, ptr, i8 }

@__of_table_bcm21664_root_ccu = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm21664-root-ccu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @kona_dt_root_ccu_setup }, section "__clk_of_table", align 4
@__of_table_bcm21664_aon_ccu = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm21664-aon-ccu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @kona_dt_aon_ccu_setup }, section "__clk_of_table", align 4
@__of_table_bcm21664_master_ccu = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm21664-master-ccu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @kona_dt_master_ccu_setup }, section "__clk_of_table", align 4
@__of_table_bcm21664_slave_ccu = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm21664-slave-ccu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @kona_dt_slave_ccu_setup }, section "__clk_of_table", align 4
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"root_ccu_data.lock\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"root_ccu\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"frac_1m\00", [24 x i8] zeroinitializer }, align 32
@kona_peri_clk_ops = external dso_local global %struct.clk_ops, align 4
@root_ccu_data = internal global { { ptr, %struct.spinlock, i8, %struct.ccu_policy, ptr, i32, ptr, i32, [2 x %struct.kona_clk] }, [60 x i8] } { { ptr, %struct.spinlock, i8, %struct.ccu_policy, ptr, i32, ptr, i32, [2 x %struct.kona_clk] } { ptr null, %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i8 0, %struct.ccu_policy zeroinitializer, ptr null, i32 1, ptr @.str.1, i32 0, [2 x %struct.kona_clk] [%struct.kona_clk { %struct.clk_hw zeroinitializer, %struct.clk_init_data { ptr @.str.2, ptr @kona_peri_clk_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, ptr @root_ccu_data, i32 3, %union.anon.43 { ptr @frac_1m_data } }, %struct.kona_clk zeroinitializer] }, [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ref_crystal\00", [20 x i8] zeroinitializer }, align 32
@frac_1m_data = internal global { { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [2 x ptr] }, [56 x i8] } { { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [2 x ptr] } { %struct.bcm_clk_policy zeroinitializer, %struct.bcm_clk_gate { i32 532, i32 16, i32 0, i32 1, i32 55 }, %struct.bcm_clk_hyst zeroinitializer, %struct.bcm_clk_trig zeroinitializer, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_trig zeroinitializer, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_sel zeroinitializer, [2 x ptr] [ptr @.str.4, ptr null] }, [56 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"aon_ccu_data.lock\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"aon_ccu\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hub_timer\00", [22 x i8] zeroinitializer }, align 32
@aon_ccu_data = internal global { { ptr, %struct.spinlock, i8, %struct.ccu_policy, ptr, i32, ptr, i32, [2 x %struct.kona_clk] }, [60 x i8] } { { ptr, %struct.spinlock, i8, %struct.ccu_policy, ptr, i32, ptr, i32, [2 x %struct.kona_clk] } { ptr null, %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i8 0, %struct.ccu_policy { %struct.bcm_lvm_en { i32 52, i32 0 }, %struct.bcm_policy_ctl { i32 12, i32 0, i32 2, i32 1 } }, ptr null, i32 1, ptr @.str.7, i32 0, [2 x %struct.kona_clk] [%struct.kona_clk { %struct.clk_hw zeroinitializer, %struct.clk_init_data { ptr @.str.8, ptr @kona_peri_clk_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, ptr @aon_ccu_data, i32 3, %union.anon.43 { ptr @hub_timer_data } }, %struct.kona_clk zeroinitializer] }, [60 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bbl_32k\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dft_19_5m\00", [22 x i8] zeroinitializer }, align 32
@hub_timer_data = internal global { { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [4 x ptr] }, [48 x i8] } { { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [4 x ptr] } { %struct.bcm_clk_policy zeroinitializer, %struct.bcm_clk_gate { i32 1044, i32 16, i32 0, i32 1, i32 55 }, %struct.bcm_clk_hyst { i32 1044, i32 8, i32 9 }, %struct.bcm_clk_trig zeroinitializer, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_trig { i32 2624, i32 4, i32 1 }, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_sel { i32 2576, i32 0, i32 2, i32 0, ptr null, i8 -1 }, [4 x ptr] [ptr @.str.10, ptr @.str.2, ptr @.str.11, ptr null] }, [48 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"master_ccu_data.lock\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"master_ccu\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sdio1\00", [26 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sdio2\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sdio3\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sdio4\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sdio1_sleep\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sdio2_sleep\00", [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sdio3_sleep\00", [20 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sdio4_sleep\00", [20 x i8] zeroinitializer }, align 32
@master_ccu_data = internal global { { ptr, %struct.spinlock, i8, %struct.ccu_policy, ptr, i32, ptr, i32, [9 x %struct.kona_clk] }, [144 x i8] } { { ptr, %struct.spinlock, i8, %struct.ccu_policy, ptr, i32, ptr, i32, [9 x %struct.kona_clk] } { ptr null, %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i8 0, %struct.ccu_policy { %struct.bcm_lvm_en { i32 52, i32 0 }, %struct.bcm_policy_ctl { i32 12, i32 0, i32 2, i32 1 } }, ptr null, i32 8, ptr @.str.14, i32 0, [9 x %struct.kona_clk] [%struct.kona_clk { %struct.clk_hw zeroinitializer, %struct.clk_init_data { ptr @.str.15, ptr @kona_peri_clk_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, ptr @master_ccu_data, i32 3, %union.anon.43 { ptr @sdio1_data } }, %struct.kona_clk { %struct.clk_hw zeroinitializer, %struct.clk_init_data { ptr @.str.16, ptr @kona_peri_clk_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, ptr @master_ccu_data, i32 3, %union.anon.43 { ptr @sdio2_data } }, %struct.kona_clk { %struct.clk_hw zeroinitializer, %struct.clk_init_data { ptr @.str.17, ptr @kona_peri_clk_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, ptr @master_ccu_data, i32 3, %union.anon.43 { ptr @sdio3_data } }, %struct.kona_clk { %struct.clk_hw zeroinitializer, %struct.clk_init_data { ptr @.str.18, ptr @kona_peri_clk_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, ptr @master_ccu_data, i32 3, %union.anon.43 { ptr @sdio4_data } }, %struct.kona_clk { %struct.clk_hw zeroinitializer, %struct.clk_init_data { ptr @.str.19, ptr @kona_peri_clk_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, ptr @master_ccu_data, i32 3, %union.anon.43 { ptr @sdio1_sleep_data } }, %struct.kona_clk { %struct.clk_hw zeroinitializer, %struct.clk_init_data { ptr @.str.20, ptr @kona_peri_clk_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, ptr @master_ccu_data, i32 3, %union.anon.43 { ptr @sdio2_sleep_data } }, %struct.kona_clk { %struct.clk_hw zeroinitializer, %struct.clk_init_data { ptr @.str.21, ptr @kona_peri_clk_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, ptr @master_ccu_data, i32 3, %union.anon.43 { ptr @sdio3_sleep_data } }, %struct.kona_clk { %struct.clk_hw zeroinitializer, %struct.clk_init_data { ptr @.str.22, ptr @kona_peri_clk_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, ptr @master_ccu_data, i32 3, %union.anon.43 { ptr @sdio4_sleep_data } }, %struct.kona_clk zeroinitializer] }, [144 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"var_52m\00", [24 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ref_52m\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"var_96m\00", [24 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ref_96m\00", [24 x i8] zeroinitializer }, align 32
@sdio1_data = internal global { { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [6 x ptr] }, [40 x i8] } { { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [6 x ptr] } { %struct.bcm_clk_policy zeroinitializer, %struct.bcm_clk_gate { i32 856, i32 18, i32 2, i32 3, i32 55 }, %struct.bcm_clk_hyst zeroinitializer, %struct.bcm_clk_trig zeroinitializer, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_trig { i32 2812, i32 9, i32 1 }, %struct.bcm_clk_div { %union.anon.44 { %struct.anon.45 { i32 2600, i32 4, i32 14, i32 0, i64 -1 } }, i32 1 }, %struct.bcm_clk_sel { i32 2600, i32 0, i32 3, i32 0, ptr null, i8 -1 }, [6 x ptr] [ptr @.str.4, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr null] }, [40 x i8] zeroinitializer }, align 32
@sdio2_data = internal global { { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [6 x ptr] }, [40 x i8] } { { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [6 x ptr] } { %struct.bcm_clk_policy zeroinitializer, %struct.bcm_clk_gate { i32 860, i32 18, i32 2, i32 3, i32 55 }, %struct.bcm_clk_hyst zeroinitializer, %struct.bcm_clk_trig zeroinitializer, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_trig { i32 2812, i32 10, i32 1 }, %struct.bcm_clk_div { %union.anon.44 { %struct.anon.45 { i32 2604, i32 4, i32 14, i32 0, i64 -1 } }, i32 1 }, %struct.bcm_clk_sel { i32 2604, i32 0, i32 3, i32 0, ptr null, i8 -1 }, [6 x ptr] [ptr @.str.4, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr null] }, [40 x i8] zeroinitializer }, align 32
@sdio3_data = internal global { { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [6 x ptr] }, [40 x i8] } { { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [6 x ptr] } { %struct.bcm_clk_policy zeroinitializer, %struct.bcm_clk_gate { i32 868, i32 18, i32 2, i32 3, i32 55 }, %struct.bcm_clk_hyst zeroinitializer, %struct.bcm_clk_trig zeroinitializer, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_trig { i32 2812, i32 12, i32 1 }, %struct.bcm_clk_div { %union.anon.44 { %struct.anon.45 { i32 2612, i32 4, i32 14, i32 0, i64 -1 } }, i32 1 }, %struct.bcm_clk_sel { i32 2612, i32 0, i32 3, i32 0, ptr null, i8 -1 }, [6 x ptr] [ptr @.str.4, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr null] }, [40 x i8] zeroinitializer }, align 32
@sdio4_data = internal global { { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [6 x ptr] }, [40 x i8] } { { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [6 x ptr] } { %struct.bcm_clk_policy zeroinitializer, %struct.bcm_clk_gate { i32 864, i32 18, i32 2, i32 3, i32 55 }, %struct.bcm_clk_hyst zeroinitializer, %struct.bcm_clk_trig zeroinitializer, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_trig { i32 2812, i32 11, i32 1 }, %struct.bcm_clk_div { %union.anon.44 { %struct.anon.45 { i32 2608, i32 4, i32 14, i32 0, i64 -1 } }, i32 1 }, %struct.bcm_clk_sel { i32 2608, i32 0, i32 3, i32 0, ptr null, i8 -1 }, [6 x ptr] [ptr @.str.4, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr null] }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ref_32k\00", [24 x i8] zeroinitializer }, align 32
@sdio1_sleep_data = internal global { { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [2 x ptr] }, [56 x i8] } { { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [2 x ptr] } { %struct.bcm_clk_policy zeroinitializer, %struct.bcm_clk_gate { i32 856, i32 18, i32 2, i32 3, i32 55 }, %struct.bcm_clk_hyst zeroinitializer, %struct.bcm_clk_trig zeroinitializer, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_trig zeroinitializer, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_sel zeroinitializer, [2 x ptr] [ptr @.str.32, ptr null] }, [56 x i8] zeroinitializer }, align 32
@sdio2_sleep_data = internal global { { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [2 x ptr] }, [56 x i8] } { { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [2 x ptr] } { %struct.bcm_clk_policy zeroinitializer, %struct.bcm_clk_gate { i32 860, i32 18, i32 2, i32 3, i32 55 }, %struct.bcm_clk_hyst zeroinitializer, %struct.bcm_clk_trig zeroinitializer, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_trig zeroinitializer, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_sel zeroinitializer, [2 x ptr] [ptr @.str.32, ptr null] }, [56 x i8] zeroinitializer }, align 32
@sdio3_sleep_data = internal global { { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [2 x ptr] }, [56 x i8] } { { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [2 x ptr] } { %struct.bcm_clk_policy zeroinitializer, %struct.bcm_clk_gate { i32 868, i32 18, i32 2, i32 3, i32 55 }, %struct.bcm_clk_hyst zeroinitializer, %struct.bcm_clk_trig zeroinitializer, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_trig zeroinitializer, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_sel zeroinitializer, [2 x ptr] [ptr @.str.32, ptr null] }, [56 x i8] zeroinitializer }, align 32
@sdio4_sleep_data = internal global { { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [2 x ptr] }, [56 x i8] } { { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [2 x ptr] } { %struct.bcm_clk_policy zeroinitializer, %struct.bcm_clk_gate { i32 864, i32 18, i32 2, i32 3, i32 55 }, %struct.bcm_clk_hyst zeroinitializer, %struct.bcm_clk_trig zeroinitializer, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_trig zeroinitializer, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_sel zeroinitializer, [2 x ptr] [ptr @.str.32, ptr null] }, [56 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"slave_ccu_data.lock\00", [44 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"slave_ccu\00", [22 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uartb\00", [26 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"uartb2\00", [25 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"uartb3\00", [25 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bsc1\00", [27 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bsc2\00", [27 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bsc3\00", [27 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bsc4\00", [27 x i8] zeroinitializer }, align 32
@slave_ccu_data = internal global { { ptr, %struct.spinlock, i8, %struct.ccu_policy, ptr, i32, ptr, i32, [8 x %struct.kona_clk] }, [100 x i8] } { { ptr, %struct.spinlock, i8, %struct.ccu_policy, ptr, i32, ptr, i32, [8 x %struct.kona_clk] } { ptr null, %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.37, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i8 0, %struct.ccu_policy { %struct.bcm_lvm_en { i32 52, i32 0 }, %struct.bcm_policy_ctl { i32 12, i32 0, i32 2, i32 1 } }, ptr null, i32 7, ptr @.str.38, i32 0, [8 x %struct.kona_clk] [%struct.kona_clk { %struct.clk_hw zeroinitializer, %struct.clk_init_data { ptr @.str.39, ptr @kona_peri_clk_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, ptr @slave_ccu_data, i32 3, %union.anon.43 { ptr @uartb_data } }, %struct.kona_clk { %struct.clk_hw zeroinitializer, %struct.clk_init_data { ptr @.str.40, ptr @kona_peri_clk_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, ptr @slave_ccu_data, i32 3, %union.anon.43 { ptr @uartb2_data } }, %struct.kona_clk { %struct.clk_hw zeroinitializer, %struct.clk_init_data { ptr @.str.41, ptr @kona_peri_clk_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, ptr @slave_ccu_data, i32 3, %union.anon.43 { ptr @uartb3_data } }, %struct.kona_clk { %struct.clk_hw zeroinitializer, %struct.clk_init_data { ptr @.str.42, ptr @kona_peri_clk_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, ptr @slave_ccu_data, i32 3, %union.anon.43 { ptr @bsc1_data } }, %struct.kona_clk { %struct.clk_hw zeroinitializer, %struct.clk_init_data { ptr @.str.43, ptr @kona_peri_clk_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, ptr @slave_ccu_data, i32 3, %union.anon.43 { ptr @bsc2_data } }, %struct.kona_clk { %struct.clk_hw zeroinitializer, %struct.clk_init_data { ptr @.str.44, ptr @kona_peri_clk_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, ptr @slave_ccu_data, i32 3, %union.anon.43 { ptr @bsc3_data } }, %struct.kona_clk { %struct.clk_hw zeroinitializer, %struct.clk_init_data { ptr @.str.45, ptr @kona_peri_clk_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, ptr @slave_ccu_data, i32 3, %union.anon.43 { ptr @bsc4_data } }, %struct.kona_clk zeroinitializer] }, [100 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"var_156m\00", [23 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ref_156m\00", [23 x i8] zeroinitializer }, align 32
@uartb_data = internal global { { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [4 x ptr] }, [48 x i8] } { { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [4 x ptr] } { %struct.bcm_clk_policy zeroinitializer, %struct.bcm_clk_gate { i32 1024, i32 18, i32 2, i32 3, i32 55 }, %struct.bcm_clk_hyst zeroinitializer, %struct.bcm_clk_trig zeroinitializer, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_trig { i32 2812, i32 2, i32 1 }, %struct.bcm_clk_div { %union.anon.44 { %struct.anon.45 { i32 2576, i32 4, i32 12, i32 8, i64 -1 } }, i32 1 }, %struct.bcm_clk_sel { i32 2576, i32 0, i32 2, i32 0, ptr null, i8 -1 }, [4 x ptr] [ptr @.str.4, ptr @.str.47, ptr @.str.48, ptr null] }, [48 x i8] zeroinitializer }, align 32
@uartb2_data = internal global { { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [4 x ptr] }, [48 x i8] } { { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [4 x ptr] } { %struct.bcm_clk_policy zeroinitializer, %struct.bcm_clk_gate { i32 1028, i32 18, i32 2, i32 3, i32 55 }, %struct.bcm_clk_hyst zeroinitializer, %struct.bcm_clk_trig zeroinitializer, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_trig { i32 2812, i32 3, i32 1 }, %struct.bcm_clk_div { %union.anon.44 { %struct.anon.45 { i32 2580, i32 4, i32 12, i32 8, i64 -1 } }, i32 1 }, %struct.bcm_clk_sel { i32 2580, i32 0, i32 2, i32 0, ptr null, i8 -1 }, [4 x ptr] [ptr @.str.4, ptr @.str.47, ptr @.str.48, ptr null] }, [48 x i8] zeroinitializer }, align 32
@uartb3_data = internal global { { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [4 x ptr] }, [48 x i8] } { { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [4 x ptr] } { %struct.bcm_clk_policy zeroinitializer, %struct.bcm_clk_gate { i32 1032, i32 18, i32 2, i32 3, i32 55 }, %struct.bcm_clk_hyst zeroinitializer, %struct.bcm_clk_trig zeroinitializer, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_trig { i32 2812, i32 4, i32 1 }, %struct.bcm_clk_div { %union.anon.44 { %struct.anon.45 { i32 2584, i32 4, i32 12, i32 8, i64 -1 } }, i32 1 }, %struct.bcm_clk_sel { i32 2584, i32 0, i32 2, i32 0, ptr null, i8 -1 }, [4 x ptr] [ptr @.str.4, ptr @.str.47, ptr @.str.48, ptr null] }, [48 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"var_104m\00", [23 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ref_104m\00", [23 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"var_13m\00", [24 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ref_13m\00", [24 x i8] zeroinitializer }, align 32
@bsc1_data = internal global { { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [6 x ptr] }, [40 x i8] } { { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [6 x ptr] } { %struct.bcm_clk_policy zeroinitializer, %struct.bcm_clk_gate { i32 1112, i32 18, i32 2, i32 3, i32 55 }, %struct.bcm_clk_hyst zeroinitializer, %struct.bcm_clk_trig zeroinitializer, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_trig { i32 2812, i32 23, i32 1 }, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_sel { i32 2660, i32 0, i32 3, i32 0, ptr null, i8 -1 }, [6 x ptr] [ptr @.str.4, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr null] }, [40 x i8] zeroinitializer }, align 32
@bsc2_data = internal global { { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [6 x ptr] }, [40 x i8] } { { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [6 x ptr] } { %struct.bcm_clk_policy zeroinitializer, %struct.bcm_clk_gate { i32 1116, i32 18, i32 2, i32 3, i32 55 }, %struct.bcm_clk_hyst zeroinitializer, %struct.bcm_clk_trig zeroinitializer, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_trig { i32 2812, i32 24, i32 1 }, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_sel { i32 2664, i32 0, i32 3, i32 0, ptr null, i8 -1 }, [6 x ptr] [ptr @.str.4, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr null] }, [40 x i8] zeroinitializer }, align 32
@bsc3_data = internal global { { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [6 x ptr] }, [40 x i8] } { { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [6 x ptr] } { %struct.bcm_clk_policy zeroinitializer, %struct.bcm_clk_gate { i32 1136, i32 18, i32 2, i32 3, i32 55 }, %struct.bcm_clk_hyst zeroinitializer, %struct.bcm_clk_trig zeroinitializer, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_trig { i32 2812, i32 18, i32 1 }, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_sel { i32 2684, i32 0, i32 3, i32 0, ptr null, i8 -1 }, [6 x ptr] [ptr @.str.4, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr null] }, [40 x i8] zeroinitializer }, align 32
@bsc4_data = internal global { { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [6 x ptr] }, [40 x i8] } { { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [6 x ptr] } { %struct.bcm_clk_policy zeroinitializer, %struct.bcm_clk_gate { i32 1140, i32 18, i32 2, i32 3, i32 55 }, %struct.bcm_clk_hyst zeroinitializer, %struct.bcm_clk_trig zeroinitializer, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_trig { i32 2812, i32 19, i32 1 }, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_sel { i32 2688, i32 0, i32 3, i32 0, ptr null, i8 -1 }, [6 x ptr] [ptr @.str.4, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr null] }, [40 x i8] zeroinitializer }, align 32
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 29, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 33, i32 4 }
@___asan_gen_.69 = private unnamed_addr constant [14 x i8] c"root_ccu_data\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 28, i32 24 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 25, i32 13 }
@___asan_gen_.75 = private unnamed_addr constant [13 x i8] c"frac_1m_data\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 23, i32 29 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 51, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 58, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant [13 x i8] c"aon_ccu_data\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 50, i32 24 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 43, i32 13 }
@___asan_gen_.96 = private unnamed_addr constant [15 x i8] c"hub_timer_data\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 40, i32 29 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 134, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 141, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 143, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 145, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 147, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 149, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 151, i32 4 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 153, i32 4 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 155, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant [16 x i8] c"master_ccu_data\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 133, i32 24 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 67, i32 13 }
@___asan_gen_.144 = private unnamed_addr constant [11 x i8] c"sdio1_data\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 65, i32 29 }
@___asan_gen_.147 = private unnamed_addr constant [11 x i8] c"sdio2_data\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 77, i32 29 }
@___asan_gen_.150 = private unnamed_addr constant [11 x i8] c"sdio3_data\00", align 1
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 89, i32 29 }
@___asan_gen_.153 = private unnamed_addr constant [11 x i8] c"sdio4_data\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 101, i32 29 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 114, i32 13 }
@___asan_gen_.159 = private unnamed_addr constant [17 x i8] c"sdio1_sleep_data\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 113, i32 29 }
@___asan_gen_.162 = private unnamed_addr constant [17 x i8] c"sdio2_sleep_data\00", align 1
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 118, i32 29 }
@___asan_gen_.165 = private unnamed_addr constant [17 x i8] c"sdio3_sleep_data\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 123, i32 29 }
@___asan_gen_.168 = private unnamed_addr constant [17 x i8] c"sdio4_sleep_data\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 128, i32 29 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 237, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 244, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 246, i32 4 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 248, i32 4 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 250, i32 4 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 252, i32 4 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 254, i32 4 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 256, i32 4 }
@___asan_gen_.198 = private unnamed_addr constant [15 x i8] c"slave_ccu_data\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 236, i32 24 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 164, i32 13 }
@___asan_gen_.207 = private unnamed_addr constant [11 x i8] c"uartb_data\00", align 1
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 162, i32 29 }
@___asan_gen_.210 = private unnamed_addr constant [12 x i8] c"uartb2_data\00", align 1
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 172, i32 29 }
@___asan_gen_.213 = private unnamed_addr constant [12 x i8] c"uartb3_data\00", align 1
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 182, i32 29 }
@___asan_gen_.225 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 194, i32 13 }
@___asan_gen_.228 = private unnamed_addr constant [10 x i8] c"bsc1_data\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 192, i32 29 }
@___asan_gen_.231 = private unnamed_addr constant [10 x i8] c"bsc2_data\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 203, i32 29 }
@___asan_gen_.234 = private unnamed_addr constant [10 x i8] c"bsc3_data\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 214, i32 29 }
@___asan_gen_.237 = private unnamed_addr constant [10 x i8] c"bsc4_data\00", align 1
@___asan_gen_.238 = private constant [34 x i8] c"../drivers/clk/bcm/clk-bcm21664.c\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.238, i32 225, i32 29 }
@llvm.compiler.used = appending global [64 x ptr] [ptr @__of_table_bcm21664_aon_ccu, ptr @__of_table_bcm21664_master_ccu, ptr @__of_table_bcm21664_root_ccu, ptr @__of_table_bcm21664_slave_ccu, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @root_ccu_data, ptr @.str.4, ptr @frac_1m_data, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @aon_ccu_data, ptr @.str.10, ptr @.str.11, ptr @hub_timer_data, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @master_ccu_data, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @sdio1_data, ptr @sdio2_data, ptr @sdio3_data, ptr @sdio4_data, ptr @.str.32, ptr @sdio1_sleep_data, ptr @sdio2_sleep_data, ptr @sdio3_sleep_data, ptr @sdio4_sleep_data, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @slave_ccu_data, ptr @.str.47, ptr @.str.48, ptr @uartb_data, ptr @uartb2_data, ptr @uartb3_data, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @bsc1_data, ptr @bsc2_data, ptr @bsc3_data, ptr @bsc4_data], section "llvm.metadata"
@0 = internal global [60 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @root_ccu_data to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frac_1m_data to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aon_ccu_data to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hub_timer_data to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @master_ccu_data to i32), i32 560, i32 704, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdio1_data to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdio2_data to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdio3_data to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdio4_data to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdio1_sleep_data to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdio2_sleep_data to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdio3_sleep_data to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdio4_sleep_data to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slave_ccu_data to i32), i32 508, i32 608, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uartb_data to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uartb2_data to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uartb3_data to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bsc1_data to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bsc2_data to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bsc3_data to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bsc4_data to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @kona_dt_root_ccu_setup(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kona_dt_ccu_setup(ptr noundef nonnull @root_ccu_data, ptr noundef %node) #5
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @kona_dt_aon_ccu_setup(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kona_dt_ccu_setup(ptr noundef nonnull @aon_ccu_data, ptr noundef %node) #5
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @kona_dt_master_ccu_setup(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kona_dt_ccu_setup(ptr noundef nonnull @master_ccu_data, ptr noundef %node) #5
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @kona_dt_slave_ccu_setup(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kona_dt_ccu_setup(ptr noundef nonnull @slave_ccu_data, ptr noundef %node) #5
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @kona_dt_ccu_setup(ptr noundef, ptr noundef) local_unnamed_addr #1 section ".init.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }
attributes #5 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !22, !24, !26, !28, !29, !31, !33, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !55, !56, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !97, !99, !101, !103, !105, !106, !107, !108, !110, !112, !114}
!llvm.module.flags = !{!116, !117, !118, !119, !120, !121, !122, !123}
!llvm.ident = !{!124}

!0 = !{ptr @__of_table_bcm21664_root_ccu, !1, !"__of_table_bcm21664_root_ccu", i1 false, i1 false}
!1 = !{!"../drivers/clk/bcm/clk-bcm21664.c", i32 283, i32 1}
!2 = !{ptr @__of_table_bcm21664_aon_ccu, !3, !"__of_table_bcm21664_aon_ccu", i1 false, i1 false}
!3 = !{!"../drivers/clk/bcm/clk-bcm21664.c", i32 285, i32 1}
!4 = !{ptr @__of_table_bcm21664_master_ccu, !5, !"__of_table_bcm21664_master_ccu", i1 false, i1 false}
!5 = !{!"../drivers/clk/bcm/clk-bcm21664.c", i32 287, i32 1}
!6 = !{ptr @__of_table_bcm21664_slave_ccu, !7, !"__of_table_bcm21664_slave_ccu", i1 false, i1 false}
!7 = !{!"../drivers/clk/bcm/clk-bcm21664.c", i32 289, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/bcm/clk-bcm21664.c", i32 29, i32 2}
!10 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/clk/bcm/clk-bcm21664.c", i32 33, i32 4}
!13 = !{ptr @root_ccu_data, !14, !"root_ccu_data", i1 false, i1 false}
!14 = !{!"../drivers/clk/bcm/clk-bcm21664.c", i32 28, i32 24}
!15 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/clk/bcm/clk-bcm21664.c", i32 25, i32 13}
!17 = !{ptr @frac_1m_data, !18, !"frac_1m_data", i1 false, i1 false}
!18 = !{!"../drivers/clk/bcm/clk-bcm21664.c", i32 23, i32 29}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/clk/bcm/clk-bcm21664.c", i32 51, i32 2}
!21 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clk/bcm/clk-bcm21664.c", i32 58, i32 4}
!24 = !{ptr @aon_ccu_data, !25, !"aon_ccu_data", i1 false, i1 false}
!25 = !{!"../drivers/clk/bcm/clk-bcm21664.c", i32 50, i32 24}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/bcm/clk-bcm21664.c", i32 43, i32 13}
!28 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @hub_timer_data, !30, !"hub_timer_data", i1 false, i1 false}
!30 = !{!"../drivers/clk/bcm/clk-bcm21664.c", i32 40, i32 29}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/clk/bcm/clk-bcm21664.c", i32 134, i32 2}
!33 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clk/bcm/clk-bcm21664.c", i32 141, i32 4}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clk/bcm/clk-bcm21664.c", i32 143, i32 4}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clk/bcm/clk-bcm21664.c", i32 145, i32 4}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/clk/bcm/clk-bcm21664.c", i32 147, i32 4}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/bcm/clk-bcm21664.c", i32 149, i32 4}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clk/bcm/clk-bcm21664.c", i32 151, i32 4}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/clk/bcm/clk-bcm21664.c", i32 153, i32 4}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/clk/bcm/clk-bcm21664.c", i32 155, i32 4}
!50 = !{ptr @master_ccu_data, !51, !"master_ccu_data", i1 false, i1 false}
!51 = !{!"../drivers/clk/bcm/clk-bcm21664.c", i32 133, i32 24}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/clk/bcm/clk-bcm21664.c", i32 67, i32 13}
!54 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @sdio1_data, !58, !"sdio1_data", i1 false, i1 false}
!58 = !{!"../drivers/clk/bcm/clk-bcm21664.c", i32 65, i32 29}
!59 = !{ptr @sdio2_data, !60, !"sdio2_data", i1 false, i1 false}
!60 = !{!"../drivers/clk/bcm/clk-bcm21664.c", i32 77, i32 29}
!61 = !{ptr @sdio3_data, !62, !"sdio3_data", i1 false, i1 false}
!62 = !{!"../drivers/clk/bcm/clk-bcm21664.c", i32 89, i32 29}
!63 = !{ptr @sdio4_data, !64, !"sdio4_data", i1 false, i1 false}
!64 = !{!"../drivers/clk/bcm/clk-bcm21664.c", i32 101, i32 29}
!65 = !{ptr @.str.32, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/clk/bcm/clk-bcm21664.c", i32 114, i32 13}
!67 = !{ptr @sdio1_sleep_data, !68, !"sdio1_sleep_data", i1 false, i1 false}
!68 = !{!"../drivers/clk/bcm/clk-bcm21664.c", i32 113, i32 29}
!69 = !{ptr @sdio2_sleep_data, !70, !"sdio2_sleep_data", i1 false, i1 false}
!70 = !{!"../drivers/clk/bcm/clk-bcm21664.c", i32 118, i32 29}
!71 = !{ptr @sdio3_sleep_data, !72, !"sdio3_sleep_data", i1 false, i1 false}
!72 = !{!"../drivers/clk/bcm/clk-bcm21664.c", i32 123, i32 29}
!73 = !{ptr @sdio4_sleep_data, !74, !"sdio4_sleep_data", i1 false, i1 false}
!74 = !{!"../drivers/clk/bcm/clk-bcm21664.c", i32 128, i32 29}
!75 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/clk/bcm/clk-bcm21664.c", i32 237, i32 2}
!77 = !{ptr @.str.38, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/clk/bcm/clk-bcm21664.c", i32 244, i32 4}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/clk/bcm/clk-bcm21664.c", i32 246, i32 4}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/clk/bcm/clk-bcm21664.c", i32 248, i32 4}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/clk/bcm/clk-bcm21664.c", i32 250, i32 4}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/clk/bcm/clk-bcm21664.c", i32 252, i32 4}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/clk/bcm/clk-bcm21664.c", i32 254, i32 4}
!90 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/clk/bcm/clk-bcm21664.c", i32 256, i32 4}
!92 = !{ptr @slave_ccu_data, !93, !"slave_ccu_data", i1 false, i1 false}
!93 = !{!"../drivers/clk/bcm/clk-bcm21664.c", i32 236, i32 24}
!94 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/clk/bcm/clk-bcm21664.c", i32 164, i32 13}
!96 = !{ptr @.str.48, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @uartb_data, !98, !"uartb_data", i1 false, i1 false}
!98 = !{!"../drivers/clk/bcm/clk-bcm21664.c", i32 162, i32 29}
!99 = !{ptr @uartb2_data, !100, !"uartb2_data", i1 false, i1 false}
!100 = !{!"../drivers/clk/bcm/clk-bcm21664.c", i32 172, i32 29}
!101 = !{ptr @uartb3_data, !102, !"uartb3_data", i1 false, i1 false}
!102 = !{!"../drivers/clk/bcm/clk-bcm21664.c", i32 182, i32 29}
!103 = !{ptr @.str.52, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/clk/bcm/clk-bcm21664.c", i32 194, i32 13}
!105 = !{ptr @.str.53, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.54, !104, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @.str.55, !104, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @bsc1_data, !109, !"bsc1_data", i1 false, i1 false}
!109 = !{!"../drivers/clk/bcm/clk-bcm21664.c", i32 192, i32 29}
!110 = !{ptr @bsc2_data, !111, !"bsc2_data", i1 false, i1 false}
!111 = !{!"../drivers/clk/bcm/clk-bcm21664.c", i32 203, i32 29}
!112 = !{ptr @bsc3_data, !113, !"bsc3_data", i1 false, i1 false}
!113 = !{!"../drivers/clk/bcm/clk-bcm21664.c", i32 214, i32 29}
!114 = !{ptr @bsc4_data, !115, !"bsc4_data", i1 false, i1 false}
!115 = !{!"../drivers/clk/bcm/clk-bcm21664.c", i32 225, i32 29}
!116 = !{i32 1, !"wchar_size", i32 2}
!117 = !{i32 1, !"min_enum_size", i32 4}
!118 = !{i32 8, !"branch-target-enforcement", i32 0}
!119 = !{i32 8, !"sign-return-address", i32 0}
!120 = !{i32 8, !"sign-return-address-all", i32 0}
!121 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!122 = !{i32 7, !"uwtable", i32 1}
!123 = !{i32 7, !"frame-pointer", i32 2}
!124 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
