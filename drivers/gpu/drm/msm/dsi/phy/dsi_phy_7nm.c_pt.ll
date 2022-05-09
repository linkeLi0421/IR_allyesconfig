; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c"
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
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.atomic_t = type { i32 }
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
%struct.dsi_pll_7nm = type { %struct.clk_hw, ptr, i64, %struct.spinlock, %struct.pll_7nm_cached_state, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.pll_7nm_cached_state = type { i32, i8, i8, i8, i8 }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }
%struct.dsi_pll_config = type { i8, i8, i32, i32, i32, i32, i32, i32, i32, i32 }

@dsi_phy_7nm_cfgs = dso_local constant { %struct.msm_dsi_phy_cfg, [72 x i8] } { %struct.msm_dsi_phy_cfg { %struct.dsi_reg_config { i32 1, [8 x %struct.dsi_reg_entry] [%struct.dsi_reg_entry { [32 x i8] c"vdds\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 36000, i32 32 }, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer] }, %struct.msm_dsi_phy_ops { ptr @dsi_pll_7nm_init, ptr @dsi_7nm_phy_enable, ptr @dsi_7nm_phy_disable, ptr @dsi_7nm_pll_save_state, ptr @dsi_7nm_pll_restore_state, ptr @dsi_7nm_set_continuous_clock }, i32 600000000, i32 -1, [2 x i32] [i32 183059456, i32 183067648], i32 2, i32 1, i8 0, i8 1 }, [72 x i8] zeroinitializer }, align 32
@dsi_phy_7nm_8150_cfgs = dso_local constant { %struct.msm_dsi_phy_cfg, [72 x i8] } { %struct.msm_dsi_phy_cfg { %struct.dsi_reg_config { i32 1, [8 x %struct.dsi_reg_entry] [%struct.dsi_reg_entry { [32 x i8] c"vdds\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 36000, i32 32 }, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer] }, %struct.msm_dsi_phy_ops { ptr @dsi_pll_7nm_init, ptr @dsi_7nm_phy_enable, ptr @dsi_7nm_phy_disable, ptr @dsi_7nm_pll_save_state, ptr @dsi_7nm_pll_restore_state, ptr @dsi_7nm_set_continuous_clock }, i32 1000000000, i32 -794967296, [2 x i32] [i32 183059456, i32 183067648], i32 2, i32 0, i8 0, i8 1 }, [72 x i8] zeroinitializer }, align 32
@dsi_phy_7nm_7280_cfgs = dso_local constant { %struct.msm_dsi_phy_cfg, [72 x i8] } { %struct.msm_dsi_phy_cfg { %struct.dsi_reg_config { i32 1, [8 x %struct.dsi_reg_entry] [%struct.dsi_reg_entry { [32 x i8] c"vdds\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 37550, i32 0 }, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer] }, %struct.msm_dsi_phy_ops { ptr @dsi_pll_7nm_init, ptr @dsi_7nm_phy_enable, ptr @dsi_7nm_phy_disable, ptr @dsi_7nm_pll_save_state, ptr @dsi_7nm_pll_restore_state, ptr null }, i32 600000000, i32 -1, [2 x i32] [i32 183059456, i32 0], i32 1, i32 1, i8 0, i8 1 }, [72 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DSI PLL%d\0A\00", [21 x i8] zeroinitializer }, align 32
@pll_7nm_list = internal global { [2 x ptr], [24 x i8] } zeroinitializer, align 32
@dsi_pll_7nm_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&pll_7nm->postdiv_lock\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"*ERROR* failed to register PLL: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@clk_ops_dsi_pll_7nm_vco = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @dsi_pll_7nm_vco_prepare, ptr @dsi_pll_7nm_vco_unprepare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dsi_pll_7nm_vco_recalc_rate, ptr @dsi_pll_7nm_clk_round_rate, ptr null, ptr null, ptr null, ptr @dsi_pll_7nm_vco_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bi_tcxo\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DSI%d\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dsi%dvco_clk\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dsi%d_pll_out_div_clk\00", [42 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dsi%d_pll_bit_clk\00", [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"dsi%d_phy_pll_out_byteclk\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dsi%d_pll_by_2_bit_clk\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"dsi%d_pll_post_out_div_clk\00", [37 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dsi%d_pclk_mux\00", [17 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"dsi%d_phy_pll_out_dsiclk\00", [39 x i8] zeroinitializer }, align 32
@dsi_pll_7nm_vco_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.16, i32 381, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013PLL(%d) lock failed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dsi_pll_7nm_vco_prepare\00", [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c\00", [54 x i8] zeroinitializer }, align 32
@dsi_pll_7nm_vco_prepare._entry_ptr = internal global ptr @dsi_pll_7nm_vco_prepare._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@dsi_pll_7nm_lock_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.16, i32 305, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013DSI PLL(%d) lock failed, status=0x%08x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"dsi_pll_7nm_lock_status\00", [40 x i8] zeroinitializer }, align 32
@dsi_pll_7nm_lock_status._entry_ptr = internal global ptr @dsi_pll_7nm_lock_status._entry, section ".printk_index", align 4
@.str.19 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"DSI PLL%d returning vco rate = %lu, dec = %x, frac = %x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DSI PLL%d rate=%lu, parent's=%lu\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SSC not enabled\0A\0A\00", [46 x i8] zeroinitializer }, align 32
@dsi_pll_calc_ssc.__UNIQUE_ID_ddebug336 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.23, ptr @.str.16, ptr @.str.24, i8 0, i8 41, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"msm\00", [28 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dsi_pll_calc_ssc\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"SCC: Dec:%d, frac:%llu, frac_bits:%d\0A\00", [58 x i8] zeroinitializer }, align 32
@dsi_pll_calc_ssc.__UNIQUE_ID_ddebug337 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.23, ptr @.str.16, ptr @.str.25, i8 0, i8 42, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"SSC: div_per:0x%X, stepsize:0x%X, adjper:0x%X\0A\00", [49 x i8] zeroinitializer }, align 32
@dsi_pll_ssc_commit.__UNIQUE_ID_ddebug338 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.26, ptr @.str.16, ptr @.str.27, i8 0, i8 44, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dsi_pll_ssc_commit\00", [45 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"SSC is enabled\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"*ERROR* %s: PHY timing calculation failed\0A\00", [53 x i8] zeroinitializer }, align 32
@__func__.dsi_7nm_phy_enable = private unnamed_addr constant [19 x i8] c"dsi_7nm_phy_enable\00", align 1
@dsi_7nm_phy_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @__func__.dsi_7nm_phy_enable, ptr @.str.16, i32 849, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\014PLL turned on before configuring PHY\0A\00", [56 x i8] zeroinitializer }, align 32
@dsi_7nm_phy_enable._entry_ptr = internal global ptr @dsi_7nm_phy_enable._entry, section ".printk_index", align 4
@dsi_7nm_phy_enable._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @__func__.dsi_7nm_phy_enable, ptr @.str.16, i32 856, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013Ref gen not ready. Aborting\0A\00", [33 x i8] zeroinitializer }, align 32
@dsi_7nm_phy_enable._entry_ptr.33 = internal global ptr @dsi_7nm_phy_enable._entry.31, section ".printk_index", align 4
@.str.34 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"*ERROR* %s: set pll usecase failed, %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DSI%d PHY enabled\0A\00", [45 x i8] zeroinitializer }, align 32
@dsi_7nm_phy_disable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.16, i32 1015, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\014Turning OFF PHY while PLL is on\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dsi_7nm_phy_disable\00", [44 x i8] zeroinitializer }, align 32
@dsi_7nm_phy_disable._entry_ptr = internal global ptr @dsi_7nm_phy_disable._entry, section ".printk_index", align 4
@.str.38 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DSI%d PHY disabled\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"DSI PLL%d outdiv %x bit_clk_div %x pix_clk_div %x pll_mux %x\0A\00", [34 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.41 = private unnamed_addr constant [17 x i8] c"dsi_phy_7nm_cfgs\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1033, i32 30 }
@___asan_gen_.44 = private unnamed_addr constant [22 x i8] c"dsi_phy_7nm_8150_cfgs\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1060, i32 30 }
@___asan_gen_.47 = private unnamed_addr constant [22 x i8] c"dsi_phy_7nm_7280_cfgs\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1082, i32 30 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 737, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant [13 x i8] c"pll_7nm_list\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 89, i32 28 }
@___asan_gen_.56 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 741, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 747, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant [24 x i8] c"clk_ops_dsi_pll_7nm_vco\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 483, i32 29 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 591, i32 37 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 601, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 603, i32 25 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 610, i32 25 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 623, i32 25 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 638, i32 25 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 652, i32 25 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 662, i32 25 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 685, i32 26 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 705, i32 25 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 381, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 304, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 464, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 267, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 145, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 165, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 167, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 176, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 836, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 843, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 849, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 856, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 947, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 987, i32 2 }
@___asan_gen_.173 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1015, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 1030, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.186 = private constant [45 x i8] c"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c\00", align 1
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.186, i32 513, i32 2 }
@llvm.compiler.used = appending global [54 x ptr] [ptr @dsi_7nm_phy_disable._entry, ptr @dsi_7nm_phy_disable._entry_ptr, ptr @dsi_7nm_phy_enable._entry, ptr @dsi_7nm_phy_enable._entry.31, ptr @dsi_7nm_phy_enable._entry_ptr, ptr @dsi_7nm_phy_enable._entry_ptr.33, ptr @dsi_pll_7nm_lock_status._entry, ptr @dsi_pll_7nm_lock_status._entry_ptr, ptr @dsi_pll_7nm_vco_prepare._entry, ptr @dsi_pll_7nm_vco_prepare._entry_ptr, ptr @dsi_phy_7nm_cfgs, ptr @dsi_phy_7nm_8150_cfgs, ptr @dsi_phy_7nm_7280_cfgs, ptr @.str, ptr @pll_7nm_list, ptr @dsi_pll_7nm_init.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @clk_ops_dsi_pll_7nm_vco, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_phy_7nm_cfgs to i32), i32 376, i32 448, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_phy_7nm_8150_cfgs to i32), i32 376, i32 448, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_phy_7nm_7280_cfgs to i32), i32 376, i32 448, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_7nm_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_pll_7nm_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_ops_dsi_pll_7nm_vco to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_pll_7nm_vco_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_pll_7nm_lock_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_7nm_phy_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_7nm_phy_enable._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_7nm_phy_disable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsi_pll_7nm_init(ptr noundef %phy) #0 align 64 {
entry:
  %clk_name.i = alloca [32 x i8], align 1
  %parent.i = alloca [32 x i8], align 1
  %vco_name.i = alloca [32 x i8], align 1
  %parent2.i = alloca [32 x i8], align 1
  %parent3.i = alloca [32 x i8], align 1
  %parent4.i = alloca [32 x i8], align 1
  %vco_init.i = alloca %struct.clk_init_data, align 4
  %.compoundliteral.i = alloca [1 x ptr], align 4
  %.compoundliteral134.i = alloca [4 x ptr], align 4
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
  %arrayidx = getelementptr [2 x ptr], ptr @pll_7nm_list, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %arrayidx, align 4
  %postdiv_lock = getelementptr inbounds %struct.dsi_pll_7nm, ptr %call.i, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %postdiv_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @dsi_pll_7nm_init.__key, i16 noundef signext 3) #7
  %phy4 = getelementptr inbounds %struct.dsi_pll_7nm, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %phy4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %phy, ptr %phy4, align 4
  %provided_clocks = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 19
  %8 = ptrtoint ptr %provided_clocks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %provided_clocks, align 4
  %hws = getelementptr inbounds %struct.clk_hw_onecell_data, ptr %9, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %.compoundliteral.i)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %.compoundliteral134.i)
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
  store ptr @clk_ops_dsi_pll_7nm_vco, ptr %ops.i, align 4
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
  br i1 %tobool.not.i, label %if.end.i, label %pll_7nm_register.exit.thread29

pll_7nm_register.exit.thread29:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %vco_init.i) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %parent4.i) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %parent3.i) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %parent2.i) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %vco_name.i) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %parent.i) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %clk_name.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %.compoundliteral.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %.compoundliteral134.i)
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
  %add.ptr.i = getelementptr i8, ptr %45, i32 340
  %call20.i = call ptr @__devm_clk_hw_register_divider(ptr noundef %dev2.i, ptr noundef null, ptr noundef nonnull %clk_name.i, ptr noundef nonnull %parent.i, ptr noundef null, ptr noundef null, i32 noundef 4, ptr noundef %add.ptr.i, i8 noundef zeroext 0, i8 noundef zeroext 2, i8 noundef zeroext 2, ptr noundef null, ptr noundef null) #7
  %cmp.i.i = icmp ugt ptr %call20.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.end.i.pll_7nm_register.exit_crit_edge, label %if.end24.i

