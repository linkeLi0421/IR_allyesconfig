; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/dsi/phy/dsi_phy_10nm.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/dsi/phy/dsi_phy_10nm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.msm_dsi_phy_cfg = type { %struct.dsi_reg_config, %struct.msm_dsi_phy_ops, i32, i32, [2 x i32], i32, i32, i8, i8 }
%struct.dsi_reg_config = type { i32, [8 x %struct.dsi_reg_entry] }
%struct.dsi_reg_entry = type { [32 x i8], i32, i32 }
%struct.msm_dsi_phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.msm_dsi_phy = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, ptr, [8 x %struct.regulator_bulk_data], %struct.msm_dsi_dphy_timing, ptr, i32, i8, i8, ptr, i8, ptr, i8 }
%struct.regulator_bulk_data = type { ptr, ptr, i32 }
%struct.msm_dsi_dphy_timing = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.msm_dsi_phy_shared_timings, i32, i32, i32, i8, i8 }
%struct.msm_dsi_phy_shared_timings = type { i32, i32, i8 }
%struct.dsi_pll_10nm = type { %struct.clk_hw, ptr, i64, %struct.spinlock, %struct.pll_10nm_cached_state, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.pll_10nm_cached_state = type { i32, i8, i8, i8, i8 }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }
%struct.dsi_pll_config = type { i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@dsi_phy_10nm_cfgs = dso_local constant { %struct.msm_dsi_phy_cfg, [72 x i8] } { %struct.msm_dsi_phy_cfg { %struct.dsi_reg_config { i32 1, [8 x %struct.dsi_reg_entry] [%struct.dsi_reg_entry { [32 x i8] c"vdds\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 36000, i32 32 }, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer] }, %struct.msm_dsi_phy_ops { ptr @dsi_pll_10nm_init, ptr @dsi_10nm_phy_enable, ptr @dsi_10nm_phy_disable, ptr @dsi_10nm_pll_save_state, ptr @dsi_10nm_pll_restore_state, ptr null }, i32 1000000000, i32 -794967296, [2 x i32] [i32 183059456, i32 183067648], i32 2, i32 0, i8 0, i8 1 }, [72 x i8] zeroinitializer }, align 32
@dsi_phy_10nm_8998_cfgs = dso_local constant { %struct.msm_dsi_phy_cfg, [72 x i8] } { %struct.msm_dsi_phy_cfg { %struct.dsi_reg_config { i32 1, [8 x %struct.dsi_reg_entry] [%struct.dsi_reg_entry { [32 x i8] c"vdds\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 36000, i32 32 }, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer] }, %struct.msm_dsi_phy_ops { ptr @dsi_pll_10nm_init, ptr @dsi_10nm_phy_enable, ptr @dsi_10nm_phy_disable, ptr @dsi_10nm_pll_save_state, ptr @dsi_10nm_pll_restore_state, ptr null }, i32 1000000000, i32 -794967296, [2 x i32] [i32 211371008, i32 211379200], i32 2, i32 1, i8 0, i8 1 }, [72 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DSI PLL%d\0A\00", [21 x i8] zeroinitializer }, align 32
@pll_10nm_list = internal global { [2 x ptr], [24 x i8] } zeroinitializer, align 32
@dsi_pll_10nm_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&pll_10nm->postdiv_lock\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"*ERROR* failed to register PLL: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@clk_ops_dsi_pll_10nm_vco = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @dsi_pll_10nm_vco_prepare, ptr @dsi_pll_10nm_vco_unprepare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dsi_pll_10nm_vco_recalc_rate, ptr @dsi_pll_10nm_clk_round_rate, ptr null, ptr null, ptr null, ptr @dsi_pll_10nm_vco_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"xo\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DSI%d\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dsi%dvco_clk\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dsi%d_pll_out_div_clk\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dsi%d_pll_bit_clk\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dsi%d_phy_pll_out_byteclk\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dsi%d_pll_by_2_bit_clk\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dsi%d_pll_post_out_div_clk\00", [37 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dsi%d_pclk_mux\00", [17 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dsi%d_phy_pll_out_dsiclk\00", [39 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"*ERROR* PLL(%d) lock failed\0A\00", [35 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.16 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"*ERROR* DSI PLL(%d) lock failed, status=0x%08x\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"DSI PLL%d returning vco rate = %lu, dec = %x, frac = %x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DSI PLL%d rate=%lu, parent's=%lu\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SSC not enabled\0A\0A\00", [46 x i8] zeroinitializer }, align 32
@dsi_pll_calc_ssc.__UNIQUE_ID_ddebug336 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, i8 0, i8 41, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"msm\00", [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dsi_pll_calc_ssc\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/gpu/drm/msm/dsi/phy/dsi_phy_10nm.c\00", [53 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"SCC: Dec:%d, frac:%llu, frac_bits:%d\0A\00", [58 x i8] zeroinitializer }, align 32
@dsi_pll_calc_ssc.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.24, i8 0, i8 42, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"SSC: div_per:0x%X, stepsize:0x%X, adjper:0x%X\0A\00", [49 x i8] zeroinitializer }, align 32
@dsi_pll_ssc_commit.__UNIQUE_ID_ddebug338 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.20, ptr @.str.25, ptr @.str.22, ptr @.str.26, i8 0, i8 44, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dsi_pll_ssc_commit\00", [45 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SSC is enabled\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"*ERROR* %s: D-PHY timing calculation failed\0A\00", [51 x i8] zeroinitializer }, align 32
@__func__.dsi_10nm_phy_enable = private unnamed_addr constant [20 x i8] c"dsi_10nm_phy_enable\00", align 1
@dsi_10nm_phy_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @__func__.dsi_10nm_phy_enable, ptr @.str.22, i32 813, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014PLL turned on before configuring PHY\0A\00", [56 x i8] zeroinitializer }, align 32
@dsi_10nm_phy_enable._entry_ptr = internal global ptr @dsi_10nm_phy_enable._entry, section ".printk_index", align 4
@dsi_10nm_phy_enable._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @__func__.dsi_10nm_phy_enable, ptr @.str.22, i32 820, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013Ref gen not ready. Aborting\0A\00", [33 x i8] zeroinitializer }, align 32
@dsi_10nm_phy_enable._entry_ptr.32 = internal global ptr @dsi_10nm_phy_enable._entry.30, section ".printk_index", align 4
@.str.33 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"*ERROR* %s: set pll usecase failed, %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DSI%d PHY enabled\0A\00", [45 x i8] zeroinitializer }, align 32
@__const.dsi_phy_hw_v3_0_lane_settings.tx_dctrl = private unnamed_addr constant [5 x i8] c"\00\00\00\04\01", align 1
@dsi_10nm_phy_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.22, i32 907, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014Turning OFF PHY while PLL is on\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"dsi_10nm_phy_disable\00", [43 x i8] zeroinitializer }, align 32
@dsi_10nm_phy_disable._entry_ptr = internal global ptr @dsi_10nm_phy_disable._entry, section ".printk_index", align 4
@.str.37 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DSI%d PHY disabled\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"DSI PLL%d outdiv %x bit_clk_div %x pix_clk_div %x pll_mux %x\0A\00", [34 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.40 = private unnamed_addr constant [18 x i8] c"dsi_phy_10nm_cfgs\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 925, i32 30 }
@___asan_gen_.43 = private unnamed_addr constant [23 x i8] c"dsi_phy_10nm_8998_cfgs\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 946, i32 30 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 695, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant [14 x i8] c"pll_10nm_list\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 90, i32 29 }
@___asan_gen_.52 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 699, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 705, i32 3 }
@___asan_gen_.64 = private unnamed_addr constant [25 x i8] c"clk_ops_dsi_pll_10nm_vco\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 457, i32 29 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 565, i32 37 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 575, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 577, i32 25 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 584, i32 25 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 597, i32 25 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 612, i32 25 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 625, i32 25 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 635, i32 25 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 645, i32 25 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 662, i32 25 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 358, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 285, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 438, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 247, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 145, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 165, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 167, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 176, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 804, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 807, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 813, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 820, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 886, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 894, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 907, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 922, i32 2 }
@___asan_gen_.169 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.170 = private constant [46 x i8] c"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_10nm.c\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 487, i32 2 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @dsi_10nm_phy_disable._entry, ptr @dsi_10nm_phy_disable._entry_ptr, ptr @dsi_10nm_phy_enable._entry, ptr @dsi_10nm_phy_enable._entry.30, ptr @dsi_10nm_phy_enable._entry_ptr, ptr @dsi_10nm_phy_enable._entry_ptr.32, ptr @dsi_phy_10nm_cfgs, ptr @dsi_phy_10nm_8998_cfgs, ptr @.str, ptr @pll_10nm_list, ptr @dsi_pll_10nm_init.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @clk_ops_dsi_pll_10nm_vco, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38], section "llvm.metadata"
@0 = internal global [44 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_phy_10nm_cfgs to i32), i32 376, i32 448, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_phy_10nm_8998_cfgs to i32), i32 376, i32 448, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_10nm_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_pll_10nm_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_ops_dsi_pll_10nm_vco to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_10nm_phy_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_10nm_phy_enable._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_10nm_phy_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsi_pll_10nm_init(ptr noundef %phy) #0 align 64 {
entry:
  %clk_name.i = alloca [32 x i8], align 1
  %parent.i = alloca [32 x i8], align 1
  %vco_name.i = alloca [32 x i8], align 1
  %parent2.i = alloca [32 x i8], align 1
  %parent3.i = alloca [32 x i8], align 1
  %parent4.i = alloca [32 x i8], align 1
  %vco_init.i = alloca %struct.clk_init_data, align 4
  %.compoundliteral.i = alloca [1 x ptr], align 4
  %.compoundliteral108.i = alloca [4 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 80, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 9
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef %3) #7
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %arrayidx = getelementptr [2 x ptr], ptr @pll_10nm_list, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %arrayidx, align 4
  %postdiv_lock = getelementptr inbounds %struct.dsi_pll_10nm, ptr %call.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %postdiv_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @dsi_pll_10nm_init.__key, i16 noundef signext 3) #7
  %phy4 = getelementptr inbounds %struct.dsi_pll_10nm, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %phy4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %phy, ptr %phy4, align 4
  %provided_clocks = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 19
  %8 = ptrtoint ptr %provided_clocks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %provided_clocks, align 4
  %hws = getelementptr inbounds %struct.clk_hw_onecell_data, ptr %9, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %.compoundliteral.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %.compoundliteral108.i)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %clk_name.i) #7
  %10 = call ptr @memset(ptr %clk_name.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %parent.i) #7
  %11 = call ptr @memset(ptr %parent.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %vco_name.i) #7
  %12 = call ptr @memset(ptr %vco_name.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %parent2.i) #7
  %13 = call ptr @memset(ptr %parent2.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %parent3.i) #7
  %14 = call ptr @memset(ptr %parent3.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %parent4.i) #7
  %15 = call ptr @memset(ptr %parent4.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %vco_init.i) #7
  %16 = getelementptr inbounds i8, ptr %vco_init.i, i32 20
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 33554431, ptr %16, align 4
  %18 = ptrtoint ptr %vco_init.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %vco_name.i, ptr %vco_init.i, align 4
  %ops.i = getelementptr inbounds %struct.clk_init_data, ptr %vco_init.i, i32 0, i32 1
  %19 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @clk_ops_dsi_pll_10nm_vco, ptr %ops.i, align 4
  %parent_names.i = getelementptr inbounds %struct.clk_init_data, ptr %vco_init.i, i32 0, i32 2
  %20 = ptrtoint ptr %.compoundliteral.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @.str.4, ptr %.compoundliteral.i, align 4
  %21 = ptrtoint ptr %parent_names.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %.compoundliteral.i, ptr %parent_names.i, align 4
  %parent_data.i = getelementptr inbounds %struct.clk_init_data, ptr %vco_init.i, i32 0, i32 3
  %22 = ptrtoint ptr %parent_data.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %parent_data.i, align 4
  %parent_hws.i = getelementptr inbounds %struct.clk_init_data, ptr %vco_init.i, i32 0, i32 4
  %23 = ptrtoint ptr %parent_hws.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %parent_hws.i, align 4
  %flags.i = getelementptr inbounds %struct.clk_init_data, ptr %vco_init.i, i32 0, i32 6
  %24 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 8, ptr %flags.i, align 4
  %25 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %phy, align 4
  %dev2.i = getelementptr inbounds %struct.platform_device, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %id, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.5, i32 noundef %28) #7
  %29 = ptrtoint ptr %phy4 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %phy4, align 4
  %id6.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %30, i32 0, i32 9
  %31 = ptrtoint ptr %id6.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %id6.i, align 4
  %call.i26 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %vco_name.i, i32 noundef 32, ptr noundef nonnull @.str.6, i32 noundef %32) #7
  %init.i = getelementptr inbounds %struct.clk_hw, ptr %call.i, i32 0, i32 2
  %33 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %vco_init.i, ptr %init.i, align 8
  %call8.i = call i32 @devm_clk_hw_register(ptr noundef %dev2.i, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %pll_10nm_register.exit.thread29

pll_10nm_register.exit.thread29:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %vco_init.i) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %parent4.i) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %parent3.i) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %parent2.i) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %vco_name.i) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %parent.i) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %clk_name.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %.compoundliteral.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %.compoundliteral108.i)
  br label %if.then7

