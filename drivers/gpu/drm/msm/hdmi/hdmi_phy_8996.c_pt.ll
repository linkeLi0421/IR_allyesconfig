; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.hdmi_phy_cfg = type { i32, ptr, ptr, ptr, i32, ptr, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.hdmi_pll_8996 = type { ptr, %struct.clk_hw, ptr, [4 x ptr] }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.hdmi_phy = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hdmi_8996_phy_pll_reg_cfg = type { [4 x i32], [4 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], i32 }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hdmi_pll\00", [23 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"HDMI_PLL\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"*ERROR* failed to map pll base\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hdmi_tx_l%d\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"HDMI_TX_L%d\00", [20 x i8] zeroinitializer }, align 32
@pll_init = internal constant { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.7, ptr @hdmi_8996_pll_ops, ptr @hdmi_pll_parents, ptr null, ptr null, i8 1, i32 8 }, [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"*ERROR* failed to register pll clock\0A\00", [58 x i8] zeroinitializer }, align 32
@hdmi_phy_8996_reg_names = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.55, ptr @.str.56], [24 x i8] zeroinitializer }, align 32
@hdmi_phy_8996_clk_names = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.57, ptr @.str.58], [24 x i8] zeroinitializer }, align 32
@msm_hdmi_phy_8996_cfg = dso_local constant { %struct.hdmi_phy_cfg, [36 x i8] } { %struct.hdmi_phy_cfg { i32 3, ptr null, ptr null, ptr @hdmi_phy_8996_reg_names, i32 2, ptr @hdmi_phy_8996_clk_names, i32 2 }, [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hdmipll\00", [24 x i8] zeroinitializer }, align 32
@hdmi_8996_pll_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @hdmi_8996_pll_prepare, ptr @hdmi_8996_pll_unprepare, ptr null, ptr null, ptr null, ptr null, ptr @hdmi_8996_pll_is_enabled, ptr null, ptr null, ptr null, ptr @hdmi_8996_pll_recalc_rate, ptr @hdmi_8996_pll_round_rate, ptr null, ptr null, ptr null, ptr @hdmi_8996_pll_set_clk_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@hdmi_pll_parents = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.54], [28 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Waiting for PLL lock\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"HDMI PLL is %slocked\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"*not* \00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Waiting for PHY ready\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"PHY is %sready\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"PLL calculation failed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Disabling PHY\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"VCO freq: %llu\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"fdata: %llu\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pix_clk: %lu\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tmds clk: %llu\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"HSCLK_SEL: %d\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DEC_START: %llu\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DIV_FRAC_START: %llu\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"PLL_CPCTRL: %u\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PLL_RCTRL: %u\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"PLL_CCTRL: %u\0A\00", [17 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"INTEGLOOP_GAIN: %u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"TX_BAND: %d\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"PLL_CMP: %u\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"com_svs_mode_clk_sel = 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"com_hsclk_sel = 0x%x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"com_lock_cmp_en = 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"com_pll_cctrl_mode0 = 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"com_pll_rctrl_mode0 = 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"com_cp_ctrl_mode0 = 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"com_dec_start_mode0 = 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"com_div_frac_start1_mode0 = 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"com_div_frac_start2_mode0 = 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"com_div_frac_start3_mode0 = 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"com_integloop_gain0_mode0 = 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"com_integloop_gain1_mode0 = 0x%x\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"com_lock_cmp1_mode0 = 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"com_lock_cmp2_mode0 = 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"com_lock_cmp3_mode0 = 0x%x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"com_core_clk_en = 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"com_coreclk_div = 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"phy_mode = 0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tx_l0_lane_mode = 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"tx_l2_lane_mode = 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"tx_l%d_tx_band = 0x%x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tx_l%d_tx_drv_lvl = 0x%x\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"tx_l%d_tx_emp_post1_lvl = 0x%x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tx_l%d_vmode_ctrl1 = 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tx_l%d_vmode_ctrl2 = 0x%x\0A\00", [37 x i8] zeroinitializer }, align 32
@__const.pll_get_post_div.ratio = private unnamed_addr constant [15 x i32] [i32 2, i32 3, i32 4, i32 5, i32 6, i32 9, i32 10, i32 12, i32 14, i32 15, i32 20, i32 21, i32 25, i32 28, i32 35], align 4
@__const.pll_get_post_div.hs_divsel = private unnamed_addr constant [15 x i32] [i32 0, i32 4, i32 8, i32 12, i32 1, i32 5, i32 2, i32 9, i32 3, i32 13, i32 10, i32 7, i32 14, i32 11, i32 15], align 4
@__const.pll_get_post_div.tx_band_sel = private unnamed_addr constant [4 x i32] [i32 0, i32 1, i32 2, i32 3], align 4
@.str.54 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"xo\00", [29 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"vddio\00", [26 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vcca\00", [27 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"iface\00", [26 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ref\00", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 719, i32 44 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 719, i32 56 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 721, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 728, i32 32 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 729, i32 34 }
@___asan_gen_.77 = private unnamed_addr constant [9 x i8] c"pll_init\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 698, i32 35 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 741, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant [24 x i8] c"hdmi_phy_8996_reg_names\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 748, i32 27 }
@___asan_gen_.86 = private unnamed_addr constant [24 x i8] c"hdmi_phy_8996_clk_names\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 753, i32 27 }
@___asan_gen_.89 = private unnamed_addr constant [22 x i8] c"msm_hdmi_phy_8996_cfg\00", align 1
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 757, i32 27 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 699, i32 10 }
@___asan_gen_.95 = private unnamed_addr constant [18 x i8] c"hdmi_8996_pll_ops\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 685, i32 29 }
@___asan_gen_.98 = private unnamed_addr constant [17 x i8] c"hdmi_pll_parents\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 694, i32 27 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 574, i32 2 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 587, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 550, i32 2 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 562, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 407, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 412, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 270, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 271, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 272, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 273, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 274, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 275, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 276, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 277, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 278, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 279, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 280, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 281, i32 2 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 282, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 361, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 362, i32 2 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 363, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 364, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 365, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 366, i32 2 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 367, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 368, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 369, i32 2 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 370, i32 2 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 371, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 372, i32 2 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 373, i32 2 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 374, i32 2 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 375, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 376, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 377, i32 2 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 378, i32 2 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 380, i32 2 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 381, i32 2 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 384, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 385, i32 3 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 386, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 388, i32 3 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 389, i32 3 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 695, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 749, i32 2 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 750, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 754, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.252 = private constant [44 x i8] c"../drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c\00", align 1
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.252, i32 754, i32 11 }
@llvm.compiler.used = appending global [65 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @pll_init, ptr @.str.6, ptr @hdmi_phy_8996_reg_names, ptr @hdmi_phy_8996_clk_names, ptr @msm_hdmi_phy_8996_cfg, ptr @.str.7, ptr @hdmi_8996_pll_ops, ptr @hdmi_pll_parents, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58], section "llvm.metadata"
@0 = internal global [65 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_init to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_phy_8996_reg_names to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_phy_8996_clk_names to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msm_hdmi_phy_8996_cfg to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_8996_pll_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_pll_parents to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @msm_hdmi_pll_8996_init(ptr noundef %pdev) local_unnamed_addr #0 align 64 {
entry:
  %name = alloca [32 x i8], align 1
  %label = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 36, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup25_crit_edge, label %if.end

entry.cleanup25_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup25

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %pdev, ptr %call.i, align 4
  %call3 = tail call ptr @msm_ioremap(ptr noundef %pdev, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1) #6
  %mmio_qserdes_com = getelementptr inbounds %struct.hdmi_pll_8996, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %mmio_qserdes_com to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3, ptr %mmio_qserdes_com, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %for.body

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #6
  br label %cleanup25

for.body:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name) #6
  %2 = call ptr @memset(ptr %name, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %label) #6
  %3 = call ptr @memset(ptr %label, i32 255, i32 32)
  %call8 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 32, ptr noundef nonnull @.str.4, i32 noundef 0)
  %call10 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %label, i32 noundef 32, ptr noundef nonnull @.str.5, i32 noundef 0)
  %call13 = call ptr @msm_ioremap(ptr noundef %pdev, ptr noundef nonnull %name, ptr noundef nonnull %label) #6
  %arrayidx = getelementptr %struct.hdmi_pll_8996, ptr %call.i, i32 0, i32 3, i32 0
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call13, ptr %arrayidx, align 4
  %cmp.i48 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i48, label %for.body.if.then17_crit_edge, label %for.inc.critedge

for.body.if.then17_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then17

if.then17:                                        ; preds = %for.inc.critedge.2.if.then17_crit_edge, %for.inc.critedge.1.if.then17_crit_edge, %for.inc.critedge.if.then17_crit_edge, %for.body.if.then17_crit_edge
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %label) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name) #6
  br label %cleanup25

for.inc.critedge:                                 ; preds = %for.body
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %label) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name) #6
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name) #6
  %5 = call ptr @memset(ptr %name, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %label) #6
  %6 = call ptr @memset(ptr %label, i32 255, i32 32)
  %call8.1 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 32, ptr noundef nonnull @.str.4, i32 noundef 1)
  %call10.1 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %label, i32 noundef 32, ptr noundef nonnull @.str.5, i32 noundef 1)
  %call13.1 = call ptr @msm_ioremap(ptr noundef %pdev, ptr noundef nonnull %name, ptr noundef nonnull %label) #6
  %arrayidx.1 = getelementptr %struct.hdmi_pll_8996, ptr %call.i, i32 0, i32 3, i32 1
  %7 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call13.1, ptr %arrayidx.1, align 4
  %cmp.i48.1 = icmp ugt ptr %call13.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i48.1, label %for.inc.critedge.if.then17_crit_edge, label %for.inc.critedge.1

for.inc.critedge.if.then17_crit_edge:             ; preds = %for.inc.critedge
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then17

for.inc.critedge.1:                               ; preds = %for.inc.critedge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %label) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name) #6
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name) #6
  %8 = call ptr @memset(ptr %name, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %label) #6
  %9 = call ptr @memset(ptr %label, i32 255, i32 32)
  %call8.2 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 32, ptr noundef nonnull @.str.4, i32 noundef 2)
  %call10.2 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %label, i32 noundef 32, ptr noundef nonnull @.str.5, i32 noundef 2)
  %call13.2 = call ptr @msm_ioremap(ptr noundef %pdev, ptr noundef nonnull %name, ptr noundef nonnull %label) #6
  %arrayidx.2 = getelementptr %struct.hdmi_pll_8996, ptr %call.i, i32 0, i32 3, i32 2
  %10 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call13.2, ptr %arrayidx.2, align 4
  %cmp.i48.2 = icmp ugt ptr %call13.2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i48.2, label %for.inc.critedge.1.if.then17_crit_edge, label %for.inc.critedge.2

for.inc.critedge.1.if.then17_crit_edge:           ; preds = %for.inc.critedge.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then17

for.inc.critedge.2:                               ; preds = %for.inc.critedge.1
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %label) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name) #6
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %name) #6
  %11 = call ptr @memset(ptr %name, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %label) #6
  %12 = call ptr @memset(ptr %label, i32 255, i32 32)
  %call8.3 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name, i32 noundef 32, ptr noundef nonnull @.str.4, i32 noundef 3)
  %call10.3 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %label, i32 noundef 32, ptr noundef nonnull @.str.5, i32 noundef 3)
  %call13.3 = call ptr @msm_ioremap(ptr noundef %pdev, ptr noundef nonnull %name, ptr noundef nonnull %label) #6
  %arrayidx.3 = getelementptr %struct.hdmi_pll_8996, ptr %call.i, i32 0, i32 3, i32 3
  %13 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call13.3, ptr %arrayidx.3, align 4
  %cmp.i48.3 = icmp ugt ptr %call13.3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i48.3, label %for.inc.critedge.2.if.then17_crit_edge, label %for.inc.critedge.3

for.inc.critedge.2.if.then17_crit_edge:           ; preds = %for.inc.critedge.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then17