if.end.i.pll_7nm_register.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pll_7nm_register.exit

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
  %cmp.i240.i = icmp ugt ptr %call37.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i240.i, label %if.end24.i.pll_7nm_register.exit_crit_edge, label %if.end41.i

if.end24.i.pll_7nm_register.exit_crit_edge:       ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pll_7nm_register.exit

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
  %66 = ptrtoint ptr %phy4 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %phy4, align 4
  %cphy_mode.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %67, i32 0, i32 16
  %68 = ptrtoint ptr %cphy_mode.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %cphy_mode.i, align 1, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool53.not.i = icmp eq i8 %69, 0
  %cond.i = select i1 %tobool53.not.i, i32 8, i32 7
  %call54.i = call ptr @devm_clk_hw_register_fixed_factor(ptr noundef %dev2.i, ptr noundef nonnull %clk_name.i, ptr noundef nonnull %parent.i, i32 noundef 4, i32 noundef 1, i32 noundef %cond.i) #7
  %cmp.i241.i = icmp ugt ptr %call54.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i241.i, label %if.end41.i.pll_7nm_register.exit_crit_edge, label %if.end58.i

if.end41.i.pll_7nm_register.exit_crit_edge:       ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pll_7nm_register.exit

if.end58.i:                                       ; preds = %if.end41.i
  %70 = ptrtoint ptr %hws to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call54.i, ptr %hws, align 4
  %71 = ptrtoint ptr %phy4 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %phy4, align 4
  %id61.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %72, i32 0, i32 9
  %73 = ptrtoint ptr %id61.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %id61.i, align 4
  %call62.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %clk_name.i, i32 noundef 32, ptr noundef nonnull @.str.10, i32 noundef %74) #7
  %75 = ptrtoint ptr %phy4 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %phy4, align 4
  %id65.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %76, i32 0, i32 9
  %77 = ptrtoint ptr %id65.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %id65.i, align 4
  %call66.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %parent.i, i32 noundef 32, ptr noundef nonnull @.str.8, i32 noundef %78) #7
  %call69.i = call ptr @devm_clk_hw_register_fixed_factor(ptr noundef %dev2.i, ptr noundef nonnull %clk_name.i, ptr noundef nonnull %parent.i, i32 noundef 0, i32 noundef 1, i32 noundef 2) #7
  %cmp.i242.i = icmp ugt ptr %call69.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i242.i, label %if.end58.i.pll_7nm_register.exit_crit_edge, label %if.end73.i

if.end58.i.pll_7nm_register.exit_crit_edge:       ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pll_7nm_register.exit

if.end73.i:                                       ; preds = %if.end58.i
  %79 = ptrtoint ptr %phy4 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %phy4, align 4
  %id76.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %80, i32 0, i32 9
  %81 = ptrtoint ptr %id76.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %id76.i, align 4
  %call77.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %clk_name.i, i32 noundef 32, ptr noundef nonnull @.str.11, i32 noundef %82) #7
  %83 = ptrtoint ptr %phy4 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %phy4, align 4
  %id80.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %84, i32 0, i32 9
  %85 = ptrtoint ptr %id80.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %id80.i, align 4
  %call81.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %parent.i, i32 noundef 32, ptr noundef nonnull @.str.7, i32 noundef %86) #7
  %87 = ptrtoint ptr %phy4 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %phy4, align 4
  %cphy_mode83.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %88, i32 0, i32 16
  %89 = ptrtoint ptr %cphy_mode83.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %cphy_mode83.i, align 1, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %90)
  %tobool84.not.i = icmp eq i8 %90, 0
  br i1 %tobool84.not.i, label %if.else.i, label %if.then85.i

if.then85.i:                                      ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #9
  %call88.i = call ptr @devm_clk_hw_register_fixed_factor(ptr noundef %dev2.i, ptr noundef nonnull %clk_name.i, ptr noundef nonnull %parent.i, i32 noundef 0, i32 noundef 2, i32 noundef 7) #7
  br label %if.end92.i

if.else.i:                                        ; preds = %if.end73.i
  call void @__sanitizer_cov_trace_pc() #9
  %call91.i = call ptr @devm_clk_hw_register_fixed_factor(ptr noundef %dev2.i, ptr noundef nonnull %clk_name.i, ptr noundef nonnull %parent.i, i32 noundef 0, i32 noundef 1, i32 noundef 4) #7
  br label %if.end92.i

if.end92.i:                                       ; preds = %if.else.i, %if.then85.i
  %hw.0.i = phi ptr [ %call88.i, %if.then85.i ], [ %call91.i, %if.else.i ]
  %cmp.i243.i = icmp ugt ptr %hw.0.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i243.i, label %if.end92.i.pll_7nm_register.exit_crit_edge, label %if.end96.i

if.end92.i.pll_7nm_register.exit_crit_edge:       ; preds = %if.end92.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pll_7nm_register.exit

if.end96.i:                                       ; preds = %if.end92.i
  %91 = ptrtoint ptr %phy4 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %phy4, align 4
  %cphy_mode98.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %92, i32 0, i32 16
  %93 = ptrtoint ptr %cphy_mode98.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %cphy_mode98.i, align 1, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool99.not.i = icmp eq i8 %94, 0
  br i1 %tobool99.not.i, label %if.else112.i, label %if.then100.i

if.then100.i:                                     ; preds = %if.end96.i
  call void @__sanitizer_cov_trace_pc() #9
  %base102.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %92, i32 0, i32 1
  %95 = ptrtoint ptr %base102.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %base102.i, align 4
  %add.ptr103.i = getelementptr i8, ptr %96, i32 20
  %call104.i = call i32 @msm_readl(ptr noundef %add.ptr103.i) #7
  %or.i = or i32 %call104.i, 3
  %97 = ptrtoint ptr %phy4 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %phy4, align 4
  %base106.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %base106.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %base106.i, align 4
  %add.ptr107.i = getelementptr i8, ptr %100, i32 20
  call void @msm_writel(i32 noundef %or.i, ptr noundef %add.ptr107.i) #7
  br label %if.end155.i

if.else112.i:                                     ; preds = %if.end96.i
  %id115.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %92, i32 0, i32 9
  %101 = ptrtoint ptr %id115.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %id115.i, align 4
  %call116.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %clk_name.i, i32 noundef 32, ptr noundef nonnull @.str.12, i32 noundef %102) #7
  %103 = ptrtoint ptr %phy4 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %phy4, align 4
  %id119.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %104, i32 0, i32 9
  %105 = ptrtoint ptr %id119.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %id119.i, align 4
  %call120.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %parent.i, i32 noundef 32, ptr noundef nonnull @.str.8, i32 noundef %106) #7
  %107 = ptrtoint ptr %phy4 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %phy4, align 4
  %id123.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %108, i32 0, i32 9
  %109 = ptrtoint ptr %id123.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %id123.i, align 4
  %call124.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %parent2.i, i32 noundef 32, ptr noundef nonnull @.str.10, i32 noundef %110) #7
  %111 = ptrtoint ptr %phy4 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %phy4, align 4
  %id127.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %112, i32 0, i32 9
  %113 = ptrtoint ptr %id127.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %id127.i, align 4
  %call128.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %parent3.i, i32 noundef 32, ptr noundef nonnull @.str.7, i32 noundef %114) #7
  %115 = ptrtoint ptr %phy4 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %phy4, align 4
  %id131.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %116, i32 0, i32 9
  %117 = ptrtoint ptr %id131.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %id131.i, align 4
  %call132.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %parent4.i, i32 noundef 32, ptr noundef nonnull @.str.11, i32 noundef %118) #7
  %119 = ptrtoint ptr %.compoundliteral134.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %parent.i, ptr %.compoundliteral134.i, align 4
  %arrayinit.element.i = getelementptr inbounds ptr, ptr %.compoundliteral134.i, i32 1
  %120 = ptrtoint ptr %arrayinit.element.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %parent2.i, ptr %arrayinit.element.i, align 4
  %arrayinit.element138.i = getelementptr inbounds ptr, ptr %.compoundliteral134.i, i32 2
  %121 = ptrtoint ptr %arrayinit.element138.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %parent3.i, ptr %arrayinit.element138.i, align 4
  %arrayinit.element140.i = getelementptr inbounds ptr, ptr %.compoundliteral134.i, i32 3
  %122 = ptrtoint ptr %arrayinit.element140.i to i32
  call void @__asan_store4_noabort(i32 %122)
  store ptr %parent4.i, ptr %arrayinit.element140.i, align 4
  %123 = ptrtoint ptr %phy4 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %phy4, align 4
  %base144.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %124, i32 0, i32 1
  %125 = ptrtoint ptr %base144.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %base144.i, align 4
  %add.ptr145.i = getelementptr i8, ptr %126, i32 20
  %call146.i = call ptr @__devm_clk_hw_register_mux(ptr noundef %dev2.i, ptr noundef null, ptr noundef nonnull %clk_name.i, i8 noundef zeroext 4, ptr noundef nonnull %.compoundliteral134.i, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %add.ptr145.i, i8 noundef zeroext 0, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef null) #7
  %cmp.i244.i = icmp ugt ptr %call146.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i244.i, label %if.else112.i.pll_7nm_register.exit_crit_edge, label %if.else112.i.if.end155.i_crit_edge

if.else112.i.if.end155.i_crit_edge:               ; preds = %if.else112.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end155.i

if.else112.i.pll_7nm_register.exit_crit_edge:     ; preds = %if.else112.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pll_7nm_register.exit

if.end155.i:                                      ; preds = %if.else112.i.if.end155.i_crit_edge, %if.then100.i
  %.str.12.sink.i = phi ptr [ @.str.11, %if.then100.i ], [ @.str.12, %if.else112.i.if.end155.i_crit_edge ]
  %127 = ptrtoint ptr %phy4 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %phy4, align 4
  %id153.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %128, i32 0, i32 9
  %129 = ptrtoint ptr %id153.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %id153.i, align 4
  %call154.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %parent.i, i32 noundef 32, ptr noundef nonnull %.str.12.sink.i, i32 noundef %130) #7
  %131 = ptrtoint ptr %phy4 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %phy4, align 4
  %id158.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %132, i32 0, i32 9
  %133 = ptrtoint ptr %id158.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %id158.i, align 4
  %call159.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %clk_name.i, i32 noundef 32, ptr noundef nonnull @.str.13, i32 noundef %134) #7
  %135 = ptrtoint ptr %phy4 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %phy4, align 4
  %base163.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %136, i32 0, i32 1
  %137 = ptrtoint ptr %base163.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %base163.i, align 4
  %add.ptr164.i = getelementptr i8, ptr %138, i32 16
  %call166.i = call ptr @__devm_clk_hw_register_divider(ptr noundef %dev2.i, ptr noundef null, ptr noundef nonnull %clk_name.i, ptr noundef nonnull %parent.i, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %add.ptr164.i, i8 noundef zeroext 4, i8 noundef zeroext 4, i8 noundef zeroext 1, ptr noundef null, ptr noundef %postdiv_lock) #7
  %cmp.i245.i = icmp ugt ptr %call166.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i245.i, label %if.end155.i.pll_7nm_register.exit_crit_edge, label %pll_7nm_register.exit.thread