if.end.i:                                         ; preds = %if.end
  %34 = ptrtoint ptr %phy4 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %phy4, align 4
  %id11.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %35, i32 0, i32 9
  %36 = ptrtoint ptr %id11.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %id11.i, align 4
  %call12.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %clk_name.i, i32 noundef 32, ptr noundef nonnull @.str.7, i32 noundef %37) #7
  %38 = ptrtoint ptr %phy4 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %phy4, align 4
  %id15.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %39, i32 0, i32 9
  %40 = ptrtoint ptr %id15.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %id15.i, align 4
  %call16.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %parent.i, i32 noundef 32, ptr noundef nonnull @.str.6, i32 noundef %41) #7
  %42 = ptrtoint ptr %phy4 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %phy4, align 4
  %pll_base.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %43, i32 0, i32 2
  %44 = ptrtoint ptr %pll_base.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pll_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %45, i32 320
  %call20.i = call ptr @__devm_clk_hw_register_divider(ptr noundef %dev2.i, ptr noundef null, ptr noundef nonnull %clk_name.i, ptr noundef nonnull %parent.i, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr.i, i8 noundef zeroext 0, i8 noundef zeroext 2, i8 noundef zeroext 2, ptr noundef null, ptr noundef null) #7
  %cmp.i.i = icmp ugt ptr %call20.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i.pll_10nm_register.exit_crit_edge, label %if.end24.i

if.end.i.pll_10nm_register.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pll_10nm_register.exit

if.end24.i:                                       ; preds = %if.end.i
  %46 = ptrtoint ptr %phy4 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %phy4, align 4
  %id27.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %47, i32 0, i32 9
  %48 = ptrtoint ptr %id27.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %id27.i, align 4
  %call28.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %clk_name.i, i32 noundef 32, ptr noundef nonnull @.str.8, i32 noundef %49) #7
  %50 = ptrtoint ptr %phy4 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %phy4, align 4
  %id31.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %51, i32 0, i32 9
  %52 = ptrtoint ptr %id31.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %id31.i, align 4
  %call32.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %parent.i, i32 noundef 32, ptr noundef nonnull @.str.7, i32 noundef %53) #7
  %54 = ptrtoint ptr %phy4 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %phy4, align 4
  %base.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base.i, align 4
  %add.ptr36.i = getelementptr i8, ptr %57, i32 16
  %call37.i = call ptr @__devm_clk_hw_register_divider(ptr noundef %dev2.i, ptr noundef null, ptr noundef nonnull %clk_name.i, ptr noundef nonnull %parent.i, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr36.i, i8 noundef zeroext 0, i8 noundef zeroext 4, i8 noundef zeroext 1, ptr noundef null, ptr noundef %postdiv_lock) #7
  %cmp.i206.i = icmp ugt ptr %call37.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i206.i, label %if.end24.i.pll_10nm_register.exit_crit_edge, label %if.end41.i

if.end24.i.pll_10nm_register.exit_crit_edge:      ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pll_10nm_register.exit

if.end41.i:                                       ; preds = %if.end24.i
  %58 = ptrtoint ptr %phy4 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %phy4, align 4
  %id44.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %59, i32 0, i32 9
  %60 = ptrtoint ptr %id44.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %id44.i, align 4
  %call45.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %clk_name.i, i32 noundef 32, ptr noundef nonnull @.str.9, i32 noundef %61) #7
  %62 = ptrtoint ptr %phy4 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %phy4, align 4
  %id48.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %63, i32 0, i32 9
  %64 = ptrtoint ptr %id48.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %id48.i, align 4
  %call49.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %parent.i, i32 noundef 32, ptr noundef nonnull @.str.8, i32 noundef %65) #7
  %call52.i = call ptr @devm_clk_hw_register_fixed_factor(ptr noundef %dev2.i, ptr noundef nonnull %clk_name.i, ptr noundef nonnull %parent.i, i32 noundef 4, i32 noundef 1, i32 noundef 8) #7
  %cmp.i207.i = icmp ugt ptr %call52.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i207.i, label %if.end41.i.pll_10nm_register.exit_crit_edge, label %if.end56.i

if.end41.i.pll_10nm_register.exit_crit_edge:      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pll_10nm_register.exit

if.end56.i:                                       ; preds = %if.end41.i
  %66 = ptrtoint ptr %hws to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call52.i, ptr %hws, align 4
  %67 = ptrtoint ptr %phy4 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %phy4, align 4
  %id59.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %68, i32 0, i32 9
  %69 = ptrtoint ptr %id59.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %id59.i, align 4
  %call60.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %clk_name.i, i32 noundef 32, ptr noundef nonnull @.str.10, i32 noundef %70) #7
  %71 = ptrtoint ptr %phy4 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %phy4, align 4
  %id63.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %72, i32 0, i32 9
  %73 = ptrtoint ptr %id63.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %id63.i, align 4
  %call64.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %parent.i, i32 noundef 32, ptr noundef nonnull @.str.8, i32 noundef %74) #7
  %call67.i = call ptr @devm_clk_hw_register_fixed_factor(ptr noundef %dev2.i, ptr noundef nonnull %clk_name.i, ptr noundef nonnull %parent.i, i32 noundef 0, i32 noundef 1, i32 noundef 2) #7
  %cmp.i208.i = icmp ugt ptr %call67.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i208.i, label %if.end56.i.pll_10nm_register.exit_crit_edge, label %if.end71.i

if.end56.i.pll_10nm_register.exit_crit_edge:      ; preds = %if.end56.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pll_10nm_register.exit

if.end71.i:                                       ; preds = %if.end56.i
  %75 = ptrtoint ptr %phy4 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %phy4, align 4
  %id74.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %76, i32 0, i32 9
  %77 = ptrtoint ptr %id74.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %id74.i, align 4
  %call75.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %clk_name.i, i32 noundef 32, ptr noundef nonnull @.str.11, i32 noundef %78) #7
  %79 = ptrtoint ptr %phy4 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %phy4, align 4
  %id78.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %80, i32 0, i32 9
  %81 = ptrtoint ptr %id78.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %id78.i, align 4
  %call79.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %parent.i, i32 noundef 32, ptr noundef nonnull @.str.7, i32 noundef %82) #7
  %call82.i = call ptr @devm_clk_hw_register_fixed_factor(ptr noundef %dev2.i, ptr noundef nonnull %clk_name.i, ptr noundef nonnull %parent.i, i32 noundef 0, i32 noundef 1, i32 noundef 4) #7
  %cmp.i209.i = icmp ugt ptr %call82.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i209.i, label %if.end71.i.pll_10nm_register.exit_crit_edge, label %if.end86.i

if.end71.i.pll_10nm_register.exit_crit_edge:      ; preds = %if.end71.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pll_10nm_register.exit

if.end86.i:                                       ; preds = %if.end71.i
  %83 = ptrtoint ptr %phy4 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %phy4, align 4
  %id89.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %84, i32 0, i32 9
  %85 = ptrtoint ptr %id89.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %id89.i, align 4
  %call90.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %clk_name.i, i32 noundef 32, ptr noundef nonnull @.str.12, i32 noundef %86) #7
  %87 = ptrtoint ptr %phy4 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %phy4, align 4
  %id93.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %88, i32 0, i32 9
  %89 = ptrtoint ptr %id93.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %id93.i, align 4
  %call94.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %parent.i, i32 noundef 32, ptr noundef nonnull @.str.8, i32 noundef %90) #7
  %91 = ptrtoint ptr %phy4 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %phy4, align 4
  %id97.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %92, i32 0, i32 9
  %93 = ptrtoint ptr %id97.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %id97.i, align 4
  %call98.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %parent2.i, i32 noundef 32, ptr noundef nonnull @.str.10, i32 noundef %94) #7
  %95 = ptrtoint ptr %phy4 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %phy4, align 4
  %id101.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %96, i32 0, i32 9
  %97 = ptrtoint ptr %id101.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %id101.i, align 4
  %call102.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %parent3.i, i32 noundef 32, ptr noundef nonnull @.str.7, i32 noundef %98) #7
  %99 = ptrtoint ptr %phy4 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %phy4, align 4
  %id105.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %100, i32 0, i32 9
  %101 = ptrtoint ptr %id105.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %id105.i, align 4
  %call106.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %parent4.i, i32 noundef 32, ptr noundef nonnull @.str.11, i32 noundef %102) #7
  %103 = ptrtoint ptr %.compoundliteral108.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %parent.i, ptr %.compoundliteral108.i, align 4
  %arrayinit.element.i = getelementptr inbounds ptr, ptr %.compoundliteral108.i, i32 1
  %104 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %parent2.i, ptr %arrayinit.element.i, align 4
  %arrayinit.element112.i = getelementptr inbounds ptr, ptr %.compoundliteral108.i, i32 2
  %105 = ptrtoint ptr %arrayinit.element112.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %parent3.i, ptr %arrayinit.element112.i, align 4
  %arrayinit.element114.i = getelementptr inbounds ptr, ptr %.compoundliteral108.i, i32 3
  %106 = ptrtoint ptr %arrayinit.element114.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %parent4.i, ptr %arrayinit.element114.i, align 4
  %107 = ptrtoint ptr %phy4 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %phy4, align 4
  %base118.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %108, i32 0, i32 1
  %109 = ptrtoint ptr %base118.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %base118.i, align 4
  %add.ptr119.i = getelementptr i8, ptr %110, i32 20
  %call120.i = call ptr @__devm_clk_hw_register_mux(ptr noundef %dev2.i, ptr noundef null, ptr noundef nonnull %clk_name.i, i8 noundef zeroext 4, ptr noundef nonnull %.compoundliteral108.i, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %add.ptr119.i, i8 noundef zeroext 0, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef null) #7
  %cmp.i210.i = icmp ugt ptr %call120.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i210.i, label %if.end86.i.pll_10nm_register.exit_crit_edge, label %if.end124.i