for.inc.critedge.3:                               ; preds = %for.inc.critedge.2
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %label) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %name) #6
  %clk_hw = getelementptr inbounds %struct.hdmi_pll_8996, ptr %call.i, i32 0, i32 1
  %init = getelementptr inbounds %struct.hdmi_pll_8996, ptr %call.i, i32 0, i32 1, i32 2
  %14 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @pll_init, ptr %init, align 4
  %call21 = call ptr @devm_clk_register(ptr noundef %dev1, ptr noundef %clk_hw) #6
  %cmp.i49 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i49, label %if.then23, label %for.inc.critedge.3.cleanup25_crit_edge

for.inc.critedge.3.cleanup25_crit_edge:           ; preds = %for.inc.critedge.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup25

if.then23:                                        ; preds = %for.inc.critedge.3
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.6) #6
  br label %cleanup25

cleanup25:                                        ; preds = %if.then23, %for.inc.critedge.3.cleanup25_crit_edge, %if.then17, %if.then6, %entry.cleanup25_crit_edge
  %retval.2 = phi i32 [ -12, %if.then6 ], [ -22, %if.then23 ], [ -12, %entry.cleanup25_crit_edge ], [ -12, %if.then17 ], [ 0, %for.inc.critedge.3.cleanup25_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @msm_ioremap(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdmi_8996_pll_prepare(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %mmio.i = getelementptr inbounds %struct.hdmi_phy, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i, align 4
  tail call void @msm_writel(i32 noundef 1, ptr noundef %5) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %6 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %6(i32 noundef 21474800) #6
  %7 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mmio.i, align 4
  tail call void @msm_writel(i32 noundef 25, ptr noundef %8) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %9 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %9(i32 noundef 21474800) #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.8) #6
  %mmio_qserdes_com.i.i = getelementptr i8, ptr %hw, i32 12
  br label %while.body.i

while.body.i:                                     ; preds = %cond.false.i.while.body.i_crit_edge, %entry
  %dec11.i = phi i32 [ 99, %entry ], [ %dec.i, %cond.false.i.while.body.i_crit_edge ]
  %10 = ptrtoint ptr %mmio_qserdes_com.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mmio_qserdes_com.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 400
  %call.i.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i.i) #6
  %and.i = and i32 %call.i.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %cond.false.i, label %hdmi_8996_pll_lock_status.exit

cond.false.i:                                     ; preds = %while.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 32212200) #6
  %dec.i = add nsw i32 %dec11.i, -1
  %tobool.not.i = icmp eq i32 %dec11.i, 0
  br i1 %tobool.not.i, label %hdmi_8996_pll_lock_status.exit.thread, label %cond.false.i.while.body.i_crit_edge

cond.false.i.while.body.i_crit_edge:              ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

hdmi_8996_pll_lock_status.exit.thread:            ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.11) #6
  br label %cleanup

hdmi_8996_pll_lock_status.exit:                   ; preds = %while.body.i
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10) #6
  %arrayidx.i = getelementptr i8, ptr %hw, i32 16
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 104
  tail call void @msm_writel(i32 noundef 111, ptr noundef %add.ptr.i) #6
  %arrayidx.i.1 = getelementptr i8, ptr %hw, i32 20
  %15 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i.1, align 4
  %add.ptr.i.1 = getelementptr i8, ptr %16, i32 104
  tail call void @msm_writel(i32 noundef 111, ptr noundef %add.ptr.i.1) #6
  %arrayidx.i.2 = getelementptr i8, ptr %hw, i32 24
  %17 = ptrtoint ptr %arrayidx.i.2 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i.2, align 4
  %add.ptr.i.2 = getelementptr i8, ptr %18, i32 104
  tail call void @msm_writel(i32 noundef 111, ptr noundef %add.ptr.i.2) #6
  %arrayidx.i.3 = getelementptr i8, ptr %hw, i32 28
  %19 = ptrtoint ptr %arrayidx.i.3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i.3, align 4
  %add.ptr.i.3 = getelementptr i8, ptr %20, i32 104
  tail call void @msm_writel(i32 noundef 111, ptr noundef %add.ptr.i.3) #6
  %21 = ptrtoint ptr %mmio_qserdes_com.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %mmio_qserdes_com.i.i, align 4
  %add.ptr.i26 = getelementptr i8, ptr %22, i32 28
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i26) #6
  %23 = ptrtoint ptr %mmio_qserdes_com.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mmio_qserdes_com.i.i, align 4
  %add.ptr.i28 = getelementptr i8, ptr %24, i32 32
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i28) #6
  %25 = ptrtoint ptr %mmio_qserdes_com.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mmio_qserdes_com.i.i, align 4
  %add.ptr.i30 = getelementptr i8, ptr %26, i32 36
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i30) #6
  %27 = ptrtoint ptr %mmio_qserdes_com.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %mmio_qserdes_com.i.i, align 4
  %add.ptr.i32 = getelementptr i8, ptr %28, i32 40
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i32) #6
  %29 = ptrtoint ptr %mmio_qserdes_com.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %mmio_qserdes_com.i.i, align 4
  %add.ptr.i34 = getelementptr i8, ptr %30, i32 16
  tail call void @msm_writel(i32 noundef 2, ptr noundef %add.ptr.i34) #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.12) #6
  br label %while.body.i39

while.body.i39:                                   ; preds = %cond.false.i42.while.body.i39_crit_edge, %hdmi_8996_pll_lock_status.exit
  %dec15.i = phi i32 [ 99, %hdmi_8996_pll_lock_status.exit ], [ %dec.i40, %cond.false.i42.while.body.i39_crit_edge ]
  %31 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i.i35 = getelementptr i8, ptr %32, i32 156
  %call.i.i36 = tail call i32 @msm_readl(ptr noundef %add.ptr.i.i35) #6
  %and.i37 = and i32 %call.i.i36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i37)
  %tobool1.not.i38 = icmp eq i32 %and.i37, 0
  br i1 %tobool1.not.i38, label %cond.false.i42, label %if.end5

cond.false.i42:                                   ; preds = %while.body.i39
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 32212200) #6
  %dec.i40 = add nsw i32 %dec15.i, -1
  %tobool.not.i41 = icmp eq i32 %dec15.i, 0
  br i1 %tobool.not.i41, label %hdmi_8996_phy_ready_status.exit.thread, label %cond.false.i42.while.body.i39_crit_edge

cond.false.i42.while.body.i39_crit_edge:          ; preds = %cond.false.i42
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i39

hdmi_8996_phy_ready_status.exit.thread:           ; preds = %cond.false.i42
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.11) #6
  br label %cleanup

if.end5:                                          ; preds = %while.body.i39
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.10) #6
  %34 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %mmio.i, align 4
  tail call void @msm_writel(i32 noundef 24, ptr noundef %35) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748) #6
  %37 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mmio.i, align 4
  tail call void @msm_writel(i32 noundef 25, ptr noundef %38) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %hdmi_8996_phy_ready_status.exit.thread, %hdmi_8996_pll_lock_status.exit.thread
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hdmi_8996_pll_unprepare(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  %mmio.i = getelementptr inbounds %struct.hdmi_phy, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio.i, align 4
  tail call void @msm_writel(i32 noundef 6, ptr noundef %5) #6
  tail call void @usleep_range_state(i32 noundef 100, i32 noundef 150, i32 noundef 2) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdmi_8996_pll_is_enabled(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio_qserdes_com.i = getelementptr i8, ptr %hw, i32 12
  %0 = ptrtoint ptr %mmio_qserdes_com.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio_qserdes_com.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 400
  %call.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #6
  %and = and i32 %call.i, 1
  ret i32 %and
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdmi_8996_pll_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #0 align 64 {
if.end188:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mmio_qserdes_com.i = getelementptr i8, ptr %hw, i32 12
  %0 = ptrtoint ptr %mmio_qserdes_com.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mmio_qserdes_com.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 76
  %call.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #6
  %2 = ptrtoint ptr %mmio_qserdes_com.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mmio_qserdes_com.i, align 4
  %add.ptr.i275 = getelementptr i8, ptr %3, i32 80
  %call.i276 = tail call i32 @msm_readl(ptr noundef %add.ptr.i275) #6
  %4 = ptrtoint ptr %mmio_qserdes_com.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %mmio_qserdes_com.i, align 4
  %add.ptr.i278 = getelementptr i8, ptr %5, i32 84
  %call.i279 = tail call i32 @msm_readl(ptr noundef %add.ptr.i278) #6
  %shl = shl i32 %call.i276, 8
  %or = or i32 %shl, %call.i
  %shl3 = shl i32 %call.i279, 16
  %or4 = or i32 %or, %shl3
  %add = add i32 %or4, 1
  %conv.i = zext i32 %add to i64
  %conv1.i = zext i32 %parent_rate to i64
  %mul.i = mul nuw nsw i64 %conv1.i, 10
  %mul2.i = mul i64 %mul.i, %conv.i
  %shr.i = lshr i64 %mul2.i, 11
  %6 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %shr.i, i64 3689348814741910323) #9, !srcloc !136
  %7 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %shr.i, i64 %6) #9, !srcloc !137
  %extract.t273 = trunc i64 %7 to i32
  ret i32 %extract.t273
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hdmi_8996_pll_round_rate(ptr nocapture noundef readnone %hw, i32 noundef %rate, ptr nocapture noundef readnone %parent_rate) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = tail call i32 @llvm.umin.i32(i32 %rate, i32 600000000)
  %1 = tail call i32 @llvm.umax.i32(i32 %0, i32 25000000)
  ret i32 %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hdmi_8996_pll_set_clk_rate(ptr noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  %vco_freq.i.i = alloca [60 x i64], align 8
  %cfg = alloca %struct.hdmi_8996_phy_pll_reg_cfg, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %hw, i32 -4
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %driver_data.i.i.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 204, ptr nonnull %cfg) #6
  %4 = call ptr @memset(ptr %cfg, i32 0, i32 204)
  %conv.i = zext i32 %rate to i64
  %mul.i = mul nuw nsw i64 %conv.i, 10
  %shr.i = lshr i32 %rate, 2
  call void @llvm.lifetime.start.p0(i64 480, ptr nonnull %vco_freq.i.i) #6
  %5 = call ptr @memset(ptr %vco_freq.i.i, i32 255, i32 480)
  br label %for.cond1.preheader.i.i

for.cond1.preheader.i.i:                          ; preds = %for.cond1.preheader.i.i.for.cond1.preheader.i.i_crit_edge, %entry
  %i.068.i.i = phi i32 [ 0, %entry ], [ %inc8.i.i, %for.cond1.preheader.i.i.for.cond1.preheader.i.i_crit_edge ]
  %vco_freq_index.067.i.i = phi i32 [ 0, %entry ], [ %inc.3.i.i, %for.cond1.preheader.i.i.for.cond1.preheader.i.i_crit_edge ]
  %arrayidx.i.i = getelementptr [15 x i32], ptr @__const.pll_get_post_div.ratio, i32 0, i32 %i.068.i.i
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i.i, align 4
  %conv.i.i = zext i32 %7 to i64
  %mul.i.i = mul i64 %mul.i, %conv.i.i
  %inc.i.i = or i32 %vco_freq_index.067.i.i, 1
  %arrayidx5.i.i = getelementptr [60 x i64], ptr %vco_freq.i.i, i32 0, i32 %vco_freq_index.067.i.i
  %8 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %mul.i.i, ptr %arrayidx5.i.i, align 8
  %shl.1.i.i = shl i32 %7, 1
  %conv.1.i.i = zext i32 %shl.1.i.i to i64
  %mul.1.i.i = mul i64 %mul.i, %conv.1.i.i
  %inc.1.i.i = or i32 %vco_freq_index.067.i.i, 2
  %arrayidx5.1.i.i = getelementptr [60 x i64], ptr %vco_freq.i.i, i32 0, i32 %inc.i.i
  %9 = ptrtoint ptr %arrayidx5.1.i.i to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %mul.1.i.i, ptr %arrayidx5.1.i.i, align 8
  %shl.2.i.i = shl i32 %7, 2
  %conv.2.i.i = zext i32 %shl.2.i.i to i64
  %mul.2.i.i = mul i64 %mul.i, %conv.2.i.i
  %inc.2.i.i = or i32 %vco_freq_index.067.i.i, 3
  %arrayidx5.2.i.i = getelementptr [60 x i64], ptr %vco_freq.i.i, i32 0, i32 %inc.1.i.i
  %10 = ptrtoint ptr %arrayidx5.2.i.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %mul.2.i.i, ptr %arrayidx5.2.i.i, align 8
  %shl.3.i.i = shl i32 %7, 3
  %conv.3.i.i = zext i32 %shl.3.i.i to i64
  %mul.3.i.i = mul i64 %mul.i, %conv.3.i.i
  %inc.3.i.i = add nuw nsw i32 %vco_freq_index.067.i.i, 4
  %arrayidx5.3.i.i = getelementptr [60 x i64], ptr %vco_freq.i.i, i32 0, i32 %inc.2.i.i
  %11 = ptrtoint ptr %arrayidx5.3.i.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %mul.3.i.i, ptr %arrayidx5.3.i.i, align 8
  %inc8.i.i = add nuw nsw i32 %i.068.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc8.i.i, 15
  br i1 %exitcond.not.i.i, label %for.body13.i.preheader.i, label %for.cond1.preheader.i.i.for.cond1.preheader.i.i_crit_edge