if.end155.i.pll_7nm_register.exit_crit_edge:      ; preds = %if.end155.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %pll_7nm_register.exit

pll_7nm_register.exit.thread:                     ; preds = %if.end155.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx171.i = getelementptr %struct.clk_hw_onecell_data, ptr %9, i32 2
  %139 = ptrtoint ptr %arrayidx171.i to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr %call166.i, ptr %arrayidx171.i, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %vco_init.i) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %parent4.i) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %parent3.i) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %parent2.i) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %vco_name.i) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %parent.i) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %clk_name.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %.compoundliteral.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %.compoundliteral134.i)
  %vco_hw = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 17
  %140 = ptrtoint ptr %vco_hw to i32
  call void @__asan_store4_noabort(i32 %140)
  store ptr %call.i, ptr %vco_hw, align 4
  call void @msm_dsi_phy_pll_save_state(ptr noundef %phy) #7
  br label %cleanup

pll_7nm_register.exit:                            ; preds = %if.end155.i.pll_7nm_register.exit_crit_edge, %if.else112.i.pll_7nm_register.exit_crit_edge, %if.end92.i.pll_7nm_register.exit_crit_edge, %if.end58.i.pll_7nm_register.exit_crit_edge, %if.end41.i.pll_7nm_register.exit_crit_edge, %if.end24.i.pll_7nm_register.exit_crit_edge, %if.end.i.pll_7nm_register.exit_crit_edge
  %retval.0.i.in = phi ptr [ %call20.i, %if.end.i.pll_7nm_register.exit_crit_edge ], [ %call37.i, %if.end24.i.pll_7nm_register.exit_crit_edge ], [ %call54.i, %if.end41.i.pll_7nm_register.exit_crit_edge ], [ %call69.i, %if.end58.i.pll_7nm_register.exit_crit_edge ], [ %hw.0.i, %if.end92.i.pll_7nm_register.exit_crit_edge ], [ %call146.i, %if.else112.i.pll_7nm_register.exit_crit_edge ], [ %call166.i, %if.end155.i.pll_7nm_register.exit_crit_edge ]
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %vco_init.i) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %parent4.i) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %parent3.i) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %parent2.i) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %vco_name.i) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %parent.i) #7
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %clk_name.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %.compoundliteral.i)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %.compoundliteral134.i)
  br label %if.then7

if.then7:                                         ; preds = %pll_7nm_register.exit, %pll_7nm_register.exit.thread29
  %retval.0.i32 = phi i32 [ %call8.i, %pll_7nm_register.exit.thread29 ], [ %retval.0.i, %pll_7nm_register.exit ]
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %retval.0.i32) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %pll_7nm_register.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i32, %if.then7 ], [ 0, %pll_7nm_register.exit.thread ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsi_7nm_phy_enable(ptr noundef %phy, ptr noundef %clk_req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %timing1 = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 12
  %base2 = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 1
  %0 = ptrtoint ptr %base2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base2, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.28) #7
  %cphy_mode = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 16
  %2 = ptrtoint ptr %cphy_mode to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cphy_mode, align 1, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @msm_dsi_cphy_timing_calc_v4(ptr noundef %timing1, ptr noundef %clk_req) #7
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 @msm_dsi_dphy_timing_calc_v4(ptr noundef %timing1, ptr noundef %clk_req) #7
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %ret.0 = phi i32 [ %call, %if.then ], [ %call3, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool4.not = icmp eq i32 %ret.0, 0
  br i1 %tobool4.not, label %if.end6, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.dsi_7nm_phy_enable) #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %6 = ptrtoint ptr %base2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base2, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 60
  %call.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
  tail call void @arm_heavy_mb() #7
  %and.i = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool8.not = icmp eq i32 %and.i, 0
  br i1 %tobool8.not, label %if.end6.if.end11_crit_edge, label %do.end

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

do.end:                                           ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30) #10
  br label %if.end11

if.end11:                                         ; preds = %do.end, %if.end6.if.end11_crit_edge
  %call12 = tail call i64 @ktime_get() #7
  %add.i = add i64 %call12, 1000000
  %add.ptr = getelementptr i8, ptr %1, i32 320
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !106
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !107
  %and277 = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and277)
  %tobool17.not278 = icmp eq i32 %and277, 0
  br i1 %tobool17.not278, label %if.end11.land.lhs.true_crit_edge, label %if.end11.for.end_crit_edge

if.end11.for.end_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end11.land.lhs.true_crit_edge:                 ; preds = %if.end11
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %cond.false.land.lhs.true_crit_edge, %if.end11.land.lhs.true_crit_edge
  %call21 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call21, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call21, %add.i
  br i1 %cmp3.i, label %if.then23, label %cond.false

if.then23:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !106
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !108
  br label %for.end

cond.false:                                       ; preds = %land.lhs.true
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 1073740) #7
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !106
  %14 = tail call i32 @llvm.bswap.i32(i32 %13)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !107
  %and = and i32 %14, 1
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %cond.false.land.lhs.true_crit_edge, label %cond.false.for.end_crit_edge

cond.false.for.end_crit_edge:                     ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

cond.false.land.lhs.true_crit_edge:               ; preds = %cond.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

for.end:                                          ; preds = %cond.false.for.end_crit_edge, %if.then23, %if.end11.for.end_crit_edge
  %status.0 = phi i32 [ %11, %if.then23 ], [ %9, %if.end11.for.end_crit_edge ], [ %14, %cond.false.for.end_crit_edge ]
  %and39 = and i32 %status.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp eq i32 %and39, 0
  br i1 %tobool40.not, label %do.end45, label %if.end48

do.end45:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %call47 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32) #10
  br label %cleanup

if.end48:                                         ; preds = %for.end
  %15 = ptrtoint ptr %clk_req to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %clk_req, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1500000001, i32 %16)
  %cmp49 = icmp ult i32 %16, 1500000001
  %17 = ptrtoint ptr %cphy_mode to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %cphy_mode, align 1, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool51.not = icmp eq i8 %18, 0
  %narrow = select i1 %tobool51.not, i1 %cmp49, i1 false
  %cfg = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 13
  %19 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cfg, align 4
  %quirks = getelementptr inbounds %struct.msm_dsi_phy_cfg, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %quirks to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %quirks, align 4
  %and54 = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and54)
  %tobool55.not = icmp eq i32 %and54, 0
  br i1 %tobool55.not, label %if.else63, label %if.then56

if.then56:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  %cond58 = select i1 %narrow, i32 83, i32 82
  %cond60 = select i1 %narrow, i32 61, i32 0
  %cond62 = select i1 %narrow, i32 57, i32 60
  br label %if.end70

if.else63:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  %cond65 = select i1 %narrow, i32 91, i32 89
  %cond67 = select i1 %narrow, i32 3, i32 0
  %cond69 = select i1 %narrow, i32 102, i32 136
  br label %if.end70

if.end70:                                         ; preds = %if.else63, %if.then56
  %glbl_hstx_str_ctrl_0.0 = phi i32 [ 136, %if.then56 ], [ %cond69, %if.else63 ]
  %glbl_rescode_top_ctrl.0 = phi i32 [ %cond60, %if.then56 ], [ 3, %if.else63 ]
  %glbl_rescode_bot_ctrl.0 = phi i32 [ %cond62, %if.then56 ], [ 60, %if.else63 ]
  %glbl_str_swi_cal_sel_ctrl.0 = phi i32 [ 0, %if.then56 ], [ %cond67, %if.else63 ]
  %vreg_ctrl_0.0 = phi i32 [ %cond58, %if.then56 ], [ %cond65, %if.else63 ]
  %. = select i1 %tobool51.not, i32 0, i32 17
  %.266 = select i1 %tobool51.not, i32 31, i32 23
  %.267 = select i1 %tobool51.not, i32 92, i32 85
  %vreg_ctrl_0.0. = select i1 %tobool51.not, i32 %vreg_ctrl_0.0, i32 81
  %add.ptr76 = getelementptr i8, ptr %1, i32 36
  tail call void @msm_writel(i32 noundef 96, ptr noundef %add.ptr76) #7
  %add.ptr77 = getelementptr i8, ptr %1, i32 60
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr77) #7
  %add.ptr78 = getelementptr i8, ptr %1, i32 28
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr78) #7
  %call80 = tail call i32 @msm_readl(ptr noundef %1) #7
  %and81 = and i32 %call80, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %and81)
  %cmp82 = icmp eq i32 %and81, 32
  br i1 %cmp82, label %if.then83, label %if.end70.if.end85_crit_edge

if.end70.if.end85_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end85

if.then83:                                        ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr84 = getelementptr i8, ptr %1, i32 276
  tail call void @msm_writel(i32 noundef 4, ptr noundef %add.ptr84) #7
  br label %if.end85

if.end85:                                         ; preds = %if.then83, %if.end70.if.end85_crit_edge
  %add.ptr86 = getelementptr i8, ptr %1, i32 52
  tail call void @msm_writel(i32 noundef 33, ptr noundef %add.ptr86) #7
  %add.ptr87 = getelementptr i8, ptr %1, i32 56
  tail call void @msm_writel(i32 noundef 132, ptr noundef %add.ptr87) #7
  %23 = ptrtoint ptr %cphy_mode to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %cphy_mode, align 1, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool89.not = icmp eq i8 %24, 0
  br i1 %tobool89.not, label %if.end85.if.end92_crit_edge, label %if.then90

if.end85.if.end92_crit_edge:                      ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end92

if.then90:                                        ; preds = %if.end85
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr91 = getelementptr i8, ptr %1, i32 24
  tail call void @msm_writel(i32 noundef 64, ptr noundef %add.ptr91) #7
  br label %if.end92

if.end92:                                         ; preds = %if.then90, %if.end85.if.end92_crit_edge
  %add.ptr93 = getelementptr i8, ptr %1, i32 32
  tail call void @msm_writel(i32 noundef %vreg_ctrl_0.0., ptr noundef %add.ptr93) #7
  %add.ptr94 = getelementptr i8, ptr %1, i32 272
  tail call void @msm_writel(i32 noundef %.267, ptr noundef %add.ptr94) #7
  %add.ptr95 = getelementptr i8, ptr %1, i32 48
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr95) #7
  %add.ptr96 = getelementptr i8, ptr %1, i32 268
  tail call void @msm_writel(i32 noundef %glbl_str_swi_cal_sel_ctrl.0, ptr noundef %add.ptr96) #7
  %add.ptr97 = getelementptr i8, ptr %1, i32 236
  tail call void @msm_writel(i32 noundef %glbl_hstx_str_ctrl_0.0, ptr noundef %add.ptr97) #7
  %add.ptr98 = getelementptr i8, ptr %1, i32 260
  tail call void @msm_writel(i32 noundef %., ptr noundef %add.ptr98) #7
  %25 = ptrtoint ptr %cphy_mode to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %cphy_mode, align 1, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool100.not = icmp eq i8 %26, 0
  br i1 %tobool100.not, label %if.end92.if.end103_crit_edge, label %if.then101

if.end92.if.end103_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end103

if.then101:                                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr102 = getelementptr i8, ptr %1, i32 264
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr102) #7
  br label %if.end103