if.end86.i.pll_10nm_register.exit_crit_edge:      ; preds = %if.end86.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pll_10nm_register.exit

if.end124.i:                                      ; preds = %if.end86.i
  %111 = ptrtoint ptr %phy4 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %phy4, align 4
  %id127.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %112, i32 0, i32 9
  %113 = ptrtoint ptr %id127.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %id127.i, align 4
  %call128.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %clk_name.i, i32 noundef 32, ptr noundef nonnull @.str.13, i32 noundef %114) #7
  %115 = ptrtoint ptr %phy4 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %phy4, align 4
  %id131.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %116, i32 0, i32 9
  %117 = ptrtoint ptr %id131.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %id131.i, align 4
  %call132.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %parent.i, i32 noundef 32, ptr noundef nonnull @.str.12, i32 noundef %118) #7
  %119 = ptrtoint ptr %phy4 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %phy4, align 4
  %base136.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %120, i32 0, i32 1
  %121 = ptrtoint ptr %base136.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %base136.i, align 4
  %add.ptr137.i = getelementptr i8, ptr %122, i32 16
  %call139.i = call ptr @__devm_clk_hw_register_divider(ptr noundef %dev2.i, ptr noundef null, ptr noundef nonnull %clk_name.i, ptr noundef nonnull %parent.i, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %add.ptr137.i, i8 noundef zeroext 4, i8 noundef zeroext 4, i8 noundef zeroext 1, ptr noundef null, ptr noundef %postdiv_lock) #7
  %cmp.i211.i = icmp ugt ptr %call139.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i211.i, label %if.end124.i.pll_10nm_register.exit_crit_edge, label %pll_10nm_register.exit.thread

if.end124.i.pll_10nm_register.exit_crit_edge:     ; preds = %if.end124.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pll_10nm_register.exit

pll_10nm_register.exit.thread:                    ; preds = %if.end124.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx144.i = getelementptr %struct.clk_hw_onecell_data, ptr %9, i32 2
  %123 = ptrtoint ptr %arrayidx144.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %call139.i, ptr %arrayidx144.i, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %vco_init.i) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %parent4.i) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %parent3.i) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %parent2.i) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %vco_name.i) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %parent.i) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %clk_name.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %.compoundliteral.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %.compoundliteral108.i)
  %vco_hw = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 17
  %124 = ptrtoint ptr %vco_hw to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %call.i, ptr %vco_hw, align 4
  call void @msm_dsi_phy_pll_save_state(ptr noundef %phy) #7
  br label %cleanup

pll_10nm_register.exit:                           ; preds = %if.end124.i.pll_10nm_register.exit_crit_edge, %if.end86.i.pll_10nm_register.exit_crit_edge, %if.end71.i.pll_10nm_register.exit_crit_edge, %if.end56.i.pll_10nm_register.exit_crit_edge, %if.end41.i.pll_10nm_register.exit_crit_edge, %if.end24.i.pll_10nm_register.exit_crit_edge, %if.end.i.pll_10nm_register.exit_crit_edge
  %retval.0.i.in = phi ptr [ %call20.i, %if.end.i.pll_10nm_register.exit_crit_edge ], [ %call37.i, %if.end24.i.pll_10nm_register.exit_crit_edge ], [ %call52.i, %if.end41.i.pll_10nm_register.exit_crit_edge ], [ %call67.i, %if.end56.i.pll_10nm_register.exit_crit_edge ], [ %call82.i, %if.end71.i.pll_10nm_register.exit_crit_edge ], [ %call120.i, %if.end86.i.pll_10nm_register.exit_crit_edge ], [ %call139.i, %if.end124.i.pll_10nm_register.exit_crit_edge ]
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %vco_init.i) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %parent4.i) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %parent3.i) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %parent2.i) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %vco_name.i) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %parent.i) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %clk_name.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %.compoundliteral.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %.compoundliteral108.i)
  br label %if.then7

if.then7:                                         ; preds = %pll_10nm_register.exit, %pll_10nm_register.exit.thread29
  %retval.0.i32 = phi i32 [ %call8.i, %pll_10nm_register.exit.thread29 ], [ %retval.0.i, %pll_10nm_register.exit ]
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %retval.0.i32) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %pll_10nm_register.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i32, %if.then7 ], [ 0, %pll_10nm_register.exit.thread ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsi_10nm_phy_enable(ptr noundef %phy, ptr noundef %clk_req) #0 align 64 {
entry:
  %tx_dctrl.i = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %timing1 = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 12
  %base2 = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 1
  %0 = ptrtoint ptr %base2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base2, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.27) #7
  %call = tail call i32 @msm_dsi_dphy_timing_calc_v3(ptr noundef %timing1, ptr noundef %clk_req) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.dsi_10nm_phy_enable) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %base2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base2, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 56
  %call.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !98
  tail call void @arm_heavy_mb() #7
  %and.i = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool4.not = icmp eq i32 %and.i, 0
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %do.end

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.29) #10
  br label %if.end7

if.end7:                                          ; preds = %do.end, %if.end.if.end7_crit_edge
  %call8 = tail call i64 @ktime_get() #7
  %add.i = add i64 %call8, 1000000
  %add.ptr = getelementptr i8, ptr %1, i32 236
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !99
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !100
  %and148 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and148)
  %tobool13.not149 = icmp eq i32 %and148, 0
  br i1 %tobool13.not149, label %if.end7.land.lhs.true_crit_edge, label %if.end7.for.end_crit_edge

if.end7.for.end_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end7.land.lhs.true_crit_edge:                  ; preds = %if.end7
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %if.end7.land.lhs.true_crit_edge
  %call17 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call17, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call17, %add.i
  br i1 %cmp3.i, label %if.then19, label %cond.false

if.then19:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !99
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !101
  br label %for.end

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 1073740) #7
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !99
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !100
  %and = and i32 %12, 1
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %cond.false.land.lhs.true_crit_edge, label %cond.false.for.end_crit_edge

cond.false.for.end_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

for.end:                                          ; preds = %cond.false.for.end_crit_edge, %if.then19, %if.end7.for.end_crit_edge
  %status.0 = phi i32 [ %9, %if.then19 ], [ %7, %if.end7.for.end_crit_edge ], [ %12, %cond.false.for.end_crit_edge ]
  %and35 = and i32 %status.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %do.end41, label %if.end44

do.end41:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %call43 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #10
  br label %cleanup

if.end44:                                         ; preds = %for.end
  %add.ptr45 = getelementptr i8, ptr %1, i32 36
  tail call void @msm_writel(i32 noundef 96, ptr noundef %add.ptr45) #7
  %add.ptr46 = getelementptr i8, ptr %1, i32 56
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr46) #7
  %add.ptr47 = getelementptr i8, ptr %1, i32 28
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr47) #7
  %add.ptr48 = getelementptr i8, ptr %1, i32 24
  tail call void @msm_writel(i32 noundef 16, ptr noundef %add.ptr48) #7
  %add.ptr49 = getelementptr i8, ptr %1, i32 32
  tail call void @msm_writel(i32 noundef 89, ptr noundef %add.ptr49) #7
  %add.ptr50 = getelementptr i8, ptr %1, i32 48
  tail call void @msm_writel(i32 noundef 33, ptr noundef %add.ptr50) #7
  %add.ptr51 = getelementptr i8, ptr %1, i32 52
  tail call void @msm_writel(i32 noundef 132, ptr noundef %add.ptr51) #7
  %hs_halfbyte_en = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 12, i32 15
  %13 = ptrtoint ptr %hs_halfbyte_en to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %hs_halfbyte_en, align 4
  %conv = zext i8 %14 to i32
  %add.ptr52 = getelementptr i8, ptr %1, i32 172
  tail call void @msm_writel(i32 noundef %conv, ptr noundef %add.ptr52) #7
  %15 = ptrtoint ptr %timing1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %timing1, align 4
  %add.ptr53 = getelementptr i8, ptr %1, i32 176
  tail call void @msm_writel(i32 noundef %16, ptr noundef %add.ptr53) #7
  %clk_prepare = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 12, i32 2
  %17 = ptrtoint ptr %clk_prepare to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %clk_prepare, align 4
  %add.ptr54 = getelementptr i8, ptr %1, i32 180
  tail call void @msm_writel(i32 noundef %18, ptr noundef %add.ptr54) #7
  %clk_trail = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 12, i32 1
  %19 = ptrtoint ptr %clk_trail to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %clk_trail, align 4
  %add.ptr55 = getelementptr i8, ptr %1, i32 184
  tail call void @msm_writel(i32 noundef %20, ptr noundef %add.ptr55) #7
  %hs_exit = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 12, i32 3
  %21 = ptrtoint ptr %hs_exit to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %hs_exit, align 4
  %add.ptr56 = getelementptr i8, ptr %1, i32 188
  tail call void @msm_writel(i32 noundef %22, ptr noundef %add.ptr56) #7
  %hs_zero = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 12, i32 4
  %23 = ptrtoint ptr %hs_zero to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hs_zero, align 4
  %add.ptr57 = getelementptr i8, ptr %1, i32 192
  tail call void @msm_writel(i32 noundef %24, ptr noundef %add.ptr57) #7
  %hs_prepare = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 12, i32 5
  %25 = ptrtoint ptr %hs_prepare to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %hs_prepare, align 4
  %add.ptr58 = getelementptr i8, ptr %1, i32 196
  tail call void @msm_writel(i32 noundef %26, ptr noundef %add.ptr58) #7
  %hs_trail = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 12, i32 6
  %27 = ptrtoint ptr %hs_trail to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %hs_trail, align 4
  %add.ptr59 = getelementptr i8, ptr %1, i32 200
  tail call void @msm_writel(i32 noundef %28, ptr noundef %add.ptr59) #7
  %hs_rqst = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 12, i32 7
  %29 = ptrtoint ptr %hs_rqst to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %hs_rqst, align 4
  %add.ptr60 = getelementptr i8, ptr %1, i32 204
  tail call void @msm_writel(i32 noundef %30, ptr noundef %add.ptr60) #7
  %ta_go = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 12, i32 8
  %31 = ptrtoint ptr %ta_go to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ta_go, align 4
  %ta_sure = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 12, i32 9
  %33 = ptrtoint ptr %ta_sure to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ta_sure, align 4
  %shl = shl i32 %34, 3
  %or = or i32 %shl, %32
  %add.ptr61 = getelementptr i8, ptr %1, i32 208
  tail call void @msm_writel(i32 noundef %or, ptr noundef %add.ptr61) #7
  %ta_get = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 12, i32 10
  %35 = ptrtoint ptr %ta_get to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ta_get, align 4
  %add.ptr62 = getelementptr i8, ptr %1, i32 212
  tail call void @msm_writel(i32 noundef %36, ptr noundef %add.ptr62) #7
  %add.ptr63 = getelementptr i8, ptr %1, i32 216
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr63) #7
  tail call void @msm_writel(i32 noundef 127, ptr noundef %add.ptr45) #7
  %call66 = tail call i32 @msm_readl(ptr noundef %add.ptr45) #7
  %or67 = or i32 %call66, 31
  tail call void @msm_writel(i32 noundef %or67, ptr noundef %add.ptr45) #7
  %add.ptr69 = getelementptr i8, ptr %1, i32 152
  tail call void @msm_writel(i32 noundef 31, ptr noundef %add.ptr69) #7
  %add.ptr70 = getelementptr i8, ptr %1, i32 44
  tail call void @msm_writel(i32 noundef 64, ptr noundef %add.ptr70) #7
  %vco_hw.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 17
  %37 = ptrtoint ptr %vco_hw.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %vco_hw.i, align 4
  %39 = ptrtoint ptr %base2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base2, align 4
  %phy2.i = getelementptr inbounds %struct.dsi_pll_10nm, ptr %38, i32 0, i32 1
  %41 = ptrtoint ptr %phy2.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %phy2.i, align 4
  %id.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %42, i32 0, i32 9
  %43 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %id.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef %44) #7
  %usecase.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 14
  %45 = ptrtoint ptr %usecase.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %usecase.i, align 4
  %47 = zext i32 %46 to i64
  call void @__sanitizer_cov_trace_switch(i64 %47, ptr @__sancov_gen_cov_switch_values)
  switch i32 %46, label %if.then73 [
    i32 0, label %if.end44.if.end76_crit_edge
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb5.i
  ]

