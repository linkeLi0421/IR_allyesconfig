; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.msm_dsi_phy_cfg = type { %struct.dsi_reg_config, %struct.msm_dsi_phy_ops, i32, i32, [2 x i32], i32, i32, i8, i8 }
%struct.dsi_reg_config = type { i32, [8 x %struct.dsi_reg_entry] }
%struct.dsi_reg_entry = type { [32 x i8], i32, i32 }
%struct.msm_dsi_phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.lpfr_cfg = type { i32, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.dsi_pll_28nm = type { %struct.clk_hw, ptr, %struct.pll_28nm_cached_state }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.pll_28nm_cached_state = type { i32, i8, i8, i8 }
%struct.msm_dsi_phy = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, [8 x %struct.regulator_bulk_data], %struct.msm_dsi_dphy_timing, ptr, i32, i8, i8, ptr, i8, ptr, i8 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.msm_dsi_dphy_timing = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.msm_dsi_phy_shared_timings, i32, i32, i32, i8, i8 }
%struct.msm_dsi_phy_shared_timings = type { i32, i32, i8 }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }

@dsi_phy_28nm_hpm_cfgs = dso_local constant { %struct.msm_dsi_phy_cfg, [72 x i8] } { %struct.msm_dsi_phy_cfg { %struct.dsi_reg_config { i32 1, [8 x %struct.dsi_reg_entry] [%struct.dsi_reg_entry { [32 x i8] c"vddio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 100000, i32 100 }, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer] }, %struct.msm_dsi_phy_ops { ptr @dsi_pll_28nm_init, ptr @dsi_28nm_phy_enable, ptr @dsi_28nm_phy_disable, ptr @dsi_28nm_pll_save_state, ptr @dsi_28nm_pll_restore_state, ptr null }, i32 350000000, i32 750000000, [2 x i32] [i32 -40752384, i32 -40750848], i32 2, i32 0, i8 1, i8 0 }, [72 x i8] zeroinitializer }, align 32
@dsi_phy_28nm_hpm_famb_cfgs = dso_local constant { %struct.msm_dsi_phy_cfg, [72 x i8] } { %struct.msm_dsi_phy_cfg { %struct.dsi_reg_config { i32 1, [8 x %struct.dsi_reg_entry] [%struct.dsi_reg_entry { [32 x i8] c"vddio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 100000, i32 100 }, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer] }, %struct.msm_dsi_phy_ops { ptr @dsi_pll_28nm_init, ptr @dsi_28nm_phy_enable, ptr @dsi_28nm_phy_disable, ptr @dsi_28nm_pll_save_state, ptr @dsi_28nm_pll_restore_state, ptr null }, i32 350000000, i32 750000000, [2 x i32] [i32 27870208, i32 27878400], i32 2, i32 0, i8 1, i8 0 }, [72 x i8] zeroinitializer }, align 32
@dsi_phy_28nm_lp_cfgs = dso_local constant { %struct.msm_dsi_phy_cfg, [72 x i8] } { %struct.msm_dsi_phy_cfg { %struct.dsi_reg_config { i32 1, [8 x %struct.dsi_reg_entry] [%struct.dsi_reg_entry { [32 x i8] c"vddio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 100000, i32 100 }, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer] }, %struct.msm_dsi_phy_ops { ptr @dsi_pll_28nm_init, ptr @dsi_28nm_phy_enable, ptr @dsi_28nm_phy_disable, ptr @dsi_28nm_pll_save_state, ptr @dsi_28nm_pll_restore_state, ptr null }, i32 350000000, i32 750000000, [2 x i32] [i32 27886848, i32 0], i32 1, i32 1, i8 1, i8 0 }, [72 x i8] zeroinitializer }, align 32
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"*ERROR* failed to register PLL: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"xo\00", [29 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@clk_ops_dsi_pll_28nm_vco_lp = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @dsi_pll_28nm_vco_prepare_lp, ptr @dsi_pll_28nm_vco_unprepare, ptr null, ptr null, ptr null, ptr null, ptr @dsi_pll_28nm_clk_is_enabled, ptr null, ptr null, ptr null, ptr @dsi_pll_28nm_clk_recalc_rate, ptr @dsi_pll_28nm_clk_round_rate, ptr null, ptr null, ptr null, ptr @dsi_pll_28nm_clk_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@clk_ops_dsi_pll_28nm_vco_hpm = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @dsi_pll_28nm_vco_prepare_hpm, ptr @dsi_pll_28nm_vco_unprepare, ptr null, ptr null, ptr null, ptr null, ptr @dsi_pll_28nm_clk_is_enabled, ptr null, ptr null, ptr null, ptr @dsi_pll_28nm_clk_recalc_rate, ptr @dsi_pll_28nm_clk_round_rate, ptr null, ptr null, ptr null, ptr @dsi_pll_28nm_clk_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dsi%dvco_clk\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dsi%danalog_postdiv_clk\00", [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"dsi%dindirect_path_div2_clk\00", [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dsi%dpll\00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dsi%dbyte_mux\00", [18 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dsi%dpllbyte\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"id=%d\0A\00", [25 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.11 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"*ERROR* DSI PLL lock failed\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DSI PLL lock success\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DSI PLL is %slocked\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"*not* \00", [25 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sdm_dc_off = %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sdm_freq_seed = %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vco rate = %lu\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"returning vco rate = %lu\0A\00", [38 x i8] zeroinitializer }, align 32
@lpfr_lut = internal constant { [10 x %struct.lpfr_cfg], [48 x i8] } { [10 x %struct.lpfr_cfg] [%struct.lpfr_cfg { i32 479500000, i32 8 }, %struct.lpfr_cfg { i32 480000000, i32 11 }, %struct.lpfr_cfg { i32 575500000, i32 8 }, %struct.lpfr_cfg { i32 576000000, i32 12 }, %struct.lpfr_cfg { i32 610500000, i32 8 }, %struct.lpfr_cfg { i32 659500000, i32 9 }, %struct.lpfr_cfg { i32 671500000, i32 10 }, %struct.lpfr_cfg { i32 672000000, i32 14 }, %struct.lpfr_cfg { i32 708500000, i32 10 }, %struct.lpfr_cfg { i32 750000000, i32 11 }], [48 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"*ERROR* unable to get loop filter resistance. vco=%lu\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"refclk_cfg = %d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"div_fb = %lu\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"frac_n_value = %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Generated VCO Clock: %lu\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sdm_cfg0=%d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sdm_cfg1=%d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sdm_cfg2=%d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sdm_cfg3=%d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"cal_cfg10=%d, cal_cfg11=%d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DSI PLL Lock success\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"*ERROR* %s: D-PHY timing calculation failed\0A\00", [51 x i8] zeroinitializer }, align 32
@__func__.dsi_28nm_phy_enable = private unnamed_addr constant [20 x i8] c"dsi_28nm_phy_enable\00", align 1
@.str.33 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"*ERROR* restore vco rate failed. ret=%d\0A\00", [55 x i8] zeroinitializer }, align 32
@___asan_gen_.34 = private unnamed_addr constant [22 x i8] c"dsi_phy_28nm_hpm_cfgs\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 770, i32 30 }
@___asan_gen_.37 = private unnamed_addr constant [27 x i8] c"dsi_phy_28nm_hpm_famb_cfgs\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 791, i32 30 }
@___asan_gen_.40 = private unnamed_addr constant [21 x i8] c"dsi_phy_28nm_lp_cfgs\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 812, i32 30 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 613, i32 3 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 524, i32 37 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 533, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant [28 x i8] c"clk_ops_dsi_pll_28nm_vco_lp\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 465, i32 29 }
@___asan_gen_.58 = private unnamed_addr constant [29 x i8] c"clk_ops_dsi_pll_28nm_vco_hpm\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 456, i32 29 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 540, i32 25 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 546, i32 25 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 556, i32 25 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 564, i32 25 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 574, i32 25 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 585, i32 25 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 389, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 419, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 423, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 93, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 269, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 275, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 279, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 282, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant [9 x i8] c"lpfr_lut\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 48, i32 30 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 137, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 160, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 165, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 166, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 168, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 188, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 189, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 190, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 191, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 195, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 356, i32 3 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 710, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 713, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.152 = private constant [46 x i8] c"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm.c\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 505, i32 3 }
@llvm.compiler.used = appending global [40 x ptr] [ptr @dsi_phy_28nm_hpm_cfgs, ptr @dsi_phy_28nm_hpm_famb_cfgs, ptr @dsi_phy_28nm_lp_cfgs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @clk_ops_dsi_pll_28nm_vco_lp, ptr @clk_ops_dsi_pll_28nm_vco_hpm, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @lpfr_lut, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_phy_28nm_hpm_cfgs to i32), i32 376, i32 448, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_phy_28nm_hpm_famb_cfgs to i32), i32 376, i32 448, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_phy_28nm_lp_cfgs to i32), i32 376, i32 448, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_ops_dsi_pll_28nm_vco_lp to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_ops_dsi_pll_28nm_vco_hpm to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lpfr_lut to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsi_pll_28nm_init(ptr noundef %phy) #0 align 64 {
entry:
  %clk_name.i = alloca [32 x i8], align 1
  %parent1.i = alloca [32 x i8], align 1
  %parent2.i = alloca [32 x i8], align 1
  %vco_name.i = alloca [32 x i8], align 1
  %vco_init.i = alloca %struct.clk_init_data, align 4
  %.compoundliteral.i = alloca [1 x ptr], align 4
  %.compoundliteral77.i = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 24, i32 noundef 3520) #6
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %phy5 = getelementptr inbounds %struct.dsi_pll_28nm, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %phy5 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %phy, ptr %phy5, align 4
  %provided_clocks = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 19
  %3 = ptrtoint ptr %provided_clocks to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %provided_clocks, align 4
  %hws = getelementptr inbounds %struct.clk_hw_onecell_data, ptr %4, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %.compoundliteral.i)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %.compoundliteral77.i)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %clk_name.i) #6
  %5 = call ptr @memset(ptr %clk_name.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %parent1.i) #6
  %6 = call ptr @memset(ptr %parent1.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %parent2.i) #6
  %7 = call ptr @memset(ptr %parent2.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %vco_name.i) #6
  %8 = call ptr @memset(ptr %vco_name.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %vco_init.i) #6
  %9 = getelementptr inbounds i8, ptr %vco_init.i, i32 20
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 33554431, ptr %9, align 4
  %11 = ptrtoint ptr %vco_init.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %vco_name.i, ptr %vco_init.i, align 4
  %ops.i = getelementptr inbounds %struct.clk_init_data, ptr %vco_init.i, i32 0, i32 1
  %parent_names.i = getelementptr inbounds %struct.clk_init_data, ptr %vco_init.i, i32 0, i32 2
  %12 = ptrtoint ptr %.compoundliteral.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.2, ptr %.compoundliteral.i, align 4
  %13 = ptrtoint ptr %parent_names.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %.compoundliteral.i, ptr %parent_names.i, align 4
  %parent_data.i = getelementptr inbounds %struct.clk_init_data, ptr %vco_init.i, i32 0, i32 3
  %14 = ptrtoint ptr %parent_data.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %parent_data.i, align 4
  %parent_hws.i = getelementptr inbounds %struct.clk_init_data, ptr %vco_init.i, i32 0, i32 4
  %15 = ptrtoint ptr %parent_hws.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %parent_hws.i, align 4
  %flags.i = getelementptr inbounds %struct.clk_init_data, ptr %vco_init.i, i32 0, i32 6
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 8, ptr %flags.i, align 4
  %17 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %phy, align 4
  %dev2.i = getelementptr inbounds %struct.platform_device, ptr %18, i32 0, i32 3
  %id.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 9
  %19 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %id.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef %20) #6
  %cfg.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 13
  %21 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cfg.i, align 4
  %quirks.i = getelementptr inbounds %struct.msm_dsi_phy_cfg, ptr %22, i32 0, i32 6
  %23 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %quirks.i, align 4
  %and.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %clk_ops_dsi_pll_28nm_vco_hpm.clk_ops_dsi_pll_28nm_vco_lp.i = select i1 %tobool.not.i, ptr @clk_ops_dsi_pll_28nm_vco_hpm, ptr @clk_ops_dsi_pll_28nm_vco_lp
  %25 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %clk_ops_dsi_pll_28nm_vco_hpm.clk_ops_dsi_pll_28nm_vco_lp.i, ptr %ops.i, align 4
  %26 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %id.i, align 4
  %call.i23 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %vco_name.i, i32 noundef 32, ptr noundef nonnull @.str.4, i32 noundef %27) #6
  %init.i = getelementptr inbounds %struct.clk_hw, ptr %call.i, i32 0, i32 2
  %28 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %vco_init.i, ptr %init.i, align 4
  %call11.i = call i32 @devm_clk_hw_register(ptr noundef %dev2.i, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %pll_28nm_register.exit.thread26

pll_28nm_register.exit.thread26:                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %vco_init.i) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %vco_name.i) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %parent2.i) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %parent1.i) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %clk_name.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %.compoundliteral.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %.compoundliteral77.i)
  br label %if.then8

if.end14.i:                                       ; preds = %if.end4
  %29 = ptrtoint ptr %phy5 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %phy5, align 4
  %id17.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %30, i32 0, i32 9
  %31 = ptrtoint ptr %id17.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %id17.i, align 4
  %call18.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %clk_name.i, i32 noundef 32, ptr noundef nonnull @.str.5, i32 noundef %32) #6
  %33 = ptrtoint ptr %phy5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %phy5, align 4
  %id21.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %34, i32 0, i32 9
  %35 = ptrtoint ptr %id21.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %id21.i, align 4
  %call22.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %parent1.i, i32 noundef 32, ptr noundef nonnull @.str.4, i32 noundef %36) #6
  %37 = ptrtoint ptr %phy5 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %phy5, align 4
  %pll_base.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %38, i32 0, i32 2
  %39 = ptrtoint ptr %pll_base.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %pll_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %40, i32 4
  %call26.i = call ptr @__devm_clk_hw_register_divider(ptr noundef %dev2.i, ptr noundef null, ptr noundef nonnull %clk_name.i, ptr noundef nonnull %parent1.i, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr.i, i8 noundef zeroext 0, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef null, ptr noundef null) #6
  %cmp.i.i = icmp ugt ptr %call26.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end14.i.pll_28nm_register.exit_crit_edge, label %if.end30.i

if.end14.i.pll_28nm_register.exit_crit_edge:      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pll_28nm_register.exit

if.end30.i:                                       ; preds = %if.end14.i
  %41 = ptrtoint ptr %phy5 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %phy5, align 4
  %id33.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %42, i32 0, i32 9
  %43 = ptrtoint ptr %id33.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %id33.i, align 4
  %call34.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %clk_name.i, i32 noundef 32, ptr noundef nonnull @.str.6, i32 noundef %44) #6
  %45 = ptrtoint ptr %phy5 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %phy5, align 4
  %id37.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %46, i32 0, i32 9
  %47 = ptrtoint ptr %id37.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %id37.i, align 4
  %call38.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %parent1.i, i32 noundef 32, ptr noundef nonnull @.str.5, i32 noundef %48) #6
  %call41.i = call ptr @devm_clk_hw_register_fixed_factor(ptr noundef %dev2.i, ptr noundef nonnull %clk_name.i, ptr noundef nonnull %parent1.i, i32 noundef 4, i32 noundef 1, i32 noundef 2) #6
  %cmp.i150.i = icmp ugt ptr %call41.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i150.i, label %if.end30.i.pll_28nm_register.exit_crit_edge, label %if.end45.i

if.end30.i.pll_28nm_register.exit_crit_edge:      ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pll_28nm_register.exit

if.end45.i:                                       ; preds = %if.end30.i
  %49 = ptrtoint ptr %phy5 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %phy5, align 4
  %id48.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %50, i32 0, i32 9
  %51 = ptrtoint ptr %id48.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %id48.i, align 4
  %call49.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %clk_name.i, i32 noundef 32, ptr noundef nonnull @.str.7, i32 noundef %52) #6
  %53 = ptrtoint ptr %phy5 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %phy5, align 4
  %id52.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %54, i32 0, i32 9
  %55 = ptrtoint ptr %id52.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %id52.i, align 4
  %call53.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %parent1.i, i32 noundef 32, ptr noundef nonnull @.str.4, i32 noundef %56) #6
  %57 = ptrtoint ptr %phy5 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %phy5, align 4
  %pll_base57.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %pll_base57.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %pll_base57.i, align 4
  %add.ptr58.i = getelementptr i8, ptr %60, i32 40
  %call59.i = call ptr @__devm_clk_hw_register_divider(ptr noundef %dev2.i, ptr noundef null, ptr noundef nonnull %clk_name.i, ptr noundef nonnull %parent1.i, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %add.ptr58.i, i8 noundef zeroext 0, i8 noundef zeroext 8, i8 noundef zeroext 0, ptr noundef null, ptr noundef null) #6
  %cmp.i151.i = icmp ugt ptr %call59.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i151.i, label %if.end45.i.pll_28nm_register.exit_crit_edge, label %if.end63.i