if.end103:                                        ; preds = %if.then101, %if.end92.if.end103_crit_edge
  %add.ptr104 = getelementptr i8, ptr %1, i32 244
  tail call void @msm_writel(i32 noundef %glbl_rescode_top_ctrl.0, ptr noundef %add.ptr104) #7
  %add.ptr105 = getelementptr i8, ptr %1, i32 248
  tail call void @msm_writel(i32 noundef %glbl_rescode_bot_ctrl.0, ptr noundef %add.ptr105) #7
  %add.ptr106 = getelementptr i8, ptr %1, i32 256
  tail call void @msm_writel(i32 noundef 85, ptr noundef %add.ptr106) #7
  tail call void @msm_writel(i32 noundef 127, ptr noundef %add.ptr76) #7
  %add.ptr108 = getelementptr i8, ptr %1, i32 160
  tail call void @msm_writel(i32 noundef %.266, ptr noundef %add.ptr108) #7
  %27 = ptrtoint ptr %cphy_mode to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %cphy_mode, align 1, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool110.not = icmp eq i8 %28, 0
  br i1 %tobool110.not, label %if.then111, label %if.end103.if.end113_crit_edge

if.end103.if.end113_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end113

if.then111:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr112 = getelementptr i8, ptr %1, i32 44
  tail call void @msm_writel(i32 noundef 64, ptr noundef %add.ptr112) #7
  br label %if.end113

if.end113:                                        ; preds = %if.then111, %if.end103.if.end113_crit_edge
  %vco_hw.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 17
  %29 = ptrtoint ptr %vco_hw.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %vco_hw.i, align 4
  %31 = ptrtoint ptr %base2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base2, align 4
  %phy2.i = getelementptr inbounds %struct.dsi_pll_7nm, ptr %30, i32 0, i32 1
  %33 = ptrtoint ptr %phy2.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %phy2.i, align 4
  %id.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %34, i32 0, i32 9
  %35 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %id.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef %36) #7
  %usecase.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 14
  %37 = ptrtoint ptr %usecase.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %usecase.i, align 4
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values)
  switch i32 %38, label %if.then116 [
    i32 0, label %if.end113.if.end119_crit_edge
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb5.i
  ]

if.end113.if.end119_crit_edge:                    ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end119

sw.bb.i:                                          ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %phy2.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %phy2.i, align 4
  %id4.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %41, i32 0, i32 9
  %42 = ptrtoint ptr %id4.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %id4.i, align 4
  %add.i269 = add i32 %43, 1
  %rem.i = srem i32 %add.i269, 2
  %arrayidx.i = getelementptr [2 x ptr], ptr @pll_7nm_list, i32 0, i32 %rem.i
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx.i, align 4
  %slave.i = getelementptr inbounds %struct.dsi_pll_7nm, ptr %30, i32 0, i32 5
  %46 = ptrtoint ptr %slave.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %45, ptr %slave.i, align 4
  br label %if.end119

sw.bb5.i:                                         ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end119

if.then116:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %phy, align 4
  %dev118 = getelementptr inbounds %struct.platform_device, ptr %48, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev118, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.34, ptr noundef nonnull @__func__.dsi_7nm_phy_enable, i32 noundef -22) #7
  br label %cleanup

if.end119:                                        ; preds = %sw.bb5.i, %sw.bb.i, %if.end113.if.end119_crit_edge
  %data.0.i = phi i32 [ 4, %sw.bb5.i ], [ 0, %sw.bb.i ], [ %38, %if.end113.if.end119_crit_edge ]
  %add.ptr6.i = getelementptr i8, ptr %32, i32 20
  tail call void @msm_writel(i32 noundef %data.0.i, ptr noundef %add.ptr6.i) #7
  %49 = ptrtoint ptr %cphy_mode to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %cphy_mode, align 1, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool121.not = icmp eq i8 %50, 0
  %add.ptr134 = getelementptr i8, ptr %1, i32 180
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr134) #7
  br i1 %tobool121.not, label %if.else133, label %if.then122

if.then122:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #9
  %hs_exit = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 12, i32 3
  %51 = ptrtoint ptr %hs_exit to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %hs_exit, align 4
  %add.ptr124 = getelementptr i8, ptr %1, i32 196
  tail call void @msm_writel(i32 noundef %52, ptr noundef %add.ptr124) #7
  %shared_timings = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 12, i32 11
  %clk_pre = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 12, i32 11, i32 1
  %53 = ptrtoint ptr %clk_pre to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %clk_pre, align 4
  %add.ptr125 = getelementptr i8, ptr %1, i32 200
  tail call void @msm_writel(i32 noundef %54, ptr noundef %add.ptr125) #7
  %clk_prepare = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 12, i32 2
  %55 = ptrtoint ptr %clk_prepare to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %clk_prepare, align 4
  %add.ptr126 = getelementptr i8, ptr %1, i32 204
  tail call void @msm_writel(i32 noundef %56, ptr noundef %add.ptr126) #7
  %57 = ptrtoint ptr %shared_timings to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %shared_timings, align 4
  %add.ptr128 = getelementptr i8, ptr %1, i32 208
  tail call void @msm_writel(i32 noundef %58, ptr noundef %add.ptr128) #7
  %hs_rqst = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 12, i32 7
  %59 = ptrtoint ptr %hs_rqst to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %hs_rqst, align 4
  %add.ptr129 = getelementptr i8, ptr %1, i32 212
  tail call void @msm_writel(i32 noundef %60, ptr noundef %add.ptr129) #7
  %add.ptr130 = getelementptr i8, ptr %1, i32 216
  tail call void @msm_writel(i32 noundef 2, ptr noundef %add.ptr130) #7
  %add.ptr131 = getelementptr i8, ptr %1, i32 220
  tail call void @msm_writel(i32 noundef 4, ptr noundef %add.ptr131) #7
  br label %if.end155

if.else133:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #9
  %61 = ptrtoint ptr %timing1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %timing1, align 4
  %add.ptr135 = getelementptr i8, ptr %1, i32 184
  tail call void @msm_writel(i32 noundef %62, ptr noundef %add.ptr135) #7
  %clk_prepare136 = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 12, i32 2
  %63 = ptrtoint ptr %clk_prepare136 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %clk_prepare136, align 4
  %add.ptr137 = getelementptr i8, ptr %1, i32 188
  tail call void @msm_writel(i32 noundef %64, ptr noundef %add.ptr137) #7
  %clk_trail = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 12, i32 1
  %65 = ptrtoint ptr %clk_trail to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %clk_trail, align 4
  %add.ptr138 = getelementptr i8, ptr %1, i32 192
  tail call void @msm_writel(i32 noundef %66, ptr noundef %add.ptr138) #7
  %hs_exit139 = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 12, i32 3
  %67 = ptrtoint ptr %hs_exit139 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %hs_exit139, align 4
  %add.ptr140 = getelementptr i8, ptr %1, i32 196
  tail call void @msm_writel(i32 noundef %68, ptr noundef %add.ptr140) #7
  %hs_zero = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 12, i32 4
  %69 = ptrtoint ptr %hs_zero to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %hs_zero, align 4
  %add.ptr141 = getelementptr i8, ptr %1, i32 200
  tail call void @msm_writel(i32 noundef %70, ptr noundef %add.ptr141) #7
  %hs_prepare = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 12, i32 5
  %71 = ptrtoint ptr %hs_prepare to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %hs_prepare, align 4
  %add.ptr142 = getelementptr i8, ptr %1, i32 204
  tail call void @msm_writel(i32 noundef %72, ptr noundef %add.ptr142) #7
  %hs_trail = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 12, i32 6
  %73 = ptrtoint ptr %hs_trail to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %hs_trail, align 4
  %add.ptr143 = getelementptr i8, ptr %1, i32 208
  tail call void @msm_writel(i32 noundef %74, ptr noundef %add.ptr143) #7
  %hs_rqst144 = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 12, i32 7
  %75 = ptrtoint ptr %hs_rqst144 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %hs_rqst144, align 4
  %add.ptr145 = getelementptr i8, ptr %1, i32 212
  tail call void @msm_writel(i32 noundef %76, ptr noundef %add.ptr145) #7
  %add.ptr146 = getelementptr i8, ptr %1, i32 216
  tail call void @msm_writel(i32 noundef 2, ptr noundef %add.ptr146) #7
  %add.ptr147 = getelementptr i8, ptr %1, i32 220
  tail call void @msm_writel(i32 noundef 4, ptr noundef %add.ptr147) #7
  %add.ptr148 = getelementptr i8, ptr %1, i32 224
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr148) #7
  %shared_timings149 = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 12, i32 11
  %clk_pre150 = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 12, i32 11, i32 1
  %77 = ptrtoint ptr %clk_pre150 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %clk_pre150, align 4
  %add.ptr151 = getelementptr i8, ptr %1, i32 228
  tail call void @msm_writel(i32 noundef %78, ptr noundef %add.ptr151) #7
  %79 = ptrtoint ptr %shared_timings149 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %shared_timings149, align 4
  br label %if.end155