for.cond1.preheader.i.i.for.cond1.preheader.i.i_crit_edge: ; preds = %for.cond1.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond1.preheader.i.i

for.body13.i.preheader.i:                         ; preds = %for.cond1.preheader.i.i
  %conv2.i = zext i32 %shr.i to i64
  br label %for.body13.i.i

for.body13.i.i:                                   ; preds = %for.body13.i.i.for.body13.i.i_crit_edge, %for.body13.i.preheader.i
  %i.171.i.i = phi i32 [ %inc20.i.i, %for.body13.i.i.for.body13.i.i_crit_edge ], [ 0, %for.body13.i.preheader.i ]
  %vco_optimal_index.070.i.i = phi i32 [ %vco_optimal_index.1.i.i, %for.body13.i.i.for.body13.i.i_crit_edge ], [ -1, %for.body13.i.preheader.i ]
  %vco_optimal.069.i.i = phi i64 [ %vco_optimal.1.i.i, %for.body13.i.i.for.body13.i.i_crit_edge ], [ 12000000000, %for.body13.i.preheader.i ]
  %arrayidx14.i.i = getelementptr [60 x i64], ptr %vco_freq.i.i, i32 0, i32 %i.171.i.i
  %12 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load8_noabort(i32 %12)
  %13 = load i64, ptr %arrayidx14.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 8000000000, i64 %13)
  %cmp15.i.i = icmp ult i64 %13, 8000000000
  call void @__sanitizer_cov_trace_cmp8(i64 %13, i64 %vco_optimal.069.i.i)
  %cmp17.not.i.i = icmp ugt i64 %13, %vco_optimal.069.i.i
  %or.cond.i.i = select i1 %cmp15.i.i, i1 true, i1 %cmp17.not.i.i
  %vco_optimal.1.i.i = select i1 %or.cond.i.i, i64 %vco_optimal.069.i.i, i64 %13
  %vco_optimal_index.1.i.i = select i1 %or.cond.i.i, i32 %vco_optimal_index.070.i.i, i32 %i.171.i.i
  %inc20.i.i = add nuw nsw i32 %i.171.i.i, 1
  %exitcond74.not.i.i = icmp eq i32 %inc20.i.i, 60
  br i1 %exitcond74.not.i.i, label %for.end21.i.i, label %for.body13.i.i.for.body13.i.i_crit_edge

for.body13.i.i.for.body13.i.i_crit_edge:          ; preds = %for.body13.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body13.i.i

for.end21.i.i:                                    ; preds = %for.body13.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 3400000000, i64 %mul.i)
  %cmp.i = icmp ugt i64 %mul.i, 3400000000
  %tmds_clk.0.i = select i1 %cmp.i, i64 %conv2.i, i64 %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %vco_optimal_index.1.i.i)
  %cmp22.i.i = icmp eq i32 %vco_optimal_index.1.i.i, -1
  br i1 %cmp22.i.i, label %if.then24.i.i, label %for.end21.i.i.if.end5.i_crit_edge

for.end21.i.i.if.end5.i_crit_edge:                ; preds = %for.end21.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i

if.then24.i.i:                                    ; preds = %for.end21.i.i
  %shr.1.i.i = lshr exact i64 %mul.i, 1
  br label %for.cond1.preheader.1.i.i

for.cond1.preheader.1.i.i:                        ; preds = %for.cond1.preheader.1.i.i.for.cond1.preheader.1.i.i_crit_edge, %if.then24.i.i
  %i.068.1.i.i = phi i32 [ 0, %if.then24.i.i ], [ %inc8.1.i.i, %for.cond1.preheader.1.i.i.for.cond1.preheader.1.i.i_crit_edge ]
  %vco_freq_index.067.1.i.i = phi i32 [ 0, %if.then24.i.i ], [ %inc.3.1.i.i, %for.cond1.preheader.1.i.i.for.cond1.preheader.1.i.i_crit_edge ]
  %arrayidx.1.i.i = getelementptr [15 x i32], ptr @__const.pll_get_post_div.ratio, i32 0, i32 %i.068.1.i.i
  %14 = ptrtoint ptr %arrayidx.1.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.1.i.i, align 4
  %conv.175.i.i = zext i32 %15 to i64
  %mul.176.i.i = mul i64 %shr.1.i.i, %conv.175.i.i
  %inc.177.i.i = or i32 %vco_freq_index.067.1.i.i, 1
  %arrayidx5.178.i.i = getelementptr [60 x i64], ptr %vco_freq.i.i, i32 0, i32 %vco_freq_index.067.1.i.i
  %16 = ptrtoint ptr %arrayidx5.178.i.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 %mul.176.i.i, ptr %arrayidx5.178.i.i, align 8
  %shl.1.1.i.i = shl i32 %15, 1
  %conv.1.1.i.i = zext i32 %shl.1.1.i.i to i64
  %mul.1.1.i.i = mul i64 %shr.1.i.i, %conv.1.1.i.i
  %inc.1.1.i.i = or i32 %vco_freq_index.067.1.i.i, 2
  %arrayidx5.1.1.i.i = getelementptr [60 x i64], ptr %vco_freq.i.i, i32 0, i32 %inc.177.i.i
  %17 = ptrtoint ptr %arrayidx5.1.1.i.i to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %mul.1.1.i.i, ptr %arrayidx5.1.1.i.i, align 8
  %shl.2.1.i.i = shl i32 %15, 2
  %conv.2.1.i.i = zext i32 %shl.2.1.i.i to i64
  %mul.2.1.i.i = mul i64 %shr.1.i.i, %conv.2.1.i.i
  %inc.2.1.i.i = or i32 %vco_freq_index.067.1.i.i, 3
  %arrayidx5.2.1.i.i = getelementptr [60 x i64], ptr %vco_freq.i.i, i32 0, i32 %inc.1.1.i.i
  %18 = ptrtoint ptr %arrayidx5.2.1.i.i to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %mul.2.1.i.i, ptr %arrayidx5.2.1.i.i, align 8
  %shl.3.1.i.i = shl i32 %15, 3
  %conv.3.1.i.i = zext i32 %shl.3.1.i.i to i64
  %mul.3.1.i.i = mul i64 %shr.1.i.i, %conv.3.1.i.i
  %inc.3.1.i.i = add nuw nsw i32 %vco_freq_index.067.1.i.i, 4
  %arrayidx5.3.1.i.i = getelementptr [60 x i64], ptr %vco_freq.i.i, i32 0, i32 %inc.2.1.i.i
  %19 = ptrtoint ptr %arrayidx5.3.1.i.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %mul.3.1.i.i, ptr %arrayidx5.3.1.i.i, align 8
  %inc8.1.i.i = add nuw nsw i32 %i.068.1.i.i, 1
  %exitcond.1.not.i.i = icmp eq i32 %inc8.1.i.i, 15
  br i1 %exitcond.1.not.i.i, label %for.cond1.preheader.1.i.i.for.body13.1.i.i_crit_edge, label %for.cond1.preheader.1.i.i.for.cond1.preheader.1.i.i_crit_edge

for.cond1.preheader.1.i.i.for.cond1.preheader.1.i.i_crit_edge: ; preds = %for.cond1.preheader.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond1.preheader.1.i.i

for.cond1.preheader.1.i.i.for.body13.1.i.i_crit_edge: ; preds = %for.cond1.preheader.1.i.i
  br label %for.body13.1.i.i

for.body13.1.i.i:                                 ; preds = %for.body13.1.i.i.for.body13.1.i.i_crit_edge, %for.cond1.preheader.1.i.i.for.body13.1.i.i_crit_edge
  %i.171.1.i.i = phi i32 [ %inc20.1.i.i, %for.body13.1.i.i.for.body13.1.i.i_crit_edge ], [ 0, %for.cond1.preheader.1.i.i.for.body13.1.i.i_crit_edge ]
  %vco_optimal_index.070.1.i.i = phi i32 [ %vco_optimal_index.1.1.i.i, %for.body13.1.i.i.for.body13.1.i.i_crit_edge ], [ -1, %for.cond1.preheader.1.i.i.for.body13.1.i.i_crit_edge ]
  %vco_optimal.069.1.i.i = phi i64 [ %vco_optimal.1.1.i.i, %for.body13.1.i.i.for.body13.1.i.i_crit_edge ], [ 12000000000, %for.cond1.preheader.1.i.i.for.body13.1.i.i_crit_edge ]
  %arrayidx14.1.i.i = getelementptr [60 x i64], ptr %vco_freq.i.i, i32 0, i32 %i.171.1.i.i
  %20 = ptrtoint ptr %arrayidx14.1.i.i to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %arrayidx14.1.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 8000000000, i64 %21)
  %cmp15.1.i.i = icmp ult i64 %21, 8000000000
  call void @__sanitizer_cov_trace_cmp8(i64 %21, i64 %vco_optimal.069.1.i.i)
  %cmp17.not.1.i.i = icmp ugt i64 %21, %vco_optimal.069.1.i.i
  %or.cond.1.i.i = select i1 %cmp15.1.i.i, i1 true, i1 %cmp17.not.1.i.i
  %vco_optimal.1.1.i.i = select i1 %or.cond.1.i.i, i64 %vco_optimal.069.1.i.i, i64 %21
  %vco_optimal_index.1.1.i.i = select i1 %or.cond.1.i.i, i32 %vco_optimal_index.070.1.i.i, i32 %i.171.1.i.i
  %inc20.1.i.i = add nuw nsw i32 %i.171.1.i.i, 1
  %exitcond74.1.not.i.i = icmp eq i32 %inc20.1.i.i, 60
  br i1 %exitcond74.1.not.i.i, label %for.end21.1.i.i, label %for.body13.1.i.i.for.body13.1.i.i_crit_edge

for.body13.1.i.i.for.body13.1.i.i_crit_edge:      ; preds = %for.body13.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body13.1.i.i

for.end21.1.i.i:                                  ; preds = %for.body13.1.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %vco_optimal_index.1.1.i.i)
  %cmp22.1.i.i = icmp eq i32 %vco_optimal_index.1.1.i.i, -1
  br i1 %cmp22.1.i.i, label %if.then, label %for.end21.1.i.i.if.end5.i_crit_edge

for.end21.1.i.i.if.end5.i_crit_edge:              ; preds = %for.end21.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i