if.end45.i.pll_28nm_register.exit_crit_edge:      ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pll_28nm_register.exit

if.end63.i:                                       ; preds = %if.end45.i
  %arrayidx.i = getelementptr %struct.clk_hw_onecell_data, ptr %4, i32 2
  %61 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call59.i, ptr %arrayidx.i, align 4
  %62 = ptrtoint ptr %phy5 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %phy5, align 4
  %id66.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %63, i32 0, i32 9
  %64 = ptrtoint ptr %id66.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %id66.i, align 4
  %call67.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %clk_name.i, i32 noundef 32, ptr noundef nonnull @.str.8, i32 noundef %65) #6
  %66 = ptrtoint ptr %phy5 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %phy5, align 4
  %id70.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %67, i32 0, i32 9
  %68 = ptrtoint ptr %id70.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %id70.i, align 4
  %call71.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %parent1.i, i32 noundef 32, ptr noundef nonnull @.str.4, i32 noundef %69) #6
  %70 = ptrtoint ptr %phy5 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %phy5, align 4
  %id74.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %71, i32 0, i32 9
  %72 = ptrtoint ptr %id74.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %id74.i, align 4
  %call75.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %parent2.i, i32 noundef 32, ptr noundef nonnull @.str.6, i32 noundef %73) #6
  %74 = ptrtoint ptr %.compoundliteral77.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %parent1.i, ptr %.compoundliteral77.i, align 4
  %arrayinit.element.i = getelementptr inbounds ptr, ptr %.compoundliteral77.i, i32 1
  %75 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %parent2.i, ptr %arrayinit.element.i, align 4
  %76 = ptrtoint ptr %phy5 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %phy5, align 4
  %pll_base83.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %77, i32 0, i32 2
  %78 = ptrtoint ptr %pll_base83.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %pll_base83.i, align 4
  %add.ptr84.i = getelementptr i8, ptr %79, i32 16
  %call85.i = call ptr @__devm_clk_hw_register_mux(ptr noundef %dev2.i, ptr noundef null, ptr noundef nonnull %clk_name.i, i8 noundef zeroext 2, ptr noundef nonnull %.compoundliteral77.i, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr84.i, i8 noundef zeroext 1, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef null) #6
  %cmp.i152.i = icmp ugt ptr %call85.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i152.i, label %if.end63.i.pll_28nm_register.exit_crit_edge, label %if.end89.i

if.end63.i.pll_28nm_register.exit_crit_edge:      ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pll_28nm_register.exit

if.end89.i:                                       ; preds = %if.end63.i
  %80 = ptrtoint ptr %phy5 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %phy5, align 4
  %id92.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %81, i32 0, i32 9
  %82 = ptrtoint ptr %id92.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %id92.i, align 4
  %call93.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %clk_name.i, i32 noundef 32, ptr noundef nonnull @.str.9, i32 noundef %83) #6
  %84 = ptrtoint ptr %phy5 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %phy5, align 4
  %id96.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %85, i32 0, i32 9
  %86 = ptrtoint ptr %id96.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %id96.i, align 4
  %call97.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %parent1.i, i32 noundef 32, ptr noundef nonnull @.str.8, i32 noundef %87) #6
  %call100.i = call ptr @devm_clk_hw_register_fixed_factor(ptr noundef %dev2.i, ptr noundef nonnull %clk_name.i, ptr noundef nonnull %parent1.i, i32 noundef 4, i32 noundef 1, i32 noundef 4) #6
  %cmp.i153.i = icmp ugt ptr %call100.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i153.i, label %if.end89.i.pll_28nm_register.exit_crit_edge, label %pll_28nm_register.exit.thread

if.end89.i.pll_28nm_register.exit_crit_edge:      ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pll_28nm_register.exit

pll_28nm_register.exit.thread:                    ; preds = %if.end89.i
  call void @__sanitizer_cov_trace_pc() #8
  %88 = ptrtoint ptr %hws to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call100.i, ptr %hws, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %vco_init.i) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %vco_name.i) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %parent2.i) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %parent1.i) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %clk_name.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %.compoundliteral.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %.compoundliteral77.i)
  %vco_hw = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 17
  %89 = ptrtoint ptr %vco_hw to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %call.i, ptr %vco_hw, align 4
  br label %cleanup

pll_28nm_register.exit:                           ; preds = %if.end89.i.pll_28nm_register.exit_crit_edge, %if.end63.i.pll_28nm_register.exit_crit_edge, %if.end45.i.pll_28nm_register.exit_crit_edge, %if.end30.i.pll_28nm_register.exit_crit_edge, %if.end14.i.pll_28nm_register.exit_crit_edge
  %retval.0.i.in = phi ptr [ %call26.i, %if.end14.i.pll_28nm_register.exit_crit_edge ], [ %call41.i, %if.end30.i.pll_28nm_register.exit_crit_edge ], [ %call59.i, %if.end45.i.pll_28nm_register.exit_crit_edge ], [ %call85.i, %if.end63.i.pll_28nm_register.exit_crit_edge ], [ %call100.i, %if.end89.i.pll_28nm_register.exit_crit_edge ]
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %vco_init.i) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %vco_name.i) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %parent2.i) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %parent1.i) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %clk_name.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %.compoundliteral.i)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %.compoundliteral77.i)
  br label %if.then8