if.end155:                                        ; preds = %if.else133, %if.then122
  %.sink279 = phi i32 [ 232, %if.else133 ], [ 224, %if.then122 ]
  %.sink = phi i32 [ %80, %if.else133 ], [ 0, %if.then122 ]
  %add.ptr154 = getelementptr i8, ptr %1, i32 %.sink279
  tail call void @msm_writel(i32 noundef %.sink, ptr noundef %add.ptr154) #7
  %lane_base1.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 4
  %81 = ptrtoint ptr %lane_base1.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %lane_base1.i, align 4
  %83 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %cfg, align 4
  %quirks.i = getelementptr inbounds %struct.msm_dsi_phy_cfg, ptr %84, i32 0, i32 6
  %85 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %quirks.i, align 4
  %and.i271 = and i32 %86, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i271)
  %tobool.not.i = icmp eq i32 %and.i271, 0
  %add.ptr.i272 = getelementptr i8, ptr %82, i32 20
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i272) #7
  %add.ptr4.i = getelementptr i8, ptr %82, i32 16
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr4.i) #7
  %add.ptr.1.i = getelementptr i8, ptr %82, i32 148
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.1.i) #7
  %add.ptr4.1.i = getelementptr i8, ptr %82, i32 144
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr4.1.i) #7
  %add.ptr.2.i = getelementptr i8, ptr %82, i32 276
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.2.i) #7
  %add.ptr4.2.i = getelementptr i8, ptr %82, i32 272
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr4.2.i) #7
  %add.ptr.3.i = getelementptr i8, ptr %82, i32 404
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.3.i) #7
  %add.ptr4.3.i = getelementptr i8, ptr %82, i32 400
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr4.3.i) #7
  %add.ptr.4.i = getelementptr i8, ptr %82, i32 532
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.4.i) #7
  %add.ptr4.4.i = getelementptr i8, ptr %82, i32 528
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr4.4.i) #7
  %87 = ptrtoint ptr %lane_base1.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %lane_base1.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %88, i32 20
  tail call void @msm_writel(i32 noundef 3, ptr noundef %add.ptr.i.i) #7
  tail call void @msm_writel(i32 noundef 0, ptr noundef %82) #7
  %add.ptr11.i = getelementptr i8, ptr %82, i32 4
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr11.i) #7
  %add.ptr14.i = getelementptr i8, ptr %82, i32 8
  tail call void @msm_writel(i32 noundef 10, ptr noundef %add.ptr14.i) #7
  %89 = shl nuw nsw i32 %and.i271, 6
  %add.ptr16.i = getelementptr i8, ptr %82, i32 24
  tail call void @msm_writel(i32 noundef %89, ptr noundef %add.ptr16.i) #7
  %add.ptr9.1.i = getelementptr i8, ptr %82, i32 128
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr9.1.i) #7
  %add.ptr11.1.i = getelementptr i8, ptr %82, i32 132
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr11.1.i) #7
  %add.ptr14.1.i = getelementptr i8, ptr %82, i32 136
  tail call void @msm_writel(i32 noundef 10, ptr noundef %add.ptr14.1.i) #7
  %add.ptr16.1.i = getelementptr i8, ptr %82, i32 152
  tail call void @msm_writel(i32 noundef %89, ptr noundef %add.ptr16.1.i) #7
  %add.ptr9.2.i = getelementptr i8, ptr %82, i32 256
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr9.2.i) #7
  %add.ptr11.2.i = getelementptr i8, ptr %82, i32 260
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr11.2.i) #7
  %add.ptr14.2.i = getelementptr i8, ptr %82, i32 264
  tail call void @msm_writel(i32 noundef 10, ptr noundef %add.ptr14.2.i) #7
  %add.ptr16.2.i = getelementptr i8, ptr %82, i32 280
  tail call void @msm_writel(i32 noundef %89, ptr noundef %add.ptr16.2.i) #7
  %add.ptr9.3.i = getelementptr i8, ptr %82, i32 384
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr9.3.i) #7
  %add.ptr11.3.i = getelementptr i8, ptr %82, i32 388
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr11.3.i) #7
  %add.ptr14.3.i = getelementptr i8, ptr %82, i32 392
  tail call void @msm_writel(i32 noundef 10, ptr noundef %add.ptr14.3.i) #7
  %conv.3.i = select i1 %tobool.not.i, i32 4, i32 70
  %add.ptr16.3.i = getelementptr i8, ptr %82, i32 408
  tail call void @msm_writel(i32 noundef %conv.3.i, ptr noundef %add.ptr16.3.i) #7
  %add.ptr9.4.i = getelementptr i8, ptr %82, i32 512
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr9.4.i) #7
  %add.ptr11.4.i = getelementptr i8, ptr %82, i32 516
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr11.4.i) #7
  %add.ptr14.4.i = getelementptr i8, ptr %82, i32 520
  tail call void @msm_writel(i32 noundef 138, ptr noundef %add.ptr14.4.i) #7
  %conv.4.i = select i1 %tobool.not.i, i32 1, i32 65
  %add.ptr16.4.i = getelementptr i8, ptr %82, i32 536
  tail call void @msm_writel(i32 noundef %conv.4.i, ptr noundef %add.ptr16.4.i) #7
  %id = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 9
  %90 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %id, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.35, i32 noundef %91) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end155, %if.then116, %do.end45, %if.then5
  %retval.0 = phi i32 [ -22, %if.then5 ], [ -22, %do.end45 ], [ -22, %if.then116 ], [ 0, %if.end155 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dsi_7nm_phy_disable(ptr nocapture noundef readonly %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base1 = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 1
  %0 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base1, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.28) #7
  %2 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base1, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 60
  %call.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !105
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
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %lane_base1.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 4
  %4 = ptrtoint ptr %lane_base1.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lane_base1.i, align 4
  %add.ptr.i17 = getelementptr i8, ptr %5, i32 20
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i17) #7
  %add.ptr = getelementptr i8, ptr %1, i32 36
  %call3 = tail call i32 @msm_readl(ptr noundef %add.ptr) #7
  %and = and i32 %call3, -32
  tail call void @msm_writel(i32 noundef %and, ptr noundef %add.ptr) #7
  %add.ptr5 = getelementptr i8, ptr %1, i32 160
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr5) #7
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !109
  tail call void @arm_heavy_mb() #7
  %id = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 9
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.38, i32 noundef %7) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dsi_7nm_pll_save_state(ptr nocapture noundef readonly %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vco_hw = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 17
  %0 = ptrtoint ptr %vco_hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vco_hw, align 4
  %phy1 = getelementptr inbounds %struct.dsi_pll_7nm, ptr %1, i32 0, i32 1
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
  %add.ptr3 = getelementptr i8, ptr %7, i32 340
  %call = tail call i32 @msm_readl(ptr noundef %add.ptr3) #7
  %pll_out_div = getelementptr inbounds %struct.dsi_pll_7nm, ptr %1, i32 0, i32 4, i32 3
  %8 = trunc i32 %call to i8
  %conv6 = and i8 %8, 3
  %9 = ptrtoint ptr %pll_out_div to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv6, ptr %pll_out_div, align 2
  %add.ptr7 = getelementptr i8, ptr %5, i32 16
  %call8 = tail call i32 @msm_readl(ptr noundef %add.ptr7) #7
  %10 = trunc i32 %call8 to i8
  %conv10 = and i8 %10, 15
  %bit_clk_div = getelementptr inbounds %struct.dsi_pll_7nm, ptr %1, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %bit_clk_div to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv10, ptr %bit_clk_div, align 4
  %12 = lshr i8 %10, 4
  %pix_clk_div = getelementptr inbounds %struct.dsi_pll_7nm, ptr %1, i32 0, i32 4, i32 2
  %13 = ptrtoint ptr %pix_clk_div to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %12, ptr %pix_clk_div, align 1
  %add.ptr13 = getelementptr i8, ptr %5, i32 20
  %call14 = tail call i32 @msm_readl(ptr noundef %add.ptr13) #7
  %14 = trunc i32 %call14 to i8
  %conv16 = and i8 %14, 3
  %pll_mux = getelementptr inbounds %struct.dsi_pll_7nm, ptr %1, i32 0, i32 4, i32 4
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
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.39, i32 noundef %19, i32 noundef %conv19, i32 noundef %conv21, i32 noundef %conv23, i32 noundef %conv25) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsi_7nm_pll_restore_state(ptr nocapture noundef readonly %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %vco_hw = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 17
  %0 = ptrtoint ptr %vco_hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vco_hw, align 4
  %phy1 = getelementptr inbounds %struct.dsi_pll_7nm, ptr %1, i32 0, i32 1
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
  %add.ptr3 = getelementptr i8, ptr %7, i32 340
  %call = tail call i32 @msm_readl(ptr noundef %add.ptr3) #7
  %and = and i32 %call, -4
  %pll_out_div = getelementptr inbounds %struct.dsi_pll_7nm, ptr %1, i32 0, i32 4, i32 3
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
  %add.ptr6 = getelementptr i8, ptr %13, i32 340
  tail call void @msm_writel(i32 noundef %or, ptr noundef %add.ptr6) #7
  %bit_clk_div = getelementptr inbounds %struct.dsi_pll_7nm, ptr %1, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %bit_clk_div to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bit_clk_div, align 4
  %conv7 = zext i8 %15 to i32
  %pix_clk_div = getelementptr inbounds %struct.dsi_pll_7nm, ptr %1, i32 0, i32 4, i32 2
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
  %pll_mux = getelementptr inbounds %struct.dsi_pll_7nm, ptr %1, i32 0, i32 4, i32 4
  %18 = ptrtoint ptr %pll_mux to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %pll_mux, align 1
  %conv14 = zext i8 %19 to i32
  %or15 = or i32 %and13, %conv14
  tail call void @msm_writel(i32 noundef %or15, ptr noundef %add.ptr11) #7
  %20 = ptrtoint ptr %vco_hw to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %vco_hw, align 4
  %vco_current_rate = getelementptr inbounds %struct.dsi_pll_7nm, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %vco_current_rate to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %vco_current_rate, align 8
  %conv18 = trunc i64 %23 to i32
  %call19 = tail call i32 @dsi_pll_7nm_vco_set_rate(ptr noundef %21, i32 noundef %conv18, i32 noundef 19200000)
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @dsi_7nm_set_continuous_clock(ptr nocapture noundef readonly %phy, i1 noundef returned zeroext %enable) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base1 = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 1
  %0 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base1, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 164
  %call = tail call i32 @msm_readl(ptr noundef %add.ptr) #7
  %and = and i32 %call, -97
  %masksel = select i1 %enable, i32 96, i32 0
  %data.0 = or i32 %and, %masksel
  tail call void @msm_writel(i32 noundef %data.0, ptr noundef %add.ptr) #7
  ret i1 %enable
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
declare dso_local i32 @msm_readl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_clk_hw_register_mux(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsi_pll_7nm_vco_prepare(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %phy.i = getelementptr inbounds %struct.dsi_pll_7nm, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy.i, align 4
  %base.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 36
  %call.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #7
  %or.i = or i32 %call.i, 32
  %4 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy.i, align 4
  %base2.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %base2.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base2.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %7, i32 36
  tail call void @msm_writel(i32 noundef %or.i, ptr noundef %add.ptr3.i) #7
  %8 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy.i, align 4
  %pll_base.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %pll_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pll_base.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %11, i32 40
  tail call void @msm_writel(i32 noundef 192, ptr noundef %add.ptr5.i) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %12 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %12(i32 noundef 214748) #7
  %slave = getelementptr inbounds %struct.dsi_pll_7nm, ptr %hw, i32 0, i32 5
  %13 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %slave, align 4
  %tobool.not = icmp eq ptr %14, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %phy.i38 = getelementptr inbounds %struct.dsi_pll_7nm, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %phy.i38 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %phy.i38, align 4
  %base.i39 = getelementptr inbounds %struct.msm_dsi_phy, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %base.i39 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i39, align 4
  %add.ptr.i40 = getelementptr i8, ptr %18, i32 36
  %call.i41 = tail call i32 @msm_readl(ptr noundef %add.ptr.i40) #7
  %or.i42 = or i32 %call.i41, 32
  %19 = ptrtoint ptr %phy.i38 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %phy.i38, align 4
  %base2.i43 = getelementptr inbounds %struct.msm_dsi_phy, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %base2.i43 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base2.i43, align 4
  %add.ptr3.i44 = getelementptr i8, ptr %22, i32 36
  tail call void @msm_writel(i32 noundef %or.i42, ptr noundef %add.ptr3.i44) #7
  %23 = ptrtoint ptr %phy.i38 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %phy.i38, align 4
  %pll_base.i45 = getelementptr inbounds %struct.msm_dsi_phy, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %pll_base.i45 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pll_base.i45, align 4
  %add.ptr5.i46 = getelementptr i8, ptr %26, i32 40
  tail call void @msm_writel(i32 noundef 192, ptr noundef %add.ptr5.i46) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %28 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %phy.i, align 4
  %base = getelementptr inbounds %struct.msm_dsi_phy, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base, align 4
  %add.ptr2 = getelementptr i8, ptr %31, i32 60
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !110
  tail call void @arm_heavy_mb() #7
  %call.i47 = tail call i64 @ktime_get() #7
  %add.i.i = add i64 %call.i47, 5000000
  %32 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %phy.i, align 4
  %pll_base47.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %33, i32 0, i32 2
  %34 = ptrtoint ptr %pll_base47.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pll_base47.i, align 4
  %add.ptr48.i = getelementptr i8, ptr %35, i32 432
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr48.i) #7, !srcloc !106
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !111
  %and49.i = and i32 %37, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and49.i)
  %cmp.not50.i = icmp eq i32 %and49.i, 0
  br i1 %cmp.not50.i, label %if.end.land.lhs.true.i_crit_edge, label %if.end.for.end.i_crit_edge

if.end.for.end.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

if.end.land.lhs.true.i_crit_edge:                 ; preds = %if.end
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %if.end.land.lhs.true.i_crit_edge
  %call4.i = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call4.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call4.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then7.i, label %cond.false.i

if.then7.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %phy.i, align 4
  %pll_base11.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %pll_base11.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pll_base11.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %41, i32 432
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #7, !srcloc !106
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !112
  br label %for.end.i

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 21474800) #7
  %45 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %phy.i, align 4
  %pll_base.i49 = getelementptr inbounds %struct.msm_dsi_phy, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %pll_base.i49 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pll_base.i49, align 4
  %add.ptr.i50 = getelementptr i8, ptr %48, i32 432
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i50) #7, !srcloc !106
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !111
  %and.i = and i32 %50, 1
  %cmp.not.i = icmp eq i32 %and.i, 0
  br i1 %cmp.not.i, label %cond.false.i.land.lhs.true.i_crit_edge, label %cond.false.i.for.end.i_crit_edge

cond.false.i.for.end.i_crit_edge:                 ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true.i

for.end.i:                                        ; preds = %cond.false.i.for.end.i_crit_edge, %if.then7.i, %if.end.for.end.i_crit_edge
  %status.0.i = phi i32 [ %43, %if.then7.i ], [ %37, %if.end.for.end.i_crit_edge ], [ %50, %cond.false.i.for.end.i_crit_edge ]
  %and25.i = and i32 %status.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %cmp26.not.i = icmp eq i32 %and25.i, 0
  %51 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %phy.i, align 4
  br i1 %cmp26.not.i, label %do.end7, label %if.end11