if.end5.i:                                        ; preds = %for.end21.1.i.i.if.end5.i_crit_edge, %for.end21.i.i.if.end5.i_crit_edge
  %vco_optimal.1.lcssa.lcssa.i.i = phi i64 [ %vco_optimal.1.i.i, %for.end21.i.i.if.end5.i_crit_edge ], [ %vco_optimal.1.1.i.i, %for.end21.1.i.i.if.end5.i_crit_edge ]
  %vco_optimal_index.1.lcssa.lcssa.i.i = phi i32 [ %vco_optimal_index.1.i.i, %for.end21.i.i.if.end5.i_crit_edge ], [ %vco_optimal_index.1.1.i.i, %for.end21.1.i.i.if.end5.i_crit_edge ]
  %vco_optimal_index.1.lcssa.lcssa.i.i.frozen = freeze i32 %vco_optimal_index.1.lcssa.lcssa.i.i
  %div.i.i = sdiv i32 %vco_optimal_index.1.lcssa.lcssa.i.i.frozen, 4
  %22 = mul i32 %div.i.i, 4
  %rem.i.i.decomposed = sub i32 %vco_optimal_index.1.lcssa.lcssa.i.i.frozen, %22
  %arrayidx28.i.i = getelementptr [4 x i32], ptr @__const.pll_get_post_div.tx_band_sel, i32 0, i32 %rem.i.i.decomposed
  %23 = ptrtoint ptr %arrayidx28.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx28.i.i, align 4
  %arrayidx30.i.i = getelementptr [15 x i32], ptr @__const.pll_get_post_div.ratio, i32 0, i32 %div.i.i
  %25 = ptrtoint ptr %arrayidx30.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx30.i.i, align 4
  %arrayidx32.i.i = getelementptr [15 x i32], ptr @__const.pll_get_post_div.hs_divsel, i32 0, i32 %div.i.i
  %27 = ptrtoint ptr %arrayidx32.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx32.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 480, ptr nonnull %vco_freq.i.i) #6
  %mul6.i = shl i32 %parent_rate, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %vco_optimal.1.lcssa.lcssa.i.i)
  %cmp181.i = icmp ult i64 %vco_optimal.1.lcssa.lcssa.i.i, 4294967296
  br i1 %cmp181.i, label %if.then185.i, label %if.else191.i, !prof !138

if.then185.i:                                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv186.i = trunc i64 %vco_optimal.1.lcssa.lcssa.i.i to i32
  %div189.i = udiv i32 %conv186.i, %mul6.i
  %conv190.i = zext i32 %div189.i to i64
  br label %if.else398.i

if.else191.i:                                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  %29 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul6.i, i64 %vco_optimal.1.lcssa.lcssa.i.i) #9, !srcloc !139
  %asmresult1.i.i = extractvalue { i64, i64 } %29, 1
  br label %if.else398.i

if.else398.i:                                     ; preds = %if.else191.i, %if.then185.i
  %dec_start.0.i = phi i64 [ %conv190.i, %if.then185.i ], [ %asmresult1.i.i, %if.else191.i ]
  %mul198.i = shl i64 %vco_optimal.1.lcssa.lcssa.i.i, 20
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul198.i)
  %cmp400.i = icmp ult i64 %mul198.i, 4294967296
  br i1 %cmp400.i, label %if.then408.i, label %if.else414.i, !prof !138

if.then408.i:                                     ; preds = %if.else398.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv409.i = trunc i64 %mul198.i to i32
  %conv409.i.frozen = freeze i32 %conv409.i
  %div412.i = udiv i32 %conv409.i.frozen, %mul6.i
  %30 = mul i32 %div412.i, %mul6.i
  %rem410.i.decomposed = sub i32 %conv409.i.frozen, %30
  %conv413.i = zext i32 %div412.i to i64
  br label %if.end418.i

if.else414.i:                                     ; preds = %if.else398.i
  call void @__sanitizer_cov_trace_pc() #8
  %31 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul6.i, i64 %mul198.i) #9, !srcloc !139
  %asmresult.i1219.i = extractvalue { i64, i64 } %31, 0
  %asmresult1.i1220.i = extractvalue { i64, i64 } %31, 1
  %shr.i1221.i = lshr i64 %asmresult.i1219.i, 32
  %conv.i1222.i = trunc i64 %shr.i1221.i to i32
  br label %if.end418.i

if.end418.i:                                      ; preds = %if.else414.i, %if.then408.i
  %frac_start.0.i = phi i64 [ %conv413.i, %if.then408.i ], [ %asmresult1.i1220.i, %if.else414.i ]
  %__rem200.0.i = phi i32 [ %rem410.i.decomposed, %if.then408.i ], [ %conv.i1222.i, %if.else414.i ]
  %mul420.neg.i = mul i64 %dec_start.0.i, -1048576
  %sub421.i = add i64 %mul420.neg.i, %frac_start.0.i
  %shr422.i = lshr exact i32 %mul6.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %__rem200.0.i, i32 %shr422.i)
  %cmp423.i = icmp ugt i32 %__rem200.0.i, %shr422.i
  %inc.i = zext i1 %cmp423.i to i64
  %spec.select.i = add i64 %sub421.i, %inc.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %spec.select.i)
  %cmp.not.i1223.i = icmp eq i64 %spec.select.i, 0
  br i1 %cmp.not.i1223.i, label %if.end418.i.pll_get_cpctrl.exit.i_crit_edge, label %if.then.i.i

if.end418.i.pll_get_cpctrl.exit.i_crit_edge:      ; preds = %if.end418.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pll_get_cpctrl.exit.i

if.then.i.i:                                      ; preds = %if.end418.i
  call void @__sanitizer_cov_trace_pc() #8
  %div.i1224.i = udiv i32 %parent_rate, 20
  %div1.i.i = udiv i32 11000000, %div.i1224.i
  br label %pll_get_cpctrl.exit.i

pll_get_cpctrl.exit.i:                            ; preds = %if.then.i.i, %if.end418.i.pll_get_cpctrl.exit.i_crit_edge
  %retval.0.i1229.i = phi i32 [ 1, %if.end418.i.pll_get_cpctrl.exit.i_crit_edge ], [ 40, %if.then.i.i ]
  %retval.0.i1227.i = phi i32 [ 16, %if.end418.i.pll_get_cpctrl.exit.i_crit_edge ], [ 22, %if.then.i.i ]
  %retval.0.i1225.i = phi i32 [ 35, %if.end418.i.pll_get_cpctrl.exit.i_crit_edge ], [ %div1.i.i, %if.then.i.i ]
  call void @__sanitizer_cov_trace_const_cmp8(i64 1499999999, i64 %mul.i)
  %cmp.i.i = icmp ugt i64 %mul.i, 1499999999
  %mul.i1230.i = shl i32 %parent_rate, 6
  %div.i1231.i = udiv i32 %mul.i1230.i, 19200000
  %mul2.i.i = mul i32 %parent_rate, 1022
  %div3.i.i = udiv i32 %mul2.i.i, 100
  %base.0.in.i.i = select i1 %cmp.not.i1223.i, i32 %div3.i.i, i32 %div.i1231.i
  %base.0.i.i = zext i32 %base.0.in.i.i to i64
  %sh_prom.i.i = select i1 %cmp.i.i, i64 1, i64 2
  %shl.i.i = shl nuw nsw i64 %base.0.i.i, %sh_prom.i.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 2047, i64 %shl.i.i)
  %cmp5.i.i = icmp ult i64 %shl.i.i, 2047
  %extract.t.i.i = trunc i64 %shl.i.i to i32
  %cond7.off0.i.i = select i1 %cmp5.i.i, i32 %extract.t.i.i, i32 2046
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %vco_optimal.1.lcssa.lcssa.i.i)
  %cmp633.i = icmp ult i64 %vco_optimal.1.lcssa.lcssa.i.i, 4294967296
  br i1 %cmp633.i, label %if.then641.i, label %if.else647.i, !prof !138

if.then641.i:                                     ; preds = %pll_get_cpctrl.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv642.i = trunc i64 %vco_optimal.1.lcssa.lcssa.i.i to i32
  %div645.i = udiv i32 %conv642.i, %26
  %conv646.i = zext i32 %div645.i to i64
  br label %if.end651.i

if.else647.i:                                     ; preds = %pll_get_cpctrl.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %32 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %26, i64 %vco_optimal.1.lcssa.lcssa.i.i) #9, !srcloc !139
  %asmresult1.i1257.i = extractvalue { i64, i64 } %32, 1
  br label %if.end651.i

if.end651.i:                                      ; preds = %if.else647.i, %if.then641.i
  %fdata.0.i = phi i64 [ %conv646.i, %if.then641.i ], [ %asmresult1.i1257.i, %if.else647.i ]
  %mul.i1260.i = shl i64 %fdata.0.i, 10
  %mul1.i.i = mul i32 %parent_rate, 10
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul.i1260.i)
  %cmp167.i.i = icmp ult i64 %mul.i1260.i, 4294967296
  br i1 %cmp167.i.i, label %if.then171.i.i, label %if.else177.i.i, !prof !138

if.then171.i.i:                                   ; preds = %if.end651.i
  call void @__sanitizer_cov_trace_pc() #8
  %conv172.i.i = trunc i64 %mul.i1260.i to i32
  %conv172.i.i.frozen = freeze i32 %conv172.i.i
  %div175.i.i = udiv i32 %conv172.i.i.frozen, %mul1.i.i
  %33 = mul i32 %div175.i.i, %mul1.i.i
  %rem173.i.i.decomposed = sub i32 %conv172.i.i.frozen, %33
  %conv176.i.i = zext i32 %div175.i.i to i64
  br label %pll_get_pll_cmp.exit.i

if.else177.i.i:                                   ; preds = %if.end651.i
  call void @__sanitizer_cov_trace_pc() #8
  %34 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul1.i.i, i64 %mul.i1260.i) #9, !srcloc !139
  %asmresult.i272.i.i = extractvalue { i64, i64 } %34, 0
  %asmresult1.i.i.i = extractvalue { i64, i64 } %34, 1
  %shr.i.i.i = lshr i64 %asmresult.i272.i.i, 32
  %conv.i.i.i = trunc i64 %shr.i.i.i to i32
  br label %pll_get_pll_cmp.exit.i