if.then8:                                         ; preds = %pll_28nm_register.exit, %pll_28nm_register.exit.thread26
  %retval.0.i29 = phi i32 [ %call11.i, %pll_28nm_register.exit.thread26 ], [ %retval.0.i, %pll_28nm_register.exit ]
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %retval.0.i29) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %pll_28nm_register.exit.thread, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i29, %if.then8 ], [ 0, %pll_28nm_register.exit.thread ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsi_28nm_phy_enable(ptr noundef %phy, ptr noundef %clk_req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %timing1 = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 12
  %base2 = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 1
  %0 = ptrtoint ptr %base2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base2, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.31) #6
  %call = tail call i32 @msm_dsi_dphy_timing_calc(ptr noundef %timing1, ptr noundef %clk_req) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef nonnull @.str.32, ptr noundef nonnull @__func__.dsi_28nm_phy_enable) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr = getelementptr i8, ptr %1, i32 388
  tail call void @msm_writel(i32 noundef 255, ptr noundef %add.ptr) #6
  %regulator_ldo_mode.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 15
  %4 = ptrtoint ptr %regulator_ldo_mode.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %regulator_ldo_mode.i, align 4, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool1.not.i = icmp eq i8 %5, 0
  %reg_base.i7.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 3
  %6 = ptrtoint ptr %reg_base.i7.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_base.i7.i, align 4
  tail call void @msm_writel(i32 noundef 0, ptr noundef %7) #6
  %add.ptr1.i8.i = getelementptr i8, ptr %7, i32 24
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr1.i8.i) #6
  %add.ptr2.i.i = getelementptr i8, ptr %7, i32 20
  tail call void @msm_writel(i32 noundef 7, ptr noundef %add.ptr2.i.i) #6
  %add.ptr3.i.i = getelementptr i8, ptr %7, i32 12
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr3.i.i) #6
  %add.ptr4.i.i = getelementptr i8, ptr %7, i32 8
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr4.i.i) #6
  %add.ptr5.i.i = getelementptr i8, ptr %7, i32 4
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr5.i.i) #6
  %add.ptr6.i.i = getelementptr i8, ptr %7, i32 16
  tail call void @msm_writel(i32 noundef 32, ptr noundef %add.ptr6.i.i) #6
  %cfg.i.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 13
  %8 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cfg.i.i, align 4
  %quirks.i.i = getelementptr inbounds %struct.msm_dsi_phy_cfg, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %quirks.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %quirks.i.i, align 4
  %and.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %12 = ptrtoint ptr %base2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base2, align 4
  %add.ptr10.i.i = getelementptr i8, ptr %13, i32 476
  %..i.i = select i1 %tobool.not.i.i, i32 13, i32 5
  tail call void @msm_writel(i32 noundef %..i.i, ptr noundef %add.ptr10.i.i) #6
  br label %dsi_28nm_phy_regulator_ctrl.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr1.i8.i) #6
  %add.ptr2.i9.i = getelementptr i8, ptr %7, i32 20
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr2.i9.i) #6
  %add.ptr3.i10.i = getelementptr i8, ptr %7, i32 12
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr3.i10.i) #6
  %add.ptr4.i11.i = getelementptr i8, ptr %7, i32 8
  tail call void @msm_writel(i32 noundef 3, ptr noundef %add.ptr4.i11.i) #6
  %add.ptr5.i12.i = getelementptr i8, ptr %7, i32 4
  tail call void @msm_writel(i32 noundef 9, ptr noundef %add.ptr5.i12.i) #6
  tail call void @msm_writel(i32 noundef 7, ptr noundef %7) #6
  %add.ptr7.i.i = getelementptr i8, ptr %7, i32 16
  tail call void @msm_writel(i32 noundef 32, ptr noundef %add.ptr7.i.i) #6
  %14 = ptrtoint ptr %base2 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base2, align 4
  %add.ptr9.i.i = getelementptr i8, ptr %15, i32 476
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr9.i.i) #6
  br label %dsi_28nm_phy_regulator_ctrl.exit

dsi_28nm_phy_regulator_ctrl.exit:                 ; preds = %if.else.i, %if.then2.i
  %16 = ptrtoint ptr %base2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base2, align 4
  %18 = ptrtoint ptr %timing1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %timing1, align 4
  %and.i.i77 = and i32 %19, 255
  %add.ptr.i = getelementptr i8, ptr %17, i32 320
  tail call void @msm_writel(i32 noundef %and.i.i77, ptr noundef %add.ptr.i) #6
  %clk_trail.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 12, i32 1
  %20 = ptrtoint ptr %clk_trail.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %clk_trail.i, align 4
  %and.i47.i = and i32 %21, 255
  %add.ptr3.i = getelementptr i8, ptr %17, i32 324
  tail call void @msm_writel(i32 noundef %and.i47.i, ptr noundef %add.ptr3.i) #6
  %clk_prepare.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 12, i32 2
  %22 = ptrtoint ptr %clk_prepare.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %clk_prepare.i, align 4
  %and.i48.i = and i32 %23, 255
  %add.ptr5.i = getelementptr i8, ptr %17, i32 328
  tail call void @msm_writel(i32 noundef %and.i48.i, ptr noundef %add.ptr5.i) #6
  %24 = ptrtoint ptr %timing1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %timing1, align 4
  %and.i = and i32 %25, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %dsi_28nm_phy_regulator_ctrl.exit.dsi_28nm_dphy_set_timing.exit_crit_edge, label %if.then.i

dsi_28nm_phy_regulator_ctrl.exit.dsi_28nm_dphy_set_timing.exit_crit_edge: ; preds = %dsi_28nm_phy_regulator_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %dsi_28nm_dphy_set_timing.exit

if.then.i:                                        ; preds = %dsi_28nm_phy_regulator_ctrl.exit
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr7.i = getelementptr i8, ptr %17, i32 332
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr7.i) #6
  br label %dsi_28nm_dphy_set_timing.exit

dsi_28nm_dphy_set_timing.exit:                    ; preds = %if.then.i, %dsi_28nm_phy_regulator_ctrl.exit.dsi_28nm_dphy_set_timing.exit_crit_edge
  %hs_exit.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 12, i32 3
  %26 = ptrtoint ptr %hs_exit.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %hs_exit.i, align 4
  %and.i49.i = and i32 %27, 255
  %add.ptr9.i = getelementptr i8, ptr %17, i32 336
  tail call void @msm_writel(i32 noundef %and.i49.i, ptr noundef %add.ptr9.i) #6
  %hs_zero.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 12, i32 4
  %28 = ptrtoint ptr %hs_zero.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %hs_zero.i, align 4
  %and.i50.i = and i32 %29, 255
  %add.ptr11.i = getelementptr i8, ptr %17, i32 340
  tail call void @msm_writel(i32 noundef %and.i50.i, ptr noundef %add.ptr11.i) #6
  %hs_prepare.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 12, i32 5
  %30 = ptrtoint ptr %hs_prepare.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %hs_prepare.i, align 4
  %and.i51.i = and i32 %31, 255
  %add.ptr13.i = getelementptr i8, ptr %17, i32 344
  tail call void @msm_writel(i32 noundef %and.i51.i, ptr noundef %add.ptr13.i) #6
  %hs_trail.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 12, i32 6
  %32 = ptrtoint ptr %hs_trail.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %hs_trail.i, align 4
  %and.i52.i = and i32 %33, 255
  %add.ptr15.i = getelementptr i8, ptr %17, i32 348
  tail call void @msm_writel(i32 noundef %and.i52.i, ptr noundef %add.ptr15.i) #6
  %hs_rqst.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 12, i32 7
  %34 = ptrtoint ptr %hs_rqst.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %hs_rqst.i, align 4
  %and.i53.i = and i32 %35, 255
  %add.ptr17.i = getelementptr i8, ptr %17, i32 352
  tail call void @msm_writel(i32 noundef %and.i53.i, ptr noundef %add.ptr17.i) #6
  %ta_go.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 12, i32 8
  %36 = ptrtoint ptr %ta_go.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ta_go.i, align 4
  %and.i54.i = and i32 %37, 7
  %ta_sure.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 12, i32 9
  %38 = ptrtoint ptr %ta_sure.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ta_sure.i, align 4
  %shl.i.i = shl i32 %39, 4
  %and.i55.i = and i32 %shl.i.i, 112
  %or.i = or i32 %and.i55.i, %and.i54.i
  %add.ptr20.i = getelementptr i8, ptr %17, i32 356
  tail call void @msm_writel(i32 noundef %or.i, ptr noundef %add.ptr20.i) #6
  %ta_get.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 12, i32 10
  %40 = ptrtoint ptr %ta_get.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ta_get.i, align 4
  %and.i56.i = and i32 %41, 7
  %add.ptr22.i = getelementptr i8, ptr %17, i32 360
  tail call void @msm_writel(i32 noundef %and.i56.i, ptr noundef %add.ptr22.i) #6
  %add.ptr24.i = getelementptr i8, ptr %17, i32 364
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr24.i) #6
  %add.ptr3 = getelementptr i8, ptr %1, i32 372
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr3) #6
  %add.ptr4 = getelementptr i8, ptr %1, i32 368
  tail call void @msm_writel(i32 noundef 95, ptr noundef %add.ptr4) #6
  %add.ptr5 = getelementptr i8, ptr %1, i32 392
  tail call void @msm_writel(i32 noundef 6, ptr noundef %add.ptr5) #6
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %dsi_28nm_dphy_set_timing.exit
  %i.093 = phi i32 [ 0, %dsi_28nm_dphy_set_timing.exit ], [ %inc, %for.body.for.body_crit_edge ]
  %mul.i = shl i32 %i.093, 6
  %add.ptr7 = getelementptr i8, ptr %1, i32 %mul.i
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr7) #6
  %add.i = or i32 %mul.i, 4
  %add.ptr9 = getelementptr i8, ptr %1, i32 %add.i
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr9) #6
  %add.i80 = or i32 %mul.i, 8
  %add.ptr11 = getelementptr i8, ptr %1, i32 %add.i80
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr11) #6
  %add.i82 = or i32 %mul.i, 12
  %add.ptr13 = getelementptr i8, ptr %1, i32 %add.i82
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr13) #6
  %add.i84 = or i32 %mul.i, 16
  %add.ptr15 = getelementptr i8, ptr %1, i32 %add.i84
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr15) #6
  %add.i86 = or i32 %mul.i, 20
  %add.ptr17 = getelementptr i8, ptr %1, i32 %add.i86
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr17) #6
  %add.i88 = or i32 %mul.i, 24
  %add.ptr19 = getelementptr i8, ptr %1, i32 %add.i88
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr19) #6
  %add.i90 = or i32 %mul.i, 28
  %add.ptr21 = getelementptr i8, ptr %1, i32 %add.i90
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr21) #6
  %add.i92 = or i32 %mul.i, 32
  %add.ptr23 = getelementptr i8, ptr %1, i32 %add.i92
  tail call void @msm_writel(i32 noundef 151, ptr noundef %add.ptr23) #6
  %inc = add nuw nsw i32 %i.093, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  %add.ptr24 = getelementptr i8, ptr %1, i32 272
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr24) #6
  %add.ptr25 = getelementptr i8, ptr %1, i32 260
  tail call void @msm_writel(i32 noundef 192, ptr noundef %add.ptr25) #6
  %add.ptr26 = getelementptr i8, ptr %1, i32 284
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr26) #6
  %add.ptr27 = getelementptr i8, ptr %1, i32 288
  tail call void @msm_writel(i32 noundef 187, ptr noundef %add.ptr27) #6
  tail call void @msm_writel(i32 noundef 95, ptr noundef %add.ptr4) #6
  %add.ptr29 = getelementptr i8, ptr %1, i32 468
  %call30 = tail call i32 @msm_readl(ptr noundef %add.ptr29) #6
  %id = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 9
  %42 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %43)
  %cmp31 = icmp eq i32 %43, 1
  br i1 %cmp31, label %land.lhs.true, label %for.end.if.else_crit_edge