do.end7:                                          ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %id.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %52, i32 0, i32 9
  %53 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %id.i, align 4
  %call31.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.17, i32 noundef %54, i32 noundef %status.0.i) #10
  %55 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %phy.i, align 4
  %id = getelementptr inbounds %struct.msm_dsi_phy, ptr %56, i32 0, i32 9
  %57 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %id, align 4
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, i32 noundef %58) #10
  br label %error

if.end11:                                         ; preds = %for.end.i
  %pll_on = getelementptr inbounds %struct.msm_dsi_phy, ptr %52, i32 0, i32 18
  %59 = ptrtoint ptr %pll_on to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 1, ptr %pll_on, align 4
  %60 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %phy.i, align 4
  %base.i52 = getelementptr inbounds %struct.msm_dsi_phy, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %base.i52 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base.i52, align 4
  %add.ptr.i53 = getelementptr i8, ptr %63, i32 296
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i53) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  tail call void @arm_heavy_mb() #7
  %64 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %phy.i, align 4
  %base2.i54 = getelementptr inbounds %struct.msm_dsi_phy, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %base2.i54 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %base2.i54, align 4
  %add.ptr3.i55 = getelementptr i8, ptr %67, i32 296
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr3.i55) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  %68 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %slave, align 4
  %tobool14.not = icmp eq ptr %69, null
  br i1 %tobool14.not, label %if.end11.if.end17_crit_edge, label %if.then15

if.end11.if.end17_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end17

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %phy.i56 = getelementptr inbounds %struct.dsi_pll_7nm, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %phy.i56 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %phy.i56, align 4
  %base.i57 = getelementptr inbounds %struct.msm_dsi_phy, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %base.i57 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %base.i57, align 4
  %add.ptr.i58 = getelementptr i8, ptr %73, i32 296
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr.i58) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !113
  tail call void @arm_heavy_mb() #7
  %74 = ptrtoint ptr %phy.i56 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %phy.i56, align 4
  %base2.i59 = getelementptr inbounds %struct.msm_dsi_phy, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %base2.i59 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %base2.i59, align 4
  %add.ptr3.i60 = getelementptr i8, ptr %77, i32 296
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr3.i60) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  tail call void @arm_heavy_mb() #7
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %if.end11.if.end17_crit_edge
  %78 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %phy.i, align 4
  %base.i62 = getelementptr inbounds %struct.msm_dsi_phy, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %base.i62 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %base.i62, align 4
  %add.ptr.i63 = getelementptr i8, ptr %81, i32 48
  tail call void @msm_writel(i32 noundef 4, ptr noundef %add.ptr.i63) #7
  %82 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %phy.i, align 4
  %base2.i64 = getelementptr inbounds %struct.msm_dsi_phy, ptr %83, i32 0, i32 1
  %84 = ptrtoint ptr %base2.i64 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %base2.i64, align 4
  %add.ptr3.i65 = getelementptr i8, ptr %85, i32 20
  %call.i66 = tail call i32 @msm_readl(ptr noundef %add.ptr3.i65) #7
  %or4.i = or i32 %call.i66, 48
  %86 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %phy.i, align 4
  %base6.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %87, i32 0, i32 1
  %88 = ptrtoint ptr %base6.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %base6.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %89, i32 20
  tail call void @msm_writel(i32 noundef %or4.i, ptr noundef %add.ptr7.i) #7
  %90 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %slave, align 4
  %tobool19.not = icmp eq ptr %91, null
  br i1 %tobool19.not, label %if.end17.error_crit_edge, label %if.then20

if.end17.error_crit_edge:                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %error

if.then20:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %phy.i67 = getelementptr inbounds %struct.dsi_pll_7nm, ptr %91, i32 0, i32 1
  %92 = ptrtoint ptr %phy.i67 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %phy.i67, align 4
  %base.i68 = getelementptr inbounds %struct.msm_dsi_phy, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %base.i68 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %base.i68, align 4
  %add.ptr.i69 = getelementptr i8, ptr %95, i32 48
  tail call void @msm_writel(i32 noundef 4, ptr noundef %add.ptr.i69) #7
  %96 = ptrtoint ptr %phy.i67 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %phy.i67, align 4
  %base2.i70 = getelementptr inbounds %struct.msm_dsi_phy, ptr %97, i32 0, i32 1
  %98 = ptrtoint ptr %base2.i70 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %base2.i70, align 4
  %add.ptr3.i71 = getelementptr i8, ptr %99, i32 20
  %call.i72 = tail call i32 @msm_readl(ptr noundef %add.ptr3.i71) #7
  %or4.i73 = or i32 %call.i72, 48
  %100 = ptrtoint ptr %phy.i67 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %phy.i67, align 4
  %base6.i74 = getelementptr inbounds %struct.msm_dsi_phy, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %base6.i74 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %base6.i74, align 4
  %add.ptr7.i75 = getelementptr i8, ptr %103, i32 20
  tail call void @msm_writel(i32 noundef %or4.i73, ptr noundef %add.ptr7.i75) #7
  br label %error

error:                                            ; preds = %if.then20, %if.end17.error_crit_edge, %do.end7
  %cond.i78 = phi i32 [ 0, %if.end17.error_crit_edge ], [ 0, %if.then20 ], [ -110, %do.end7 ]
  ret i32 %cond.i78
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dsi_pll_7nm_vco_unprepare(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %phy.i = getelementptr inbounds %struct.dsi_pll_7nm, ptr %hw, i32 0, i32 1
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
  %add.ptr1 = getelementptr i8, ptr %11, i32 60
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
  %add.ptr2.i.i = getelementptr i8, ptr %23, i32 40
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
  %slave = getelementptr inbounds %struct.dsi_pll_7nm, ptr %hw, i32 0, i32 5
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
  %phy.i14 = getelementptr inbounds %struct.dsi_pll_7nm, ptr %30, i32 0, i32 1
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
  %phy.i21 = getelementptr inbounds %struct.dsi_pll_7nm, ptr %40, i32 0, i32 1
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
  %add.ptr2.i.i28 = getelementptr i8, ptr %52, i32 40
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !115
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
define internal i32 @dsi_pll_7nm_vco_recalc_rate(ptr nocapture noundef %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %phy = getelementptr inbounds %struct.dsi_pll_7nm, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 4
  %pll_base = getelementptr inbounds %struct.msm_dsi_phy, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pll_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pll_base, align 4
  %add.ptr1 = getelementptr i8, ptr %3, i32 224
  %call = tail call i32 @msm_readl(ptr noundef %add.ptr1) #7
  %and = and i32 %call, 255
  %add.ptr2 = getelementptr i8, ptr %3, i32 228
  %call3 = tail call i32 @msm_readl(ptr noundef %add.ptr2) #7
  %add.ptr4 = getelementptr i8, ptr %3, i32 232
  %call5 = tail call i32 @msm_readl(ptr noundef %add.ptr4) #7
  %and6 = shl i32 %call5, 8
  %shl = and i32 %and6, 65280
  %or = or i32 %shl, %call3
  %add.ptr7 = getelementptr i8, ptr %3, i32 236
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
  %vco_current_rate = getelementptr inbounds %struct.dsi_pll_7nm, ptr %hw, i32 0, i32 2
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
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.19, i32 noundef %8, i32 noundef %conv19, i32 noundef %and, i32 noundef %or11) #7
  ret i32 %conv19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dsi_pll_7nm_clk_round_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, ptr nocapture noundef readnone %parent_rate) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %phy = getelementptr inbounds %struct.dsi_pll_7nm, ptr %hw, i32 0, i32 1
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
define internal i32 @dsi_pll_7nm_vco_set_rate(ptr nocapture noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  %config = alloca %struct.dsi_pll_config, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %config) #7
  %0 = call ptr @memset(ptr %config, i32 255, i32 36)
  %phy = getelementptr inbounds %struct.dsi_pll_7nm, ptr %hw, i32 0, i32 1
  %1 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %phy, align 4
  %id = getelementptr inbounds %struct.msm_dsi_phy, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.20, i32 noundef %4, i32 noundef %rate, i32 noundef %parent_rate) #7
  %conv = zext i32 %rate to i64
  %vco_current_rate = getelementptr inbounds %struct.dsi_pll_7nm, ptr %hw, i32 0, i32 2
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
  store i32 4800, ptr %ssc_offset.i, align 4
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
  %11 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -2327733145514495953, i64 %mul1.i) #11, !srcloc !116
  %12 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -2327733145514495953, i64 %mul1.i, i64 %11, i32 0) #11, !srcloc !117
  %13 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %phy, align 4
  %cfg.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %14, i32 0, i32 13
  %15 = ptrtoint ptr %cfg.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cfg.i, align 4
  %quirks.i = getelementptr inbounds %struct.msm_dsi_phy_cfg, ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %quirks.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %quirks.i, align 4
  %and.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %pll_clock_inverters.i = getelementptr inbounds %struct.dsi_pll_config, ptr %config, i32 0, i32 7
  %19 = ptrtoint ptr %pll_clock_inverters.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 40, ptr %pll_clock_inverters.i, align 4
  br label %dsi_pll_calc_dec_frac.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000001, i32 %rate)
  %cmp.i = icmp ult i32 %rate, 1000000001
  br i1 %cmp.i, label %if.then5.i, label %if.else7.i

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %pll_clock_inverters6.i = getelementptr inbounds %struct.dsi_pll_config, ptr %config, i32 0, i32 7
  %20 = ptrtoint ptr %pll_clock_inverters6.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 160, ptr %pll_clock_inverters6.i, align 4
  br label %dsi_pll_calc_dec_frac.exit

if.else7.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1794967295, i32 %rate)
  %cmp8.i = icmp ult i32 %rate, -1794967295
  br i1 %cmp8.i, label %if.then10.i, label %if.else12.i

if.then10.i:                                      ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_pc() #9
  %pll_clock_inverters11.i = getelementptr inbounds %struct.dsi_pll_config, ptr %config, i32 0, i32 7
  %21 = ptrtoint ptr %pll_clock_inverters11.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 32, ptr %pll_clock_inverters11.i, align 4
  br label %dsi_pll_calc_dec_frac.exit

if.else12.i:                                      ; preds = %if.else7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1274967295, i32 %rate)
  %cmp13.i = icmp ult i32 %rate, -1274967295
  %pll_clock_inverters16.i = getelementptr inbounds %struct.dsi_pll_config, ptr %config, i32 0, i32 7
  br i1 %cmp13.i, label %if.then15.i, label %if.else17.i

if.then15.i:                                      ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %pll_clock_inverters16.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %pll_clock_inverters16.i, align 4
  br label %dsi_pll_calc_dec_frac.exit

if.else17.i:                                      ; preds = %if.else12.i
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %pll_clock_inverters16.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 64, ptr %pll_clock_inverters16.i, align 4
  br label %dsi_pll_calc_dec_frac.exit