pll_get_pll_cmp.exit.i:                           ; preds = %if.else177.i.i, %if.then171.i.i
  %dividend.0.i.i = phi i64 [ %conv176.i.i, %if.then171.i.i ], [ %asmresult1.i.i.i, %if.else177.i.i ]
  %__rem.0.i.i = phi i32 [ %rem173.i.i.decomposed, %if.then171.i.i ], [ %conv.i.i.i, %if.else177.i.i ]
  %shr183.i.i = lshr exact i32 %mul1.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %__rem.0.i.i, i32 %shr183.i.i)
  %cmp184.i.i = icmp ugt i32 %__rem.0.i.i, %shr183.i.i
  %inc.i1267.i = zext i1 %cmp184.i.i to i64
  %spec.select.i.i = add i64 %dividend.0.i.i, %inc.i1267.i
  %35 = trunc i64 %spec.select.i.i to i32
  %conv189.i.i = add i32 %35, -1
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.16, i64 noundef %vco_optimal.1.lcssa.lcssa.i.i) #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.17, i64 noundef %fdata.0.i) #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.18, i32 noundef %rate) #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.19, i64 noundef %tmds_clk.0.i) #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.20, i32 noundef %28) #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.21, i64 noundef %dec_start.0.i) #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.22, i64 noundef %spec.select.i) #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.23, i32 noundef %retval.0.i1225.i) #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.24, i32 noundef %retval.0.i1227.i) #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.25, i32 noundef %retval.0.i1229.i) #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.26, i32 noundef %cond7.off0.i.i) #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.27, i32 noundef %24) #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.28, i32 noundef %conv189.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp8(i64 1500000000, i64 %mul.i)
  %cmp655.i = icmp ugt i64 %mul.i, 1500000000
  %spec.select1409.i = select i1 %cmp655.i, i32 1, i32 2
  %36 = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 2
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %spec.select1409.i, ptr %36, align 4
  %or662.i = or i32 %28, 32
  %com_hsclk_sel.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 3
  %38 = ptrtoint ptr %com_hsclk_sel.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %or662.i, ptr %com_hsclk_sel.i, align 4
  %com_pll_cctrl_mode0.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 4
  %39 = ptrtoint ptr %com_pll_cctrl_mode0.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %retval.0.i1229.i, ptr %com_pll_cctrl_mode0.i, align 4
  %com_pll_rctrl_mode0.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 5
  %40 = ptrtoint ptr %com_pll_rctrl_mode0.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %retval.0.i1227.i, ptr %com_pll_rctrl_mode0.i, align 4
  %com_cp_ctrl_mode0.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 6
  %41 = ptrtoint ptr %com_cp_ctrl_mode0.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %retval.0.i1225.i, ptr %com_cp_ctrl_mode0.i, align 4
  %conv663.i = trunc i64 %dec_start.0.i to i32
  %com_dec_start_mode0.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 7
  %42 = ptrtoint ptr %com_dec_start_mode0.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %conv663.i, ptr %com_dec_start_mode0.i, align 4
  %43 = trunc i64 %spec.select.i to i32
  %conv665.i = and i32 %43, 255
  %com_div_frac_start1_mode0.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 8
  %44 = ptrtoint ptr %com_div_frac_start1_mode0.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %conv665.i, ptr %com_div_frac_start1_mode0.i, align 4
  %45 = lshr i32 %43, 8
  %conv668.i = and i32 %45, 255
  %com_div_frac_start2_mode0.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 9
  %46 = ptrtoint ptr %com_div_frac_start2_mode0.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %conv668.i, ptr %com_div_frac_start2_mode0.i, align 4
  %47 = lshr i32 %43, 16
  %conv671.i = and i32 %47, 15
  %com_div_frac_start3_mode0.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 10
  %48 = ptrtoint ptr %com_div_frac_start3_mode0.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %conv671.i, ptr %com_div_frac_start3_mode0.i, align 4
  %and672.i = and i32 %cond7.off0.i.i, 254
  %com_integloop_gain0_mode0.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 11
  %49 = ptrtoint ptr %com_integloop_gain0_mode0.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %and672.i, ptr %com_integloop_gain0_mode0.i, align 4
  %and673.i = lshr i32 %cond7.off0.i.i, 8
  %shr674.i = and i32 %and673.i, 15
  %com_integloop_gain1_mode0.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 12
  %50 = ptrtoint ptr %com_integloop_gain1_mode0.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %shr674.i, ptr %com_integloop_gain1_mode0.i, align 4
  %and675.i = and i32 %conv189.i.i, 255
  %com_lock_cmp1_mode0.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 14
  %51 = ptrtoint ptr %com_lock_cmp1_mode0.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %and675.i, ptr %com_lock_cmp1_mode0.i, align 4
  %and676.i = lshr i32 %conv189.i.i, 8
  %shr677.i = and i32 %and676.i, 255
  %com_lock_cmp2_mode0.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 15
  %52 = ptrtoint ptr %com_lock_cmp2_mode0.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %shr677.i, ptr %com_lock_cmp2_mode0.i, align 4
  %and678.i = lshr i32 %conv189.i.i, 16
  %shr679.i = and i32 %and678.i, 3
  %com_lock_cmp3_mode0.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 16
  %53 = ptrtoint ptr %com_lock_cmp3_mode0.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %shr679.i, ptr %com_lock_cmp3_mode0.i, align 4
  %com_lock_cmp_en.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 13
  %54 = ptrtoint ptr %com_lock_cmp_en.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 0, ptr %com_lock_cmp_en.i, align 4
  %com_core_clk_en.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 17
  %55 = ptrtoint ptr %com_core_clk_en.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 44, ptr %com_core_clk_en.i, align 4
  %com_coreclk_div.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 18
  %56 = ptrtoint ptr %com_coreclk_div.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 5, ptr %com_coreclk_div.i, align 4
  %cond682.i = select i1 %cmp.i, i32 16, i32 0
  %phy_mode.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 26
  %57 = ptrtoint ptr %phy_mode.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %cond682.i, ptr %phy_mode.i, align 4
  %com_vco_tune_ctrl.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 19
  %58 = ptrtoint ptr %com_vco_tune_ctrl.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %com_vco_tune_ctrl.i, align 4
  %arrayidx.i = getelementptr inbounds [4 x i32], ptr %cfg, i32 0, i32 2
  %59 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 67, ptr %arrayidx.i, align 4
  %60 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 67, ptr %cfg, align 4
  %tx_lx_hp_pd_enables.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 25
  %arrayidx685.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 25, i32 2
  %61 = ptrtoint ptr %arrayidx685.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 12, ptr %arrayidx685.i, align 4
  %arrayidx687.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 25, i32 1
  %62 = ptrtoint ptr %arrayidx687.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 12, ptr %arrayidx687.i, align 4
  %63 = ptrtoint ptr %tx_lx_hp_pd_enables.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 12, ptr %tx_lx_hp_pd_enables.i, align 4
  %arrayidx691.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 25, i32 3
  %64 = ptrtoint ptr %arrayidx691.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 3, ptr %arrayidx691.i, align 4
  %add695.i = add i32 %24, 4
  %arrayidx696.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 1, i32 0
  %65 = ptrtoint ptr %arrayidx696.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %add695.i, ptr %arrayidx696.i, align 4
  %arrayidx696.1.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 1, i32 1
  %66 = ptrtoint ptr %arrayidx696.1.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %add695.i, ptr %arrayidx696.1.i, align 4
  %arrayidx696.2.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 1, i32 2
  %67 = ptrtoint ptr %arrayidx696.2.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %add695.i, ptr %arrayidx696.2.i, align 4
  %arrayidx696.3.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 1, i32 3
  %68 = ptrtoint ptr %arrayidx696.3.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %add695.i, ptr %arrayidx696.3.i, align 4
  br i1 %cmp.i, label %if.then700.i, label %if.else729.i

if.then700.i:                                     ; preds = %pll_get_pll_cmp.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %tx_lx_tx_drv_lvl.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 20
  %arrayidx701.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 20, i32 2
  %69 = ptrtoint ptr %arrayidx701.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 37, ptr %arrayidx701.i, align 4
  %arrayidx703.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 20, i32 1
  %70 = ptrtoint ptr %arrayidx703.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 37, ptr %arrayidx703.i, align 4
  %71 = ptrtoint ptr %tx_lx_tx_drv_lvl.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 37, ptr %tx_lx_tx_drv_lvl.i, align 4
  %arrayidx707.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 20, i32 3
  %72 = ptrtoint ptr %arrayidx707.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 34, ptr %arrayidx707.i, align 4
  %tx_lx_tx_emp_post1_lvl.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 21
  %arrayidx708.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 21, i32 2
  %73 = ptrtoint ptr %arrayidx708.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 35, ptr %arrayidx708.i, align 4
  %arrayidx710.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 21, i32 1
  %74 = ptrtoint ptr %arrayidx710.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 35, ptr %arrayidx710.i, align 4
  %75 = ptrtoint ptr %tx_lx_tx_emp_post1_lvl.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 35, ptr %tx_lx_tx_emp_post1_lvl.i, align 4
  %arrayidx714.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 21, i32 3
  %76 = ptrtoint ptr %arrayidx714.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 39, ptr %arrayidx714.i, align 4
  %tx_lx_vmode_ctrl1.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 22
  %tx_lx_vmode_ctrl2.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 23
  %arrayidx722.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 23, i32 2
  %77 = call ptr @memset(ptr %tx_lx_vmode_ctrl1.i, i32 0, i32 16)
  %78 = ptrtoint ptr %arrayidx722.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 13, ptr %arrayidx722.i, align 4
  %arrayidx724.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 23, i32 1
  %79 = ptrtoint ptr %arrayidx724.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 13, ptr %arrayidx724.i, align 4
  %80 = ptrtoint ptr %tx_lx_vmode_ctrl2.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 13, ptr %tx_lx_vmode_ctrl2.i, align 4
  br label %if.end

if.else729.i:                                     ; preds = %pll_get_pll_cmp.exit.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 750000000, i64 %mul.i)
  %cmp730.i = icmp ugt i64 %mul.i, 750000000
  %arrayidx738.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 20, i32 0
  br i1 %cmp730.i, label %for.body736.preheader.i, label %for.body758.preheader.i

for.body758.preheader.i:                          ; preds = %if.else729.i
  call void @__sanitizer_cov_trace_pc() #8
  %81 = ptrtoint ptr %arrayidx738.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 32, ptr %arrayidx738.i, align 4
  %arrayidx762.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 21, i32 0
  %82 = ptrtoint ptr %arrayidx762.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 32, ptr %arrayidx762.i, align 4
  %arrayidx764.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 22, i32 0
  %83 = ptrtoint ptr %arrayidx764.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 0, ptr %arrayidx764.i, align 4
  %arrayidx766.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 23, i32 0
  %84 = ptrtoint ptr %arrayidx766.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 14, ptr %arrayidx766.i, align 4
  %arrayidx760.1.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 20, i32 1
  %85 = ptrtoint ptr %arrayidx760.1.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 32, ptr %arrayidx760.1.i, align 4
  %arrayidx762.1.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 21, i32 1
  %86 = ptrtoint ptr %arrayidx762.1.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 32, ptr %arrayidx762.1.i, align 4
  %arrayidx764.1.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 22, i32 1
  %87 = ptrtoint ptr %arrayidx764.1.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %arrayidx764.1.i, align 4
  %arrayidx766.1.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 23, i32 1
  %88 = ptrtoint ptr %arrayidx766.1.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 14, ptr %arrayidx766.1.i, align 4
  %arrayidx760.2.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 20, i32 2
  %89 = ptrtoint ptr %arrayidx760.2.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 32, ptr %arrayidx760.2.i, align 4
  %arrayidx762.2.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 21, i32 2
  %90 = ptrtoint ptr %arrayidx762.2.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 32, ptr %arrayidx762.2.i, align 4
  %arrayidx764.2.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 22, i32 2
  %91 = ptrtoint ptr %arrayidx764.2.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %arrayidx764.2.i, align 4
  %arrayidx766.2.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 23, i32 2
  %92 = ptrtoint ptr %arrayidx766.2.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 14, ptr %arrayidx766.2.i, align 4
  %arrayidx760.3.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 20, i32 3
  %93 = ptrtoint ptr %arrayidx760.3.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 32, ptr %arrayidx760.3.i, align 4
  %arrayidx762.3.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 21, i32 3
  %94 = ptrtoint ptr %arrayidx762.3.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 32, ptr %arrayidx762.3.i, align 4
  %arrayidx764.3.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 22, i32 3
  %95 = ptrtoint ptr %arrayidx764.3.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %arrayidx764.3.i, align 4
  br label %if.end

for.body736.preheader.i:                          ; preds = %if.else729.i
  call void @__sanitizer_cov_trace_pc() #8
  %96 = ptrtoint ptr %arrayidx738.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 37, ptr %arrayidx738.i, align 4
  %arrayidx740.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 21, i32 0
  %97 = ptrtoint ptr %arrayidx740.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 35, ptr %arrayidx740.i, align 4
  %arrayidx742.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 22, i32 0
  %98 = ptrtoint ptr %arrayidx742.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %arrayidx742.i, align 4
  %arrayidx738.1.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 20, i32 1
  %99 = ptrtoint ptr %arrayidx738.1.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 37, ptr %arrayidx738.1.i, align 4
  %arrayidx740.1.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 21, i32 1
  %100 = ptrtoint ptr %arrayidx740.1.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 35, ptr %arrayidx740.1.i, align 4
  %arrayidx742.1.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 22, i32 1
  %101 = ptrtoint ptr %arrayidx742.1.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %arrayidx742.1.i, align 4
  %arrayidx738.2.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 20, i32 2
  %102 = ptrtoint ptr %arrayidx738.2.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 37, ptr %arrayidx738.2.i, align 4
  %arrayidx740.2.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 21, i32 2
  %103 = ptrtoint ptr %arrayidx740.2.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 35, ptr %arrayidx740.2.i, align 4
  %arrayidx742.2.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 22, i32 2
  %104 = ptrtoint ptr %arrayidx742.2.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 0, ptr %arrayidx742.2.i, align 4
  %arrayidx738.3.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 20, i32 3
  %105 = ptrtoint ptr %arrayidx738.3.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 37, ptr %arrayidx738.3.i, align 4
  %arrayidx740.3.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 21, i32 3
  %106 = ptrtoint ptr %arrayidx740.3.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 35, ptr %arrayidx740.3.i, align 4
  %arrayidx742.3.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 22, i32 3
  %107 = ptrtoint ptr %arrayidx742.3.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 0, ptr %arrayidx742.3.i, align 4
  %tx_lx_vmode_ctrl2746.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 23
  %arrayidx747.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 23, i32 2
  %108 = ptrtoint ptr %arrayidx747.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 13, ptr %arrayidx747.i, align 4
  %arrayidx749.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 23, i32 1
  %109 = ptrtoint ptr %arrayidx749.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 13, ptr %arrayidx749.i, align 4
  %110 = ptrtoint ptr %tx_lx_vmode_ctrl2746.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 13, ptr %tx_lx_vmode_ctrl2746.i, align 4
  br label %if.end