if.end44.if.end76_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76

sw.bb.i:                                          ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %phy2.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %phy2.i, align 4
  %id4.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %49, i32 0, i32 9
  %50 = ptrtoint ptr %id4.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %id4.i, align 4
  %add.i139 = add i32 %51, 1
  %rem.i = srem i32 %add.i139, 2
  %arrayidx.i = getelementptr [2 x ptr], ptr @pll_10nm_list, i32 0, i32 %rem.i
  %52 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx.i, align 4
  %slave.i = getelementptr inbounds %struct.dsi_pll_10nm, ptr %38, i32 0, i32 5
  %54 = ptrtoint ptr %slave.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %53, ptr %slave.i, align 4
  br label %if.end76

sw.bb5.i:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end76

if.then73:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %phy, align 4
  %dev75 = getelementptr inbounds %struct.platform_device, ptr %56, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev75, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.33, ptr noundef nonnull @__func__.dsi_10nm_phy_enable, i32 noundef -22) #7
  br label %cleanup

if.end76:                                         ; preds = %sw.bb5.i, %sw.bb.i, %if.end44.if.end76_crit_edge
  %data.0.i = phi i32 [ 4, %sw.bb5.i ], [ 0, %sw.bb.i ], [ %46, %if.end44.if.end76_crit_edge ]
  %add.ptr6.i = getelementptr i8, ptr %40, i32 20
  tail call void @msm_writel(i32 noundef %data.0.i, ptr noundef %add.ptr6.i) #7
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %tx_dctrl.i) #7
  %57 = call ptr @memcpy(ptr %tx_dctrl.i, ptr @__const.dsi_phy_hw_v3_0_lane_settings.tx_dctrl, i32 5)
  %lane_base1.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 4
  %58 = ptrtoint ptr %lane_base1.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %lane_base1.i, align 4
  %cfg.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 13
  %60 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %cfg.i, align 4
  %quirks.i = getelementptr inbounds %struct.msm_dsi_phy_cfg, ptr %61, i32 0, i32 6
  %62 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %quirks.i, align 4
  %and.i141 = and i32 %63, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i141)
  %tobool.not.i = icmp eq i32 %and.i141, 0
  br i1 %tobool.not.i, label %if.end76.if.end.i_crit_edge, label %if.then.i

if.end76.if.end.i_crit_edge:                      ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i142 = getelementptr inbounds [5 x i8], ptr %tx_dctrl.i, i32 0, i32 3
  %64 = ptrtoint ptr %arrayidx.i142 to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 2, ptr %arrayidx.i142, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end76.if.end.i_crit_edge
  %add.ptr.i143 = getelementptr i8, ptr %59, i32 36
  tail call void @msm_writel(i32 noundef 85, ptr noundef %add.ptr.i143) #7
  %add.ptr3.i = getelementptr i8, ptr %59, i32 40
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr3.i) #7
  %add.ptr5.i = getelementptr i8, ptr %59, i32 20
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr5.i) #7
  %add.ptr7.i = getelementptr i8, ptr %59, i32 24
  tail call void @msm_writel(i32 noundef 136, ptr noundef %add.ptr7.i) #7
  %add.ptr.1.i = getelementptr i8, ptr %59, i32 164
  tail call void @msm_writel(i32 noundef 85, ptr noundef %add.ptr.1.i) #7
  %add.ptr3.1.i = getelementptr i8, ptr %59, i32 168
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr3.1.i) #7
  %add.ptr5.1.i = getelementptr i8, ptr %59, i32 148
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr5.1.i) #7
  %add.ptr7.1.i = getelementptr i8, ptr %59, i32 152
  tail call void @msm_writel(i32 noundef 136, ptr noundef %add.ptr7.1.i) #7
  %add.ptr.2.i = getelementptr i8, ptr %59, i32 292
  tail call void @msm_writel(i32 noundef 85, ptr noundef %add.ptr.2.i) #7
  %add.ptr3.2.i = getelementptr i8, ptr %59, i32 296
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr3.2.i) #7
  %add.ptr5.2.i = getelementptr i8, ptr %59, i32 276
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr5.2.i) #7
  %add.ptr7.2.i = getelementptr i8, ptr %59, i32 280
  tail call void @msm_writel(i32 noundef 136, ptr noundef %add.ptr7.2.i) #7
  %add.ptr.3.i = getelementptr i8, ptr %59, i32 420
  tail call void @msm_writel(i32 noundef 85, ptr noundef %add.ptr.3.i) #7
  %add.ptr3.3.i = getelementptr i8, ptr %59, i32 424
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr3.3.i) #7
  %add.ptr5.3.i = getelementptr i8, ptr %59, i32 404
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr5.3.i) #7
  %add.ptr7.3.i = getelementptr i8, ptr %59, i32 408
  tail call void @msm_writel(i32 noundef 136, ptr noundef %add.ptr7.3.i) #7
  %add.ptr.4.i = getelementptr i8, ptr %59, i32 548
  tail call void @msm_writel(i32 noundef 85, ptr noundef %add.ptr.4.i) #7
  %add.ptr3.4.i = getelementptr i8, ptr %59, i32 552
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr3.4.i) #7
  %add.ptr5.4.i = getelementptr i8, ptr %59, i32 532
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr5.4.i) #7
  %add.ptr7.4.i = getelementptr i8, ptr %59, i32 536
  tail call void @msm_writel(i32 noundef 136, ptr noundef %add.ptr7.4.i) #7
  %65 = ptrtoint ptr %lane_base1.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %lane_base1.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %66, i32 40
  tail call void @msm_writel(i32 noundef 3, ptr noundef %add.ptr.i.i) #7
  br label %for.body10.i

for.body10.i:                                     ; preds = %for.body10.i.for.body10.i_crit_edge, %if.end.i
  %i.191.i = phi i32 [ 0, %if.end.i ], [ %inc28.i, %for.body10.i.for.body10.i_crit_edge ]
  %mul.i77.i = shl i32 %i.191.i, 7
  %add.ptr12.i = getelementptr i8, ptr %59, i32 %mul.i77.i
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr12.i) #7
  %add.i79.i = or i32 %mul.i77.i, 4
  %add.ptr14.i = getelementptr i8, ptr %59, i32 %add.i79.i
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr14.i) #7
  %add.i81.i = or i32 %mul.i77.i, 8
  %add.ptr16.i = getelementptr i8, ptr %59, i32 %add.i81.i
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr16.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.191.i)
  %cmp17.i = icmp eq i32 %i.191.i, 4
  %cond.i = select i1 %cmp17.i, i32 128, i32 0
  %add.i83.i = or i32 %mul.i77.i, 12
  %add.ptr19.i = getelementptr i8, ptr %59, i32 %add.i83.i
  tail call void @msm_writel(i32 noundef %cond.i, ptr noundef %add.ptr19.i) #7
  %add.i85.i = or i32 %mul.i77.i, 28
  %add.ptr21.i = getelementptr i8, ptr %59, i32 %add.i85.i
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr21.i) #7
  %add.i87.i = or i32 %mul.i77.i, 32
  %add.ptr23.i = getelementptr i8, ptr %59, i32 %add.i87.i
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr23.i) #7
  %arrayidx24.i = getelementptr [5 x i8], ptr %tx_dctrl.i, i32 0, i32 %i.191.i
  %67 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %arrayidx24.i, align 1
  %conv.i = zext i8 %68 to i32
  %add.i89.i = or i32 %mul.i77.i, 44
  %add.ptr26.i = getelementptr i8, ptr %59, i32 %add.i89.i
  tail call void @msm_writel(i32 noundef %conv.i, ptr noundef %add.ptr26.i) #7
  %inc28.i = add nuw nsw i32 %i.191.i, 1
  %exitcond.not.i = icmp eq i32 %inc28.i, 5
  br i1 %exitcond.not.i, label %for.end29.i, label %for.body10.i.for.body10.i_crit_edge

for.body10.i.for.body10.i_crit_edge:              ; preds = %for.body10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body10.i

for.end29.i:                                      ; preds = %for.body10.i
  %69 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %cfg.i, align 4
  %quirks31.i = getelementptr inbounds %struct.msm_dsi_phy_cfg, ptr %70, i32 0, i32 6
  %71 = ptrtoint ptr %quirks31.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %quirks31.i, align 4
  %and32.i = and i32 %72, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %tobool33.not.i = icmp eq i32 %and32.i, 0
  br i1 %tobool33.not.i, label %if.then34.i, label %for.end29.i.dsi_phy_hw_v3_0_lane_settings.exit_crit_edge

for.end29.i.dsi_phy_hw_v3_0_lane_settings.exit_crit_edge: ; preds = %for.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dsi_phy_hw_v3_0_lane_settings.exit

if.then34.i:                                      ; preds = %for.end29.i
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr36.i = getelementptr i8, ptr %59, i32 428
  tail call void @msm_writel(i32 noundef 5, ptr noundef %add.ptr36.i) #7
  tail call void @msm_writel(i32 noundef 4, ptr noundef %add.ptr36.i) #7
  br label %dsi_phy_hw_v3_0_lane_settings.exit

dsi_phy_hw_v3_0_lane_settings.exit:               ; preds = %if.then34.i, %for.end29.i.dsi_phy_hw_v3_0_lane_settings.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %tx_dctrl.i) #7
  %id = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 9
  %73 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %id, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.34, i32 noundef %74) #7
  br label %cleanup