dsi_pll_calc_dec_frac.exit:                       ; preds = %if.else17.i, %if.then15.i, %if.then10.i, %if.then5.i, %if.then.i
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %12, 0
  %div158.i.i34.i = lshr i64 %asmresult10.i.i.i.i, 25
  %shr.i.i = lshr i64 %asmresult10.i.i.i.i, 43
  %24 = trunc i64 %div158.i.i34.i to i32
  %conv1.i.i = and i32 %24, 262143
  %conv22.i = trunc i64 %shr.i.i to i32
  %decimal_div_start.i = getelementptr inbounds %struct.dsi_pll_config, ptr %config, i32 0, i32 5
  %25 = ptrtoint ptr %decimal_div_start.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %conv22.i, ptr %decimal_div_start.i, align 4
  %frac_div_start.i = getelementptr inbounds %struct.dsi_pll_config, ptr %config, i32 0, i32 6
  %26 = ptrtoint ptr %frac_div_start.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %conv1.i.i, ptr %frac_div_start.i, align 4
  call fastcc void @dsi_pll_calc_ssc(ptr noundef nonnull %config)
  %27 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %phy, align 4
  %pll_base.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %pll_base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pll_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %30, i32 188
  tail call void @msm_writel(i32 noundef 18, ptr noundef %add.ptr.i) #7
  %31 = ptrtoint ptr %decimal_div_start.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %decimal_div_start.i, align 4
  %add.ptr1.i = getelementptr i8, ptr %30, i32 224
  tail call void @msm_writel(i32 noundef %32, ptr noundef %add.ptr1.i) #7
  %33 = ptrtoint ptr %frac_div_start.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %frac_div_start.i, align 4
  %and.i11 = and i32 %34, 255
  %add.ptr2.i = getelementptr i8, ptr %30, i32 228
  tail call void @msm_writel(i32 noundef %and.i11, ptr noundef %add.ptr2.i) #7
  %and4.i = lshr i32 %34, 8
  %shr.i = and i32 %and4.i, 255
  %add.ptr5.i = getelementptr i8, ptr %30, i32 232
  tail call void @msm_writel(i32 noundef %shr.i, ptr noundef %add.ptr5.i) #7
  %and7.i = lshr i32 %34, 16
  %shr8.i = and i32 %and7.i, 3
  %add.ptr9.i = getelementptr i8, ptr %30, i32 236
  tail call void @msm_writel(i32 noundef %shr8.i, ptr noundef %add.ptr9.i) #7
  %add.ptr10.i = getelementptr i8, ptr %30, i32 344
  tail call void @msm_writel(i32 noundef 64, ptr noundef %add.ptr10.i) #7
  %add.ptr11.i = getelementptr i8, ptr %30, i32 404
  tail call void @msm_writel(i32 noundef 6, ptr noundef %add.ptr11.i) #7
  %35 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %phy, align 4
  %cphy_mode.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %36, i32 0, i32 16
  %37 = ptrtoint ptr %cphy_mode.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %cphy_mode.i, align 1, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i12 = icmp eq i8 %38, 0
  %cond.i = select i1 %tobool.not.i12, i32 16, i32 0
  %add.ptr13.i = getelementptr i8, ptr %30, i32 592
  tail call void @msm_writel(i32 noundef %cond.i, ptr noundef %add.ptr13.i) #7
  %pll_clock_inverters.i13 = getelementptr inbounds %struct.dsi_pll_config, ptr %config, i32 0, i32 7
  %39 = ptrtoint ptr %pll_clock_inverters.i13 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pll_clock_inverters.i13, align 4
  %add.ptr14.i = getelementptr i8, ptr %30, i32 412
  tail call void @msm_writel(i32 noundef %40, ptr noundef %add.ptr14.i) #7
  %41 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %phy, align 4
  %pll_base.i15 = getelementptr inbounds %struct.msm_dsi_phy, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %pll_base.i15 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pll_base.i15, align 4
  %cfg.i16 = getelementptr inbounds %struct.msm_dsi_phy, ptr %42, i32 0, i32 13
  %45 = ptrtoint ptr %cfg.i16 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %cfg.i16, align 4
  %quirks.i17 = getelementptr inbounds %struct.msm_dsi_phy_cfg, ptr %46, i32 0, i32 6
  %47 = ptrtoint ptr %quirks.i17 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %quirks.i17, align 4
  %and.i18 = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i18)
  %tobool.not.i19 = icmp eq i32 %and.i18, 0
  br i1 %tobool.not.i19, label %dsi_pll_calc_dec_frac.exit.if.end11.i_crit_edge, label %if.then.i22

dsi_pll_calc_dec_frac.exit.if.end11.i_crit_edge:  ; preds = %dsi_pll_calc_dec_frac.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

if.then.i22:                                      ; preds = %dsi_pll_calc_dec_frac.exit
  %49 = ptrtoint ptr %vco_current_rate to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %vco_current_rate, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 3099999999, i64 %50)
  %cmp.i21 = icmp ugt i64 %50, 3099999999
  %spec.select.i = select i1 %cmp.i21, i8 3, i8 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 1520000000, i64 %50)
  %cmp4.i = icmp ult i64 %50, 1520000000
  br i1 %cmp4.i, label %if.then.i22.if.end11.i_crit_edge, label %if.else.i23

if.then.i22.if.end11.i_crit_edge:                 ; preds = %if.then.i22
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11.i

if.else.i23:                                      ; preds = %if.then.i22
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp8(i64 2990000000, i64 %50)
  %cmp7.i = icmp ult i64 %50, 2990000000
  %spec.select87.i = zext i1 %cmp7.i to i32
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.else.i23, %if.then.i22.if.end11.i_crit_edge, %dsi_pll_calc_dec_frac.exit.if.end11.i_crit_edge
  %analog_controls_five_1.1.i = phi i8 [ 1, %dsi_pll_calc_dec_frac.exit.if.end11.i_crit_edge ], [ %spec.select.i, %if.then.i22.if.end11.i_crit_edge ], [ %spec.select.i, %if.else.i23 ]
  %vco_config_1.0.i = phi i32 [ 0, %dsi_pll_calc_dec_frac.exit.if.end11.i_crit_edge ], [ 8, %if.then.i22.if.end11.i_crit_edge ], [ %spec.select87.i, %if.else.i23 ]
  %conv.i = zext i8 %analog_controls_five_1.1.i to i32
  %add.ptr.i24 = getelementptr i8, ptr %44, i32 600
  tail call void @msm_writel(i32 noundef %conv.i, ptr noundef %add.ptr.i24) #7
  %add.ptr13.i25 = getelementptr i8, ptr %44, i32 576
  tail call void @msm_writel(i32 noundef %vco_config_1.0.i, ptr noundef %add.ptr13.i25) #7
  %add.ptr14.i26 = getelementptr i8, ptr %44, i32 24
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr14.i26) #7
  %add.ptr15.i = getelementptr i8, ptr %44, i32 4
  tail call void @msm_writel(i32 noundef 3, ptr noundef %add.ptr15.i) #7
  %add.ptr16.i = getelementptr i8, ptr %44, i32 16
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr16.i) #7
  %add.ptr17.i = getelementptr i8, ptr %44, i32 32
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr17.i) #7
  %add.ptr18.i = getelementptr i8, ptr %44, i32 36
  tail call void @msm_writel(i32 noundef 78, ptr noundef %add.ptr18.i) #7
  %add.ptr19.i = getelementptr i8, ptr %44, i32 68
  tail call void @msm_writel(i32 noundef 64, ptr noundef %add.ptr19.i) #7
  %add.ptr20.i = getelementptr i8, ptr %44, i32 104
  tail call void @msm_writel(i32 noundef 186, ptr noundef %add.ptr20.i) #7
  %add.ptr21.i = getelementptr i8, ptr %44, i32 120
  tail call void @msm_writel(i32 noundef 12, ptr noundef %add.ptr21.i) #7
  %add.ptr22.i = getelementptr i8, ptr %44, i32 168
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr22.i) #7
  %add.ptr23.i = getelementptr i8, ptr %44, i32 184
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr23.i) #7
  %add.ptr24.i = getelementptr i8, ptr %44, i32 200
  tail call void @msm_writel(i32 noundef 8, ptr noundef %add.ptr24.i) #7
  %add.ptr25.i = getelementptr i8, ptr %44, i32 352
  tail call void @msm_writel(i32 noundef 10, ptr noundef %add.ptr25.i) #7
  %add.ptr26.i = getelementptr i8, ptr %44, i32 360
  tail call void @msm_writel(i32 noundef 192, ptr noundef %add.ptr26.i) #7
  %add.ptr27.i = getelementptr i8, ptr %44, i32 368
  tail call void @msm_writel(i32 noundef 132, ptr noundef %add.ptr27.i) #7
  tail call void @msm_writel(i32 noundef 130, ptr noundef %add.ptr27.i) #7
  %add.ptr29.i = getelementptr i8, ptr %44, i32 376
  tail call void @msm_writel(i32 noundef 76, ptr noundef %add.ptr29.i) #7
  %add.ptr30.i = getelementptr i8, ptr %44, i32 400
  tail call void @msm_writel(i32 noundef 128, ptr noundef %add.ptr30.i) #7
  %add.ptr31.i = getelementptr i8, ptr %44, i32 144
  tail call void @msm_writel(i32 noundef 41, ptr noundef %add.ptr31.i) #7
  tail call void @msm_writel(i32 noundef 47, ptr noundef %add.ptr31.i) #7
  %add.ptr33.i = getelementptr i8, ptr %44, i32 148
  tail call void @msm_writel(i32 noundef 42, ptr noundef %add.ptr33.i) #7
  %51 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %phy, align 4
  %cfg35.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %52, i32 0, i32 13
  %53 = ptrtoint ptr %cfg35.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cfg35.i, align 4
  %quirks36.i = getelementptr inbounds %struct.msm_dsi_phy_cfg, ptr %54, i32 0, i32 6
  %55 = ptrtoint ptr %quirks36.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %quirks36.i, align 4
  %and37.i = and i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37.i)
  %tobool38.not.i = icmp eq i32 %and37.i, 0
  %cond.i27 = select i1 %tobool38.not.i, i32 34, i32 63
  tail call void @msm_writel(i32 noundef %cond.i27, ptr noundef %add.ptr33.i) #7
  %57 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %phy, align 4
  %cfg41.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %58, i32 0, i32 13
  %59 = ptrtoint ptr %cfg41.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %cfg41.i, align 4
  %quirks42.i = getelementptr inbounds %struct.msm_dsi_phy_cfg, ptr %60, i32 0, i32 6
  %61 = ptrtoint ptr %quirks42.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %quirks42.i, align 4
  %and43.i = and i32 %62, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43.i)
  %tobool44.not.i = icmp eq i32 %and43.i, 0
  br i1 %tobool44.not.i, label %if.end11.i.dsi_pll_config_hzindep_reg.exit_crit_edge, label %if.then45.i

if.end11.i.dsi_pll_config_hzindep_reg.exit_crit_edge: ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dsi_pll_config_hzindep_reg.exit

if.then45.i:                                      ; preds = %if.end11.i
  %add.ptr46.i = getelementptr i8, ptr %44, i32 608
  tail call void @msm_writel(i32 noundef 34, ptr noundef %add.ptr46.i) #7
  %slave.i = getelementptr inbounds %struct.dsi_pll_7nm, ptr %hw, i32 0, i32 5
  %63 = ptrtoint ptr %slave.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %slave.i, align 4
  %tobool47.not.i = icmp eq ptr %64, null
  br i1 %tobool47.not.i, label %if.then45.i.dsi_pll_config_hzindep_reg.exit_crit_edge, label %if.then48.i

if.then45.i.dsi_pll_config_hzindep_reg.exit_crit_edge: ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dsi_pll_config_hzindep_reg.exit

if.then48.i:                                      ; preds = %if.then45.i
  call void @__sanitizer_cov_trace_pc() #9
  %phy50.i = getelementptr inbounds %struct.dsi_pll_7nm, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %phy50.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %phy50.i, align 4
  %pll_base51.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %66, i32 0, i32 2
  %67 = ptrtoint ptr %pll_base51.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %pll_base51.i, align 4
  %add.ptr52.i = getelementptr i8, ptr %68, i32 608
  tail call void @msm_writel(i32 noundef 34, ptr noundef %add.ptr52.i) #7
  br label %dsi_pll_config_hzindep_reg.exit