if.then:                                          ; preds = %for.end21.1.i.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 480, ptr nonnull %vco_freq.i.i) #6
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.14) #6
  br label %cleanup

if.end:                                           ; preds = %for.body736.preheader.i, %for.body758.preheader.i, %if.then700.i
  %.sink.i = phi i32 [ 14, %for.body758.preheader.i ], [ 0, %for.body736.preheader.i ], [ 0, %if.then700.i ]
  %arrayidx766.3.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 23, i32 3
  %111 = ptrtoint ptr %arrayidx766.3.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %.sink.i, ptr %arrayidx766.3.i, align 4
  %112 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %36, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.29, i32 noundef %113) #6
  %114 = ptrtoint ptr %com_hsclk_sel.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %com_hsclk_sel.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.30, i32 noundef %115) #6
  %116 = ptrtoint ptr %com_lock_cmp_en.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %com_lock_cmp_en.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.31, i32 noundef %117) #6
  %118 = ptrtoint ptr %com_pll_cctrl_mode0.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %com_pll_cctrl_mode0.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.32, i32 noundef %119) #6
  %120 = ptrtoint ptr %com_pll_rctrl_mode0.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %com_pll_rctrl_mode0.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.33, i32 noundef %121) #6
  %122 = ptrtoint ptr %com_cp_ctrl_mode0.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %com_cp_ctrl_mode0.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.34, i32 noundef %123) #6
  %124 = ptrtoint ptr %com_dec_start_mode0.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %com_dec_start_mode0.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.35, i32 noundef %125) #6
  %126 = ptrtoint ptr %com_div_frac_start1_mode0.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %com_div_frac_start1_mode0.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.36, i32 noundef %127) #6
  %128 = ptrtoint ptr %com_div_frac_start2_mode0.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %com_div_frac_start2_mode0.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.37, i32 noundef %129) #6
  %130 = ptrtoint ptr %com_div_frac_start3_mode0.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %com_div_frac_start3_mode0.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.38, i32 noundef %131) #6
  %132 = ptrtoint ptr %com_integloop_gain0_mode0.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %com_integloop_gain0_mode0.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.39, i32 noundef %133) #6
  %134 = ptrtoint ptr %com_integloop_gain1_mode0.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %com_integloop_gain1_mode0.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.40, i32 noundef %135) #6
  %136 = ptrtoint ptr %com_lock_cmp1_mode0.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %com_lock_cmp1_mode0.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.41, i32 noundef %137) #6
  %138 = ptrtoint ptr %com_lock_cmp2_mode0.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %com_lock_cmp2_mode0.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.42, i32 noundef %139) #6
  %140 = ptrtoint ptr %com_lock_cmp3_mode0.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %com_lock_cmp3_mode0.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.43, i32 noundef %141) #6
  %142 = ptrtoint ptr %com_core_clk_en.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %com_core_clk_en.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.44, i32 noundef %143) #6
  %144 = ptrtoint ptr %com_coreclk_div.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %com_coreclk_div.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.45, i32 noundef %145) #6
  %146 = ptrtoint ptr %phy_mode.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %phy_mode.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.46, i32 noundef %147) #6
  %148 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %cfg, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.47, i32 noundef %149) #6
  %150 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %arrayidx.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.48, i32 noundef %151) #6
  %152 = ptrtoint ptr %arrayidx696.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx696.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.49, i32 noundef 0, i32 noundef %153) #6
  %arrayidx801.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 20, i32 0
  %154 = ptrtoint ptr %arrayidx801.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %arrayidx801.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.50, i32 noundef 0, i32 noundef %155) #6
  %arrayidx803.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 21, i32 0
  %156 = ptrtoint ptr %arrayidx803.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %arrayidx803.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.51, i32 noundef 0, i32 noundef %157) #6
  %arrayidx805.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 22, i32 0
  %158 = ptrtoint ptr %arrayidx805.i to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %arrayidx805.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.52, i32 noundef 0, i32 noundef %159) #6
  %arrayidx807.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 23, i32 0
  %160 = ptrtoint ptr %arrayidx807.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %arrayidx807.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.53, i32 noundef 0, i32 noundef %161) #6
  %162 = ptrtoint ptr %arrayidx696.1.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %arrayidx696.1.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.49, i32 noundef 1, i32 noundef %163) #6
  %arrayidx801.1.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 20, i32 1
  %164 = ptrtoint ptr %arrayidx801.1.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %arrayidx801.1.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.50, i32 noundef 1, i32 noundef %165) #6
  %arrayidx803.1.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 21, i32 1
  %166 = ptrtoint ptr %arrayidx803.1.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %arrayidx803.1.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.51, i32 noundef 1, i32 noundef %167) #6
  %arrayidx805.1.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 22, i32 1
  %168 = ptrtoint ptr %arrayidx805.1.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %arrayidx805.1.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.52, i32 noundef 1, i32 noundef %169) #6
  %arrayidx807.1.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 23, i32 1
  %170 = ptrtoint ptr %arrayidx807.1.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %arrayidx807.1.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.53, i32 noundef 1, i32 noundef %171) #6
  %172 = ptrtoint ptr %arrayidx696.2.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %arrayidx696.2.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.49, i32 noundef 2, i32 noundef %173) #6
  %arrayidx801.2.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 20, i32 2
  %174 = ptrtoint ptr %arrayidx801.2.i to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %arrayidx801.2.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.50, i32 noundef 2, i32 noundef %175) #6
  %arrayidx803.2.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 21, i32 2
  %176 = ptrtoint ptr %arrayidx803.2.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %arrayidx803.2.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.51, i32 noundef 2, i32 noundef %177) #6
  %arrayidx805.2.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 22, i32 2
  %178 = ptrtoint ptr %arrayidx805.2.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %arrayidx805.2.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.52, i32 noundef 2, i32 noundef %179) #6
  %arrayidx807.2.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 23, i32 2
  %180 = ptrtoint ptr %arrayidx807.2.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %arrayidx807.2.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.53, i32 noundef 2, i32 noundef %181) #6
  %182 = ptrtoint ptr %arrayidx696.3.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %arrayidx696.3.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.49, i32 noundef 3, i32 noundef %183) #6
  %arrayidx801.3.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 20, i32 3
  %184 = ptrtoint ptr %arrayidx801.3.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %arrayidx801.3.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.50, i32 noundef 3, i32 noundef %185) #6
  %arrayidx803.3.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 21, i32 3
  %186 = ptrtoint ptr %arrayidx803.3.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %arrayidx803.3.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.51, i32 noundef 3, i32 noundef %187) #6
  %arrayidx805.3.i = getelementptr inbounds %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 22, i32 3
  %188 = ptrtoint ptr %arrayidx805.3.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %arrayidx805.3.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.52, i32 noundef 3, i32 noundef %189) #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.53, i32 noundef 3, i32 noundef %.sink.i) #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.15) #6
  %mmio.i = getelementptr inbounds %struct.hdmi_phy, ptr %3, i32 0, i32 1
  %190 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i = getelementptr i8, ptr %191, i32 4
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %192 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %192(i32 noundef 107374000) #6
  %mmio_qserdes_com.i = getelementptr i8, ptr %hw, i32 12
  %193 = ptrtoint ptr %mmio_qserdes_com.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %mmio_qserdes_com.i, align 4
  %add.ptr.i93 = getelementptr i8, ptr %194, i32 368
  tail call void @msm_writel(i32 noundef 4, ptr noundef %add.ptr.i93) #6
  %195 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i95 = getelementptr i8, ptr %196, i32 4
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i95) #6
  %197 = ptrtoint ptr %mmio_qserdes_com.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %mmio_qserdes_com.i, align 4
  %add.ptr.i97 = getelementptr i8, ptr %198, i32 180
  tail call void @msm_writel(i32 noundef 32, ptr noundef %add.ptr.i97) #6
  %199 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i99 = getelementptr i8, ptr %200, i32 76
  tail call void @msm_writel(i32 noundef 15, ptr noundef %add.ptr.i99) #6
  %201 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i101 = getelementptr i8, ptr %202, i32 80
  tail call void @msm_writel(i32 noundef 15, ptr noundef %add.ptr.i101) #6
  %arrayidx.i102 = getelementptr i8, ptr %hw, i32 16
  %203 = ptrtoint ptr %arrayidx.i102 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %arrayidx.i102, align 4
  %add.ptr.i103 = getelementptr i8, ptr %204, i32 8
  tail call void @msm_writel(i32 noundef 3, ptr noundef %add.ptr.i103) #6
  %205 = ptrtoint ptr %arrayidx.i102 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %arrayidx.i102, align 4
  %add.ptr.i105 = getelementptr i8, ptr %206, i32 60
  tail call void @msm_writel(i32 noundef %153, ptr noundef %add.ptr.i105) #6
  %207 = ptrtoint ptr %arrayidx.i102 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load ptr, ptr %arrayidx.i102, align 4
  %add.ptr.i107 = getelementptr i8, ptr %208, i32 52
  tail call void @msm_writel(i32 noundef 3, ptr noundef %add.ptr.i107) #6
  %arrayidx.i102.1 = getelementptr i8, ptr %hw, i32 20
  %209 = ptrtoint ptr %arrayidx.i102.1 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %arrayidx.i102.1, align 4
  %add.ptr.i103.1 = getelementptr i8, ptr %210, i32 8
  tail call void @msm_writel(i32 noundef 3, ptr noundef %add.ptr.i103.1) #6
  %211 = ptrtoint ptr %arrayidx.i102.1 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %arrayidx.i102.1, align 4
  %add.ptr.i105.1 = getelementptr i8, ptr %212, i32 60
  tail call void @msm_writel(i32 noundef %163, ptr noundef %add.ptr.i105.1) #6
  %213 = ptrtoint ptr %arrayidx.i102.1 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %arrayidx.i102.1, align 4
  %add.ptr.i107.1 = getelementptr i8, ptr %214, i32 52
  tail call void @msm_writel(i32 noundef 3, ptr noundef %add.ptr.i107.1) #6
  %arrayidx.i102.2 = getelementptr i8, ptr %hw, i32 24
  %215 = ptrtoint ptr %arrayidx.i102.2 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %arrayidx.i102.2, align 4
  %add.ptr.i103.2 = getelementptr i8, ptr %216, i32 8
  tail call void @msm_writel(i32 noundef 3, ptr noundef %add.ptr.i103.2) #6
  %217 = ptrtoint ptr %arrayidx.i102.2 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load ptr, ptr %arrayidx.i102.2, align 4
  %add.ptr.i105.2 = getelementptr i8, ptr %218, i32 60
  tail call void @msm_writel(i32 noundef %173, ptr noundef %add.ptr.i105.2) #6
  %219 = ptrtoint ptr %arrayidx.i102.2 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %arrayidx.i102.2, align 4
  %add.ptr.i107.2 = getelementptr i8, ptr %220, i32 52
  tail call void @msm_writel(i32 noundef 3, ptr noundef %add.ptr.i107.2) #6
  %arrayidx.i102.3 = getelementptr i8, ptr %hw, i32 28
  %221 = ptrtoint ptr %arrayidx.i102.3 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %arrayidx.i102.3, align 4
  %add.ptr.i103.3 = getelementptr i8, ptr %222, i32 8
  tail call void @msm_writel(i32 noundef 3, ptr noundef %add.ptr.i103.3) #6
  %223 = ptrtoint ptr %arrayidx.i102.3 to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %arrayidx.i102.3, align 4
  %add.ptr.i105.3 = getelementptr i8, ptr %224, i32 60
  tail call void @msm_writel(i32 noundef %183, ptr noundef %add.ptr.i105.3) #6
  %225 = ptrtoint ptr %arrayidx.i102.3 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %arrayidx.i102.3, align 4
  %add.ptr.i107.3 = getelementptr i8, ptr %226, i32 52
  tail call void @msm_writel(i32 noundef 3, ptr noundef %add.ptr.i107.3) #6
  %227 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %cfg, align 4
  %arrayidx.i108 = getelementptr i8, ptr %hw, i32 16
  %229 = ptrtoint ptr %arrayidx.i108 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %arrayidx.i108, align 4
  %add.ptr.i109 = getelementptr i8, ptr %230, i32 148
  tail call void @msm_writel(i32 noundef %228, ptr noundef %add.ptr.i109) #6
  %231 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %arrayidx.i, align 4
  %arrayidx.i110 = getelementptr i8, ptr %hw, i32 24
  %233 = ptrtoint ptr %arrayidx.i110 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %arrayidx.i110, align 4
  %add.ptr.i111 = getelementptr i8, ptr %234, i32 148
  tail call void @msm_writel(i32 noundef %232, ptr noundef %add.ptr.i111) #6
  %235 = ptrtoint ptr %mmio_qserdes_com.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %mmio_qserdes_com.i, align 4
  %add.ptr.i113 = getelementptr i8, ptr %236, i32 64
  tail call void @msm_writel(i32 noundef 30, ptr noundef %add.ptr.i113) #6
  %237 = ptrtoint ptr %mmio_qserdes_com.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %mmio_qserdes_com.i, align 4
  %add.ptr.i115 = getelementptr i8, ptr %238, i32 52
  tail call void @msm_writel(i32 noundef 7, ptr noundef %add.ptr.i115) #6
  %239 = ptrtoint ptr %mmio_qserdes_com.i to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %mmio_qserdes_com.i, align 4
  %add.ptr.i117 = getelementptr i8, ptr %240, i32 172
  tail call void @msm_writel(i32 noundef 55, ptr noundef %add.ptr.i117) #6
  %241 = ptrtoint ptr %mmio_qserdes_com.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load ptr, ptr %mmio_qserdes_com.i, align 4
  %add.ptr.i119 = getelementptr i8, ptr %242, i32 60
  tail call void @msm_writel(i32 noundef 2, ptr noundef %add.ptr.i119) #6
  %243 = ptrtoint ptr %mmio_qserdes_com.i to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %mmio_qserdes_com.i, align 4
  %add.ptr.i121 = getelementptr i8, ptr %244, i32 56
  tail call void @msm_writel(i32 noundef 14, ptr noundef %add.ptr.i121) #6
  %245 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %36, align 4
  %247 = ptrtoint ptr %mmio_qserdes_com.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %mmio_qserdes_com.i, align 4
  %add.ptr.i123 = getelementptr i8, ptr %248, i32 412
  tail call void @msm_writel(i32 noundef %246, ptr noundef %add.ptr.i123) #6
  %249 = ptrtoint ptr %mmio_qserdes_com.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %mmio_qserdes_com.i, align 4
  %add.ptr.i125 = getelementptr i8, ptr %250, i32 112
  tail call void @msm_writel(i32 noundef 15, ptr noundef %add.ptr.i125) #6
  %251 = ptrtoint ptr %mmio_qserdes_com.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %mmio_qserdes_com.i, align 4
  %add.ptr.i127 = getelementptr i8, ptr %252, i32 72
  tail call void @msm_writel(i32 noundef 15, ptr noundef %add.ptr.i127) #6
  %253 = ptrtoint ptr %com_vco_tune_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %253)
  %254 = load i32, ptr %com_vco_tune_ctrl.i, align 4
  %255 = ptrtoint ptr %mmio_qserdes_com.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %mmio_qserdes_com.i, align 4
  %add.ptr.i129 = getelementptr i8, ptr %256, i32 292
  tail call void @msm_writel(i32 noundef %254, ptr noundef %add.ptr.i129) #6
  %257 = ptrtoint ptr %mmio_qserdes_com.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %mmio_qserdes_com.i, align 4
  %add.ptr.i131 = getelementptr i8, ptr %258, i32 368
  tail call void @msm_writel(i32 noundef 6, ptr noundef %add.ptr.i131) #6
  %259 = ptrtoint ptr %mmio_qserdes_com.i to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %mmio_qserdes_com.i, align 4
  %add.ptr.i133 = getelementptr i8, ptr %260, i32 372
  tail call void @msm_writel(i32 noundef 48, ptr noundef %add.ptr.i133) #6
  %261 = ptrtoint ptr %com_hsclk_sel.i to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %com_hsclk_sel.i, align 4
  %263 = ptrtoint ptr %mmio_qserdes_com.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load ptr, ptr %mmio_qserdes_com.i, align 4
  %add.ptr.i135 = getelementptr i8, ptr %264, i32 376
  tail call void @msm_writel(i32 noundef %262, ptr noundef %add.ptr.i135) #6
  %265 = ptrtoint ptr %com_lock_cmp_en.i to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %com_lock_cmp_en.i, align 4
  %267 = ptrtoint ptr %mmio_qserdes_com.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load ptr, ptr %mmio_qserdes_com.i, align 4
  %add.ptr.i137 = getelementptr i8, ptr %268, i32 200
  tail call void @msm_writel(i32 noundef %266, ptr noundef %add.ptr.i137) #6
  %269 = ptrtoint ptr %com_pll_cctrl_mode0.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %com_pll_cctrl_mode0.i, align 4
  %271 = ptrtoint ptr %mmio_qserdes_com.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load ptr, ptr %mmio_qserdes_com.i, align 4
  %add.ptr.i139 = getelementptr i8, ptr %272, i32 144
  tail call void @msm_writel(i32 noundef %270, ptr noundef %add.ptr.i139) #6
  %273 = ptrtoint ptr %com_pll_rctrl_mode0.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %com_pll_rctrl_mode0.i, align 4
  %275 = ptrtoint ptr %mmio_qserdes_com.i to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %mmio_qserdes_com.i, align 4
  %add.ptr.i141 = getelementptr i8, ptr %276, i32 132
  tail call void @msm_writel(i32 noundef %274, ptr noundef %add.ptr.i141) #6
  %277 = ptrtoint ptr %com_cp_ctrl_mode0.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %com_cp_ctrl_mode0.i, align 4
  %279 = ptrtoint ptr %mmio_qserdes_com.i to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load ptr, ptr %mmio_qserdes_com.i, align 4
  %add.ptr.i143 = getelementptr i8, ptr %280, i32 120
  tail call void @msm_writel(i32 noundef %278, ptr noundef %add.ptr.i143) #6
  %281 = ptrtoint ptr %com_dec_start_mode0.i to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %com_dec_start_mode0.i, align 4
  %283 = ptrtoint ptr %mmio_qserdes_com.i to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %mmio_qserdes_com.i, align 4
  %add.ptr.i145 = getelementptr i8, ptr %284, i32 208
  tail call void @msm_writel(i32 noundef %282, ptr noundef %add.ptr.i145) #6
  %285 = ptrtoint ptr %com_div_frac_start1_mode0.i to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load i32, ptr %com_div_frac_start1_mode0.i, align 4
  %287 = ptrtoint ptr %mmio_qserdes_com.i to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %mmio_qserdes_com.i, align 4
  %add.ptr.i147 = getelementptr i8, ptr %288, i32 220
  tail call void @msm_writel(i32 noundef %286, ptr noundef %add.ptr.i147) #6
  %289 = ptrtoint ptr %com_div_frac_start2_mode0.i to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %com_div_frac_start2_mode0.i, align 4
  %291 = ptrtoint ptr %mmio_qserdes_com.i to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %mmio_qserdes_com.i, align 4
  %add.ptr.i149 = getelementptr i8, ptr %292, i32 224
  tail call void @msm_writel(i32 noundef %290, ptr noundef %add.ptr.i149) #6
  %293 = ptrtoint ptr %com_div_frac_start3_mode0.i to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %com_div_frac_start3_mode0.i, align 4
  %295 = ptrtoint ptr %mmio_qserdes_com.i to i32
  call void @__asan_load4_noabort(i32 %295)
  %296 = load ptr, ptr %mmio_qserdes_com.i, align 4
  %add.ptr.i151 = getelementptr i8, ptr %296, i32 228
  tail call void @msm_writel(i32 noundef %294, ptr noundef %add.ptr.i151) #6
  %297 = ptrtoint ptr %com_integloop_gain0_mode0.i to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %com_integloop_gain0_mode0.i, align 4
  %299 = ptrtoint ptr %mmio_qserdes_com.i to i32
  call void @__asan_load4_noabort(i32 %299)
  %300 = load ptr, ptr %mmio_qserdes_com.i, align 4
  %add.ptr.i153 = getelementptr i8, ptr %300, i32 264
  tail call void @msm_writel(i32 noundef %298, ptr noundef %add.ptr.i153) #6
  %301 = ptrtoint ptr %com_integloop_gain1_mode0.i to i32
  call void @__asan_load4_noabort(i32 %301)
  %302 = load i32, ptr %com_integloop_gain1_mode0.i, align 4
  %303 = ptrtoint ptr %mmio_qserdes_com.i to i32
  call void @__asan_load4_noabort(i32 %303)
  %304 = load ptr, ptr %mmio_qserdes_com.i, align 4
  %add.ptr.i155 = getelementptr i8, ptr %304, i32 268
  tail call void @msm_writel(i32 noundef %302, ptr noundef %add.ptr.i155) #6
  %305 = ptrtoint ptr %com_lock_cmp1_mode0.i to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %com_lock_cmp1_mode0.i, align 4
  %307 = ptrtoint ptr %mmio_qserdes_com.i to i32
  call void @__asan_load4_noabort(i32 %307)
  %308 = load ptr, ptr %mmio_qserdes_com.i, align 4
  %add.ptr.i157 = getelementptr i8, ptr %308, i32 76
  tail call void @msm_writel(i32 noundef %306, ptr noundef %add.ptr.i157) #6
  %309 = ptrtoint ptr %com_lock_cmp2_mode0.i to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %com_lock_cmp2_mode0.i, align 4
  %311 = ptrtoint ptr %mmio_qserdes_com.i to i32
  call void @__asan_load4_noabort(i32 %311)
  %312 = load ptr, ptr %mmio_qserdes_com.i, align 4
  %add.ptr.i159 = getelementptr i8, ptr %312, i32 80
  tail call void @msm_writel(i32 noundef %310, ptr noundef %add.ptr.i159) #6
  %313 = ptrtoint ptr %com_lock_cmp3_mode0.i to i32
  call void @__asan_load4_noabort(i32 %313)
  %314 = load i32, ptr %com_lock_cmp3_mode0.i, align 4
  %315 = ptrtoint ptr %mmio_qserdes_com.i to i32
  call void @__asan_load4_noabort(i32 %315)
  %316 = load ptr, ptr %mmio_qserdes_com.i, align 4
  %add.ptr.i161 = getelementptr i8, ptr %316, i32 84
  tail call void @msm_writel(i32 noundef %314, ptr noundef %add.ptr.i161) #6
  %317 = ptrtoint ptr %mmio_qserdes_com.i to i32
  call void @__asan_load4_noabort(i32 %317)
  %318 = load ptr, ptr %mmio_qserdes_com.i, align 4
  %add.ptr.i163 = getelementptr i8, ptr %318, i32 296
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i163) #6
  %319 = ptrtoint ptr %com_core_clk_en.i to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %com_core_clk_en.i, align 4
  %321 = ptrtoint ptr %mmio_qserdes_com.i to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load ptr, ptr %mmio_qserdes_com.i, align 4
  %add.ptr.i165 = getelementptr i8, ptr %322, i32 396
  tail call void @msm_writel(i32 noundef %320, ptr noundef %add.ptr.i165) #6
  %323 = ptrtoint ptr %com_coreclk_div.i to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %com_coreclk_div.i, align 4
  %325 = ptrtoint ptr %mmio_qserdes_com.i to i32
  call void @__asan_load4_noabort(i32 %325)
  %326 = load ptr, ptr %mmio_qserdes_com.i, align 4
  %add.ptr.i167 = getelementptr i8, ptr %326, i32 388
  tail call void @msm_writel(i32 noundef %324, ptr noundef %add.ptr.i167) #6
  %327 = ptrtoint ptr %mmio_qserdes_com.i to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load ptr, ptr %mmio_qserdes_com.i, align 4
  %add.ptr.i169 = getelementptr i8, ptr %328, i32 404
  tail call void @msm_writel(i32 noundef 2, ptr noundef %add.ptr.i169) #6
  %329 = ptrtoint ptr %mmio_qserdes_com.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load ptr, ptr %mmio_qserdes_com.i, align 4
  %add.ptr.i171 = getelementptr i8, ptr %330, i32 196
  tail call void @msm_writel(i32 noundef 21, ptr noundef %add.ptr.i171) #6
  br label %for.body7