cleanup:                                          ; preds = %dsi_phy_hw_v3_0_lane_settings.exit, %if.then73, %do.end41, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %do.end41 ], [ -22, %if.then73 ], [ 0, %dsi_phy_hw_v3_0_lane_settings.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dsi_10nm_phy_disable(ptr nocapture noundef readonly %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base1 = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 1
  %0 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base1, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.27) #7
  %2 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base1, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 56
  %call.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !98
  tail call void @arm_heavy_mb() #7
  %and.i = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.35) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %lane_base1.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 4
  %4 = ptrtoint ptr %lane_base1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lane_base1.i, align 4
  %add.ptr.i17 = getelementptr i8, ptr %5, i32 40
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i17) #7
  %add.ptr = getelementptr i8, ptr %1, i32 36
  %call3 = tail call i32 @msm_readl(ptr noundef %add.ptr) #7
  %and = and i32 %call3, -32
  tail call void @msm_writel(i32 noundef %and, ptr noundef %add.ptr) #7
  %add.ptr5 = getelementptr i8, ptr %1, i32 152
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr5) #7
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !102
  tail call void @arm_heavy_mb() #7
  %id = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 9
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.37, i32 noundef %7) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dsi_10nm_pll_save_state(ptr nocapture noundef readonly %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vco_hw = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 17
  %0 = ptrtoint ptr %vco_hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vco_hw, align 4
  %phy1 = getelementptr inbounds %struct.dsi_pll_10nm, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %phy1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy1, align 4
  %base = getelementptr inbounds %struct.msm_dsi_phy, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %pll_base = getelementptr inbounds %struct.msm_dsi_phy, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %pll_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pll_base, align 4
  %add.ptr3 = getelementptr i8, ptr %7, i32 320
  %call = tail call i32 @msm_readl(ptr noundef %add.ptr3) #7
  %pll_out_div = getelementptr inbounds %struct.dsi_pll_10nm, ptr %1, i32 0, i32 4, i32 3
  %8 = trunc i32 %call to i8
  %conv6 = and i8 %8, 3
  %9 = ptrtoint ptr %pll_out_div to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv6, ptr %pll_out_div, align 2
  %add.ptr7 = getelementptr i8, ptr %5, i32 16
  %call8 = tail call i32 @msm_readl(ptr noundef %add.ptr7) #7
  %10 = trunc i32 %call8 to i8
  %conv10 = and i8 %10, 15
  %bit_clk_div = getelementptr inbounds %struct.dsi_pll_10nm, ptr %1, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %bit_clk_div to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv10, ptr %bit_clk_div, align 4
  %12 = lshr i8 %10, 4
  %pix_clk_div = getelementptr inbounds %struct.dsi_pll_10nm, ptr %1, i32 0, i32 4, i32 2
  %13 = ptrtoint ptr %pix_clk_div to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %pix_clk_div, align 1
  %add.ptr13 = getelementptr i8, ptr %5, i32 20
  %call14 = tail call i32 @msm_readl(ptr noundef %add.ptr13) #7
  %14 = trunc i32 %call14 to i8
  %conv16 = and i8 %14, 3
  %pll_mux = getelementptr inbounds %struct.dsi_pll_10nm, ptr %1, i32 0, i32 4, i32 4
  %15 = ptrtoint ptr %pll_mux to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv16, ptr %pll_mux, align 1
  %16 = ptrtoint ptr %phy1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %phy1, align 4
  %id = getelementptr inbounds %struct.msm_dsi_phy, ptr %17, i32 0, i32 9
  %18 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id, align 4
  %20 = ptrtoint ptr %pll_out_div to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %pll_out_div, align 2
  %conv19 = zext i8 %21 to i32
  %22 = ptrtoint ptr %bit_clk_div to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %bit_clk_div, align 4
  %conv21 = zext i8 %23 to i32
  %24 = ptrtoint ptr %pix_clk_div to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %pix_clk_div, align 1
  %conv23 = zext i8 %25 to i32
  %conv25 = zext i8 %conv16 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.38, i32 noundef %19, i32 noundef %conv19, i32 noundef %conv21, i32 noundef %conv23, i32 noundef %conv25) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsi_10nm_pll_restore_state(ptr nocapture noundef readonly %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vco_hw = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 17
  %0 = ptrtoint ptr %vco_hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vco_hw, align 4
  %phy1 = getelementptr inbounds %struct.dsi_pll_10nm, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %phy1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy1, align 4
  %base = getelementptr inbounds %struct.msm_dsi_phy, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %pll_base = getelementptr inbounds %struct.msm_dsi_phy, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %pll_base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pll_base, align 4
  %add.ptr3 = getelementptr i8, ptr %7, i32 320
  %call = tail call i32 @msm_readl(ptr noundef %add.ptr3) #7
  %and = and i32 %call, -4
  %pll_out_div = getelementptr inbounds %struct.dsi_pll_10nm, ptr %1, i32 0, i32 4, i32 3
  %8 = ptrtoint ptr %pll_out_div to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %pll_out_div, align 2
  %conv = zext i8 %9 to i32
  %or = or i32 %and, %conv
  %10 = ptrtoint ptr %phy1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phy1, align 4
  %pll_base5 = getelementptr inbounds %struct.msm_dsi_phy, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %pll_base5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pll_base5, align 4
  %add.ptr6 = getelementptr i8, ptr %13, i32 320
  tail call void @msm_writel(i32 noundef %or, ptr noundef %add.ptr6) #7
  %bit_clk_div = getelementptr inbounds %struct.dsi_pll_10nm, ptr %1, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %bit_clk_div to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bit_clk_div, align 4
  %conv7 = zext i8 %15 to i32
  %pix_clk_div = getelementptr inbounds %struct.dsi_pll_10nm, ptr %1, i32 0, i32 4, i32 2
  %16 = ptrtoint ptr %pix_clk_div to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %pix_clk_div, align 1
  %conv8 = zext i8 %17 to i32
  %shl = shl nuw nsw i32 %conv8, 4
  %or9 = or i32 %shl, %conv7
  %add.ptr10 = getelementptr i8, ptr %5, i32 16
  tail call void @msm_writel(i32 noundef %or9, ptr noundef %add.ptr10) #7
  %add.ptr11 = getelementptr i8, ptr %5, i32 20
  %call12 = tail call i32 @msm_readl(ptr noundef %add.ptr11) #7
  %and13 = and i32 %call12, -4
  %pll_mux = getelementptr inbounds %struct.dsi_pll_10nm, ptr %1, i32 0, i32 4, i32 4
  %18 = ptrtoint ptr %pll_mux to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %pll_mux, align 1
  %conv14 = zext i8 %19 to i32
  %or15 = or i32 %and13, %conv14
  tail call void @msm_writel(i32 noundef %or15, ptr noundef %add.ptr11) #7
  %20 = ptrtoint ptr %vco_hw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vco_hw, align 4
  %vco_current_rate = getelementptr inbounds %struct.dsi_pll_10nm, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %vco_current_rate to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %vco_current_rate, align 8
  %conv18 = trunc i64 %23 to i32
  %call19 = tail call i32 @dsi_pll_10nm_vco_set_rate(ptr noundef %21, i32 noundef %conv18, i32 noundef 19200000)
  %24 = ptrtoint ptr %phy1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %phy1, align 4
  %id = getelementptr inbounds %struct.msm_dsi_phy, ptr %25, i32 0, i32 9
  %26 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %id, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef %27) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @drm_dev_printk(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_dsi_phy_pll_save_state(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

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
define internal i32 @dsi_pll_10nm_vco_prepare(ptr nocapture noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %phy = getelementptr inbounds %struct.dsi_pll_10nm, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %base.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 36
  %call.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #7
  %or.i = or i32 %call.i, 32
  %6 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy, align 4
  %base2.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %base2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base2.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %9, i32 36
  tail call void @msm_writel(i32 noundef %or.i, ptr noundef %add.ptr3.i) #7
  %10 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phy, align 4
  %pll_base.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %pll_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pll_base.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %13, i32 36
  tail call void @msm_writel(i32 noundef 192, ptr noundef %add.ptr5.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748) #7
  %slave = getelementptr inbounds %struct.dsi_pll_10nm, ptr %hw, i32 0, i32 5
  %15 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %slave, align 4
  %tobool.not = icmp eq ptr %16, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %phy.i54 = getelementptr inbounds %struct.dsi_pll_10nm, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %phy.i54 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %phy.i54, align 4
  %base.i55 = getelementptr inbounds %struct.msm_dsi_phy, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %base.i55 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i55, align 4
  %add.ptr.i56 = getelementptr i8, ptr %20, i32 36
  %call.i57 = tail call i32 @msm_readl(ptr noundef %add.ptr.i56) #7
  %or.i58 = or i32 %call.i57, 32
  %21 = ptrtoint ptr %phy.i54 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %phy.i54, align 4
  %base2.i59 = getelementptr inbounds %struct.msm_dsi_phy, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %base2.i59 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base2.i59, align 4
  %add.ptr3.i60 = getelementptr i8, ptr %24, i32 36
  tail call void @msm_writel(i32 noundef %or.i58, ptr noundef %add.ptr3.i60) #7
  %25 = ptrtoint ptr %phy.i54 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %phy.i54, align 4
  %pll_base.i61 = getelementptr inbounds %struct.msm_dsi_phy, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %pll_base.i61 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pll_base.i61, align 4
  %add.ptr5.i62 = getelementptr i8, ptr %28, i32 36
  tail call void @msm_writel(i32 noundef 192, ptr noundef %add.ptr5.i62) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %vco_current_rate = getelementptr inbounds %struct.dsi_pll_10nm, ptr %hw, i32 0, i32 2
  %30 = ptrtoint ptr %vco_current_rate to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %vco_current_rate, align 8
  %conv = trunc i64 %31 to i32
  %call = tail call i32 @dsi_pll_10nm_vco_set_rate(ptr noundef %hw, i32 noundef %conv, i32 noundef 0)
  %32 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %phy, align 4
  %base = getelementptr inbounds %struct.msm_dsi_phy, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base, align 4
  %add.ptr7 = getelementptr i8, ptr %35, i32 56
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr7) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !103
  tail call void @arm_heavy_mb() #7
  %36 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %phy, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %37, align 4
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %39, i32 0, i32 3
  %call.i64 = tail call i64 @ktime_get() #7
  %add.i.i = add i64 %call.i64, 5000000
  %40 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %phy, align 4
  %pll_base45.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %pll_base45.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pll_base45.i, align 4
  %add.ptr46.i = getelementptr i8, ptr %43, i32 416
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr46.i) #7, !srcloc !99
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !104
  %and47.i = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and47.i)
  %cmp.not48.i = icmp eq i32 %and47.i, 0
  br i1 %cmp.not48.i, label %if.end.land.lhs.true.i_crit_edge, label %if.end.for.end.i_crit_edge

if.end.for.end.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

if.end.land.lhs.true.i_crit_edge:                 ; preds = %if.end
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %if.end.land.lhs.true.i_crit_edge
  %call6.i = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call6.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call6.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then9.i, label %cond.false.i

if.then9.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %46 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %phy, align 4
  %pll_base13.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %47, i32 0, i32 2
  %48 = ptrtoint ptr %pll_base13.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pll_base13.i, align 4
  %add.ptr14.i = getelementptr i8, ptr %49, i32 416
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i) #7, !srcloc !99
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  br label %for.end.i

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %52 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %52(i32 noundef 21474800) #7
  %53 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %phy, align 4
  %pll_base.i65 = getelementptr inbounds %struct.msm_dsi_phy, ptr %54, i32 0, i32 2
  %55 = ptrtoint ptr %pll_base.i65 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pll_base.i65, align 4
  %add.ptr.i66 = getelementptr i8, ptr %56, i32 416
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i66) #7, !srcloc !99
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !104
  %and.i = and i32 %58, 1
  %cmp.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp.not.i, label %cond.false.i.land.lhs.true.i_crit_edge, label %cond.false.i.for.end.i_crit_edge

cond.false.i.for.end.i_crit_edge:                 ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i