for.end.if.else_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %for.end
  %usecase = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 14
  %44 = ptrtoint ptr %usecase to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %usecase, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %45)
  %cmp32 = icmp eq i32 %45, 2
  br i1 %cmp32, label %if.then33, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then33:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %and = and i32 %call30, -2
  br label %if.end34

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %for.end.if.else_crit_edge
  %or = or i32 %call30, 1
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.then33
  %val.0 = phi i32 [ %and, %if.then33 ], [ %or, %if.else ]
  tail call void @msm_writel(i32 noundef %val.0, ptr noundef %add.ptr29) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %if.end34 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dsi_28nm_phy_disable(ptr nocapture noundef readonly %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 368
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr) #6
  %reg_base.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 3
  %2 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 24
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !88
  tail call void @arm_heavy_mb() #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dsi_28nm_pll_save_state(ptr nocapture noundef readonly %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vco_hw = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 17
  %0 = ptrtoint ptr %vco_hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vco_hw, align 4
  %phy2 = getelementptr inbounds %struct.dsi_pll_28nm, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %phy2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy2, align 4
  %pll_base = getelementptr inbounds %struct.msm_dsi_phy, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %pll_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pll_base, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 40
  %call = tail call i32 @msm_readl(ptr noundef %add.ptr3) #6
  %conv = trunc i32 %call to i8
  %postdiv3 = getelementptr inbounds %struct.dsi_pll_28nm, ptr %1, i32 0, i32 2, i32 1
  %6 = ptrtoint ptr %postdiv3 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %postdiv3, align 4
  %add.ptr4 = getelementptr i8, ptr %5, i32 4
  %call5 = tail call i32 @msm_readl(ptr noundef %add.ptr4) #6
  %conv6 = trunc i32 %call5 to i8
  %postdiv1 = getelementptr inbounds %struct.dsi_pll_28nm, ptr %1, i32 0, i32 2, i32 2
  %7 = ptrtoint ptr %postdiv1 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv6, ptr %postdiv1, align 1
  %add.ptr7 = getelementptr i8, ptr %5, i32 16
  %call8 = tail call i32 @msm_readl(ptr noundef %add.ptr7) #6
  %conv9 = trunc i32 %call8 to i8
  %byte_mux = getelementptr inbounds %struct.dsi_pll_28nm, ptr %1, i32 0, i32 2, i32 3
  %8 = ptrtoint ptr %byte_mux to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv9, ptr %byte_mux, align 2
  %9 = ptrtoint ptr %vco_hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vco_hw, align 4
  %call11 = tail call i32 @dsi_pll_28nm_clk_is_enabled(ptr noundef %10)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool.not = icmp eq i32 %call11, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %vco_hw to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %vco_hw, align 4
  %call13 = tail call i32 @clk_hw_get_rate(ptr noundef %12) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %storemerge = phi i32 [ %call13, %if.then ], [ 0, %entry.if.end_crit_edge ]
  %cached_state1 = getelementptr inbounds %struct.dsi_pll_28nm, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %cached_state1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %storemerge, ptr %cached_state1, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsi_28nm_pll_restore_state(ptr nocapture noundef readonly %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vco_hw = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 17
  %0 = ptrtoint ptr %vco_hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vco_hw, align 4
  %cached_state1 = getelementptr inbounds %struct.dsi_pll_28nm, ptr %1, i32 0, i32 2
  %phy2 = getelementptr inbounds %struct.dsi_pll_28nm, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %phy2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy2, align 4
  %pll_base = getelementptr inbounds %struct.msm_dsi_phy, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %pll_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pll_base, align 4
  %6 = ptrtoint ptr %cached_state1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cached_state1, align 4
  %call = tail call i32 @dsi_pll_28nm_clk_set_rate(ptr noundef %1, i32 noundef %7, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %phy2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy2, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef nonnull @.str.33, i32 noundef %call) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %postdiv3 = getelementptr inbounds %struct.dsi_pll_28nm, ptr %1, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %postdiv3 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %postdiv3, align 4
  %conv = zext i8 %13 to i32
  %add.ptr5 = getelementptr i8, ptr %5, i32 40
  tail call void @msm_writel(i32 noundef %conv, ptr noundef %add.ptr5) #6
  %postdiv1 = getelementptr inbounds %struct.dsi_pll_28nm, ptr %1, i32 0, i32 2, i32 2
  %14 = ptrtoint ptr %postdiv1 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %postdiv1, align 1
  %conv6 = zext i8 %15 to i32
  %add.ptr7 = getelementptr i8, ptr %5, i32 4
  tail call void @msm_writel(i32 noundef %conv6, ptr noundef %add.ptr7) #6
  %byte_mux = getelementptr inbounds %struct.dsi_pll_28nm, ptr %1, i32 0, i32 2, i32 3
  %16 = ptrtoint ptr %byte_mux to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %byte_mux, align 2
  %conv8 = zext i8 %17 to i32
  %add.ptr9 = getelementptr i8, ptr %5, i32 16
  tail call void @msm_writel(i32 noundef %conv8, ptr noundef %add.ptr9) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_clk_hw_register_divider(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_hw_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_clk_hw_register_mux(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsi_pll_28nm_vco_prepare_lp(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %phy = getelementptr inbounds %struct.dsi_pll_28nm, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %pll_base = getelementptr inbounds %struct.msm_dsi_phy, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %pll_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pll_base, align 4
  %id = getelementptr inbounds %struct.msm_dsi_phy, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef %7) #6
  %8 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy, align 4
  %pll_on = getelementptr inbounds %struct.msm_dsi_phy, ptr %9, i32 0, i32 18
  %10 = ptrtoint ptr %pll_on to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %pll_on, align 4, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge, !prof !89

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %pll_base.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %9, i32 0, i32 2
  %12 = ptrtoint ptr %pll_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pll_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 104
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748) #6
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748) #6
  %add.ptr7 = getelementptr i8, ptr %5, i32 112
  tail call void @msm_writel(i32 noundef 52, ptr noundef %add.ptr7) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748) #6
  %add.ptr8 = getelementptr i8, ptr %5, i32 32
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr8) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748) #6
  tail call void @msm_writel(i32 noundef 5, ptr noundef %add.ptr8) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748) #6
  tail call void @msm_writel(i32 noundef 15, ptr noundef %add.ptr8) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748) #6
  %add.ptr12 = getelementptr i8, ptr %5, i32 100
  tail call void @msm_writel(i32 noundef 4, ptr noundef %add.ptr12) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748) #6
  tail call void @msm_writel(i32 noundef 5, ptr noundef %add.ptr12) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 109950976) #6
  %22 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %phy, align 4
  %pll_base.i49 = getelementptr inbounds %struct.msm_dsi_phy, ptr %23, i32 0, i32 2
  %24 = ptrtoint ptr %pll_base.i49 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pll_base.i49, align 4
  %add.ptr.i50 = getelementptr i8, ptr %25, i32 192
  %call.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i50) #6
  %and.i = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.end.i, label %if.end.if.end24_crit_edge

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.end.i:                                         ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %.val.i = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %.val.i(i32 noundef 10737400) #6
  %26 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %phy, align 4
  %pll_base.i49.1 = getelementptr inbounds %struct.msm_dsi_phy, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %pll_base.i49.1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pll_base.i49.1, align 4
  %add.ptr.i50.1 = getelementptr i8, ptr %29, i32 192
  %call.i.1 = tail call i32 @msm_readl(ptr noundef %add.ptr.i50.1) #6
  %and.i.1 = and i32 %call.i.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.1)
  %tobool1.not.i.1 = icmp eq i32 %and.i.1, 0
  br i1 %tobool1.not.i.1, label %if.end.i.1, label %if.end.i.if.end24_crit_edge

if.end.i.if.end24_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.end.i.1:                                       ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %.val.i.1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %.val.i.1(i32 noundef 10737400) #6
  %30 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %phy, align 4
  %pll_base.i49.2 = getelementptr inbounds %struct.msm_dsi_phy, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %pll_base.i49.2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pll_base.i49.2, align 4
  %add.ptr.i50.2 = getelementptr i8, ptr %33, i32 192
  %call.i.2 = tail call i32 @msm_readl(ptr noundef %add.ptr.i50.2) #6
  %and.i.2 = and i32 %call.i.2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.2)
  %tobool1.not.i.2 = icmp eq i32 %and.i.2, 0
  br i1 %tobool1.not.i.2, label %if.end.i.2, label %if.end.i.1.if.end24_crit_edge

if.end.i.1.if.end24_crit_edge:                    ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.end.i.2:                                       ; preds = %if.end.i.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %.val.i.2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %.val.i.2(i32 noundef 10737400) #6
  %34 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %phy, align 4
  %pll_base.i49.3 = getelementptr inbounds %struct.msm_dsi_phy, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %pll_base.i49.3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pll_base.i49.3, align 4
  %add.ptr.i50.3 = getelementptr i8, ptr %37, i32 192
  %call.i.3 = tail call i32 @msm_readl(ptr noundef %add.ptr.i50.3) #6
  %and.i.3 = and i32 %call.i.3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.3)
  %tobool1.not.i.3 = icmp eq i32 %and.i.3, 0
  br i1 %tobool1.not.i.3, label %if.end.i.3, label %if.end.i.2.if.end24_crit_edge

if.end.i.2.if.end24_crit_edge:                    ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.end.i.3:                                       ; preds = %if.end.i.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %.val.i.3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %.val.i.3(i32 noundef 10737400) #6
  %38 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %phy, align 4
  %pll_base.i49.4 = getelementptr inbounds %struct.msm_dsi_phy, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %pll_base.i49.4 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pll_base.i49.4, align 4
  %add.ptr.i50.4 = getelementptr i8, ptr %41, i32 192
  %call.i.4 = tail call i32 @msm_readl(ptr noundef %add.ptr.i50.4) #6
  %and.i.4 = and i32 %call.i.4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.4)
  %tobool1.not.i.4 = icmp eq i32 %and.i.4, 0
  br i1 %tobool1.not.i.4, label %if.end.i.4, label %if.end.i.3.if.end24_crit_edge