for.body7:                                        ; preds = %for.body7.for.body7_crit_edge, %if.end
  %i.1197 = phi i32 [ 0, %if.end ], [ %inc14, %for.body7.for.body7_crit_edge ]
  %arrayidx8 = getelementptr %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 20, i32 %i.1197
  %331 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %331)
  %332 = load i32, ptr %arrayidx8, align 4
  %arrayidx.i172 = getelementptr %struct.hdmi_pll_8996, ptr %add.ptr, i32 0, i32 3, i32 %i.1197
  %333 = ptrtoint ptr %arrayidx.i172 to i32
  call void @__asan_load4_noabort(i32 %333)
  %334 = load ptr, ptr %arrayidx.i172, align 4
  %add.ptr.i173 = getelementptr i8, ptr %334, i32 44
  tail call void @msm_writel(i32 noundef %332, ptr noundef %add.ptr.i173) #6
  %arrayidx9 = getelementptr %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 21, i32 %i.1197
  %335 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %335)
  %336 = load i32, ptr %arrayidx9, align 4
  %337 = ptrtoint ptr %arrayidx.i172 to i32
  call void @__asan_load4_noabort(i32 %337)
  %338 = load ptr, ptr %arrayidx.i172, align 4
  %add.ptr.i175 = getelementptr i8, ptr %338, i32 24
  tail call void @msm_writel(i32 noundef %336, ptr noundef %add.ptr.i175) #6
  %arrayidx10 = getelementptr %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 22, i32 %i.1197
  %339 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %339)
  %340 = load i32, ptr %arrayidx10, align 4
  %341 = ptrtoint ptr %arrayidx.i172 to i32
  call void @__asan_load4_noabort(i32 %341)
  %342 = load ptr, ptr %arrayidx.i172, align 4
  %add.ptr.i177 = getelementptr i8, ptr %342, i32 248
  tail call void @msm_writel(i32 noundef %340, ptr noundef %add.ptr.i177) #6
  %arrayidx11 = getelementptr %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 23, i32 %i.1197
  %343 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %343)
  %344 = load i32, ptr %arrayidx11, align 4
  %345 = ptrtoint ptr %arrayidx.i172 to i32
  call void @__asan_load4_noabort(i32 %345)
  %346 = load ptr, ptr %arrayidx.i172, align 4
  %add.ptr.i179 = getelementptr i8, ptr %346, i32 252
  tail call void @msm_writel(i32 noundef %344, ptr noundef %add.ptr.i179) #6
  %347 = ptrtoint ptr %arrayidx.i172 to i32
  call void @__asan_load4_noabort(i32 %347)
  %348 = load ptr, ptr %arrayidx.i172, align 4
  %add.ptr.i181 = getelementptr i8, ptr %348, i32 48
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i181) #6
  %349 = ptrtoint ptr %arrayidx.i172 to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load ptr, ptr %arrayidx.i172, align 4
  %add.ptr.i183 = getelementptr i8, ptr %350, i32 84
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i183) #6
  %351 = ptrtoint ptr %arrayidx.i172 to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load ptr, ptr %arrayidx.i172, align 4
  %add.ptr.i185 = getelementptr i8, ptr %352, i32 200
  tail call void @msm_writel(i32 noundef 3, ptr noundef %add.ptr.i185) #6
  %353 = ptrtoint ptr %arrayidx.i172 to i32
  call void @__asan_load4_noabort(i32 %353)
  %354 = load ptr, ptr %arrayidx.i172, align 4
  %add.ptr.i187 = getelementptr i8, ptr %354, i32 112
  tail call void @msm_writel(i32 noundef 64, ptr noundef %add.ptr.i187) #6
  %arrayidx12 = getelementptr %struct.hdmi_8996_phy_pll_reg_cfg, ptr %cfg, i32 0, i32 25, i32 %i.1197
  %355 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %355)
  %356 = load i32, ptr %arrayidx12, align 4
  %357 = ptrtoint ptr %arrayidx.i172 to i32
  call void @__asan_load4_noabort(i32 %357)
  %358 = load ptr, ptr %arrayidx.i172, align 4
  %add.ptr.i189 = getelementptr i8, ptr %358, i32 36
  tail call void @msm_writel(i32 noundef %356, ptr noundef %add.ptr.i189) #6
  %inc14 = add nuw nsw i32 %i.1197, 1
  %exitcond.not = icmp eq i32 %inc14, 4
  br i1 %exitcond.not, label %for.end15, label %for.body7.for.body7_crit_edge