for.end.i:                                        ; preds = %cond.false.i.for.end.i_crit_edge, %if.then9.i, %if.end.for.end.i_crit_edge
  %status.0.i = phi i32 [ %51, %if.then9.i ], [ %45, %if.end.for.end.i_crit_edge ], [ %58, %cond.false.i.for.end.i_crit_edge ]
  %and27.i = and i32 %status.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27.i)
  %cmp28.not.i = icmp eq i32 %and27.i, 0
  %59 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %phy, align 4
  br i1 %cmp28.not.i, label %if.then10, label %if.end12

if.then10:                                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %id.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %60, i32 0, i32 9
  %61 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %id.i, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1.i, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.16, i32 noundef %62, i32 noundef %status.0.i) #7
  %63 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %phy, align 4
  %id = getelementptr inbounds %struct.msm_dsi_phy, ptr %64, i32 0, i32 9
  %65 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %id, align 4
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.15, i32 noundef %66) #7
  br label %cleanup

if.end12:                                         ; preds = %for.end.i
  %pll_on = getelementptr inbounds %struct.msm_dsi_phy, ptr %60, i32 0, i32 18
  %67 = ptrtoint ptr %pll_on to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 1, ptr %pll_on, align 4
  %68 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %phy, align 4
  %base.i68 = getelementptr inbounds %struct.msm_dsi_phy, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %base.i68 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %base.i68, align 4
  %add.ptr.i69 = getelementptr i8, ptr %71, i32 20
  %call.i70 = tail call i32 @msm_readl(ptr noundef %add.ptr.i69) #7
  %or.i71 = or i32 %call.i70, 32
  %72 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %phy, align 4
  %base2.i72 = getelementptr inbounds %struct.msm_dsi_phy, ptr %73, i32 0, i32 1
  %74 = ptrtoint ptr %base2.i72 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %base2.i72, align 4
  %add.ptr3.i73 = getelementptr i8, ptr %75, i32 20
  tail call void @msm_writel(i32 noundef %or.i71, ptr noundef %add.ptr3.i73) #7
  %76 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %slave, align 4
  %tobool15.not = icmp eq ptr %77, null
  br i1 %tobool15.not, label %if.end12.if.end18_crit_edge, label %if.then16

if.end12.if.end18_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end18

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %phy.i74 = getelementptr inbounds %struct.dsi_pll_10nm, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %phy.i74 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %phy.i74, align 4
  %base.i75 = getelementptr inbounds %struct.msm_dsi_phy, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %base.i75 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %base.i75, align 4
  %add.ptr.i76 = getelementptr i8, ptr %81, i32 20
  %call.i77 = tail call i32 @msm_readl(ptr noundef %add.ptr.i76) #7
  %or.i78 = or i32 %call.i77, 32
  %82 = ptrtoint ptr %phy.i74 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %phy.i74, align 4
  %base2.i79 = getelementptr inbounds %struct.msm_dsi_phy, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %base2.i79 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %base2.i79, align 4
  %add.ptr3.i80 = getelementptr i8, ptr %85, i32 20
  tail call void @msm_writel(i32 noundef %or.i78, ptr noundef %add.ptr3.i80) #7
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end12.if.end18_crit_edge
  %86 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %phy, align 4
  %base20 = getelementptr inbounds %struct.msm_dsi_phy, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %base20 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %base20, align 4
  %add.ptr21 = getelementptr i8, ptr %89, i32 28
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr21) #7
  %90 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %slave, align 4
  %tobool23.not = icmp eq ptr %91, null
  br i1 %tobool23.not, label %if.end18.cleanup_crit_edge, label %if.then24

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then24:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %phy26 = getelementptr inbounds %struct.dsi_pll_10nm, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %phy26 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %phy26, align 4
  %base27 = getelementptr inbounds %struct.msm_dsi_phy, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %base27 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %base27, align 4
  %add.ptr28 = getelementptr i8, ptr %95, i32 28
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr28) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then24, %if.end18.cleanup_crit_edge, %if.then10
  %cond.i83 = phi i32 [ -110, %if.then10 ], [ 0, %if.then24 ], [ 0, %if.end18.cleanup_crit_edge ]
  ret i32 %cond.i83
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dsi_pll_10nm_vco_unprepare(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %phy.i = getelementptr inbounds %struct.dsi_pll_10nm, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy.i, align 4
  %base.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 20
  %call.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #7
  %and.i = and i32 %call.i, -33
  %4 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy.i, align 4
  %base2.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %base2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base2.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %7, i32 20
  tail call void @msm_writel(i32 noundef %and.i, ptr noundef %add.ptr3.i) #7
  %8 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy.i, align 4
  %base = getelementptr inbounds %struct.msm_dsi_phy, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base, align 4
  %add.ptr1 = getelementptr i8, ptr %11, i32 56
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr1) #7
  %12 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phy.i, align 4
  %base.i12 = getelementptr inbounds %struct.msm_dsi_phy, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %base.i12 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i12, align 4
  %add.ptr.i13 = getelementptr i8, ptr %15, i32 28
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i13) #7
  %16 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %phy.i, align 4
  %base.i.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 36
  %call.i.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i.i) #7
  %20 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %phy.i, align 4
  %pll_base.i.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %pll_base.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pll_base.i.i, align 4
  %add.ptr2.i.i = getelementptr i8, ptr %23, i32 36
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr2.i.i) #7
  %and.i.i = and i32 %call.i.i, -33
  %24 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %phy.i, align 4
  %base4.i.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %base4.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base4.i.i, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %27, i32 36
  tail call void @msm_writel(i32 noundef %and.i.i, ptr noundef %add.ptr5.i.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748) #7
  %slave = getelementptr inbounds %struct.dsi_pll_10nm, ptr %hw, i32 0, i32 5
  %29 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %slave, align 4
  %tobool.not = icmp eq ptr %30, null
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %phy.i14 = getelementptr inbounds %struct.dsi_pll_10nm, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %phy.i14 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %phy.i14, align 4
  %base.i15 = getelementptr inbounds %struct.msm_dsi_phy, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %base.i15 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i15, align 4
  %add.ptr.i16 = getelementptr i8, ptr %34, i32 20
  %call.i17 = tail call i32 @msm_readl(ptr noundef %add.ptr.i16) #7
  %and.i18 = and i32 %call.i17, -33
  %35 = ptrtoint ptr %phy.i14 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %phy.i14, align 4
  %base2.i19 = getelementptr inbounds %struct.msm_dsi_phy, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %base2.i19 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base2.i19, align 4
  %add.ptr3.i20 = getelementptr i8, ptr %38, i32 20
  tail call void @msm_writel(i32 noundef %and.i18, ptr noundef %add.ptr3.i20) #7
  %39 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %slave, align 4
  %phy.i21 = getelementptr inbounds %struct.dsi_pll_10nm, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %phy.i21 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %phy.i21, align 4
  %base.i22 = getelementptr inbounds %struct.msm_dsi_phy, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %base.i22 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i22, align 4
  %add.ptr.i23 = getelementptr i8, ptr %44, i32 28
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i23) #7
  %45 = ptrtoint ptr %phy.i21 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %phy.i21, align 4
  %base.i.i24 = getelementptr inbounds %struct.msm_dsi_phy, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %base.i.i24 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base.i.i24, align 4
  %add.ptr.i.i25 = getelementptr i8, ptr %48, i32 36
  %call.i.i26 = tail call i32 @msm_readl(ptr noundef %add.ptr.i.i25) #7
  %49 = ptrtoint ptr %phy.i21 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %phy.i21, align 4
  %pll_base.i.i27 = getelementptr inbounds %struct.msm_dsi_phy, ptr %50, i32 0, i32 2
  %51 = ptrtoint ptr %pll_base.i.i27 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pll_base.i.i27, align 4
  %add.ptr2.i.i28 = getelementptr i8, ptr %52, i32 36
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr2.i.i28) #7
  %and.i.i29 = and i32 %call.i.i26, -33
  %53 = ptrtoint ptr %phy.i21 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %phy.i21, align 4
  %base4.i.i30 = getelementptr inbounds %struct.msm_dsi_phy, ptr %54, i32 0, i32 1
  %55 = ptrtoint ptr %base4.i.i30 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base4.i.i30, align 4
  %add.ptr5.i.i31 = getelementptr i8, ptr %56, i32 36
  tail call void @msm_writel(i32 noundef %and.i.i29, ptr noundef %add.ptr5.i.i31) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %57 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %57(i32 noundef 214748) #7
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !106
  tail call void @arm_heavy_mb() #7
  %58 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %phy.i, align 4
  %pll_on = getelementptr inbounds %struct.msm_dsi_phy, ptr %59, i32 0, i32 18
  %60 = ptrtoint ptr %pll_on to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %pll_on, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsi_pll_10nm_vco_recalc_rate(ptr nocapture noundef %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %phy = getelementptr inbounds %struct.dsi_pll_10nm, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 4
  %pll_base = getelementptr inbounds %struct.msm_dsi_phy, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pll_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pll_base, align 4
  %add.ptr1 = getelementptr i8, ptr %3, i32 204
  %call = tail call i32 @msm_readl(ptr noundef %add.ptr1) #7
  %and = and i32 %call, 255
  %add.ptr2 = getelementptr i8, ptr %3, i32 208
  %call3 = tail call i32 @msm_readl(ptr noundef %add.ptr2) #7
  %add.ptr4 = getelementptr i8, ptr %3, i32 212
  %call5 = tail call i32 @msm_readl(ptr noundef %add.ptr4) #7
  %and6 = shl i32 %call5, 8
  %shl = and i32 %and6, 65280
  %or = or i32 %shl, %call3
  %add.ptr7 = getelementptr i8, ptr %3, i32 216
  %call8 = tail call i32 @msm_readl(ptr noundef %add.ptr7) #7
  %and9 = shl i32 %call8, 16
  %shl10 = and i32 %and9, 196608
  %or11 = or i32 %or, %shl10
  %conv = zext i32 %and to i64
  %mul12 = mul nuw nsw i64 %conv, 38400000
  %conv14 = zext i32 %or11 to i64
  %mul15 = mul nuw nsw i64 %conv14, 38400000
  %shr.i.i = lshr i64 %mul15, 18
  %add = add nuw nsw i64 %shr.i.i, %mul12
  %vco_current_rate = getelementptr inbounds %struct.dsi_pll_10nm, ptr %hw, i32 0, i32 2
  %4 = ptrtoint ptr %vco_current_rate to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %add, ptr %vco_current_rate, align 8
  %5 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %phy, align 4
  %id = getelementptr inbounds %struct.msm_dsi_phy, ptr %6, i32 0, i32 9
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id, align 4
  %conv19 = trunc i64 %add to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.17, i32 noundef %8, i32 noundef %conv19, i32 noundef %and, i32 noundef %or11) #7
  ret i32 %conv19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dsi_pll_10nm_clk_round_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, ptr nocapture noundef readnone %parent_rate) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %phy = getelementptr inbounds %struct.dsi_pll_10nm, ptr %hw, i32 0, i32 1
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
define internal i32 @dsi_pll_10nm_vco_set_rate(ptr nocapture noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  %config = alloca %struct.dsi_pll_config, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %config) #7
  %0 = call ptr @memset(ptr %config, i32 255, i32 40)
  %phy = getelementptr inbounds %struct.dsi_pll_10nm, ptr %hw, i32 0, i32 1
  %1 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %phy, align 4
  %id = getelementptr inbounds %struct.msm_dsi_phy, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.18, i32 noundef %4, i32 noundef %rate, i32 noundef %parent_rate) #7
  %conv = zext i32 %rate to i64
  %vco_current_rate = getelementptr inbounds %struct.dsi_pll_10nm, ptr %hw, i32 0, i32 2
  %5 = ptrtoint ptr %vco_current_rate to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %conv, ptr %vco_current_rate, align 8
  %ssc_freq.i = getelementptr inbounds %struct.dsi_pll_config, ptr %config, i32 0, i32 2
  %6 = ptrtoint ptr %ssc_freq.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 31500, ptr %ssc_freq.i, align 4
  %ssc_offset.i = getelementptr inbounds %struct.dsi_pll_config, ptr %config, i32 0, i32 3
  %7 = ptrtoint ptr %ssc_offset.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 5000, ptr %ssc_offset.i, align 4
  %ssc_adj_per.i = getelementptr inbounds %struct.dsi_pll_config, ptr %config, i32 0, i32 4
  %8 = ptrtoint ptr %ssc_adj_per.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 2, ptr %ssc_adj_per.i, align 4
  %9 = ptrtoint ptr %config to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %config, align 4
  %ssc_center.i = getelementptr inbounds %struct.dsi_pll_config, ptr %config, i32 0, i32 1
  %10 = ptrtoint ptr %ssc_center.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %ssc_center.i, align 1
  %mul1.i = shl nuw nsw i64 %conv, 18
  %11 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -2327733145514495953, i64 %mul1.i) #11, !srcloc !107
  %12 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -2327733145514495953, i64 %mul1.i, i64 %11, i32 0) #11, !srcloc !108
  call void @__sanitizer_cov_trace_const_cmp4(i32 1900000001, i32 %rate)
  %cmp.i = icmp ult i32 %rate, 1900000001
  br i1 %cmp.i, label %if.end11.i, label %if.else.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1294967295, i32 %rate)
  %cmp5.i = icmp ult i32 %rate, -1294967295
  %pll_prop_gain_rate8.i = getelementptr inbounds %struct.dsi_pll_config, ptr %config, i32 0, i32 5
  %..i = select i1 %cmp5.i, i32 10, i32 12
  %13 = ptrtoint ptr %pll_prop_gain_rate8.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %..i, ptr %pll_prop_gain_rate8.i, align 4
  br label %if.else15.i

