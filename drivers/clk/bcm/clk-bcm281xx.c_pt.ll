; ModuleID = '/llk/IR_all_yes/drivers/clk/bcm/clk-bcm281xx.c_pt.bc'
source_filename = "../drivers/clk/bcm/clk-bcm281xx.c"
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

@__of_table_bcm281xx_root_ccu = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm11351-root-ccu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @kona_dt_root_ccu_setup }, section "__clk_of_table", align 4
@__of_table_bcm281xx_aon_ccu = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm11351-aon-ccu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @kona_dt_aon_ccu_setup }, section "__clk_of_table", align 4
@__of_table_bcm281xx_hub_ccu = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm11351-hub-ccu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @kona_dt_hub_ccu_setup }, section "__clk_of_table", align 4
@__of_table_bcm281xx_master_ccu = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm11351-master-ccu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @kona_dt_master_ccu_setup }, section "__clk_of_table", align 4
@__of_table_bcm281xx_slave_ccu = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm11351-slave-ccu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @kona_dt_slave_ccu_setup }, section "__clk_of_table", align 4
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"root_ccu_data.lock\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"root_ccu\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"frac_1m\00", [24 x i8] zeroinitializer }, align 32
@kona_peri_clk_ops = external dso_local global %struct.clk_ops, align 4
@root_ccu_data = internal global { { ptr, %struct.spinlock, i8, %struct.ccu_policy, ptr, i32, ptr, i32, [2 x %struct.kona_clk] }, [60 x i8] } { { ptr, %struct.spinlock, i8, %struct.ccu_policy, ptr, i32, ptr, i32, [2 x %struct.kona_clk] } { ptr null, %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i8 0, %struct.ccu_policy zeroinitializer, ptr null, i32 1, ptr @.str.1, i32 0, [2 x %struct.kona_clk] [%struct.kona_clk { %struct.clk_hw zeroinitializer, %struct.clk_init_data { ptr @.str.2, ptr @kona_peri_clk_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, ptr @root_ccu_data, i32 3, %union.anon.43 { ptr @frac_1m_data } }, %struct.kona_clk zeroinitializer] }, [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ref_crystal\00", [20 x i8] zeroinitializer }, align 32
@frac_1m_data = internal global { { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [2 x ptr] }, [56 x i8] } { { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [2 x ptr] } { %struct.bcm_clk_policy zeroinitializer, %struct.bcm_clk_gate { i32 532, i32 16, i32 0, i32 1, i32 55 }, %struct.bcm_clk_hyst zeroinitializer, %struct.bcm_clk_trig zeroinitializer, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_trig { i32 3588, i32 0, i32 1 }, %struct.bcm_clk_div { %union.anon.44 { %struct.anon.45 { i32 3584, i32 0, i32 22, i32 16, i64 -1 } }, i32 1 }, %struct.bcm_clk_sel zeroinitializer, [2 x ptr] [ptr @.str.4, ptr null] }, [56 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"aon_ccu_data.lock\00", [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"aon_ccu\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hub_timer\00", [22 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pmu_bsc\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pmu_bsc_var\00", [20 x i8] zeroinitializer }, align 32
@aon_ccu_data = internal global { { ptr, %struct.spinlock, i8, %struct.ccu_policy, ptr, i32, ptr, i32, [4 x %struct.kona_clk] }, [84 x i8] } { { ptr, %struct.spinlock, i8, %struct.ccu_policy, ptr, i32, ptr, i32, [4 x %struct.kona_clk] } { ptr null, %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i8 0, %struct.ccu_policy zeroinitializer, ptr null, i32 3, ptr @.str.7, i32 0, [4 x %struct.kona_clk] [%struct.kona_clk { %struct.clk_hw zeroinitializer, %struct.clk_init_data { ptr @.str.8, ptr @kona_peri_clk_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, ptr @aon_ccu_data, i32 3, %union.anon.43 { ptr @hub_timer_data } }, %struct.kona_clk { %struct.clk_hw zeroinitializer, %struct.clk_init_data { ptr @.str.9, ptr @kona_peri_clk_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, ptr @aon_ccu_data, i32 3, %union.anon.43 { ptr @pmu_bsc_data } }, %struct.kona_clk { %struct.clk_hw zeroinitializer, %struct.clk_init_data { ptr @.str.10, ptr @kona_peri_clk_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, ptr @aon_ccu_data, i32 3, %union.anon.43 { ptr @pmu_bsc_var_data } }, %struct.kona_clk zeroinitializer] }, [84 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bbl_32k\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dft_19_5m\00", [22 x i8] zeroinitializer }, align 32
@hub_timer_data = internal global { { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [4 x ptr] }, [48 x i8] } { { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [4 x ptr] } { %struct.bcm_clk_policy zeroinitializer, %struct.bcm_clk_gate { i32 1044, i32 16, i32 0, i32 1, i32 55 }, %struct.bcm_clk_hyst zeroinitializer, %struct.bcm_clk_trig zeroinitializer, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_trig { i32 2624, i32 4, i32 1 }, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_sel { i32 2576, i32 0, i32 2, i32 0, ptr null, i8 -1 }, [4 x ptr] [ptr @.str.12, ptr @.str.2, ptr @.str.13, ptr null] }, [48 x i8] zeroinitializer }, align 32
@pmu_bsc_data = internal global { { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [4 x ptr] }, [48 x i8] } { { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [4 x ptr] } { %struct.bcm_clk_policy zeroinitializer, %struct.bcm_clk_gate { i32 1048, i32 16, i32 0, i32 1, i32 55 }, %struct.bcm_clk_hyst zeroinitializer, %struct.bcm_clk_trig zeroinitializer, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_trig { i32 2624, i32 0, i32 1 }, %struct.bcm_clk_div { %union.anon.44 { %struct.anon.45 { i32 2564, i32 3, i32 4, i32 0, i64 -1 } }, i32 1 }, %struct.bcm_clk_sel { i32 2564, i32 0, i32 2, i32 0, ptr null, i8 -1 }, [4 x ptr] [ptr @.str.4, ptr @.str.10, ptr @.str.12, ptr null] }, [48 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"var_312m\00", [23 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ref_312m\00", [23 x i8] zeroinitializer }, align 32
@pmu_bsc_var_data = internal global { <{ %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, [4 x i8], %struct.bcm_clk_div, %struct.bcm_clk_trig, [4 x i8], %struct.bcm_clk_div, %struct.bcm_clk_sel, [3 x ptr] }>, [52 x i8] } { <{ %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, [4 x i8], %struct.bcm_clk_div, %struct.bcm_clk_trig, [4 x i8], %struct.bcm_clk_div, %struct.bcm_clk_sel, [3 x ptr] }> <{ %struct.bcm_clk_policy zeroinitializer, %struct.bcm_clk_gate zeroinitializer, %struct.bcm_clk_hyst zeroinitializer, %struct.bcm_clk_trig zeroinitializer, [4 x i8] undef, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_trig { i32 2624, i32 2, i32 1 }, [4 x i8] undef, %struct.bcm_clk_div { %union.anon.44 { %struct.anon.45 { i32 2560, i32 4, i32 5, i32 0, i64 -1 } }, i32 1 }, %struct.bcm_clk_sel { i32 2560, i32 0, i32 2, i32 0, ptr null, i8 -1 }, [3 x ptr] [ptr @.str.16, ptr @.str.17, ptr null] }>, [52 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hub_ccu_data.lock\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hub_ccu\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tmon_1m\00", [24 x i8] zeroinitializer }, align 32
@hub_ccu_data = internal global { { ptr, %struct.spinlock, i8, %struct.ccu_policy, ptr, i32, ptr, i32, [2 x %struct.kona_clk] }, [60 x i8] } { { ptr, %struct.spinlock, i8, %struct.ccu_policy, ptr, i32, ptr, i32, [2 x %struct.kona_clk] } { ptr null, %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.19, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i8 0, %struct.ccu_policy zeroinitializer, ptr null, i32 1, ptr @.str.20, i32 0, [2 x %struct.kona_clk] [%struct.kona_clk { %struct.clk_hw zeroinitializer, %struct.clk_init_data { ptr @.str.21, ptr @kona_peri_clk_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, ptr @hub_ccu_data, i32 3, %union.anon.43 { ptr @tmon_1m_data } }, %struct.kona_clk zeroinitializer] }, [60 x i8] zeroinitializer }, align 32
@tmon_1m_data = internal global { <{ %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, [4 x i8], %struct.bcm_clk_div, %struct.bcm_clk_trig, [4 x i8], %struct.bcm_clk_div, %struct.bcm_clk_sel, [3 x ptr] }>, [52 x i8] } { <{ %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, [4 x i8], %struct.bcm_clk_div, %struct.bcm_clk_trig, [4 x i8], %struct.bcm_clk_div, %struct.bcm_clk_sel, [3 x ptr] }> <{ %struct.bcm_clk_policy zeroinitializer, %struct.bcm_clk_gate { i32 1188, i32 18, i32 2, i32 3, i32 55 }, %struct.bcm_clk_hyst zeroinitializer, %struct.bcm_clk_trig zeroinitializer, [4 x i8] undef, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_trig { i32 3716, i32 1, i32 1 }, [4 x i8] undef, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_sel { i32 3700, i32 0, i32 2, i32 0, ptr null, i8 -1 }, [3 x ptr] [ptr @.str.4, ptr @.str.2, ptr null] }>, [52 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"master_ccu_data.lock\00", [43 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"master_ccu\00", [21 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sdio1\00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sdio2\00", [26 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sdio3\00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"sdio4\00", [26 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"usb_ic\00", [25 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hsic2_48m\00", [22 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hsic2_12m\00", [22 x i8] zeroinitializer }, align 32
@master_ccu_data = internal global { { ptr, %struct.spinlock, i8, %struct.ccu_policy, ptr, i32, ptr, i32, [8 x %struct.kona_clk] }, [100 x i8] } { { ptr, %struct.spinlock, i8, %struct.ccu_policy, ptr, i32, ptr, i32, [8 x %struct.kona_clk] } { ptr null, %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.24, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i8 0, %struct.ccu_policy zeroinitializer, ptr null, i32 7, ptr @.str.25, i32 0, [8 x %struct.kona_clk] [%struct.kona_clk { %struct.clk_hw zeroinitializer, %struct.clk_init_data { ptr @.str.26, ptr @kona_peri_clk_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, ptr @master_ccu_data, i32 3, %union.anon.43 { ptr @sdio1_data } }, %struct.kona_clk { %struct.clk_hw zeroinitializer, %struct.clk_init_data { ptr @.str.27, ptr @kona_peri_clk_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, ptr @master_ccu_data, i32 3, %union.anon.43 { ptr @sdio2_data } }, %struct.kona_clk { %struct.clk_hw zeroinitializer, %struct.clk_init_data { ptr @.str.28, ptr @kona_peri_clk_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, ptr @master_ccu_data, i32 3, %union.anon.43 { ptr @sdio3_data } }, %struct.kona_clk { %struct.clk_hw zeroinitializer, %struct.clk_init_data { ptr @.str.29, ptr @kona_peri_clk_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, ptr @master_ccu_data, i32 3, %union.anon.43 { ptr @sdio4_data } }, %struct.kona_clk { %struct.clk_hw zeroinitializer, %struct.clk_init_data { ptr @.str.30, ptr @kona_peri_clk_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, ptr @master_ccu_data, i32 3, %union.anon.43 { ptr @usb_ic_data } }, %struct.kona_clk { %struct.clk_hw zeroinitializer, %struct.clk_init_data { ptr @.str.31, ptr @kona_peri_clk_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, ptr @master_ccu_data, i32 3, %union.anon.43 { ptr @hsic2_48m_data } }, %struct.kona_clk { %struct.clk_hw zeroinitializer, %struct.clk_init_data { ptr @.str.32, ptr @kona_peri_clk_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, ptr @master_ccu_data, i32 3, %union.anon.43 { ptr @hsic2_12m_data } }, %struct.kona_clk zeroinitializer] }, [100 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"var_52m\00", [24 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ref_52m\00", [24 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"var_96m\00", [24 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ref_96m\00", [24 x i8] zeroinitializer }, align 32
@sdio1_data = internal global { { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [6 x ptr] }, [40 x i8] } { { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [6 x ptr] } { %struct.bcm_clk_policy zeroinitializer, %struct.bcm_clk_gate { i32 856, i32 18, i32 2, i32 3, i32 55 }, %struct.bcm_clk_hyst zeroinitializer, %struct.bcm_clk_trig zeroinitializer, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_trig { i32 2812, i32 9, i32 1 }, %struct.bcm_clk_div { %union.anon.44 { %struct.anon.45 { i32 2600, i32 4, i32 14, i32 0, i64 -1 } }, i32 1 }, %struct.bcm_clk_sel { i32 2600, i32 0, i32 3, i32 0, ptr null, i8 -1 }, [6 x ptr] [ptr @.str.4, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr null] }, [40 x i8] zeroinitializer }, align 32
@sdio2_data = internal global { { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [6 x ptr] }, [40 x i8] } { { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [6 x ptr] } { %struct.bcm_clk_policy zeroinitializer, %struct.bcm_clk_gate { i32 860, i32 18, i32 2, i32 3, i32 55 }, %struct.bcm_clk_hyst zeroinitializer, %struct.bcm_clk_trig zeroinitializer, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_trig { i32 2812, i32 10, i32 1 }, %struct.bcm_clk_div { %union.anon.44 { %struct.anon.45 { i32 2604, i32 4, i32 14, i32 0, i64 -1 } }, i32 1 }, %struct.bcm_clk_sel { i32 2604, i32 0, i32 3, i32 0, ptr null, i8 -1 }, [6 x ptr] [ptr @.str.4, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr null] }, [40 x i8] zeroinitializer }, align 32
@sdio3_data = internal global { { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [6 x ptr] }, [40 x i8] } { { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [6 x ptr] } { %struct.bcm_clk_policy zeroinitializer, %struct.bcm_clk_gate { i32 868, i32 18, i32 2, i32 3, i32 55 }, %struct.bcm_clk_hyst zeroinitializer, %struct.bcm_clk_trig zeroinitializer, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_trig { i32 2812, i32 12, i32 1 }, %struct.bcm_clk_div { %union.anon.44 { %struct.anon.45 { i32 2612, i32 4, i32 14, i32 0, i64 -1 } }, i32 1 }, %struct.bcm_clk_sel { i32 2612, i32 0, i32 3, i32 0, ptr null, i8 -1 }, [6 x ptr] [ptr @.str.4, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr null] }, [40 x i8] zeroinitializer }, align 32
@sdio4_data = internal global { { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [6 x ptr] }, [40 x i8] } { { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [6 x ptr] } { %struct.bcm_clk_policy zeroinitializer, %struct.bcm_clk_gate { i32 864, i32 18, i32 2, i32 3, i32 55 }, %struct.bcm_clk_hyst zeroinitializer, %struct.bcm_clk_trig zeroinitializer, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_trig { i32 2812, i32 11, i32 1 }, %struct.bcm_clk_div { %union.anon.44 { %struct.anon.45 { i32 2608, i32 4, i32 14, i32 0, i64 -1 } }, i32 1 }, %struct.bcm_clk_sel { i32 2608, i32 0, i32 3, i32 0, ptr null, i8 -1 }, [6 x ptr] [ptr @.str.4, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr null] }, [40 x i8] zeroinitializer }, align 32
@usb_ic_data = internal global { { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, [4 x i8], { { i32, [20 x i8] }, i32, [4 x i8] }, %struct.bcm_clk_sel, [4 x ptr] }, [48 x i8] } { { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, [4 x i8], { { i32, [20 x i8] }, i32, [4 x i8] }, %struct.bcm_clk_sel, [4 x ptr] } { %struct.bcm_clk_policy zeroinitializer, %struct.bcm_clk_gate { i32 852, i32 18, i32 2, i32 3, i32 55 }, %struct.bcm_clk_hyst zeroinitializer, %struct.bcm_clk_trig zeroinitializer, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_trig { i32 2812, i32 7, i32 1 }, [4 x i8] undef, { { i32, [20 x i8] }, i32, [4 x i8] } { { i32, [20 x i8] } { i32 2, [20 x i8] undef }, i32 3, [4 x i8] undef }, %struct.bcm_clk_sel { i32 2596, i32 0, i32 2, i32 0, ptr null, i8 -1 }, [4 x ptr] [ptr @.str.4, ptr @.str.36, ptr @.str.37, ptr null] }, [48 x i8] zeroinitializer }, align 32
@hsic2_48m_data = internal global { { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, [4 x i8], { { i32, [20 x i8] }, i32, [4 x i8] }, %struct.bcm_clk_sel, [4 x ptr] }, [48 x i8] } { { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, [4 x i8], { { i32, [20 x i8] }, i32, [4 x i8] }, %struct.bcm_clk_sel, [4 x ptr] } { %struct.bcm_clk_policy zeroinitializer, %struct.bcm_clk_gate { i32 880, i32 18, i32 2, i32 3, i32 55 }, %struct.bcm_clk_hyst zeroinitializer, %struct.bcm_clk_trig zeroinitializer, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_trig { i32 2812, i32 5, i32 1 }, [4 x i8] undef, { { i32, [20 x i8] }, i32, [4 x i8] } { { i32, [20 x i8] } { i32 2, [20 x i8] undef }, i32 3, [4 x i8] undef }, %struct.bcm_clk_sel { i32 2616, i32 0, i32 2, i32 0, ptr null, i8 -1 }, [4 x ptr] [ptr @.str.4, ptr @.str.36, ptr @.str.37, ptr null] }, [48 x i8] zeroinitializer }, align 32
@hsic2_12m_data = internal global { { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, [4 x i8], { { i32, [20 x i8] }, i32, [4 x i8] }, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [4 x ptr] }, [48 x i8] } { { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, [4 x i8], { { i32, [20 x i8] }, i32, [4 x i8] }, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [4 x ptr] } { %struct.bcm_clk_policy zeroinitializer, %struct.bcm_clk_gate { i32 880, i32 20, i32 4, i32 5, i32 55 }, %struct.bcm_clk_hyst zeroinitializer, %struct.bcm_clk_trig zeroinitializer, [4 x i8] undef, { { i32, [20 x i8] }, i32, [4 x i8] } { { i32, [20 x i8] } { i32 2, [20 x i8] undef }, i32 3, [4 x i8] undef }, %struct.bcm_clk_trig { i32 2812, i32 5, i32 1 }, %struct.bcm_clk_div { %union.anon.44 { %struct.anon.45 { i32 2616, i32 12, i32 2, i32 0, i64 -1 } }, i32 1 }, %struct.bcm_clk_sel { i32 2616, i32 0, i32 2, i32 0, ptr null, i8 -1 }, [4 x ptr] [ptr @.str.4, ptr @.str.36, ptr @.str.37, ptr null] }, [48 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"slave_ccu_data.lock\00", [44 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"slave_ccu\00", [22 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"uartb\00", [26 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"uartb2\00", [25 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"uartb3\00", [25 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"uartb4\00", [25 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ssp0\00", [27 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ssp2\00", [27 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bsc1\00", [27 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bsc2\00", [27 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"bsc3\00", [27 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pwm\00", [28 x i8] zeroinitializer }, align 32
@slave_ccu_data = internal global { { ptr, %struct.spinlock, i8, %struct.ccu_policy, ptr, i32, ptr, i32, [11 x %struct.kona_clk] }, [168 x i8] } { { ptr, %struct.spinlock, i8, %struct.ccu_policy, ptr, i32, ptr, i32, [11 x %struct.kona_clk] } { ptr null, %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.45, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, i8 0, %struct.ccu_policy zeroinitializer, ptr null, i32 10, ptr @.str.46, i32 0, [11 x %struct.kona_clk] [%struct.kona_clk { %struct.clk_hw zeroinitializer, %struct.clk_init_data { ptr @.str.47, ptr @kona_peri_clk_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, ptr @slave_ccu_data, i32 3, %union.anon.43 { ptr @uartb_data } }, %struct.kona_clk { %struct.clk_hw zeroinitializer, %struct.clk_init_data { ptr @.str.48, ptr @kona_peri_clk_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, ptr @slave_ccu_data, i32 3, %union.anon.43 { ptr @uartb2_data } }, %struct.kona_clk { %struct.clk_hw zeroinitializer, %struct.clk_init_data { ptr @.str.49, ptr @kona_peri_clk_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, ptr @slave_ccu_data, i32 3, %union.anon.43 { ptr @uartb3_data } }, %struct.kona_clk { %struct.clk_hw zeroinitializer, %struct.clk_init_data { ptr @.str.50, ptr @kona_peri_clk_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, ptr @slave_ccu_data, i32 3, %union.anon.43 { ptr @uartb4_data } }, %struct.kona_clk { %struct.clk_hw zeroinitializer, %struct.clk_init_data { ptr @.str.51, ptr @kona_peri_clk_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, ptr @slave_ccu_data, i32 3, %union.anon.43 { ptr @ssp0_data } }, %struct.kona_clk { %struct.clk_hw zeroinitializer, %struct.clk_init_data { ptr @.str.52, ptr @kona_peri_clk_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, ptr @slave_ccu_data, i32 3, %union.anon.43 { ptr @ssp2_data } }, %struct.kona_clk { %struct.clk_hw zeroinitializer, %struct.clk_init_data { ptr @.str.53, ptr @kona_peri_clk_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, ptr @slave_ccu_data, i32 3, %union.anon.43 { ptr @bsc1_data } }, %struct.kona_clk { %struct.clk_hw zeroinitializer, %struct.clk_init_data { ptr @.str.54, ptr @kona_peri_clk_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, ptr @slave_ccu_data, i32 3, %union.anon.43 { ptr @bsc2_data } }, %struct.kona_clk { %struct.clk_hw zeroinitializer, %struct.clk_init_data { ptr @.str.55, ptr @kona_peri_clk_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, ptr @slave_ccu_data, i32 3, %union.anon.43 { ptr @bsc3_data } }, %struct.kona_clk { %struct.clk_hw zeroinitializer, %struct.clk_init_data { ptr @.str.56, ptr @kona_peri_clk_ops, ptr null, ptr null, ptr null, i8 0, i32 0 }, ptr @slave_ccu_data, i32 3, %union.anon.43 { ptr @pwm_data } }, %struct.kona_clk zeroinitializer] }, [168 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"var_156m\00", [23 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ref_156m\00", [23 x i8] zeroinitializer }, align 32
@uartb_data = internal global { { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [4 x ptr] }, [48 x i8] } { { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [4 x ptr] } { %struct.bcm_clk_policy zeroinitializer, %struct.bcm_clk_gate { i32 1024, i32 18, i32 2, i32 3, i32 55 }, %struct.bcm_clk_hyst zeroinitializer, %struct.bcm_clk_trig zeroinitializer, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_trig { i32 2812, i32 2, i32 1 }, %struct.bcm_clk_div { %union.anon.44 { %struct.anon.45 { i32 2576, i32 4, i32 12, i32 8, i64 -1 } }, i32 1 }, %struct.bcm_clk_sel { i32 2576, i32 0, i32 2, i32 0, ptr null, i8 -1 }, [4 x ptr] [ptr @.str.4, ptr @.str.58, ptr @.str.59, ptr null] }, [48 x i8] zeroinitializer }, align 32
@uartb2_data = internal global { { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [4 x ptr] }, [48 x i8] } { { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [4 x ptr] } { %struct.bcm_clk_policy zeroinitializer, %struct.bcm_clk_gate { i32 1028, i32 18, i32 2, i32 3, i32 55 }, %struct.bcm_clk_hyst zeroinitializer, %struct.bcm_clk_trig zeroinitializer, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_trig { i32 2812, i32 3, i32 1 }, %struct.bcm_clk_div { %union.anon.44 { %struct.anon.45 { i32 2580, i32 4, i32 12, i32 8, i64 -1 } }, i32 1 }, %struct.bcm_clk_sel { i32 2580, i32 0, i32 2, i32 0, ptr null, i8 -1 }, [4 x ptr] [ptr @.str.4, ptr @.str.58, ptr @.str.59, ptr null] }, [48 x i8] zeroinitializer }, align 32
@uartb3_data = internal global { { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [4 x ptr] }, [48 x i8] } { { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [4 x ptr] } { %struct.bcm_clk_policy zeroinitializer, %struct.bcm_clk_gate { i32 1032, i32 18, i32 2, i32 3, i32 55 }, %struct.bcm_clk_hyst zeroinitializer, %struct.bcm_clk_trig zeroinitializer, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_trig { i32 2812, i32 4, i32 1 }, %struct.bcm_clk_div { %union.anon.44 { %struct.anon.45 { i32 2584, i32 4, i32 12, i32 8, i64 -1 } }, i32 1 }, %struct.bcm_clk_sel { i32 2584, i32 0, i32 2, i32 0, ptr null, i8 -1 }, [4 x ptr] [ptr @.str.4, ptr @.str.58, ptr @.str.59, ptr null] }, [48 x i8] zeroinitializer }, align 32
@uartb4_data = internal global { { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [4 x ptr] }, [48 x i8] } { { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [4 x ptr] } { %struct.bcm_clk_policy zeroinitializer, %struct.bcm_clk_gate { i32 1032, i32 18, i32 2, i32 3, i32 55 }, %struct.bcm_clk_hyst zeroinitializer, %struct.bcm_clk_trig zeroinitializer, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_trig { i32 2812, i32 5, i32 1 }, %struct.bcm_clk_div { %union.anon.44 { %struct.anon.45 { i32 2588, i32 4, i32 12, i32 8, i64 -1 } }, i32 1 }, %struct.bcm_clk_sel { i32 2588, i32 0, i32 2, i32 0, ptr null, i8 -1 }, [4 x ptr] [ptr @.str.4, ptr @.str.58, ptr @.str.59, ptr null] }, [48 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"var_104m\00", [23 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ref_104m\00", [23 x i8] zeroinitializer }, align 32
@ssp0_data = internal global { { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [6 x ptr] }, [40 x i8] } { { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [6 x ptr] } { %struct.bcm_clk_policy zeroinitializer, %struct.bcm_clk_gate { i32 1040, i32 18, i32 2, i32 3, i32 55 }, %struct.bcm_clk_hyst zeroinitializer, %struct.bcm_clk_trig zeroinitializer, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_trig { i32 2812, i32 6, i32 1 }, %struct.bcm_clk_div { %union.anon.44 { %struct.anon.45 { i32 2592, i32 4, i32 14, i32 0, i64 -1 } }, i32 1 }, %struct.bcm_clk_sel { i32 2592, i32 0, i32 3, i32 0, ptr null, i8 -1 }, [6 x ptr] [ptr @.str.4, ptr @.str.64, ptr @.str.65, ptr @.str.36, ptr @.str.37, ptr null] }, [40 x i8] zeroinitializer }, align 32
@ssp2_data = internal global { { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [6 x ptr] }, [40 x i8] } { { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [6 x ptr] } { %struct.bcm_clk_policy zeroinitializer, %struct.bcm_clk_gate { i32 1048, i32 18, i32 2, i32 3, i32 55 }, %struct.bcm_clk_hyst zeroinitializer, %struct.bcm_clk_trig zeroinitializer, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_trig { i32 2812, i32 8, i32 1 }, %struct.bcm_clk_div { %union.anon.44 { %struct.anon.45 { i32 2600, i32 4, i32 14, i32 0, i64 -1 } }, i32 1 }, %struct.bcm_clk_sel { i32 2600, i32 0, i32 3, i32 0, ptr null, i8 -1 }, [6 x ptr] [ptr @.str.4, ptr @.str.64, ptr @.str.65, ptr @.str.36, ptr @.str.37, ptr null] }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"var_13m\00", [24 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ref_13m\00", [24 x i8] zeroinitializer }, align 32
@bsc1_data = internal global { { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [6 x ptr] }, [40 x i8] } { { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [6 x ptr] } { %struct.bcm_clk_policy zeroinitializer, %struct.bcm_clk_gate { i32 1112, i32 18, i32 2, i32 3, i32 55 }, %struct.bcm_clk_hyst zeroinitializer, %struct.bcm_clk_trig zeroinitializer, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_trig { i32 2812, i32 23, i32 1 }, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_sel { i32 2660, i32 0, i32 3, i32 0, ptr null, i8 -1 }, [6 x ptr] [ptr @.str.4, ptr @.str.64, ptr @.str.65, ptr @.str.68, ptr @.str.69, ptr null] }, [40 x i8] zeroinitializer }, align 32
@bsc2_data = internal global { { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [6 x ptr] }, [40 x i8] } { { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [6 x ptr] } { %struct.bcm_clk_policy zeroinitializer, %struct.bcm_clk_gate { i32 1116, i32 18, i32 2, i32 3, i32 55 }, %struct.bcm_clk_hyst zeroinitializer, %struct.bcm_clk_trig zeroinitializer, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_trig { i32 2812, i32 24, i32 1 }, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_sel { i32 2664, i32 0, i32 3, i32 0, ptr null, i8 -1 }, [6 x ptr] [ptr @.str.4, ptr @.str.64, ptr @.str.65, ptr @.str.68, ptr @.str.69, ptr null] }, [40 x i8] zeroinitializer }, align 32
@bsc3_data = internal global { { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [6 x ptr] }, [40 x i8] } { { %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_trig, %struct.bcm_clk_div, %struct.bcm_clk_sel, [6 x ptr] } { %struct.bcm_clk_policy zeroinitializer, %struct.bcm_clk_gate { i32 1156, i32 18, i32 2, i32 3, i32 55 }, %struct.bcm_clk_hyst zeroinitializer, %struct.bcm_clk_trig zeroinitializer, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_trig { i32 2816, i32 2, i32 1 }, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_sel { i32 2692, i32 0, i32 3, i32 0, ptr null, i8 -1 }, [6 x ptr] [ptr @.str.4, ptr @.str.64, ptr @.str.65, ptr @.str.68, ptr @.str.69, ptr null] }, [40 x i8] zeroinitializer }, align 32
@pwm_data = internal global { <{ %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, [4 x i8], %struct.bcm_clk_div, %struct.bcm_clk_trig, [4 x i8], %struct.bcm_clk_div, %struct.bcm_clk_sel, [3 x ptr] }>, [52 x i8] } { <{ %struct.bcm_clk_policy, %struct.bcm_clk_gate, %struct.bcm_clk_hyst, %struct.bcm_clk_trig, [4 x i8], %struct.bcm_clk_div, %struct.bcm_clk_trig, [4 x i8], %struct.bcm_clk_div, %struct.bcm_clk_sel, [3 x ptr] }> <{ %struct.bcm_clk_policy zeroinitializer, %struct.bcm_clk_gate { i32 1128, i32 18, i32 2, i32 3, i32 55 }, %struct.bcm_clk_hyst zeroinitializer, %struct.bcm_clk_trig zeroinitializer, [4 x i8] undef, %struct.bcm_clk_div zeroinitializer, %struct.bcm_clk_trig { i32 2812, i32 15, i32 1 }, [4 x i8] undef, %struct.bcm_clk_div { %union.anon.44 { %struct.anon.45 { i32 2672, i32 4, i32 3, i32 0, i64 -1 } }, i32 1 }, %struct.bcm_clk_sel { i32 2672, i32 0, i32 2, i32 0, ptr null, i8 -1 }, [3 x ptr] [ptr @.str.4, ptr @.str.64, ptr null] }>, [52 x i8] zeroinitializer }, align 32
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 31, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 34, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant [14 x i8] c"root_ccu_data\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 30, i32 24 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 27, i32 13 }
@___asan_gen_.89 = private unnamed_addr constant [13 x i8] c"frac_1m_data\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 23, i32 29 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 69, i32 2 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 72, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 74, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 76, i32 4 }
@___asan_gen_.107 = private unnamed_addr constant [13 x i8] c"aon_ccu_data\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 68, i32 24 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 43, i32 13 }
@___asan_gen_.116 = private unnamed_addr constant [15 x i8] c"hub_timer_data\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 41, i32 29 }
@___asan_gen_.119 = private unnamed_addr constant [13 x i8] c"pmu_bsc_data\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 50, i32 29 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 61, i32 13 }
@___asan_gen_.128 = private unnamed_addr constant [17 x i8] c"pmu_bsc_var_data\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 60, i32 29 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 92, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 95, i32 4 }
@___asan_gen_.140 = private unnamed_addr constant [13 x i8] c"hub_ccu_data\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 91, i32 24 }
@___asan_gen_.143 = private unnamed_addr constant [13 x i8] c"tmon_1m_data\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 83, i32 29 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 184, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 187, i32 4 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 189, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 191, i32 4 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 193, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 195, i32 4 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 197, i32 4 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 199, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant [16 x i8] c"master_ccu_data\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 183, i32 24 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 104, i32 13 }
@___asan_gen_.188 = private unnamed_addr constant [11 x i8] c"sdio1_data\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 102, i32 29 }
@___asan_gen_.191 = private unnamed_addr constant [11 x i8] c"sdio2_data\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 114, i32 29 }
@___asan_gen_.194 = private unnamed_addr constant [11 x i8] c"sdio3_data\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 126, i32 29 }
@___asan_gen_.197 = private unnamed_addr constant [11 x i8] c"sdio4_data\00", align 1
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 138, i32 29 }
@___asan_gen_.200 = private unnamed_addr constant [12 x i8] c"usb_ic_data\00", align 1
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 150, i32 29 }
@___asan_gen_.203 = private unnamed_addr constant [15 x i8] c"hsic2_48m_data\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 161, i32 29 }
@___asan_gen_.206 = private unnamed_addr constant [15 x i8] c"hsic2_12m_data\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 172, i32 29 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 313, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 316, i32 4 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 318, i32 4 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 320, i32 4 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 322, i32 4 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 324, i32 4 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 326, i32 4 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 328, i32 4 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 330, i32 4 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 332, i32 4 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 334, i32 4 }
@___asan_gen_.245 = private unnamed_addr constant [15 x i8] c"slave_ccu_data\00", align 1
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 312, i32 24 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 208, i32 13 }
@___asan_gen_.254 = private unnamed_addr constant [11 x i8] c"uartb_data\00", align 1
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 206, i32 29 }
@___asan_gen_.257 = private unnamed_addr constant [12 x i8] c"uartb2_data\00", align 1
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 216, i32 29 }
@___asan_gen_.260 = private unnamed_addr constant [12 x i8] c"uartb3_data\00", align 1
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 226, i32 29 }
@___asan_gen_.263 = private unnamed_addr constant [12 x i8] c"uartb4_data\00", align 1
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 236, i32 29 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 248, i32 13 }
@___asan_gen_.272 = private unnamed_addr constant [10 x i8] c"ssp0_data\00", align 1
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 246, i32 29 }
@___asan_gen_.275 = private unnamed_addr constant [10 x i8] c"ssp2_data\00", align 1
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 258, i32 29 }
@___asan_gen_.281 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 272, i32 13 }
@___asan_gen_.284 = private unnamed_addr constant [10 x i8] c"bsc1_data\00", align 1
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 270, i32 29 }
@___asan_gen_.287 = private unnamed_addr constant [10 x i8] c"bsc2_data\00", align 1
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 281, i32 29 }
@___asan_gen_.290 = private unnamed_addr constant [10 x i8] c"bsc3_data\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 292, i32 29 }
@___asan_gen_.293 = private unnamed_addr constant [9 x i8] c"pwm_data\00", align 1
@___asan_gen_.294 = private constant [34 x i8] c"../drivers/clk/bcm/clk-bcm281xx.c\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 303, i32 29 }
@llvm.compiler.used = appending global [79 x ptr] [ptr @__of_table_bcm281xx_aon_ccu, ptr @__of_table_bcm281xx_hub_ccu, ptr @__of_table_bcm281xx_master_ccu, ptr @__of_table_bcm281xx_root_ccu, ptr @__of_table_bcm281xx_slave_ccu, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @root_ccu_data, ptr @.str.4, ptr @frac_1m_data, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @aon_ccu_data, ptr @.str.12, ptr @.str.13, ptr @hub_timer_data, ptr @pmu_bsc_data, ptr @.str.16, ptr @.str.17, ptr @pmu_bsc_var_data, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @hub_ccu_data, ptr @tmon_1m_data, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @master_ccu_data, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @sdio1_data, ptr @sdio2_data, ptr @sdio3_data, ptr @sdio4_data, ptr @usb_ic_data, ptr @hsic2_48m_data, ptr @hsic2_12m_data, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @slave_ccu_data, ptr @.str.58, ptr @.str.59, ptr @uartb_data, ptr @uartb2_data, ptr @uartb3_data, ptr @uartb4_data, ptr @.str.64, ptr @.str.65, ptr @ssp0_data, ptr @ssp2_data, ptr @.str.68, ptr @.str.69, ptr @bsc1_data, ptr @bsc2_data, ptr @bsc3_data, ptr @pwm_data], section "llvm.metadata"
@0 = internal global [74 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @root_ccu_data to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @frac_1m_data to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aon_ccu_data to i32), i32 300, i32 384, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hub_timer_data to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmu_bsc_data to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmu_bsc_var_data to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hub_ccu_data to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmon_1m_data to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @master_ccu_data to i32), i32 508, i32 608, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdio1_data to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdio2_data to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdio3_data to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdio4_data to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_ic_data to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsic2_48m_data to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hsic2_12m_data to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @slave_ccu_data to i32), i32 664, i32 832, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uartb_data to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uartb2_data to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uartb3_data to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uartb4_data to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp0_data to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssp2_data to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bsc1_data to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bsc2_data to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bsc3_data to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_data to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }]
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
define internal void @kona_dt_hub_ccu_setup(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kona_dt_ccu_setup(ptr noundef nonnull @hub_ccu_data, ptr noundef %node) #5
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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }
attributes #5 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !21, !23, !24, !26, !28, !30, !32, !34, !35, !37, !39, !41, !42, !44, !46, !47, !49, !51, !53, !55, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !75, !76, !77, !79, !81, !83, !85, !87, !89, !91, !93, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !119, !121, !123, !125, !127, !129, !130, !132, !134, !136, !137, !139, !141, !143}
!llvm.module.flags = !{!145, !146, !147, !148, !149, !150, !151, !152}
!llvm.ident = !{!153}

!0 = !{ptr @__of_table_bcm281xx_root_ccu, !1, !"__of_table_bcm281xx_root_ccu", i1 false, i1 false}
!1 = !{!"../drivers/clk/bcm/clk-bcm281xx.c", i32 366, i32 1}
!2 = !{ptr @__of_table_bcm281xx_aon_ccu, !3, !"__of_table_bcm281xx_aon_ccu", i1 false, i1 false}
!3 = !{!"../drivers/clk/bcm/clk-bcm281xx.c", i32 368, i32 1}
!4 = !{ptr @__of_table_bcm281xx_hub_ccu, !5, !"__of_table_bcm281xx_hub_ccu", i1 false, i1 false}
!5 = !{!"../drivers/clk/bcm/clk-bcm281xx.c", i32 370, i32 1}
!6 = !{ptr @__of_table_bcm281xx_master_ccu, !7, !"__of_table_bcm281xx_master_ccu", i1 false, i1 false}
!7 = !{!"../drivers/clk/bcm/clk-bcm281xx.c", i32 372, i32 1}
!8 = !{ptr @__of_table_bcm281xx_slave_ccu, !9, !"__of_table_bcm281xx_slave_ccu", i1 false, i1 false}
!9 = !{!"../drivers/clk/bcm/clk-bcm281xx.c", i32 374, i32 1}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/bcm/clk-bcm281xx.c", i32 31, i32 2}
!12 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/clk/bcm/clk-bcm281xx.c", i32 34, i32 4}
!15 = !{ptr @root_ccu_data, !16, !"root_ccu_data", i1 false, i1 false}
!16 = !{!"../drivers/clk/bcm/clk-bcm281xx.c", i32 30, i32 24}
!17 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/clk/bcm/clk-bcm281xx.c", i32 27, i32 13}
!19 = !{ptr @frac_1m_data, !20, !"frac_1m_data", i1 false, i1 false}
!20 = !{!"../drivers/clk/bcm/clk-bcm281xx.c", i32 23, i32 29}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/clk/bcm/clk-bcm281xx.c", i32 69, i32 2}
!23 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clk/bcm/clk-bcm281xx.c", i32 72, i32 4}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/bcm/clk-bcm281xx.c", i32 74, i32 4}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/bcm/clk-bcm281xx.c", i32 76, i32 4}
!30 = !{ptr @aon_ccu_data, !31, !"aon_ccu_data", i1 false, i1 false}
!31 = !{!"../drivers/clk/bcm/clk-bcm281xx.c", i32 68, i32 24}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clk/bcm/clk-bcm281xx.c", i32 43, i32 13}
!34 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @hub_timer_data, !36, !"hub_timer_data", i1 false, i1 false}
!36 = !{!"../drivers/clk/bcm/clk-bcm281xx.c", i32 41, i32 29}
!37 = !{ptr @pmu_bsc_data, !38, !"pmu_bsc_data", i1 false, i1 false}
!38 = !{!"../drivers/clk/bcm/clk-bcm281xx.c", i32 50, i32 29}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/clk/bcm/clk-bcm281xx.c", i32 61, i32 13}
!41 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @pmu_bsc_var_data, !43, !"pmu_bsc_var_data", i1 false, i1 false}
!43 = !{!"../drivers/clk/bcm/clk-bcm281xx.c", i32 60, i32 29}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clk/bcm/clk-bcm281xx.c", i32 92, i32 2}
!46 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/clk/bcm/clk-bcm281xx.c", i32 95, i32 4}
!49 = !{ptr @hub_ccu_data, !50, !"hub_ccu_data", i1 false, i1 false}
!50 = !{!"../drivers/clk/bcm/clk-bcm281xx.c", i32 91, i32 24}
!51 = !{ptr @tmon_1m_data, !52, !"tmon_1m_data", i1 false, i1 false}
!52 = !{!"../drivers/clk/bcm/clk-bcm281xx.c", i32 83, i32 29}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/clk/bcm/clk-bcm281xx.c", i32 184, i32 2}
!55 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/clk/bcm/clk-bcm281xx.c", i32 187, i32 4}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/clk/bcm/clk-bcm281xx.c", i32 189, i32 4}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/clk/bcm/clk-bcm281xx.c", i32 191, i32 4}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/clk/bcm/clk-bcm281xx.c", i32 193, i32 4}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/clk/bcm/clk-bcm281xx.c", i32 195, i32 4}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/clk/bcm/clk-bcm281xx.c", i32 197, i32 4}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/clk/bcm/clk-bcm281xx.c", i32 199, i32 4}
!70 = !{ptr @master_ccu_data, !71, !"master_ccu_data", i1 false, i1 false}
!71 = !{!"../drivers/clk/bcm/clk-bcm281xx.c", i32 183, i32 24}
!72 = !{ptr @.str.34, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/clk/bcm/clk-bcm281xx.c", i32 104, i32 13}
!74 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.37, !73, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @sdio1_data, !78, !"sdio1_data", i1 false, i1 false}
!78 = !{!"../drivers/clk/bcm/clk-bcm281xx.c", i32 102, i32 29}
!79 = !{ptr @sdio2_data, !80, !"sdio2_data", i1 false, i1 false}
!80 = !{!"../drivers/clk/bcm/clk-bcm281xx.c", i32 114, i32 29}
!81 = !{ptr @sdio3_data, !82, !"sdio3_data", i1 false, i1 false}
!82 = !{!"../drivers/clk/bcm/clk-bcm281xx.c", i32 126, i32 29}
!83 = !{ptr @sdio4_data, !84, !"sdio4_data", i1 false, i1 false}
!84 = !{!"../drivers/clk/bcm/clk-bcm281xx.c", i32 138, i32 29}
!85 = !{ptr @usb_ic_data, !86, !"usb_ic_data", i1 false, i1 false}
!86 = !{!"../drivers/clk/bcm/clk-bcm281xx.c", i32 150, i32 29}
!87 = !{ptr @hsic2_48m_data, !88, !"hsic2_48m_data", i1 false, i1 false}
!88 = !{!"../drivers/clk/bcm/clk-bcm281xx.c", i32 161, i32 29}
!89 = !{ptr @hsic2_12m_data, !90, !"hsic2_12m_data", i1 false, i1 false}
!90 = !{!"../drivers/clk/bcm/clk-bcm281xx.c", i32 172, i32 29}
!91 = !{ptr @.str.45, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/clk/bcm/clk-bcm281xx.c", i32 313, i32 2}
!93 = !{ptr @.str.46, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/clk/bcm/clk-bcm281xx.c", i32 316, i32 4}
!96 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/clk/bcm/clk-bcm281xx.c", i32 318, i32 4}
!98 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/clk/bcm/clk-bcm281xx.c", i32 320, i32 4}
!100 = !{ptr @.str.50, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/clk/bcm/clk-bcm281xx.c", i32 322, i32 4}
!102 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/clk/bcm/clk-bcm281xx.c", i32 324, i32 4}
!104 = !{ptr @.str.52, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/clk/bcm/clk-bcm281xx.c", i32 326, i32 4}
!106 = !{ptr @.str.53, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/clk/bcm/clk-bcm281xx.c", i32 328, i32 4}
!108 = !{ptr @.str.54, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/clk/bcm/clk-bcm281xx.c", i32 330, i32 4}
!110 = !{ptr @.str.55, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/clk/bcm/clk-bcm281xx.c", i32 332, i32 4}
!112 = !{ptr @.str.56, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/clk/bcm/clk-bcm281xx.c", i32 334, i32 4}
!114 = !{ptr @slave_ccu_data, !115, !"slave_ccu_data", i1 false, i1 false}
!115 = !{!"../drivers/clk/bcm/clk-bcm281xx.c", i32 312, i32 24}
!116 = !{ptr @.str.58, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/clk/bcm/clk-bcm281xx.c", i32 208, i32 13}
!118 = !{ptr @.str.59, !117, !"<string literal>", i1 false, i1 false}
!119 = !{ptr @uartb_data, !120, !"uartb_data", i1 false, i1 false}
!120 = !{!"../drivers/clk/bcm/clk-bcm281xx.c", i32 206, i32 29}
!121 = !{ptr @uartb2_data, !122, !"uartb2_data", i1 false, i1 false}
!122 = !{!"../drivers/clk/bcm/clk-bcm281xx.c", i32 216, i32 29}
!123 = !{ptr @uartb3_data, !124, !"uartb3_data", i1 false, i1 false}
!124 = !{!"../drivers/clk/bcm/clk-bcm281xx.c", i32 226, i32 29}
!125 = !{ptr @uartb4_data, !126, !"uartb4_data", i1 false, i1 false}
!126 = !{!"../drivers/clk/bcm/clk-bcm281xx.c", i32 236, i32 29}
!127 = !{ptr @.str.64, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/clk/bcm/clk-bcm281xx.c", i32 248, i32 13}
!129 = !{ptr @.str.65, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @ssp0_data, !131, !"ssp0_data", i1 false, i1 false}
!131 = !{!"../drivers/clk/bcm/clk-bcm281xx.c", i32 246, i32 29}
!132 = !{ptr @ssp2_data, !133, !"ssp2_data", i1 false, i1 false}
!133 = !{!"../drivers/clk/bcm/clk-bcm281xx.c", i32 258, i32 29}
!134 = !{ptr @.str.68, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/clk/bcm/clk-bcm281xx.c", i32 272, i32 13}
!136 = !{ptr @.str.69, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @bsc1_data, !138, !"bsc1_data", i1 false, i1 false}
!138 = !{!"../drivers/clk/bcm/clk-bcm281xx.c", i32 270, i32 29}
!139 = !{ptr @bsc2_data, !140, !"bsc2_data", i1 false, i1 false}
!140 = !{!"../drivers/clk/bcm/clk-bcm281xx.c", i32 281, i32 29}
!141 = !{ptr @bsc3_data, !142, !"bsc3_data", i1 false, i1 false}
!142 = !{!"../drivers/clk/bcm/clk-bcm281xx.c", i32 292, i32 29}
!143 = !{ptr @pwm_data, !144, !"pwm_data", i1 false, i1 false}
!144 = !{!"../drivers/clk/bcm/clk-bcm281xx.c", i32 303, i32 29}
!145 = !{i32 1, !"wchar_size", i32 2}
!146 = !{i32 1, !"min_enum_size", i32 4}
!147 = !{i32 8, !"branch-target-enforcement", i32 0}
!148 = !{i32 8, !"sign-return-address", i32 0}
!149 = !{i32 8, !"sign-return-address-all", i32 0}
!150 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!151 = !{i32 7, !"uwtable", i32 1}
!152 = !{i32 7, !"frame-pointer", i32 2}
!153 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