for.body7.for.body7_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body7

for.end15:                                        ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #8
  %359 = ptrtoint ptr %phy_mode.i to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load i32, ptr %phy_mode.i, align 4
  %361 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i191 = getelementptr i8, ptr %362, i32 8
  tail call void @msm_writel(i32 noundef %360, ptr noundef %add.ptr.i191) #6
  %363 = ptrtoint ptr %mmio.i to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load ptr, ptr %mmio.i, align 4
  %add.ptr.i193 = getelementptr i8, ptr %364, i32 4
  tail call void @msm_writel(i32 noundef 31, ptr noundef %add.ptr.i193) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !140
  tail call void @arm_heavy_mb() #6
  br label %cleanup

cleanup:                                          ; preds = %for.end15, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %for.end15 ]
  call void @llvm.lifetime.end.p0(i64 204, ptr nonnull %cfg) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_readl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 65)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !26, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125}
!llvm.module.flags = !{!127, !128, !129, !130, !131, !132, !133, !134}
!llvm.ident = !{!135}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c", i32 719, i32 44}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c", i32 719, i32 56}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c", i32 721, i32 3}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c", i32 728, i32 32}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c", i32 729, i32 34}
!11 = !{ptr @.str.6, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c", i32 741, i32 3}
!13 = !{ptr @msm_hdmi_phy_8996_cfg, !14, !"msm_hdmi_phy_8996_cfg", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c", i32 757, i32 27}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c", i32 699, i32 10}
!17 = !{ptr @pll_init, !18, !"pll_init", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c", i32 698, i32 35}
!19 = !{ptr @hdmi_8996_pll_ops, !20, !"hdmi_8996_pll_ops", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c", i32 685, i32 29}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c", i32 574, i32 2}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c", i32 587, i32 2}
!25 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c", i32 550, i32 2}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c", i32 562, i32 2}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c", i32 407, i32 3}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c", i32 412, i32 2}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c", i32 270, i32 2}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c", i32 271, i32 2}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c", i32 272, i32 2}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c", i32 273, i32 2}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c", i32 274, i32 2}
!45 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c", i32 275, i32 2}
!47 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c", i32 276, i32 2}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c", i32 277, i32 2}
!51 = !{ptr @.str.24, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c", i32 278, i32 2}
!53 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c", i32 279, i32 2}
!55 = !{ptr @.str.26, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c", i32 280, i32 2}
!57 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c", i32 281, i32 2}
!59 = !{ptr @.str.28, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c", i32 282, i32 2}
!61 = !{ptr @.str.29, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c", i32 361, i32 2}
!63 = !{ptr @.str.30, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c", i32 362, i32 2}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c", i32 363, i32 2}
!67 = !{ptr @.str.32, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c", i32 364, i32 2}
!69 = !{ptr @.str.33, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c", i32 365, i32 2}
!71 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c", i32 366, i32 2}
!73 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c", i32 367, i32 2}
!75 = !{ptr @.str.36, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c", i32 368, i32 2}
!77 = !{ptr @.str.37, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c", i32 369, i32 2}
!79 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c", i32 370, i32 2}
!81 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c", i32 371, i32 2}
!83 = !{ptr @.str.40, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c", i32 372, i32 2}
!85 = !{ptr @.str.41, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c", i32 373, i32 2}
!87 = !{ptr @.str.42, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c", i32 374, i32 2}
!89 = !{ptr @.str.43, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c", i32 375, i32 2}
!91 = !{ptr @.str.44, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c", i32 376, i32 2}
!93 = !{ptr @.str.45, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c", i32 377, i32 2}
!95 = !{ptr @.str.46, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c", i32 378, i32 2}
!97 = !{ptr @.str.47, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c", i32 380, i32 2}
!99 = !{ptr @.str.48, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c", i32 381, i32 2}
!101 = !{ptr @.str.49, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c", i32 384, i32 3}
!103 = !{ptr @.str.50, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c", i32 385, i32 3}
!105 = !{ptr @.str.51, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c", i32 386, i32 3}
!107 = !{ptr @.str.52, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c", i32 388, i32 3}
!109 = !{ptr @.str.53, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c", i32 389, i32 3}
!111 = !{ptr @.str.54, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c", i32 695, i32 2}
!113 = !{ptr @hdmi_pll_parents, !114, !"hdmi_pll_parents", i1 false, i1 false}
!114 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c", i32 694, i32 27}
!115 = !{ptr @.str.55, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c", i32 749, i32 2}
!117 = !{ptr @.str.56, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c", i32 750, i32 2}
!119 = !{ptr @hdmi_phy_8996_reg_names, !120, !"hdmi_phy_8996_reg_names", i1 false, i1 false}
!120 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c", i32 748, i32 27}
!121 = !{ptr @.str.57, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c", i32 754, i32 2}
!123 = !{ptr @.str.58, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c", i32 754, i32 11}
!125 = !{ptr @hdmi_phy_8996_clk_names, !126, !"hdmi_phy_8996_clk_names", i1 false, i1 false}
!126 = !{!"../drivers/gpu/drm/msm/hdmi/hdmi_phy_8996.c", i32 753, i32 27}
!127 = !{i32 1, !"wchar_size", i32 2}
!128 = !{i32 1, !"min_enum_size", i32 4}
!129 = !{i32 8, !"branch-target-enforcement", i32 0}
!130 = !{i32 8, !"sign-return-address", i32 0}
!131 = !{i32 8, !"sign-return-address-all", i32 0}
!132 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!133 = !{i32 7, !"uwtable", i32 1}
!134 = !{i32 7, !"frame-pointer", i32 2}
!135 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!136 = !{i64 1475704, i64 1475731}
!137 = !{i64 1476044, i64 1476071, i64 1476105, i64 1476126}
!138 = !{!"branch_weights", i32 2000, i32 1}
!139 = !{i64 2148961365, i64 2148961645, i64 2148961979, i64 2148962313}
!140 = !{i64 2157296204}