if.end11.i:                                       ; preds = %entry
  %pll_prop_gain_rate.i = getelementptr inbounds %struct.dsi_pll_config, ptr %config, i32 0, i32 5
  %14 = ptrtoint ptr %pll_prop_gain_rate.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 8, ptr %pll_prop_gain_rate.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1100000000, i32 %rate)
  %cmp12.i = icmp ult i32 %rate, 1100000000
  br i1 %cmp12.i, label %if.end11.i.dsi_pll_calc_dec_frac.exit_crit_edge, label %if.end11.i.if.else15.i_crit_edge

if.end11.i.if.else15.i_crit_edge:                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else15.i

if.end11.i.dsi_pll_calc_dec_frac.exit_crit_edge:  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dsi_pll_calc_dec_frac.exit

if.else15.i:                                      ; preds = %if.end11.i.if.else15.i_crit_edge, %if.else.i
  br label %dsi_pll_calc_dec_frac.exit

dsi_pll_calc_dec_frac.exit:                       ; preds = %if.else15.i, %if.end11.i.dsi_pll_calc_dec_frac.exit_crit_edge
  %.sink31.i = phi i32 [ 0, %if.else15.i ], [ 8, %if.end11.i.dsi_pll_calc_dec_frac.exit_crit_edge ]
  %pll_clock_inverters16.i = getelementptr inbounds %struct.dsi_pll_config, ptr %config, i32 0, i32 8
  %15 = ptrtoint ptr %pll_clock_inverters16.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %.sink31.i, ptr %pll_clock_inverters16.i, align 4
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %12, 0
  %div158.i.i30.i = lshr i64 %asmresult10.i.i.i.i, 25
  %shr.i.i = lshr i64 %asmresult10.i.i.i.i, 43
  %16 = trunc i64 %div158.i.i30.i to i32
  %conv1.i.i = and i32 %16, 262143
  %conv18.i = trunc i64 %shr.i.i to i32
  %decimal_div_start.i = getelementptr inbounds %struct.dsi_pll_config, ptr %config, i32 0, i32 6
  %17 = ptrtoint ptr %decimal_div_start.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv18.i, ptr %decimal_div_start.i, align 4
  %frac_div_start.i = getelementptr inbounds %struct.dsi_pll_config, ptr %config, i32 0, i32 7
  %18 = ptrtoint ptr %frac_div_start.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv1.i.i, ptr %frac_div_start.i, align 4
  call fastcc void @dsi_pll_calc_ssc(ptr noundef nonnull %config)
  %19 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %phy, align 4
  %pll_base.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %pll_base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pll_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %22, i32 168
  tail call void @msm_writel(i32 noundef 18, ptr noundef %add.ptr.i) #7
  %23 = ptrtoint ptr %decimal_div_start.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %decimal_div_start.i, align 4
  %add.ptr1.i = getelementptr i8, ptr %22, i32 204
  tail call void @msm_writel(i32 noundef %24, ptr noundef %add.ptr1.i) #7
  %25 = ptrtoint ptr %frac_div_start.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %frac_div_start.i, align 4
  %and.i = and i32 %26, 255
  %add.ptr2.i = getelementptr i8, ptr %22, i32 208
  tail call void @msm_writel(i32 noundef %and.i, ptr noundef %add.ptr2.i) #7
  %and4.i = lshr i32 %26, 8
  %shr.i = and i32 %and4.i, 255
  %add.ptr5.i = getelementptr i8, ptr %22, i32 212
  tail call void @msm_writel(i32 noundef %shr.i, ptr noundef %add.ptr5.i) #7
  %and7.i = lshr i32 %26, 16
  %shr8.i = and i32 %and7.i, 3
  %add.ptr9.i = getelementptr i8, ptr %22, i32 216
  tail call void @msm_writel(i32 noundef %shr8.i, ptr noundef %add.ptr9.i) #7
  %add.ptr10.i = getelementptr i8, ptr %22, i32 324
  tail call void @msm_writel(i32 noundef 64, ptr noundef %add.ptr10.i) #7
  %add.ptr11.i = getelementptr i8, ptr %22, i32 388
  tail call void @msm_writel(i32 noundef 6, ptr noundef %add.ptr11.i) #7
  %add.ptr12.i = getelementptr i8, ptr %22, i32 44
  tail call void @msm_writel(i32 noundef 16, ptr noundef %add.ptr12.i) #7
  %27 = ptrtoint ptr %pll_clock_inverters16.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %pll_clock_inverters16.i, align 4
  %add.ptr13.i = getelementptr i8, ptr %22, i32 396
  tail call void @msm_writel(i32 noundef %28, ptr noundef %add.ptr13.i) #7
  %29 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %phy, align 4
  %pll_base.i11 = getelementptr inbounds %struct.msm_dsi_phy, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %pll_base.i11 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %pll_base.i11, align 4
  tail call void @msm_writel(i32 noundef 128, ptr noundef %32) #7
  %add.ptr1.i12 = getelementptr i8, ptr %32, i32 4
  tail call void @msm_writel(i32 noundef 3, ptr noundef %add.ptr1.i12) #7
  %add.ptr2.i13 = getelementptr i8, ptr %32, i32 16
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr2.i13) #7
  %add.ptr3.i = getelementptr i8, ptr %32, i32 28
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr3.i) #7
  %add.ptr4.i = getelementptr i8, ptr %32, i32 32
  tail call void @msm_writel(i32 noundef 78, ptr noundef %add.ptr4.i) #7
  %add.ptr5.i14 = getelementptr i8, ptr %32, i32 48
  tail call void @msm_writel(i32 noundef 64, ptr noundef %add.ptr5.i14) #7
  %add.ptr6.i = getelementptr i8, ptr %32, i32 84
  tail call void @msm_writel(i32 noundef 186, ptr noundef %add.ptr6.i) #7
  %add.ptr7.i = getelementptr i8, ptr %32, i32 100
  tail call void @msm_writel(i32 noundef 12, ptr noundef %add.ptr7.i) #7
  %add.ptr8.i = getelementptr i8, ptr %32, i32 148
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr8.i) #7
  %add.ptr9.i15 = getelementptr i8, ptr %32, i32 164
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr9.i15) #7
  %add.ptr10.i16 = getelementptr i8, ptr %32, i32 180
  tail call void @msm_writel(i32 noundef 8, ptr noundef %add.ptr10.i16) #7
  %add.ptr11.i17 = getelementptr i8, ptr %32, i32 332
  tail call void @msm_writel(i32 noundef 8, ptr noundef %add.ptr11.i17) #7
  %add.ptr12.i18 = getelementptr i8, ptr %32, i32 340
  tail call void @msm_writel(i32 noundef 192, ptr noundef %add.ptr12.i18) #7
  %add.ptr13.i19 = getelementptr i8, ptr %32, i32 348
  tail call void @msm_writel(i32 noundef 250, ptr noundef %add.ptr13.i19) #7
  %add.ptr14.i = getelementptr i8, ptr %32, i32 356
  tail call void @msm_writel(i32 noundef 76, ptr noundef %add.ptr14.i) #7
  %add.ptr15.i = getelementptr i8, ptr %32, i32 384
  tail call void @msm_writel(i32 noundef 128, ptr noundef %add.ptr15.i) #7
  %add.ptr16.i = getelementptr i8, ptr %32, i32 124
  tail call void @msm_writel(i32 noundef 41, ptr noundef %add.ptr16.i) #7
  %add.ptr17.i = getelementptr i8, ptr %32, i32 128
  tail call void @msm_writel(i32 noundef 63, ptr noundef %add.ptr17.i) #7
  call fastcc void @dsi_pll_ssc_commit(ptr noundef %hw, ptr noundef nonnull %config)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !109
  tail call void @arm_heavy_mb() #7
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %config) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_readl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dsi_pll_calc_ssc(ptr nocapture noundef %config) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %config, align 4, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.19) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %ssc_freq = getelementptr inbounds %struct.dsi_pll_config, ptr %config, i32 0, i32 2
  %2 = ptrtoint ptr %ssc_freq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ssc_freq, align 4
  %div3 = lshr i32 %3, 1
  %add = add nuw i32 %div3, 19200000
  %div1 = udiv i32 %add, %3
  %div24 = lshr i32 %div1, 1
  %ssc_adj_per = getelementptr inbounds %struct.dsi_pll_config, ptr %config, i32 0, i32 4
  %4 = ptrtoint ptr %ssc_adj_per to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ssc_adj_per, align 4
  %add4 = add i32 %5, 1
  %rem = urem i32 %div24, %add4
  %6 = xor i32 %rem, -1
  %sub5 = add nsw i32 %div24, %6
  %frac_div_start = getelementptr inbounds %struct.dsi_pll_config, ptr %config, i32 0, i32 7
  %7 = ptrtoint ptr %frac_div_start to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %frac_div_start, align 4
  %conv = zext i32 %8 to i64
  %decimal_div_start = getelementptr inbounds %struct.dsi_pll_config, ptr %config, i32 0, i32 6
  %9 = ptrtoint ptr %decimal_div_start to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %decimal_div_start, align 4
  %conv6 = zext i32 %10 to i64
  %mul = shl nuw nsw i64 %conv6, 18
  %add7 = add nuw nsw i64 %mul, %conv
  %ssc_offset = getelementptr inbounds %struct.dsi_pll_config, ptr %config, i32 0, i32 3
  %11 = ptrtoint ptr %ssc_offset to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ssc_offset, align 4
  %conv8 = zext i32 %12 to i64
  %conv12 = zext i32 %add4 to i64
  %mul9 = mul nuw i64 %conv8, %conv12
  %mul13 = mul i64 %mul9, %add7
  %add14 = sub nsw i32 %div24, %rem
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul13)
  %cmp164.i.i = icmp ult i64 %mul13, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !111