if.end.i.3.if.end24_crit_edge:                    ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.end.i.4:                                       ; preds = %if.end.i.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %.val.i.4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %.val.i.4(i32 noundef 10737400) #6
  %42 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %phy, align 4
  %pll_base.i49.5 = getelementptr inbounds %struct.msm_dsi_phy, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %pll_base.i49.5 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pll_base.i49.5, align 4
  %add.ptr.i50.5 = getelementptr i8, ptr %45, i32 192
  %call.i.5 = tail call i32 @msm_readl(ptr noundef %add.ptr.i50.5) #6
  %and.i.5 = and i32 %call.i.5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.5)
  %tobool1.not.i.5 = icmp eq i32 %and.i.5, 0
  br i1 %tobool1.not.i.5, label %if.end.i.5, label %if.end.i.4.if.end24_crit_edge

if.end.i.4.if.end24_crit_edge:                    ; preds = %if.end.i.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.end.i.5:                                       ; preds = %if.end.i.4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %.val.i.5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %.val.i.5(i32 noundef 10737400) #6
  %46 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %phy, align 4
  %pll_base.i49.6 = getelementptr inbounds %struct.msm_dsi_phy, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %pll_base.i49.6 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pll_base.i49.6, align 4
  %add.ptr.i50.6 = getelementptr i8, ptr %49, i32 192
  %call.i.6 = tail call i32 @msm_readl(ptr noundef %add.ptr.i50.6) #6
  %and.i.6 = and i32 %call.i.6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.6)
  %tobool1.not.i.6 = icmp eq i32 %and.i.6, 0
  br i1 %tobool1.not.i.6, label %if.end.i.6, label %if.end.i.5.if.end24_crit_edge

if.end.i.5.if.end24_crit_edge:                    ; preds = %if.end.i.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.end.i.6:                                       ; preds = %if.end.i.5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %.val.i.6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %.val.i.6(i32 noundef 10737400) #6
  %50 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %phy, align 4
  %pll_base.i49.7 = getelementptr inbounds %struct.msm_dsi_phy, ptr %51, i32 0, i32 2
  %52 = ptrtoint ptr %pll_base.i49.7 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pll_base.i49.7, align 4
  %add.ptr.i50.7 = getelementptr i8, ptr %53, i32 192
  %call.i.7 = tail call i32 @msm_readl(ptr noundef %add.ptr.i50.7) #6
  %and.i.7 = and i32 %call.i.7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.7)
  %tobool1.not.i.7 = icmp eq i32 %and.i.7, 0
  br i1 %tobool1.not.i.7, label %if.end.i.7, label %if.end.i.6.if.end24_crit_edge

if.end.i.6.if.end24_crit_edge:                    ; preds = %if.end.i.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.end.i.7:                                       ; preds = %if.end.i.6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %.val.i.7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %.val.i.7(i32 noundef 10737400) #6
  %54 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %phy, align 4
  %pll_base.i49.8 = getelementptr inbounds %struct.msm_dsi_phy, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %pll_base.i49.8 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pll_base.i49.8, align 4
  %add.ptr.i50.8 = getelementptr i8, ptr %57, i32 192
  %call.i.8 = tail call i32 @msm_readl(ptr noundef %add.ptr.i50.8) #6
  %and.i.8 = and i32 %call.i.8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.8)
  %tobool1.not.i.8 = icmp eq i32 %and.i.8, 0
  br i1 %tobool1.not.i.8, label %if.end.i.8, label %if.end.i.7.if.end24_crit_edge

if.end.i.7.if.end24_crit_edge:                    ; preds = %if.end.i.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.end.i.8:                                       ; preds = %if.end.i.7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %.val.i.8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %.val.i.8(i32 noundef 10737400) #6
  %58 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %phy, align 4
  %pll_base.i49.9 = getelementptr inbounds %struct.msm_dsi_phy, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %pll_base.i49.9 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pll_base.i49.9, align 4
  %add.ptr.i50.9 = getelementptr i8, ptr %61, i32 192
  %call.i.9 = tail call i32 @msm_readl(ptr noundef %add.ptr.i50.9) #6
  %and.i.9 = and i32 %call.i.9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.9)
  %tobool1.not.i.9 = icmp eq i32 %and.i.9, 0
  br i1 %tobool1.not.i.9, label %if.end.i.9, label %if.end.i.8.if.end24_crit_edge

if.end.i.8.if.end24_crit_edge:                    ; preds = %if.end.i.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.end.i.9:                                       ; preds = %if.end.i.8
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %.val.i.9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %.val.i.9(i32 noundef 10737400) #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.15) #6
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.11) #6
  br label %cleanup

if.end24:                                         ; preds = %if.end.i.8.if.end24_crit_edge, %if.end.i.7.if.end24_crit_edge, %if.end.i.6.if.end24_crit_edge, %if.end.i.5.if.end24_crit_edge, %if.end.i.4.if.end24_crit_edge, %if.end.i.3.if.end24_crit_edge, %if.end.i.2.if.end24_crit_edge, %if.end.i.1.if.end24_crit_edge, %if.end.i.if.end24_crit_edge, %if.end.if.end24_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.12) #6
  %62 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %phy, align 4
  %pll_on26 = getelementptr inbounds %struct.msm_dsi_phy, ptr %63, i32 0, i32 18
  %64 = ptrtoint ptr %pll_on26 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 1, ptr %pll_on26, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end24, %if.end.i.9, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.end.i.9 ], [ 0, %if.end24 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dsi_pll_28nm_vco_unprepare(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %phy = getelementptr inbounds %struct.dsi_pll_28nm, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 4
  %id = getelementptr inbounds %struct.msm_dsi_phy, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef %3) #6
  %4 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy, align 4
  %pll_on = getelementptr inbounds %struct.msm_dsi_phy, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %pll_on to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pll_on, align 4, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !90

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pll_base = getelementptr inbounds %struct.msm_dsi_phy, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %pll_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pll_base, align 4
  %add.ptr6 = getelementptr i8, ptr %9, i32 32
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr6) #6
  %10 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phy, align 4
  %pll_on8 = getelementptr inbounds %struct.msm_dsi_phy, ptr %11, i32 0, i32 18
  %12 = ptrtoint ptr %pll_on8 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %pll_on8, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsi_pll_28nm_clk_is_enabled(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %phy.i = getelementptr inbounds %struct.dsi_pll_28nm, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy.i, align 4
  %pll_base.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pll_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pll_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 192
  %call.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #6
  %and.i = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.end.i, label %entry.pll_28nm_poll_for_ready.exit_crit_edge

entry.pll_28nm_poll_for_ready.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %pll_28nm_poll_for_ready.exit

if.end.i:                                         ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %.val.i = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %.val.i(i32 noundef 10737400) #6
  %4 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy.i, align 4
  %pll_base.i.1 = getelementptr inbounds %struct.msm_dsi_phy, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %pll_base.i.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pll_base.i.1, align 4
  %add.ptr.i.1 = getelementptr i8, ptr %7, i32 192
  %call.i.1 = tail call i32 @msm_readl(ptr noundef %add.ptr.i.1) #6
  %and.i.1 = and i32 %call.i.1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.1)
  %tobool1.not.i.1 = icmp eq i32 %and.i.1, 0
  br i1 %tobool1.not.i.1, label %if.end.i.1, label %if.end.i.pll_28nm_poll_for_ready.exit_crit_edge

if.end.i.pll_28nm_poll_for_ready.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pll_28nm_poll_for_ready.exit

if.end.i.1:                                       ; preds = %if.end.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %.val.i.1 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %.val.i.1(i32 noundef 10737400) #6
  %8 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy.i, align 4
  %pll_base.i.2 = getelementptr inbounds %struct.msm_dsi_phy, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %pll_base.i.2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pll_base.i.2, align 4
  %add.ptr.i.2 = getelementptr i8, ptr %11, i32 192
  %call.i.2 = tail call i32 @msm_readl(ptr noundef %add.ptr.i.2) #6
  %and.i.2 = and i32 %call.i.2, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.2)
  %tobool1.not.i.2 = icmp eq i32 %and.i.2, 0
  br i1 %tobool1.not.i.2, label %if.end.i.2, label %if.end.i.1.pll_28nm_poll_for_ready.exit_crit_edge

if.end.i.1.pll_28nm_poll_for_ready.exit_crit_edge: ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %pll_28nm_poll_for_ready.exit

if.end.i.2:                                       ; preds = %if.end.i.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %.val.i.2 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %.val.i.2(i32 noundef 10737400) #6
  %12 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phy.i, align 4
  %pll_base.i.3 = getelementptr inbounds %struct.msm_dsi_phy, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %pll_base.i.3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pll_base.i.3, align 4
  %add.ptr.i.3 = getelementptr i8, ptr %15, i32 192
  %call.i.3 = tail call i32 @msm_readl(ptr noundef %add.ptr.i.3) #6
  %and.i.3 = and i32 %call.i.3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.3)
  %tobool1.not.i.3 = icmp eq i32 %and.i.3, 0
  br i1 %tobool1.not.i.3, label %if.end.i.3, label %if.end.i.2.pll_28nm_poll_for_ready.exit_crit_edge

if.end.i.2.pll_28nm_poll_for_ready.exit_crit_edge: ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %pll_28nm_poll_for_ready.exit

if.end.i.3:                                       ; preds = %if.end.i.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %.val.i.3 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %.val.i.3(i32 noundef 10737400) #6
  %16 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %phy.i, align 4
  %pll_base.i.4 = getelementptr inbounds %struct.msm_dsi_phy, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %pll_base.i.4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pll_base.i.4, align 4
  %add.ptr.i.4 = getelementptr i8, ptr %19, i32 192
  %call.i.4 = tail call i32 @msm_readl(ptr noundef %add.ptr.i.4) #6
  %and.i.4 = and i32 %call.i.4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.4)
  %tobool1.not.i.4 = icmp eq i32 %and.i.4, 0
  br i1 %tobool1.not.i.4, label %if.end.i.4, label %if.end.i.3.pll_28nm_poll_for_ready.exit_crit_edge

if.end.i.3.pll_28nm_poll_for_ready.exit_crit_edge: ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %pll_28nm_poll_for_ready.exit

if.end.i.4:                                       ; preds = %if.end.i.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %.val.i.4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %.val.i.4(i32 noundef 10737400) #6
  %20 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %phy.i, align 4
  %pll_base.i.5 = getelementptr inbounds %struct.msm_dsi_phy, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %pll_base.i.5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pll_base.i.5, align 4
  %add.ptr.i.5 = getelementptr i8, ptr %23, i32 192
  %call.i.5 = tail call i32 @msm_readl(ptr noundef %add.ptr.i.5) #6
  %and.i.5 = and i32 %call.i.5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.5)
  %tobool1.not.i.5 = icmp eq i32 %and.i.5, 0
  br i1 %tobool1.not.i.5, label %if.end.i.5, label %if.end.i.4.pll_28nm_poll_for_ready.exit_crit_edge