dsi_pll_config_hzindep_reg.exit:                  ; preds = %if.then48.i, %if.then45.i.dsi_pll_config_hzindep_reg.exit_crit_edge, %if.end11.i.dsi_pll_config_hzindep_reg.exit_crit_edge
  call fastcc void @dsi_pll_ssc_commit(ptr noundef %hw, ptr noundef nonnull %config)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  tail call void @arm_heavy_mb() #7
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %config) #7
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dsi_pll_calc_ssc(ptr nocapture noundef %config) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %config, align 4, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.21) #7
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
  %frac_div_start = getelementptr inbounds %struct.dsi_pll_config, ptr %config, i32 0, i32 6
  %7 = ptrtoint ptr %frac_div_start to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %frac_div_start, align 4
  %conv = zext i32 %8 to i64
  %decimal_div_start = getelementptr inbounds %struct.dsi_pll_config, ptr %config, i32 0, i32 5
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
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !119

if.then168.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %conv169.i.i = trunc i64 %mul13 to i32
  %div172.i.i = udiv i32 %conv169.i.i, %add14
  %conv173.i.i = zext i32 %div172.i.i to i64
  br label %if.end208

if.else174.i.i:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %13 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %add14, i64 %mul13) #11, !srcloc !120
  %asmresult1.i.i.i = extractvalue { i64, i64 } %13, 1
  br label %if.end208

if.end208:                                        ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i = phi i64 [ %conv173.i.i, %if.then168.i.i ], [ %asmresult1.i.i.i, %if.else174.i.i ]
  %add18 = add i64 %dividend.addr.0.i.i, 500000
  %14 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %add18) #11, !srcloc !116
  %15 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %add18, i64 %14, i32 0) #11, !srcloc !117
  %asmresult10.i = extractvalue { i64, i32 } %15, 0
  %div1885 = lshr i64 %asmresult10.i, 18
  %extract.t6 = trunc i64 %div1885 to i32
  %ssc_div_per = getelementptr inbounds %struct.dsi_pll_config, ptr %config, i32 0, i32 9
  %16 = ptrtoint ptr %ssc_div_per to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %sub5, ptr %ssc_div_per, align 4
  %ssc_stepsize = getelementptr inbounds %struct.dsi_pll_config, ptr %config, i32 0, i32 8
  %17 = ptrtoint ptr %ssc_stepsize to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %extract.t6, ptr %ssc_stepsize, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dsi_pll_calc_ssc.__UNIQUE_ID_ddebug336, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dsi_pll_calc_ssc, %if.then221)) #7
          to label %do.body224 [label %if.then221], !srcloc !121

if.then221:                                       ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %decimal_div_start to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %decimal_div_start, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dsi_pll_calc_ssc.__UNIQUE_ID_ddebug336, ptr noundef nonnull @.str.24, i32 noundef %19, i64 noundef %conv, i32 noundef 18) #7
  br label %do.body224

do.body224:                                       ; preds = %if.then221, %if.end208
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dsi_pll_calc_ssc.__UNIQUE_ID_ddebug337, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dsi_pll_calc_ssc, %if.then236)) #7
          to label %cleanup [label %if.then236], !srcloc !121

if.then236:                                       ; preds = %do.body224
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %ssc_adj_per to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ssc_adj_per, align 4
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dsi_pll_calc_ssc.__UNIQUE_ID_ddebug337, ptr noundef nonnull @.str.25, i32 noundef %sub5, i32 noundef %extract.t6, i32 noundef %21) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then236, %do.body224, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dsi_pll_ssc_commit(ptr nocapture noundef readonly %pll, ptr nocapture noundef readonly %config) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %phy = getelementptr inbounds %struct.dsi_pll_7nm, ptr %pll, i32 0, i32 1
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 4
  %pll_base = getelementptr inbounds %struct.msm_dsi_phy, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pll_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pll_base, align 4
  %4 = ptrtoint ptr %config to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %config, align 4, !range !104
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end19_crit_edge, label %do.body

entry.if.end19_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dsi_pll_ssc_commit.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dsi_pll_ssc_commit, %if.then4)) #7
          to label %do.end [label %if.then4], !srcloc !121

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dsi_pll_ssc_commit.__UNIQUE_ID_ddebug338, ptr noundef nonnull @.str.27) #7
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %ssc_stepsize = getelementptr inbounds %struct.dsi_pll_config, ptr %config, i32 0, i32 8
  %6 = ptrtoint ptr %ssc_stepsize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ssc_stepsize, align 4
  %and = and i32 %7, 255
  %add.ptr = getelementptr i8, ptr %3, i32 288
  tail call void @msm_writel(i32 noundef %and, ptr noundef %add.ptr) #7
  %8 = ptrtoint ptr %ssc_stepsize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ssc_stepsize, align 4
  %shr = lshr i32 %9, 8
  %add.ptr6 = getelementptr i8, ptr %3, i32 292
  tail call void @msm_writel(i32 noundef %shr, ptr noundef %add.ptr6) #7
  %ssc_div_per = getelementptr inbounds %struct.dsi_pll_config, ptr %config, i32 0, i32 9
  %10 = ptrtoint ptr %ssc_div_per to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ssc_div_per, align 4
  %and7 = and i32 %11, 255
  %add.ptr8 = getelementptr i8, ptr %3, i32 296
  tail call void @msm_writel(i32 noundef %and7, ptr noundef %add.ptr8) #7
  %12 = ptrtoint ptr %ssc_div_per to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ssc_div_per, align 4
  %shr10 = lshr i32 %13, 8
  %add.ptr11 = getelementptr i8, ptr %3, i32 300
  tail call void @msm_writel(i32 noundef %shr10, ptr noundef %add.ptr11) #7
  %ssc_adj_per = getelementptr inbounds %struct.dsi_pll_config, ptr %config, i32 0, i32 4
  %14 = ptrtoint ptr %ssc_adj_per to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ssc_adj_per, align 4
  %and12 = and i32 %15, 255
  %add.ptr13 = getelementptr i8, ptr %3, i32 304
  tail call void @msm_writel(i32 noundef %and12, ptr noundef %add.ptr13) #7
  %16 = ptrtoint ptr %ssc_adj_per to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ssc_adj_per, align 4
  %shr15 = lshr i32 %17, 8
  %add.ptr16 = getelementptr i8, ptr %3, i32 308
  tail call void @msm_writel(i32 noundef %shr15, ptr noundef %add.ptr16) #7
  %ssc_center = getelementptr inbounds %struct.dsi_pll_config, ptr %config, i32 0, i32 1
  %18 = ptrtoint ptr %ssc_center to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ssc_center, align 1, !range !104
  %20 = or i8 %19, 2
  %or = zext i8 %20 to i32
  %add.ptr18 = getelementptr i8, ptr %3, i32 336
  tail call void @msm_writel(i32 noundef %or, ptr noundef %add.ptr18) #7
  br label %if.end19

if.end19:                                         ; preds = %do.end, %entry.if.end19_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_dsi_cphy_timing_calc_v4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_dsi_dphy_timing_calc_v4(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !41, !42, !43, !44, !46, !47, !48, !49, !51, !53, !55, !57, !58, !59, !60, !62, !63, !65, !66, !67, !69, !71, !72, !74, !75, !76, !78, !79, !80, !82, !84, !86, !87, !88, !89, !91, !93}
!llvm.module.flags = !{!95, !96, !97, !98, !99, !100, !101, !102}
!llvm.ident = !{!103}

!0 = !{ptr @dsi_phy_7nm_cfgs, !1, !"dsi_phy_7nm_cfgs", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c", i32 1033, i32 30}
!2 = !{ptr @dsi_phy_7nm_8150_cfgs, !3, !"dsi_phy_7nm_8150_cfgs", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c", i32 1060, i32 30}
!4 = !{ptr @dsi_phy_7nm_7280_cfgs, !5, !"dsi_phy_7nm_7280_cfgs", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c", i32 1082, i32 30}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c", i32 737, i32 2}
!8 = !{ptr @dsi_pll_7nm_init.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c", i32 741, i32 2}
!10 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c", i32 747, i32 3}
!13 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @pll_7nm_list, !15, !"pll_7nm_list", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c", i32 89, i32 28}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c", i32 591, i32 37}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c", i32 601, i32 2}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c", i32 603, i32 25}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c", i32 610, i32 25}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c", i32 623, i32 25}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c", i32 638, i32 25}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c", i32 652, i32 25}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c", i32 662, i32 25}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c", i32 685, i32 26}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c", i32 705, i32 25}
!36 = !{ptr @clk_ops_dsi_pll_7nm_vco, !37, !"clk_ops_dsi_pll_7nm_vco", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c", i32 483, i32 29}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c", i32 381, i32 3}
!40 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @dsi_pll_7nm_vco_prepare._entry, !39, !"_entry", i1 false, i1 false}
!43 = !{ptr @dsi_pll_7nm_vco_prepare._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c", i32 304, i32 3}
!46 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @dsi_pll_7nm_lock_status._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @dsi_pll_7nm_lock_status._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c", i32 464, i32 2}
!51 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c", i32 267, i32 2}
!53 = !{ptr @.str.21, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c", i32 145, i32 3}
!55 = !{ptr @.str.22, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c", i32 165, i32 2}
!57 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @dsi_pll_calc_ssc.__UNIQUE_ID_ddebug336, !56, !"__UNIQUE_ID_ddebug336", i1 false, i1 false}
!60 = !{ptr @.str.25, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c", i32 167, i32 2}
!62 = !{ptr @dsi_pll_calc_ssc.__UNIQUE_ID_ddebug337, !61, !"__UNIQUE_ID_ddebug337", i1 false, i1 false}
!63 = !{ptr @.str.26, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c", i32 176, i32 3}
!65 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @dsi_pll_ssc_commit.__UNIQUE_ID_ddebug338, !64, !"__UNIQUE_ID_ddebug338", i1 false, i1 false}
!67 = !{ptr @.str.28, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c", i32 836, i32 2}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c", i32 843, i32 3}
!71 = !{ptr @__func__.dsi_7nm_phy_enable, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c", i32 849, i32 3}
!74 = !{ptr @dsi_7nm_phy_enable._entry, !73, !"_entry", i1 false, i1 false}
!75 = !{ptr @dsi_7nm_phy_enable._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!76 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c", i32 856, i32 3}
!78 = !{ptr @dsi_7nm_phy_enable._entry.31, !77, !"_entry", i1 false, i1 false}
!79 = !{ptr @dsi_7nm_phy_enable._entry_ptr.33, !77, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c", i32 947, i32 3}
!82 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c", i32 987, i32 2}
!84 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c", i32 1015, i32 3}
!86 = !{ptr @.str.37, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @dsi_7nm_phy_disable._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @dsi_7nm_phy_disable._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.38, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c", i32 1030, i32 2}
!91 = !{ptr @.str.39, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c", i32 513, i32 2}
!93 = distinct !{null, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_7nm.c", i32 543, i32 3}
!95 = !{i32 1, !"wchar_size", i32 2}
!96 = !{i32 1, !"min_enum_size", i32 4}
!97 = !{i32 8, !"branch-target-enforcement", i32 0}
!98 = !{i32 8, !"sign-return-address", i32 0}
!99 = !{i32 8, !"sign-return-address-all", i32 0}
!100 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!101 = !{i32 7, !"uwtable", i32 1}
!102 = !{i32 7, !"frame-pointer", i32 2}
!103 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!104 = !{i8 0, i8 2}
!105 = !{i64 2157410544}
!106 = !{i64 4620842}
!107 = !{i64 2157415371}
!108 = !{i64 2157415857}
!109 = !{i64 2157424246}
!110 = !{i64 2157395832}
!111 = !{i64 2157389697}
!112 = !{i64 2157390239}
!113 = !{i64 2157394180}
!114 = !{i64 2157394400}
!115 = !{i64 2157398886}
!116 = !{i64 1176145, i64 1176172}
!117 = !{i64 1176840, i64 1176867, i64 1176900, i64 1176921, i64 1176948, i64 1176974}
!118 = !{i64 2157387434}
!119 = !{!"branch_weights", i32 2000, i32 1}
!120 = !{i64 2148661976, i64 2148662256, i64 2148662590, i64 2148662924}
!121 = !{i64 2148753257, i64 2148753262, i64 2148753275, i64 2148753319, i64 2148753353, i64 2148753374}