if.then168.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i.i = trunc i64 %mul13 to i32
  %div172.i.i = udiv i32 %conv169.i.i, %add14
  %conv173.i.i = zext i32 %div172.i.i to i64
  br label %if.end208

if.else174.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %13 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %add14, i64 %mul13) #11, !srcloc !112
  %asmresult1.i.i.i = extractvalue { i64, i64 } %13, 1
  br label %if.end208

if.end208:                                        ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i = phi i64 [ %conv173.i.i, %if.then168.i.i ], [ %asmresult1.i.i.i, %if.else174.i.i ]
  %add18 = add i64 %dividend.addr.0.i.i, 500000
  %14 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %add18) #11, !srcloc !107
  %15 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %add18, i64 %14, i32 0) #11, !srcloc !108
  %asmresult10.i = extractvalue { i64, i32 } %15, 0
  %div1885 = lshr i64 %asmresult10.i, 18
  %extract.t6 = trunc i64 %div1885 to i32
  %ssc_div_per = getelementptr inbounds %struct.dsi_pll_config, ptr %config, i32 0, i32 10
  %16 = ptrtoint ptr %ssc_div_per to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %sub5, ptr %ssc_div_per, align 4
  %ssc_stepsize = getelementptr inbounds %struct.dsi_pll_config, ptr %config, i32 0, i32 9
  %17 = ptrtoint ptr %ssc_stepsize to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %extract.t6, ptr %ssc_stepsize, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dsi_pll_calc_ssc.__UNIQUE_ID_ddebug336, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dsi_pll_calc_ssc, %if.then221)) #7
          to label %do.body224 [label %if.then221], !srcloc !113

if.then221:                                       ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %decimal_div_start to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %decimal_div_start, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dsi_pll_calc_ssc.__UNIQUE_ID_ddebug336, ptr noundef nonnull @.str.23, i32 noundef %19, i64 noundef %conv, i32 noundef 18) #7
  br label %do.body224

do.body224:                                       ; preds = %if.then221, %if.end208
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dsi_pll_calc_ssc.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dsi_pll_calc_ssc, %if.then236)) #7
          to label %cleanup [label %if.then236], !srcloc !113

if.then236:                                       ; preds = %do.body224
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %ssc_adj_per to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ssc_adj_per, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dsi_pll_calc_ssc.__UNIQUE_ID_ddebug337, ptr noundef nonnull @.str.24, i32 noundef %sub5, i32 noundef %extract.t6, i32 noundef %21) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then236, %do.body224, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dsi_pll_ssc_commit(ptr nocapture noundef readonly %pll, ptr nocapture noundef readonly %config) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %phy = getelementptr inbounds %struct.dsi_pll_10nm, ptr %pll, i32 0, i32 1
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 4
  %pll_base = getelementptr inbounds %struct.msm_dsi_phy, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pll_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pll_base, align 4
  %4 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %config, align 4, !range !110
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end19_crit_edge, label %do.body

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dsi_pll_ssc_commit.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dsi_pll_ssc_commit, %if.then4)) #7
          to label %do.end [label %if.then4], !srcloc !113

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dsi_pll_ssc_commit.__UNIQUE_ID_ddebug338, ptr noundef nonnull @.str.26) #7
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %ssc_stepsize = getelementptr inbounds %struct.dsi_pll_config, ptr %config, i32 0, i32 9
  %6 = ptrtoint ptr %ssc_stepsize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ssc_stepsize, align 4
  %and = and i32 %7, 255
  %add.ptr = getelementptr i8, ptr %3, i32 268
  tail call void @msm_writel(i32 noundef %and, ptr noundef %add.ptr) #7
  %8 = ptrtoint ptr %ssc_stepsize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ssc_stepsize, align 4
  %shr = lshr i32 %9, 8
  %add.ptr6 = getelementptr i8, ptr %3, i32 272
  tail call void @msm_writel(i32 noundef %shr, ptr noundef %add.ptr6) #7
  %ssc_div_per = getelementptr inbounds %struct.dsi_pll_config, ptr %config, i32 0, i32 10
  %10 = ptrtoint ptr %ssc_div_per to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ssc_div_per, align 4
  %and7 = and i32 %11, 255
  %add.ptr8 = getelementptr i8, ptr %3, i32 276
  tail call void @msm_writel(i32 noundef %and7, ptr noundef %add.ptr8) #7
  %12 = ptrtoint ptr %ssc_div_per to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ssc_div_per, align 4
  %shr10 = lshr i32 %13, 8
  %add.ptr11 = getelementptr i8, ptr %3, i32 280
  tail call void @msm_writel(i32 noundef %shr10, ptr noundef %add.ptr11) #7
  %ssc_adj_per = getelementptr inbounds %struct.dsi_pll_config, ptr %config, i32 0, i32 4
  %14 = ptrtoint ptr %ssc_adj_per to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ssc_adj_per, align 4
  %and12 = and i32 %15, 255
  %add.ptr13 = getelementptr i8, ptr %3, i32 284
  tail call void @msm_writel(i32 noundef %and12, ptr noundef %add.ptr13) #7
  %16 = ptrtoint ptr %ssc_adj_per to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ssc_adj_per, align 4
  %shr15 = lshr i32 %17, 8
  %add.ptr16 = getelementptr i8, ptr %3, i32 288
  tail call void @msm_writel(i32 noundef %shr15, ptr noundef %add.ptr16) #7
  %ssc_center = getelementptr inbounds %struct.dsi_pll_config, ptr %config, i32 0, i32 1
  %18 = ptrtoint ptr %ssc_center to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ssc_center, align 1, !range !110
  %20 = or i8 %19, 2
  %or = zext i8 %20 to i32
  %add.ptr18 = getelementptr i8, ptr %3, i32 316
  tail call void @msm_writel(i32 noundef %or, ptr noundef %add.ptr18) #7
  br label %if.end19

if.end19:                                         ; preds = %do.end, %entry.if.end19_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_dsi_dphy_timing_calc_v3(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 44)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !51, !52, !53, !54, !56, !57, !59, !60, !61, !63, !65, !66, !68, !69, !70, !72, !73, !74, !76, !78, !80, !81, !82, !83, !85, !87}
!llvm.module.flags = !{!89, !90, !91, !92, !93, !94, !95, !96}
!llvm.ident = !{!97}

!0 = !{ptr @dsi_phy_10nm_cfgs, !1, !"dsi_phy_10nm_cfgs", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_10nm.c", i32 925, i32 30}
!2 = !{ptr @dsi_phy_10nm_8998_cfgs, !3, !"dsi_phy_10nm_8998_cfgs", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_10nm.c", i32 946, i32 30}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_10nm.c", i32 695, i32 2}
!6 = !{ptr @dsi_pll_10nm_init.__key, !7, !"__key", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_10nm.c", i32 699, i32 2}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.2, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_10nm.c", i32 705, i32 3}
!11 = !{ptr @.str.3, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @pll_10nm_list, !13, !"pll_10nm_list", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_10nm.c", i32 90, i32 29}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_10nm.c", i32 565, i32 37}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_10nm.c", i32 575, i32 2}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_10nm.c", i32 577, i32 25}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_10nm.c", i32 584, i32 25}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_10nm.c", i32 597, i32 25}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_10nm.c", i32 612, i32 25}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_10nm.c", i32 625, i32 25}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_10nm.c", i32 635, i32 25}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_10nm.c", i32 645, i32 25}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_10nm.c", i32 662, i32 25}
!34 = !{ptr @clk_ops_dsi_pll_10nm_vco, !35, !"clk_ops_dsi_pll_10nm_vco", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_10nm.c", i32 457, i32 29}
!36 = distinct !{null, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_10nm.c", i32 341, i32 3}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_10nm.c", i32 358, i32 3}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_10nm.c", i32 285, i32 3}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_10nm.c", i32 438, i32 2}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_10nm.c", i32 247, i32 2}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_10nm.c", i32 145, i32 3}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_10nm.c", i32 165, i32 2}
!50 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @dsi_pll_calc_ssc.__UNIQUE_ID_ddebug336, !49, !"__UNIQUE_ID_ddebug336", i1 false, i1 false}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_10nm.c", i32 167, i32 2}
!56 = !{ptr @dsi_pll_calc_ssc.__UNIQUE_ID_ddebug337, !55, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_10nm.c", i32 176, i32 3}
!59 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @dsi_pll_ssc_commit.__UNIQUE_ID_ddebug338, !58, !"__UNIQUE_ID_ddebug338", i1 false, i1 false}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_10nm.c", i32 804, i32 2}
!63 = !{ptr @.str.28, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_10nm.c", i32 807, i32 3}
!65 = !{ptr @__func__.dsi_10nm_phy_enable, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_10nm.c", i32 813, i32 3}
!68 = !{ptr @dsi_10nm_phy_enable._entry, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @dsi_10nm_phy_enable._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_10nm.c", i32 820, i32 3}
!72 = !{ptr @dsi_10nm_phy_enable._entry.30, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @dsi_10nm_phy_enable._entry_ptr.32, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_10nm.c", i32 886, i32 3}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_10nm.c", i32 894, i32 2}
!78 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_10nm.c", i32 907, i32 3}
!80 = !{ptr @.str.36, !79, !"<string literal>", i1 false, i1 false}
!81 = !{ptr @dsi_10nm_phy_disable._entry, !79, !"_entry", i1 false, i1 false}
!82 = !{ptr @dsi_10nm_phy_disable._entry_ptr, !79, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.37, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_10nm.c", i32 922, i32 2}
!85 = !{ptr @.str.38, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_10nm.c", i32 487, i32 2}
!87 = distinct !{null, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_10nm.c", i32 517, i32 3}
!89 = !{i32 1, !"wchar_size", i32 2}
!90 = !{i32 1, !"min_enum_size", i32 4}
!91 = !{i32 8, !"branch-target-enforcement", i32 0}
!92 = !{i32 8, !"sign-return-address", i32 0}
!93 = !{i32 8, !"sign-return-address-all", i32 0}
!94 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!95 = !{i32 7, !"uwtable", i32 1}
!96 = !{i32 7, !"frame-pointer", i32 2}
!97 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!98 = !{i64 2157394607}
!99 = !{i64 4615686}
!100 = !{i64 2157400108}
!101 = !{i64 2157400594}
!102 = !{i64 2157406947}
!103 = !{i64 2157381221}
!104 = !{i64 2157377243}
!105 = !{i64 2157377785}
!106 = !{i64 2157383021}
!107 = !{i64 1170989, i64 1171016}
!108 = !{i64 1171684, i64 1171711, i64 1171744, i64 1171765, i64 1171792, i64 1171818}
!109 = !{i64 2157374980}
!110 = !{i8 0, i8 2}
!111 = !{!"branch_weights", i32 2000, i32 1}
!112 = !{i64 2148656820, i64 2148657100, i64 2148657434, i64 2148657768}
!113 = !{i64 2148748101, i64 2148748106, i64 2148748119, i64 2148748163, i64 2148748197, i64 2148748218}