if.end.i.4.pll_28nm_poll_for_ready.exit_crit_edge: ; preds = %if.end.i.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %pll_28nm_poll_for_ready.exit

if.end.i.5:                                       ; preds = %if.end.i.4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %.val.i.5 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %.val.i.5(i32 noundef 10737400) #6
  %24 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %phy.i, align 4
  %pll_base.i.6 = getelementptr inbounds %struct.msm_dsi_phy, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %pll_base.i.6 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %pll_base.i.6, align 4
  %add.ptr.i.6 = getelementptr i8, ptr %27, i32 192
  %call.i.6 = tail call i32 @msm_readl(ptr noundef %add.ptr.i.6) #6
  %and.i.6 = and i32 %call.i.6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.6)
  %tobool1.not.i.6 = icmp eq i32 %and.i.6, 0
  br i1 %tobool1.not.i.6, label %if.end.i.6, label %if.end.i.5.pll_28nm_poll_for_ready.exit_crit_edge

if.end.i.5.pll_28nm_poll_for_ready.exit_crit_edge: ; preds = %if.end.i.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %pll_28nm_poll_for_ready.exit

if.end.i.6:                                       ; preds = %if.end.i.5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %.val.i.6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %.val.i.6(i32 noundef 10737400) #6
  %28 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %phy.i, align 4
  %pll_base.i.7 = getelementptr inbounds %struct.msm_dsi_phy, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %pll_base.i.7 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pll_base.i.7, align 4
  %add.ptr.i.7 = getelementptr i8, ptr %31, i32 192
  %call.i.7 = tail call i32 @msm_readl(ptr noundef %add.ptr.i.7) #6
  %and.i.7 = and i32 %call.i.7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.7)
  %tobool1.not.i.7 = icmp eq i32 %and.i.7, 0
  br i1 %tobool1.not.i.7, label %if.end.i.7, label %if.end.i.6.pll_28nm_poll_for_ready.exit_crit_edge

if.end.i.6.pll_28nm_poll_for_ready.exit_crit_edge: ; preds = %if.end.i.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %pll_28nm_poll_for_ready.exit

if.end.i.7:                                       ; preds = %if.end.i.6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %.val.i.7 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %.val.i.7(i32 noundef 10737400) #6
  %32 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %phy.i, align 4
  %pll_base.i.8 = getelementptr inbounds %struct.msm_dsi_phy, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %pll_base.i.8 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pll_base.i.8, align 4
  %add.ptr.i.8 = getelementptr i8, ptr %35, i32 192
  %call.i.8 = tail call i32 @msm_readl(ptr noundef %add.ptr.i.8) #6
  %and.i.8 = and i32 %call.i.8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.8)
  %tobool1.not.i.8 = icmp eq i32 %and.i.8, 0
  br i1 %tobool1.not.i.8, label %if.end.i.8, label %if.end.i.7.pll_28nm_poll_for_ready.exit_crit_edge

if.end.i.7.pll_28nm_poll_for_ready.exit_crit_edge: ; preds = %if.end.i.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %pll_28nm_poll_for_ready.exit

if.end.i.8:                                       ; preds = %if.end.i.7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %.val.i.8 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %.val.i.8(i32 noundef 10737400) #6
  %36 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %phy.i, align 4
  %pll_base.i.9 = getelementptr inbounds %struct.msm_dsi_phy, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %pll_base.i.9 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pll_base.i.9, align 4
  %add.ptr.i.9 = getelementptr i8, ptr %39, i32 192
  %call.i.9 = tail call i32 @msm_readl(ptr noundef %add.ptr.i.9) #6
  %and.i.9 = and i32 %call.i.9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.9)
  %tobool1.not.i.9 = icmp eq i32 %and.i.9, 0
  br i1 %tobool1.not.i.9, label %if.end.i.9, label %if.end.i.8.pll_28nm_poll_for_ready.exit_crit_edge

if.end.i.8.pll_28nm_poll_for_ready.exit_crit_edge: ; preds = %if.end.i.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %pll_28nm_poll_for_ready.exit

if.end.i.9:                                       ; preds = %if.end.i.8
  call void @__sanitizer_cov_trace_pc() #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %.val.i.9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %.val.i.9(i32 noundef 10737400) #6
  br label %pll_28nm_poll_for_ready.exit

pll_28nm_poll_for_ready.exit:                     ; preds = %if.end.i.9, %if.end.i.8.pll_28nm_poll_for_ready.exit_crit_edge, %if.end.i.7.pll_28nm_poll_for_ready.exit_crit_edge, %if.end.i.6.pll_28nm_poll_for_ready.exit_crit_edge, %if.end.i.5.pll_28nm_poll_for_ready.exit_crit_edge, %if.end.i.4.pll_28nm_poll_for_ready.exit_crit_edge, %if.end.i.3.pll_28nm_poll_for_ready.exit_crit_edge, %if.end.i.2.pll_28nm_poll_for_ready.exit_crit_edge, %if.end.i.1.pll_28nm_poll_for_ready.exit_crit_edge, %if.end.i.pll_28nm_poll_for_ready.exit_crit_edge, %entry.pll_28nm_poll_for_ready.exit_crit_edge
  %tobool1.not.i.lcssa = phi i32 [ 1, %entry.pll_28nm_poll_for_ready.exit_crit_edge ], [ 1, %if.end.i.pll_28nm_poll_for_ready.exit_crit_edge ], [ 1, %if.end.i.1.pll_28nm_poll_for_ready.exit_crit_edge ], [ 1, %if.end.i.2.pll_28nm_poll_for_ready.exit_crit_edge ], [ 1, %if.end.i.3.pll_28nm_poll_for_ready.exit_crit_edge ], [ 1, %if.end.i.4.pll_28nm_poll_for_ready.exit_crit_edge ], [ 1, %if.end.i.5.pll_28nm_poll_for_ready.exit_crit_edge ], [ 1, %if.end.i.6.pll_28nm_poll_for_ready.exit_crit_edge ], [ 1, %if.end.i.7.pll_28nm_poll_for_ready.exit_crit_edge ], [ 1, %if.end.i.8.pll_28nm_poll_for_ready.exit_crit_edge ], [ 0, %if.end.i.9 ]
  %cond.ph.i = phi ptr [ @.str.14, %entry.pll_28nm_poll_for_ready.exit_crit_edge ], [ @.str.14, %if.end.i.pll_28nm_poll_for_ready.exit_crit_edge ], [ @.str.14, %if.end.i.1.pll_28nm_poll_for_ready.exit_crit_edge ], [ @.str.14, %if.end.i.2.pll_28nm_poll_for_ready.exit_crit_edge ], [ @.str.14, %if.end.i.3.pll_28nm_poll_for_ready.exit_crit_edge ], [ @.str.14, %if.end.i.4.pll_28nm_poll_for_ready.exit_crit_edge ], [ @.str.14, %if.end.i.5.pll_28nm_poll_for_ready.exit_crit_edge ], [ @.str.14, %if.end.i.6.pll_28nm_poll_for_ready.exit_crit_edge ], [ @.str.14, %if.end.i.7.pll_28nm_poll_for_ready.exit_crit_edge ], [ @.str.14, %if.end.i.8.pll_28nm_poll_for_ready.exit_crit_edge ], [ @.str.15, %if.end.i.9 ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.13, ptr noundef nonnull %cond.ph.i) #6
  ret i32 %tobool1.not.i.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsi_pll_28nm_clk_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %phy = getelementptr inbounds %struct.dsi_pll_28nm, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 4
  %pll_base = getelementptr inbounds %struct.msm_dsi_phy, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pll_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pll_base, align 4
  %call = tail call i32 @msm_readl(ptr noundef %3) #6
  %and = and i32 %call, 1
  %mul = mul nuw nsw i32 %and, 19200000
  %add = add nuw nsw i32 %mul, 19200000
  %add.ptr2 = getelementptr i8, ptr %3, i32 56
  %call3 = tail call i32 @msm_readl(ptr noundef %add.ptr2) #6
  %and4 = and i32 %call3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool.not = icmp eq i32 %and4, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call6 = tail call i32 @msm_readl(ptr noundef %add.ptr2) #6
  %and7 = and i32 %call6, 63
  %add8 = add nuw nsw i32 %and7, 1
  %mul9 = mul nuw i32 %add8, %add
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr10 = getelementptr i8, ptr %3, i32 60
  %call11 = tail call i32 @msm_readl(ptr noundef %add.ptr10) #6
  %and12 = and i32 %call11, 63
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.16, i32 noundef %and12) #6
  %add.ptr14 = getelementptr i8, ptr %3, i32 64
  %call15 = tail call i32 @msm_readl(ptr noundef %add.ptr14) #6
  %and16 = and i32 %call15, 255
  %add.ptr18 = getelementptr i8, ptr %3, i32 68
  %call19 = tail call i32 @msm_readl(ptr noundef %add.ptr18) #6
  %and20 = shl i32 %call19, 8
  %shl = and i32 %and20, 65280
  %or = or i32 %shl, %and16
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.17, i32 noundef %or) #6
  %add22 = add nuw nsw i32 %and12, 1
  %mul23 = mul nuw i32 %add22, %add
  %div45 = lshr i32 %add, 16
  %rem24 = and i32 %add, 63488
  %mul26 = mul nuw nsw i32 %or, %div45
  %mul27 = mul nuw i32 %or, %rem24
  %div2846 = lshr i32 %mul27, 16
  %add29 = add i32 %mul26, %mul23
  %add30 = add i32 %add29, %div2846
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.18, i32 noundef %add30) #6
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %vco_rate.0 = phi i32 [ %mul9, %if.then ], [ %add30, %if.else ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.19, i32 noundef %vco_rate.0) #6
  ret i32 %vco_rate.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dsi_pll_28nm_clk_round_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, ptr nocapture noundef readnone %parent_rate) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %phy = getelementptr inbounds %struct.dsi_pll_28nm, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 4
  %cfg = getelementptr inbounds %struct.msm_dsi_phy, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg, align 4
  %min_pll_rate = getelementptr inbounds %struct.msm_dsi_phy_cfg, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %min_pll_rate to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %min_pll_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %rate)
  %cmp = icmp ugt i32 %5, %rate
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.else

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %max_pll_rate = getelementptr inbounds %struct.msm_dsi_phy_cfg, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %max_pll_rate to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_pll_rate, align 4
  %8 = tail call i32 @llvm.umin.i32(i32 %7, i32 %rate)
  br label %cleanup

cleanup:                                          ; preds = %if.else, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %5, %entry.cleanup_crit_edge ], [ %8, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsi_pll_28nm_clk_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %phy = getelementptr inbounds %struct.dsi_pll_28nm, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %pll_base = getelementptr inbounds %struct.msm_dsi_phy, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %pll_base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pll_base, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 36
  tail call void @msm_writel(i32 noundef 3, ptr noundef %add.ptr3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 479500000, i32 %rate)
  %cmp4.not = icmp ugt i32 %rate, 479500000
  br i1 %cmp4.not, label %for.inc, label %entry.if.end7_crit_edge

entry.if.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

for.inc:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 480000000, i32 %rate)
  %cmp4.not.1 = icmp ugt i32 %rate, 480000000
  br i1 %cmp4.not.1, label %for.inc.1, label %for.inc.if.end7_crit_edge

for.inc.if.end7_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

for.inc.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 575500000, i32 %rate)
  %cmp4.not.2 = icmp ugt i32 %rate, 575500000
  br i1 %cmp4.not.2, label %for.inc.2, label %for.inc.1.if.end7_crit_edge

for.inc.1.if.end7_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

for.inc.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 576000000, i32 %rate)
  %cmp4.not.3 = icmp ugt i32 %rate, 576000000
  br i1 %cmp4.not.3, label %for.inc.3, label %for.inc.2.if.end7_crit_edge

for.inc.2.if.end7_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

for.inc.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 610500000, i32 %rate)
  %cmp4.not.4 = icmp ugt i32 %rate, 610500000
  br i1 %cmp4.not.4, label %for.inc.4, label %for.inc.3.if.end7_crit_edge

for.inc.3.if.end7_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

for.inc.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 659500000, i32 %rate)
  %cmp4.not.5 = icmp ugt i32 %rate, 659500000
  br i1 %cmp4.not.5, label %for.inc.5, label %for.inc.4.if.end7_crit_edge

for.inc.4.if.end7_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

for.inc.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 671500000, i32 %rate)
  %cmp4.not.6 = icmp ugt i32 %rate, 671500000
  br i1 %cmp4.not.6, label %for.inc.6, label %for.inc.5.if.end7_crit_edge

for.inc.5.if.end7_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

for.inc.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 672000000, i32 %rate)
  %cmp4.not.7 = icmp ugt i32 %rate, 672000000
  br i1 %cmp4.not.7, label %for.inc.7, label %for.inc.6.if.end7_crit_edge

for.inc.6.if.end7_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

for.inc.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 708500000, i32 %rate)
  %cmp4.not.8 = icmp ugt i32 %rate, 708500000
  br i1 %cmp4.not.8, label %for.inc.8, label %for.inc.7.if.end7_crit_edge

for.inc.7.if.end7_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

for.inc.8:                                        ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_const_cmp4(i32 750000000, i32 %rate)
  %cmp4.not.9 = icmp ugt i32 %rate, 750000000
  br i1 %cmp4.not.9, label %if.then6, label %for.inc.8.if.end7_crit_edge

for.inc.8.if.end7_crit_edge:                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end7

if.then6:                                         ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.20, i32 noundef %rate) #6
  br label %cleanup

if.end7:                                          ; preds = %for.inc.8.if.end7_crit_edge, %for.inc.7.if.end7_crit_edge, %for.inc.6.if.end7_crit_edge, %for.inc.5.if.end7_crit_edge, %for.inc.4.if.end7_crit_edge, %for.inc.3.if.end7_crit_edge, %for.inc.2.if.end7_crit_edge, %for.inc.1.if.end7_crit_edge, %for.inc.if.end7_crit_edge, %entry.if.end7_crit_edge
  %i.0147.lcssa = phi i32 [ 0, %entry.if.end7_crit_edge ], [ 1, %for.inc.if.end7_crit_edge ], [ 2, %for.inc.1.if.end7_crit_edge ], [ 3, %for.inc.2.if.end7_crit_edge ], [ 4, %for.inc.3.if.end7_crit_edge ], [ 5, %for.inc.4.if.end7_crit_edge ], [ 6, %for.inc.5.if.end7_crit_edge ], [ 7, %for.inc.6.if.end7_crit_edge ], [ 8, %for.inc.7.if.end7_crit_edge ], [ 9, %for.inc.8.if.end7_crit_edge ]
  %resistance = getelementptr [10 x %struct.lpfr_cfg], ptr @lpfr_lut, i32 0, i32 %i.0147.lcssa, i32 1
  %6 = ptrtoint ptr %resistance to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %resistance, align 4
  %add.ptr9 = getelementptr i8, ptr %5, i32 44
  tail call void @msm_writel(i32 noundef %7, ptr noundef %add.ptr9) #6
  %add.ptr10 = getelementptr i8, ptr %5, i32 48
  tail call void @msm_writel(i32 noundef 112, ptr noundef %add.ptr10) #6
  %add.ptr11 = getelementptr i8, ptr %5, i32 52
  tail call void @msm_writel(i32 noundef 21, ptr noundef %add.ptr11) #6
  %rem12 = urem i32 %rate, 19200000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem12)
  %tobool.not = icmp eq i32 %rem12, 0
  %div = udiv i32 %rate, 38400
  %mul = mul nuw nsw i32 %div, 38400
  %div14 = udiv i32 %rate, 19200
  %mul15 = mul nuw nsw i32 %div14, 19200
  %div_fbx1000.0 = select i1 %tobool.not, i32 %div14, i32 %div
  %gen_vco_clk.0 = select i1 %tobool.not, i32 %mul15, i32 %mul
  %not.tobool.not = xor i1 %tobool.not, true
  %frac_n_mode.0 = zext i1 %not.tobool.not to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.21, i32 noundef %frac_n_mode.0) #6
  %rem17.lhs.trunc = trunc i32 %div_fbx1000.0 to i16
  %rem17149 = urem i16 %rem17.lhs.trunc, 1000
  %rem17.zext = zext i16 %rem17149 to i32
  %shl = shl nuw nsw i32 %rem17.zext, 16
  %div18 = udiv i32 %shl, 1000
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.22, i32 noundef %div_fbx1000.0) #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.23, i32 noundef %div18) #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.24, i32 noundef %gen_vco_clk.0) #6
  %add.ptr19 = getelementptr i8, ptr %5, i32 60
  %call = tail call i32 @msm_readl(ptr noundef %add.ptr19) #6
  %and = and i32 %call, -64
  %div29.lhs.trunc = trunc i32 %div_fbx1000.0 to i16
  %div29150 = udiv i16 %div29.lhs.trunc, 1000
  %narrow = add nuw nsw i16 %div29150, 63
  %8 = and i16 %narrow, 63
  %and.i141 = zext i16 %8 to i32
  br i1 %tobool.not, label %if.else28, label %if.then21

if.then21:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %shr = lshr i32 %div18, 8
  %and27 = and i32 %div18, 255
  br label %if.end36

if.else28:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %or33 = or i32 %and.i141, 64
  br label %if.end36

if.end36:                                         ; preds = %if.else28, %if.then21
  %sdm_cfg0.0 = phi i32 [ 0, %if.then21 ], [ %or33, %if.else28 ]
  %call25.pn = phi i32 [ %and.i141, %if.then21 ], [ 0, %if.else28 ]
  %sdm_cfg2.0 = phi i32 [ %and27, %if.then21 ], [ 0, %if.else28 ]
  %sdm_cfg3.0 = phi i32 [ %shr, %if.then21 ], [ 0, %if.else28 ]
  %sdm_cfg1.0 = or i32 %call25.pn, %and
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.25, i32 noundef %sdm_cfg0.0) #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.26, i32 noundef %sdm_cfg1.0) #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.27, i32 noundef %sdm_cfg2.0) #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.28, i32 noundef %sdm_cfg3.0) #6
  %gen_vco_clk.0.frozen = freeze i32 %gen_vco_clk.0
  %div37 = udiv i32 %gen_vco_clk.0.frozen, 256000000
  %9 = mul i32 %div37, 256000000
  %rem38.decomposed = sub i32 %gen_vco_clk.0.frozen, %9
  %div39 = udiv i32 %rem38.decomposed, 1000000
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.29, i32 noundef %div39, i32 noundef %div37) #6
  %add.ptr40 = getelementptr i8, ptr %5, i32 8
  tail call void @msm_writel(i32 noundef 2, ptr noundef %add.ptr40) #6
  %add.ptr41 = getelementptr i8, ptr %5, i32 120
  tail call void @msm_writel(i32 noundef 43, ptr noundef %add.ptr41) #6
  %add.ptr42 = getelementptr i8, ptr %5, i32 124
  tail call void @msm_writel(i32 noundef 6, ptr noundef %add.ptr42) #6
  %add.ptr43 = getelementptr i8, ptr %5, i32 100
  tail call void @msm_writel(i32 noundef 13, ptr noundef %add.ptr43) #6
  tail call void @msm_writel(i32 noundef %sdm_cfg1.0, ptr noundef %add.ptr19) #6
  %add.ptr46 = getelementptr i8, ptr %5, i32 64
  tail call void @msm_writel(i32 noundef %sdm_cfg2.0, ptr noundef %add.ptr46) #6
  %add.ptr48 = getelementptr i8, ptr %5, i32 68
  tail call void @msm_writel(i32 noundef %sdm_cfg3.0, ptr noundef %add.ptr48) #6
  %add.ptr49 = getelementptr i8, ptr %5, i32 72
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr49) #6
  %10 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phy, align 4
  %cfg = getelementptr inbounds %struct.msm_dsi_phy, ptr %11, i32 0, i32 13
  %12 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cfg, align 4
  %quirks = getelementptr inbounds %struct.msm_dsi_phy_cfg, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %quirks, align 4
  %and51 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  %. = select i1 %tobool52.not, i32 214748, i32 214748000
  tail call void %16(i32 noundef %.) #6
  tail call void @msm_writel(i32 noundef %frac_n_mode.0, ptr noundef %5) #6
  %add.ptr57 = getelementptr i8, ptr %5, i32 20
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr57) #6
  %add.ptr58 = getelementptr i8, ptr %5, i32 12
  tail call void @msm_writel(i32 noundef 49, ptr noundef %add.ptr58) #6
  %add.ptr59 = getelementptr i8, ptr %5, i32 56
  tail call void @msm_writel(i32 noundef %sdm_cfg0.0, ptr noundef %add.ptr59) #6
  %add.ptr60 = getelementptr i8, ptr %5, i32 108
  tail call void @msm_writel(i32 noundef 18, ptr noundef %add.ptr60) #6
  %add.ptr61 = getelementptr i8, ptr %5, i32 132
  tail call void @msm_writel(i32 noundef 48, ptr noundef %add.ptr61) #6
  %add.ptr62 = getelementptr i8, ptr %5, i32 136
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr62) #6
  %add.ptr63 = getelementptr i8, ptr %5, i32 140
  tail call void @msm_writel(i32 noundef 96, ptr noundef %add.ptr63) #6
  %add.ptr64 = getelementptr i8, ptr %5, i32 144
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr64) #6
  %add.ptr66 = getelementptr i8, ptr %5, i32 148
  tail call void @msm_writel(i32 noundef %div39, ptr noundef %add.ptr66) #6
  %add.ptr68 = getelementptr i8, ptr %5, i32 152
  tail call void @msm_writel(i32 noundef %div37, ptr noundef %add.ptr68) #6
  %add.ptr69 = getelementptr i8, ptr %5, i32 156
  tail call void @msm_writel(i32 noundef 32, ptr noundef %add.ptr69) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %if.then6
  %retval.0 = phi i32 [ -22, %if.then6 ], [ 0, %if.end36 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_readl(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsi_pll_28nm_vco_prepare_hpm(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %phy = getelementptr inbounds %struct.dsi_pll_28nm, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 4
  %pll_on = getelementptr inbounds %struct.msm_dsi_phy, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %pll_on to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pll_on, align 4, !range !87
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.for.body_crit_edge, label %entry.cleanup_crit_edge, !prof !89

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.017 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %4 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %pll_base.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %pll_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pll_base.i, align 4
  %id.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %5, i32 0, i32 9
  %10 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.10, i32 noundef %11) #6
  %12 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phy, align 4
  %pll_base.i.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %pll_base.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pll_base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 104
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748) #6
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748) #6
  %add.ptr.i = getelementptr i8, ptr %9, i32 32
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748) #6
  tail call void @msm_writel(i32 noundef 5, ptr noundef %add.ptr.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 42949600) #6
  tail call void @msm_writel(i32 noundef 7, ptr noundef %add.ptr.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 107374000) #6
  tail call void @msm_writel(i32 noundef 15, ptr noundef %add.ptr.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 128848800) #6
  %add.ptr9.i = getelementptr i8, ptr %9, i32 100
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.4.i.for.body.i_crit_edge, %for.body
  %i.075.i = phi i32 [ 0, %for.body ], [ %inc.i, %if.end.i.4.i.for.body.i_crit_edge ]
  tail call void @msm_writel(i32 noundef 12, ptr noundef %add.ptr9.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 21474800) #6
  tail call void @msm_writel(i32 noundef 13, ptr noundef %add.ptr9.i) #6
  %23 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %phy, align 4
  %pll_base.i67.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %pll_base.i67.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pll_base.i67.i, align 4
  %add.ptr.i68.i = getelementptr i8, ptr %26, i32 192
  %call.i.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i68.i) #6
  %and.i.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool1.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool1.not.i.i, label %if.end.i.i, label %for.body.i.if.then4_crit_edge

for.body.i.if.then4_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

if.end.i.i:                                       ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %.val.i.i = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %.val.i.i(i32 noundef 21474800) #6
  %27 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %phy, align 4
  %pll_base.i67.1.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %pll_base.i67.1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pll_base.i67.1.i, align 4
  %add.ptr.i68.1.i = getelementptr i8, ptr %30, i32 192
  %call.i.1.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i68.1.i) #6
  %and.i.1.i = and i32 %call.i.1.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.1.i)
  %tobool1.not.i.1.i = icmp eq i32 %and.i.1.i, 0
  br i1 %tobool1.not.i.1.i, label %if.end.i.1.i, label %if.end.i.i.if.then4_crit_edge

if.end.i.i.if.then4_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

if.end.i.1.i:                                     ; preds = %if.end.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %.val.i.1.i = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %.val.i.1.i(i32 noundef 21474800) #6
  %31 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %phy, align 4
  %pll_base.i67.2.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %pll_base.i67.2.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pll_base.i67.2.i, align 4
  %add.ptr.i68.2.i = getelementptr i8, ptr %34, i32 192
  %call.i.2.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i68.2.i) #6
  %and.i.2.i = and i32 %call.i.2.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.2.i)
  %tobool1.not.i.2.i = icmp eq i32 %and.i.2.i, 0
  br i1 %tobool1.not.i.2.i, label %if.end.i.2.i, label %if.end.i.1.i.if.then4_crit_edge

if.end.i.1.i.if.then4_crit_edge:                  ; preds = %if.end.i.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

if.end.i.2.i:                                     ; preds = %if.end.i.1.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %.val.i.2.i = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %.val.i.2.i(i32 noundef 21474800) #6
  %35 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %phy, align 4
  %pll_base.i67.3.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %36, i32 0, i32 2
  %37 = ptrtoint ptr %pll_base.i67.3.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pll_base.i67.3.i, align 4
  %add.ptr.i68.3.i = getelementptr i8, ptr %38, i32 192
  %call.i.3.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i68.3.i) #6
  %and.i.3.i = and i32 %call.i.3.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.3.i)
  %tobool1.not.i.3.i = icmp eq i32 %and.i.3.i, 0
  br i1 %tobool1.not.i.3.i, label %if.end.i.3.i, label %if.end.i.2.i.if.then4_crit_edge

if.end.i.2.i.if.then4_crit_edge:                  ; preds = %if.end.i.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

if.end.i.3.i:                                     ; preds = %if.end.i.2.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %.val.i.3.i = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %.val.i.3.i(i32 noundef 21474800) #6
  %39 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %phy, align 4
  %pll_base.i67.4.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %pll_base.i67.4.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pll_base.i67.4.i, align 4
  %add.ptr.i68.4.i = getelementptr i8, ptr %42, i32 192
  %call.i.4.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i68.4.i) #6
  %and.i.4.i = and i32 %call.i.4.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.4.i)
  %tobool1.not.i.4.i = icmp eq i32 %and.i.4.i, 0
  br i1 %tobool1.not.i.4.i, label %if.end.i.4.i, label %if.end.i.3.i.if.then4_crit_edge

if.end.i.3.i.if.then4_crit_edge:                  ; preds = %if.end.i.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then4

if.end.i.4.i:                                     ; preds = %if.end.i.3.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %.val.i.4.i = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %.val.i.4.i(i32 noundef 21474800) #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.15) #6
  %43 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %phy, align 4
  %pll_base.i70.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %pll_base.i70.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %pll_base.i70.i, align 4
  %add.ptr.i71.i = getelementptr i8, ptr %46, i32 104
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i71.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %47 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %47(i32 noundef 214748) #6
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i71.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %48 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %48(i32 noundef 214748) #6
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 214748) #6
  tail call void @msm_writel(i32 noundef 5, ptr noundef %add.ptr.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %50 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %50(i32 noundef 42949600) #6
  tail call void @msm_writel(i32 noundef 7, ptr noundef %add.ptr.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %51 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %51(i32 noundef 53687000) #6
  tail call void @msm_writel(i32 noundef 5, ptr noundef %add.ptr.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 42949600) #6
  tail call void @msm_writel(i32 noundef 7, ptr noundef %add.ptr.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %53 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %53(i32 noundef 107374000) #6
  tail call void @msm_writel(i32 noundef 15, ptr noundef %add.ptr.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 128848800) #6
  %inc.i = add nuw nsw i32 %i.075.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 2
  br i1 %exitcond.not.i, label %for.inc, label %if.end.i.4.i.for.body.i_crit_edge

if.end.i.4.i.for.body.i_crit_edge:                ; preds = %if.end.i.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.then4:                                         ; preds = %if.end.i.3.i.if.then4_crit_edge, %if.end.i.2.i.if.then4_crit_edge, %if.end.i.1.i.if.then4_crit_edge, %if.end.i.i.if.then4_crit_edge, %for.body.i.if.then4_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.14) #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.30) #6
  %55 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %phy, align 4
  %pll_on6 = getelementptr inbounds %struct.msm_dsi_phy, ptr %56, i32 0, i32 18
  %57 = ptrtoint ptr %pll_on6 to i32
  call void @__asan_store1_noabort(i32 %57)
  store i8 1, ptr %pll_on6, align 4
  br label %cleanup

for.inc:                                          ; preds = %if.end.i.4.i
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1.i, ptr noundef nonnull @.str, ptr noundef nonnull @.str.11) #6
  %inc = add nuw nsw i32 %i.017, 1
  %exitcond.not = icmp eq i32 %inc, 3
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then4 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_dsi_dphy_timing_calc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !36, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !76}
!llvm.module.flags = !{!78, !79, !80, !81, !82, !83, !84, !85}
!llvm.ident = !{!86}

!0 = !{ptr @dsi_phy_28nm_hpm_cfgs, !1, !"dsi_phy_28nm_hpm_cfgs", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm.c", i32 770, i32 30}
!2 = !{ptr @dsi_phy_28nm_hpm_famb_cfgs, !3, !"dsi_phy_28nm_hpm_famb_cfgs", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm.c", i32 791, i32 30}
!4 = !{ptr @dsi_phy_28nm_lp_cfgs, !5, !"dsi_phy_28nm_lp_cfgs", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm.c", i32 812, i32 30}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm.c", i32 613, i32 3}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm.c", i32 524, i32 37}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm.c", i32 533, i32 2}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm.c", i32 540, i32 25}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm.c", i32 546, i32 25}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm.c", i32 556, i32 25}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm.c", i32 564, i32 25}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm.c", i32 574, i32 25}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm.c", i32 585, i32 25}
!25 = !{ptr @clk_ops_dsi_pll_28nm_vco_lp, !26, !"clk_ops_dsi_pll_28nm_vco_lp", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm.c", i32 465, i32 29}
!27 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm.c", i32 389, i32 2}
!29 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm.c", i32 419, i32 3}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm.c", i32 423, i32 2}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm.c", i32 93, i32 2}
!35 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm.c", i32 269, i32 3}
!39 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm.c", i32 275, i32 3}
!41 = !{ptr @.str.18, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm.c", i32 279, i32 3}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm.c", i32 282, i32 2}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm.c", i32 137, i32 3}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm.c", i32 160, i32 2}
!49 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm.c", i32 165, i32 2}
!51 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm.c", i32 166, i32 2}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm.c", i32 168, i32 2}
!55 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm.c", i32 188, i32 2}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm.c", i32 189, i32 2}
!59 = !{ptr @.str.27, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm.c", i32 190, i32 2}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm.c", i32 191, i32 2}
!63 = !{ptr @.str.29, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm.c", i32 195, i32 2}
!65 = !{ptr @lpfr_lut, !66, !"lpfr_lut", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm.c", i32 48, i32 30}
!67 = !{ptr @clk_ops_dsi_pll_28nm_vco_hpm, !68, !"clk_ops_dsi_pll_28nm_vco_hpm", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm.c", i32 456, i32 29}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm.c", i32 356, i32 3}
!71 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm.c", i32 710, i32 2}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm.c", i32 713, i32 3}
!75 = !{ptr @__func__.dsi_28nm_phy_enable, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm.c", i32 505, i32 3}
!78 = !{i32 1, !"wchar_size", i32 2}
!79 = !{i32 1, !"min_enum_size", i32 4}
!80 = !{i32 8, !"branch-target-enforcement", i32 0}
!81 = !{i32 8, !"sign-return-address", i32 0}
!82 = !{i32 8, !"sign-return-address-all", i32 0}
!83 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!84 = !{i32 7, !"uwtable", i32 1}
!85 = !{i32 7, !"frame-pointer", i32 2}
!86 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!87 = !{i8 0, i8 2}
!88 = !{i64 2157393176}
!89 = !{!"branch_weights", i32 2000, i32 1}
!90 = !{!"branch_weights", i32 1, i32 2000}
