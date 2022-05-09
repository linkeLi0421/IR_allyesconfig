; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/dsi/phy/dsi_phy_14nm.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/dsi/phy/dsi_phy_14nm.c"
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
%struct.dsi_pll_14nm = type { %struct.clk_hw, ptr, %struct.spinlock, %struct.pll_14nm_cached_state, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.pll_14nm_cached_state = type { i32, i8, i8 }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }
%struct.dsi_pll_14nm_postdiv = type { %struct.clk_hw, i8, i8, i8, ptr }
%struct.dsi_pll_config = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@dsi_phy_14nm_cfgs = dso_local constant { %struct.msm_dsi_phy_cfg, [72 x i8] } { %struct.msm_dsi_phy_cfg { %struct.dsi_reg_config { i32 1, [8 x %struct.dsi_reg_entry] [%struct.dsi_reg_entry { [32 x i8] c"vcca\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 17000, i32 32 }, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer] }, %struct.msm_dsi_phy_ops { ptr @dsi_pll_14nm_init, ptr @dsi_14nm_phy_enable, ptr @dsi_14nm_phy_disable, ptr @dsi_14nm_pll_save_state, ptr @dsi_14nm_pll_restore_state, ptr null }, i32 1300000000, i32 -1694967296, [2 x i32] [i32 10044416, i32 10052608], i32 2, i32 0, i8 0, i8 1 }, [72 x i8] zeroinitializer }, align 32
@dsi_phy_14nm_660_cfgs = dso_local constant { %struct.msm_dsi_phy_cfg, [72 x i8] } { %struct.msm_dsi_phy_cfg { %struct.dsi_reg_config { i32 1, [8 x %struct.dsi_reg_entry] [%struct.dsi_reg_entry { [32 x i8] c"vcca\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 73400, i32 32 }, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer] }, %struct.msm_dsi_phy_ops { ptr @dsi_pll_14nm_init, ptr @dsi_14nm_phy_enable, ptr @dsi_14nm_phy_disable, ptr @dsi_14nm_pll_save_state, ptr @dsi_14nm_pll_restore_state, ptr null }, i32 1300000000, i32 -1694967296, [2 x i32] [i32 211371008, i32 211378176], i32 2, i32 0, i8 0, i8 1 }, [72 x i8] zeroinitializer }, align 32
@dsi_phy_14nm_8953_cfgs = dso_local constant { %struct.msm_dsi_phy_cfg, [72 x i8] } { %struct.msm_dsi_phy_cfg { %struct.dsi_reg_config { i32 1, [8 x %struct.dsi_reg_entry] [%struct.dsi_reg_entry { [32 x i8] c"vcca\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 17000, i32 32 }, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer] }, %struct.msm_dsi_phy_ops { ptr @dsi_pll_14nm_init, ptr @dsi_14nm_phy_enable, ptr @dsi_14nm_phy_disable, ptr @dsi_14nm_pll_save_state, ptr @dsi_14nm_pll_restore_state, ptr null }, i32 1300000000, i32 -1694967296, [2 x i32] [i32 27870208, i32 27878400], i32 2, i32 0, i8 0, i8 1 }, [72 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"PLL%d\0A\00", [25 x i8] zeroinitializer }, align 32
@pll_14nm_list = internal global { [2 x ptr], [24 x i8] } zeroinitializer, align 32
@dsi_pll_14nm_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&pll_14nm->postdiv_lock\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"*ERROR* failed to register PLL: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@clk_ops_dsi_pll_14nm_vco = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @dsi_pll_14nm_vco_prepare, ptr @dsi_pll_14nm_vco_unprepare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dsi_pll_14nm_vco_recalc_rate, ptr @dsi_pll_14nm_clk_round_rate, ptr null, ptr null, ptr null, ptr @dsi_pll_14nm_vco_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"xo\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"DSI%d\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dsi%dvco_clk\00", [19 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"dsi%dn1_postdiv_clk\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dsi%dpllbyte\00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dsi%dn1_postdivby2_clk\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dsi%dpll\00", [23 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"*ERROR* DSI PLL lock failed\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DSI PLL lock success\0A\00", [42 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.14 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DSI PLL is %slocked, %sready\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"*not* \00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dec_start = %x\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"div_frac_start = %x\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"returning vco rate = %lu\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"DSI PLL%d rate=%lu, parent's=%lu\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"vco_clk_rate=%lld ref_clk_rate=%lld\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vco=%lld ref=%d\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ssc freq=%d spread=%d period=%d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"step_size=%lld\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DSI%d PLL\0A\00", [21 x i8] zeroinitializer }, align 32
@clk_ops_dsi_pll_14nm_postdiv = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @dsi_pll_14nm_postdiv_recalc_rate, ptr @dsi_pll_14nm_postdiv_round_rate, ptr null, ptr null, ptr null, ptr @dsi_pll_14nm_postdiv_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DSI%d PLL parent rate=%lu\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"DSI%d PLL parent rate=%lu parent rate %lu\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"*ERROR* %s: D-PHY timing calculation failed\0A\00", [51 x i8] zeroinitializer }, align 32
@__func__.dsi_14nm_phy_enable = private unnamed_addr constant [20 x i8] c"dsi_14nm_phy_enable\00", align 1
@.str.29 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"*ERROR* %s: set pll usecase failed, %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"DSI%d PLL save state %x %x\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"DSI%d PLL restore state %x %x\0A\00", [33 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.33 = private unnamed_addr constant [18 x i8] c"dsi_phy_14nm_cfgs\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 1025, i32 30 }
@___asan_gen_.36 = private unnamed_addr constant [22 x i8] c"dsi_phy_14nm_660_cfgs\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 1046, i32 30 }
@___asan_gen_.39 = private unnamed_addr constant [23 x i8] c"dsi_phy_14nm_8953_cfgs\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 1067, i32 30 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 884, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [14 x i8] c"pll_14nm_list\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 108, i32 29 }
@___asan_gen_.48 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 888, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 894, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant [25 x i8] c"clk_ops_dsi_pll_14nm_vco\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 587, i32 29 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 805, i32 37 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 815, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 817, i32 25 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 824, i32 25 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 833, i32 25 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 844, i32 25 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 855, i32 25 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 537, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 549, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 553, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 143, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 503, i32 2 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 512, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 525, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 462, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 213, i32 2 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 172, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 180, i32 2 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 198, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 389, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant [29 x i8] c"clk_ops_dsi_pll_14nm_postdiv\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 674, i32 29 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 609, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 645, i32 2 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 952, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 1005, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 696, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.148 = private constant [46 x i8] c"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_14nm.c\00", align 1
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.148, i32 720, i32 2 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @dsi_phy_14nm_cfgs, ptr @dsi_phy_14nm_660_cfgs, ptr @dsi_phy_14nm_8953_cfgs, ptr @.str, ptr @pll_14nm_list, ptr @dsi_pll_14nm_init.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @clk_ops_dsi_pll_14nm_vco, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @clk_ops_dsi_pll_14nm_postdiv, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32], section "llvm.metadata"
@0 = internal global [39 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_phy_14nm_cfgs to i32), i32 376, i32 448, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_phy_14nm_660_cfgs to i32), i32 376, i32 448, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_phy_14nm_8953_cfgs to i32), i32 376, i32 448, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_14nm_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_pll_14nm_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_ops_dsi_pll_14nm_vco to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_ops_dsi_pll_14nm_postdiv to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsi_pll_14nm_init(ptr noundef %phy) #0 align 64 {
entry:
  %postdiv_init.i105.i = alloca %struct.clk_init_data, align 4
  %.compoundliteral.i106.i = alloca [1 x ptr], align 4
  %postdiv_init.i.i = alloca %struct.clk_init_data, align 4
  %.compoundliteral.i.i = alloca [1 x ptr], align 4
  %clk_name.i = alloca [32 x i8], align 1
  %parent.i = alloca [32 x i8], align 1
  %vco_name.i = alloca [32 x i8], align 1
  %vco_init.i = alloca %struct.clk_init_data, align 4
  %.compoundliteral.i = alloca [1 x ptr], align 4
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
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 72, i32 noundef 3520) #6
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %id = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 9
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef %3) #6
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %arrayidx = getelementptr [2 x ptr], ptr @pll_14nm_list, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %arrayidx, align 4
  %postdiv_lock = getelementptr inbounds %struct.dsi_pll_14nm, ptr %call.i, i32 0, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %postdiv_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @dsi_pll_14nm_init.__key, i16 noundef signext 3) #6
  %phy7 = getelementptr inbounds %struct.dsi_pll_14nm, ptr %call.i, i32 0, i32 1
  %7 = ptrtoint ptr %phy7 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %phy, ptr %phy7, align 4
  %provided_clocks = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 19
  %8 = ptrtoint ptr %provided_clocks to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %provided_clocks, align 4
  %hws = getelementptr inbounds %struct.clk_hw_onecell_data, ptr %9, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %.compoundliteral.i)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %clk_name.i) #6
  %10 = call ptr @memset(ptr %clk_name.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %parent.i) #6
  %11 = call ptr @memset(ptr %parent.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %vco_name.i) #6
  %12 = call ptr @memset(ptr %vco_name.i, i32 255, i32 32)
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %vco_init.i) #6
  %13 = getelementptr inbounds i8, ptr %vco_init.i, i32 20
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 33554431, ptr %13, align 4
  %15 = ptrtoint ptr %vco_init.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %vco_name.i, ptr %vco_init.i, align 4
  %ops.i = getelementptr inbounds %struct.clk_init_data, ptr %vco_init.i, i32 0, i32 1
  %16 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @clk_ops_dsi_pll_14nm_vco, ptr %ops.i, align 4
  %parent_names.i = getelementptr inbounds %struct.clk_init_data, ptr %vco_init.i, i32 0, i32 2
  %17 = ptrtoint ptr %.compoundliteral.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @.str.4, ptr %.compoundliteral.i, align 4
  %18 = ptrtoint ptr %parent_names.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %.compoundliteral.i, ptr %parent_names.i, align 4
  %parent_data.i = getelementptr inbounds %struct.clk_init_data, ptr %vco_init.i, i32 0, i32 3
  %19 = ptrtoint ptr %parent_data.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %parent_data.i, align 4
  %parent_hws.i = getelementptr inbounds %struct.clk_init_data, ptr %vco_init.i, i32 0, i32 4
  %20 = ptrtoint ptr %parent_hws.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %parent_hws.i, align 4
  %flags.i = getelementptr inbounds %struct.clk_init_data, ptr %vco_init.i, i32 0, i32 6
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 8, ptr %flags.i, align 4
  %22 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %phy, align 4
  %dev2.i = getelementptr inbounds %struct.platform_device, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %id, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.5, i32 noundef %25) #6
  %26 = ptrtoint ptr %phy7 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %phy7, align 4
  %id6.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %27, i32 0, i32 9
  %28 = ptrtoint ptr %id6.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %id6.i, align 4
  %call.i29 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %vco_name.i, i32 noundef 32, ptr noundef nonnull @.str.6, i32 noundef %29) #6
  %init.i = getelementptr inbounds %struct.clk_hw, ptr %call.i, i32 0, i32 2
  %30 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %vco_init.i, ptr %init.i, align 4
  %call8.i = call i32 @devm_clk_hw_register(ptr noundef %dev2.i, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %tobool.not.i = icmp eq i32 %call8.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %pll_14nm_register.exit.thread32

pll_14nm_register.exit.thread32:                  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %vco_init.i) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %vco_name.i) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %parent.i) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %clk_name.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %.compoundliteral.i)
  br label %if.then10

if.end.i:                                         ; preds = %if.end4
  %31 = ptrtoint ptr %phy7 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %phy7, align 4
  %id11.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %32, i32 0, i32 9
  %33 = ptrtoint ptr %id11.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %id11.i, align 4
  %call12.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %clk_name.i, i32 noundef 32, ptr noundef nonnull @.str.7, i32 noundef %34) #6
  %35 = ptrtoint ptr %phy7 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %phy7, align 4
  %id15.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %36, i32 0, i32 9
  %37 = ptrtoint ptr %id15.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %id15.i, align 4
  %call16.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %parent.i, i32 noundef 32, ptr noundef nonnull @.str.6, i32 noundef %38) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %.compoundliteral.i.i) #6
  %39 = ptrtoint ptr %phy7 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %phy7, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 4
  %dev1.i.i = getelementptr inbounds %struct.platform_device, ptr %42, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %postdiv_init.i.i) #6
  %43 = getelementptr inbounds i8, ptr %postdiv_init.i.i, i32 20
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 33554431, ptr %43, align 4
  %45 = ptrtoint ptr %postdiv_init.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %clk_name.i, ptr %postdiv_init.i.i, align 4
  %ops.i.i = getelementptr inbounds %struct.clk_init_data, ptr %postdiv_init.i.i, i32 0, i32 1
  %46 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @clk_ops_dsi_pll_14nm_postdiv, ptr %ops.i.i, align 4
  %parent_names.i.i = getelementptr inbounds %struct.clk_init_data, ptr %postdiv_init.i.i, i32 0, i32 2
  %47 = ptrtoint ptr %.compoundliteral.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %parent.i, ptr %.compoundliteral.i.i, align 4
  %48 = ptrtoint ptr %parent_names.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %.compoundliteral.i.i, ptr %parent_names.i.i, align 4
  %parent_data.i.i = getelementptr inbounds %struct.clk_init_data, ptr %postdiv_init.i.i, i32 0, i32 3
  %49 = ptrtoint ptr %parent_data.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %parent_data.i.i, align 4
  %parent_hws.i.i = getelementptr inbounds %struct.clk_init_data, ptr %postdiv_init.i.i, i32 0, i32 4
  %50 = ptrtoint ptr %parent_hws.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr null, ptr %parent_hws.i.i, align 4
  %flags3.i.i = getelementptr inbounds %struct.clk_init_data, ptr %postdiv_init.i.i, i32 0, i32 6
  %51 = ptrtoint ptr %flags3.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 4, ptr %flags3.i.i, align 4
  %call.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1.i.i, i32 noundef 20, i32 noundef 3520) #6
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %pll_14nm_postdiv_register.exit.thread.i, label %pll_14nm_postdiv_register.exit.i

pll_14nm_postdiv_register.exit.thread.i:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %postdiv_init.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %.compoundliteral.i.i) #6
  br label %pll_14nm_register.exit.thread36

pll_14nm_postdiv_register.exit.i:                 ; preds = %if.end.i
  %pll.i.i = getelementptr inbounds %struct.dsi_pll_14nm_postdiv, ptr %call.i.i.i, i32 0, i32 4
  %52 = ptrtoint ptr %pll.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call.i, ptr %pll.i.i, align 4
  %shift5.i.i = getelementptr inbounds %struct.dsi_pll_14nm_postdiv, ptr %call.i.i.i, i32 0, i32 1
  %53 = ptrtoint ptr %shift5.i.i to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 0, ptr %shift5.i.i, align 4
  %width.i.i = getelementptr inbounds %struct.dsi_pll_14nm_postdiv, ptr %call.i.i.i, i32 0, i32 2
  %54 = ptrtoint ptr %width.i.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 4, ptr %width.i.i, align 1
  %flags6.i.i = getelementptr inbounds %struct.dsi_pll_14nm_postdiv, ptr %call.i.i.i, i32 0, i32 3
  %55 = ptrtoint ptr %flags6.i.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %flags6.i.i, align 2
  %init.i.i = getelementptr inbounds %struct.clk_hw, ptr %call.i.i.i, i32 0, i32 2
  %56 = ptrtoint ptr %init.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %postdiv_init.i.i, ptr %init.i.i, align 4
  %call8.i.i = call i32 @devm_clk_hw_register(ptr noundef %dev1.i.i, ptr noundef nonnull %call.i.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i.i)
  %tobool9.not.i.i = icmp eq i32 %call8.i.i, 0
  %57 = inttoptr i32 %call8.i.i to ptr
  %spec.select.i.i = select i1 %tobool9.not.i.i, ptr %call.i.i.i, ptr %57
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %postdiv_init.i.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %.compoundliteral.i.i) #6
  %cmp.i.i = icmp ugt ptr %spec.select.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %pll_14nm_postdiv_register.exit.i.pll_14nm_register.exit_crit_edge, label %if.end23.i

pll_14nm_postdiv_register.exit.i.pll_14nm_register.exit_crit_edge: ; preds = %pll_14nm_postdiv_register.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pll_14nm_register.exit

if.end23.i:                                       ; preds = %pll_14nm_postdiv_register.exit.i
  %58 = ptrtoint ptr %phy7 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %phy7, align 4
  %id26.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %59, i32 0, i32 9
  %60 = ptrtoint ptr %id26.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %id26.i, align 4
  %call27.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %clk_name.i, i32 noundef 32, ptr noundef nonnull @.str.8, i32 noundef %61) #6
  %62 = ptrtoint ptr %phy7 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %phy7, align 4
  %id30.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %63, i32 0, i32 9
  %64 = ptrtoint ptr %id30.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %id30.i, align 4
  %call31.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %parent.i, i32 noundef 32, ptr noundef nonnull @.str.7, i32 noundef %65) #6
  %call34.i = call ptr @devm_clk_hw_register_fixed_factor(ptr noundef %dev2.i, ptr noundef nonnull %clk_name.i, ptr noundef nonnull %parent.i, i32 noundef 4, i32 noundef 1, i32 noundef 8) #6
  %cmp.i103.i = icmp ugt ptr %call34.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i103.i, label %if.end23.i.pll_14nm_register.exit_crit_edge, label %if.end38.i

if.end23.i.pll_14nm_register.exit_crit_edge:      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pll_14nm_register.exit

if.end38.i:                                       ; preds = %if.end23.i
  %66 = ptrtoint ptr %hws to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call34.i, ptr %hws, align 4
  %67 = ptrtoint ptr %phy7 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %phy7, align 4
  %id41.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %68, i32 0, i32 9
  %69 = ptrtoint ptr %id41.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %id41.i, align 4
  %call42.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %clk_name.i, i32 noundef 32, ptr noundef nonnull @.str.9, i32 noundef %70) #6
  %71 = ptrtoint ptr %phy7 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %phy7, align 4
  %id45.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %72, i32 0, i32 9
  %73 = ptrtoint ptr %id45.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %id45.i, align 4
  %call46.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %parent.i, i32 noundef 32, ptr noundef nonnull @.str.7, i32 noundef %74) #6
  %call49.i = call ptr @devm_clk_hw_register_fixed_factor(ptr noundef %dev2.i, ptr noundef nonnull %clk_name.i, ptr noundef nonnull %parent.i, i32 noundef 0, i32 noundef 1, i32 noundef 2) #6
  %cmp.i104.i = icmp ugt ptr %call49.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i104.i, label %if.end38.i.pll_14nm_register.exit_crit_edge, label %if.end53.i

if.end38.i.pll_14nm_register.exit_crit_edge:      ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pll_14nm_register.exit

if.end53.i:                                       ; preds = %if.end38.i
  %75 = ptrtoint ptr %phy7 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %phy7, align 4
  %id56.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %76, i32 0, i32 9
  %77 = ptrtoint ptr %id56.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %id56.i, align 4
  %call57.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %clk_name.i, i32 noundef 32, ptr noundef nonnull @.str.10, i32 noundef %78) #6
  %79 = ptrtoint ptr %phy7 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %phy7, align 4
  %id60.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %80, i32 0, i32 9
  %81 = ptrtoint ptr %id60.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %id60.i, align 4
  %call61.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %parent.i, i32 noundef 32, ptr noundef nonnull @.str.9, i32 noundef %82) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %.compoundliteral.i106.i) #6
  %83 = ptrtoint ptr %phy7 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %phy7, align 4
  %85 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %84, align 4
  %dev1.i108.i = getelementptr inbounds %struct.platform_device, ptr %86, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %postdiv_init.i105.i) #6
  %87 = getelementptr inbounds i8, ptr %postdiv_init.i105.i, i32 20
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 33554431, ptr %87, align 4
  %89 = ptrtoint ptr %postdiv_init.i105.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %clk_name.i, ptr %postdiv_init.i105.i, align 4
  %ops.i109.i = getelementptr inbounds %struct.clk_init_data, ptr %postdiv_init.i105.i, i32 0, i32 1
  %90 = ptrtoint ptr %ops.i109.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr @clk_ops_dsi_pll_14nm_postdiv, ptr %ops.i109.i, align 4
  %parent_names.i110.i = getelementptr inbounds %struct.clk_init_data, ptr %postdiv_init.i105.i, i32 0, i32 2
  %91 = ptrtoint ptr %.compoundliteral.i106.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %parent.i, ptr %.compoundliteral.i106.i, align 4
  %92 = ptrtoint ptr %parent_names.i110.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %.compoundliteral.i106.i, ptr %parent_names.i110.i, align 4
  %parent_data.i111.i = getelementptr inbounds %struct.clk_init_data, ptr %postdiv_init.i105.i, i32 0, i32 3
  %93 = ptrtoint ptr %parent_data.i111.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr null, ptr %parent_data.i111.i, align 4
  %parent_hws.i112.i = getelementptr inbounds %struct.clk_init_data, ptr %postdiv_init.i105.i, i32 0, i32 4
  %94 = ptrtoint ptr %parent_hws.i112.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr null, ptr %parent_hws.i112.i, align 4
  %flags3.i114.i = getelementptr inbounds %struct.clk_init_data, ptr %postdiv_init.i105.i, i32 0, i32 6
  %95 = ptrtoint ptr %flags3.i114.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 0, ptr %flags3.i114.i, align 4
  %call.i.i115.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1.i108.i, i32 noundef 20, i32 noundef 3520) #6
  %tobool.not.i116.i = icmp eq ptr %call.i.i115.i, null
  br i1 %tobool.not.i116.i, label %pll_14nm_postdiv_register.exit127.thread.i, label %pll_14nm_postdiv_register.exit127.i

pll_14nm_postdiv_register.exit127.thread.i:       ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %postdiv_init.i105.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %.compoundliteral.i106.i) #6
  br label %pll_14nm_register.exit.thread36

pll_14nm_postdiv_register.exit127.i:              ; preds = %if.end53.i
  %pll.i117.i = getelementptr inbounds %struct.dsi_pll_14nm_postdiv, ptr %call.i.i115.i, i32 0, i32 4
  %96 = ptrtoint ptr %pll.i117.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %call.i, ptr %pll.i117.i, align 4
  %shift5.i118.i = getelementptr inbounds %struct.dsi_pll_14nm_postdiv, ptr %call.i.i115.i, i32 0, i32 1
  %97 = ptrtoint ptr %shift5.i118.i to i32
  call void @__asan_store1_noabort(i32 %97)
  store i8 4, ptr %shift5.i118.i, align 4
  %width.i119.i = getelementptr inbounds %struct.dsi_pll_14nm_postdiv, ptr %call.i.i115.i, i32 0, i32 2
  %98 = ptrtoint ptr %width.i119.i to i32
  call void @__asan_store1_noabort(i32 %98)
  store i8 4, ptr %width.i119.i, align 1
  %flags6.i120.i = getelementptr inbounds %struct.dsi_pll_14nm_postdiv, ptr %call.i.i115.i, i32 0, i32 3
  %99 = ptrtoint ptr %flags6.i120.i to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 1, ptr %flags6.i120.i, align 2
  %init.i121.i = getelementptr inbounds %struct.clk_hw, ptr %call.i.i115.i, i32 0, i32 2
  %100 = ptrtoint ptr %init.i121.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %postdiv_init.i105.i, ptr %init.i121.i, align 4
  %call8.i122.i = call i32 @devm_clk_hw_register(ptr noundef %dev1.i108.i, ptr noundef nonnull %call.i.i115.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i122.i)
  %tobool9.not.i123.i = icmp eq i32 %call8.i122.i, 0
  %101 = inttoptr i32 %call8.i122.i to ptr
  %spec.select.i124.i = select i1 %tobool9.not.i123.i, ptr %call.i.i115.i, ptr %101
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %postdiv_init.i105.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %.compoundliteral.i106.i) #6
  %cmp.i128.i = icmp ugt ptr %spec.select.i124.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i128.i, label %pll_14nm_postdiv_register.exit127.i.pll_14nm_register.exit_crit_edge, label %pll_14nm_register.exit.thread

pll_14nm_postdiv_register.exit127.i.pll_14nm_register.exit_crit_edge: ; preds = %pll_14nm_postdiv_register.exit127.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pll_14nm_register.exit

pll_14nm_register.exit.thread:                    ; preds = %pll_14nm_postdiv_register.exit127.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx69.i = getelementptr %struct.clk_hw_onecell_data, ptr %9, i32 2
  %102 = ptrtoint ptr %arrayidx69.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %spec.select.i124.i, ptr %arrayidx69.i, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %vco_init.i) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %vco_name.i) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %parent.i) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %clk_name.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %.compoundliteral.i)
  br label %if.end12

pll_14nm_register.exit.thread36:                  ; preds = %pll_14nm_postdiv_register.exit127.thread.i, %pll_14nm_postdiv_register.exit.thread.i
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %vco_init.i) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %vco_name.i) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %parent.i) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %clk_name.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %.compoundliteral.i)
  br label %if.then10

pll_14nm_register.exit:                           ; preds = %pll_14nm_postdiv_register.exit127.i.pll_14nm_register.exit_crit_edge, %if.end38.i.pll_14nm_register.exit_crit_edge, %if.end23.i.pll_14nm_register.exit_crit_edge, %pll_14nm_postdiv_register.exit.i.pll_14nm_register.exit_crit_edge
  %retval.0.i.in = phi ptr [ %spec.select.i.i, %pll_14nm_postdiv_register.exit.i.pll_14nm_register.exit_crit_edge ], [ %call34.i, %if.end23.i.pll_14nm_register.exit_crit_edge ], [ %call49.i, %if.end38.i.pll_14nm_register.exit_crit_edge ], [ %spec.select.i124.i, %pll_14nm_postdiv_register.exit127.i.pll_14nm_register.exit_crit_edge ]
  %retval.0.i = ptrtoint ptr %retval.0.i.in to i32
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %vco_init.i) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %vco_name.i) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %parent.i) #6
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %clk_name.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %.compoundliteral.i)
  %tobool9.not = icmp eq ptr %retval.0.i.in, null
  br i1 %tobool9.not, label %pll_14nm_register.exit.if.end12_crit_edge, label %pll_14nm_register.exit.if.then10_crit_edge

pll_14nm_register.exit.if.then10_crit_edge:       ; preds = %pll_14nm_register.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then10

pll_14nm_register.exit.if.end12_crit_edge:        ; preds = %pll_14nm_register.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end12

if.then10:                                        ; preds = %pll_14nm_register.exit.if.then10_crit_edge, %pll_14nm_register.exit.thread36, %pll_14nm_register.exit.thread32
  %retval.0.i35 = phi i32 [ %call8.i, %pll_14nm_register.exit.thread32 ], [ %retval.0.i, %pll_14nm_register.exit.if.then10_crit_edge ], [ -12, %pll_14nm_register.exit.thread36 ]
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, i32 noundef %retval.0.i35) #6
  br label %cleanup

if.end12:                                         ; preds = %pll_14nm_register.exit.if.end12_crit_edge, %pll_14nm_register.exit.thread
  %vco_hw = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 17
  %103 = ptrtoint ptr %vco_hw to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %call.i, ptr %vco_hw, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i35, %if.then10 ], [ 0, %if.end12 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsi_14nm_phy_enable(ptr noundef %phy, ptr noundef %clk_req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %timing1 = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 12
  %base2 = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 1
  %0 = ptrtoint ptr %base2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base2, align 4
  %lane_base3 = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 4
  %2 = ptrtoint ptr %lane_base3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lane_base3, align 4
  %call = tail call i32 @msm_dsi_dphy_timing_calc_v2(ptr noundef %timing1, ptr noundef %clk_req) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.28, ptr noundef nonnull @__func__.dsi_14nm_phy_enable) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %usecase = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 14
  %6 = ptrtoint ptr %usecase to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %usecase, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  %spec.select = select i1 %cmp.not, i32 28, i32 60
  %add.ptr = getelementptr i8, ptr %1, i32 76
  tail call void @msm_writel(i32 noundef %spec.select, ptr noundef %add.ptr) #6
  %add.ptr7 = getelementptr i8, ptr %1, i32 24
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr7) #6
  %hs_zero.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 12, i32 4
  %clk_prepare.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 12, i32 2
  %hs_prepare.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 12, i32 5
  %clk_trail.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 12, i32 1
  %hs_trail.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 12, i32 6
  %hs_rqst_ckln.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 12, i32 12
  %hs_rqst.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 12, i32 7
  %hs_prep_dly_ckln.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 12, i32 14
  %hs_prep_dly.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 12, i32 13
  %hs_halfbyte_en_ckln.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 12, i32 16
  %hs_halfbyte_en.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 12, i32 15
  %hs_exit.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 12, i32 3
  %ta_go.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 12, i32 8
  %ta_sure.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 12, i32 9
  %ta_get.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 12, i32 10
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end
  %i.0108 = phi i32 [ 0, %if.end ], [ %inc, %for.body.for.body_crit_edge ]
  %mul.i = shl i32 %i.0108, 7
  %add.i = or i32 %mul.i, 100
  %add.ptr10 = getelementptr i8, ptr %3, i32 %add.i
  tail call void @msm_writel(i32 noundef 29, ptr noundef %add.ptr10) #6
  %add.i94 = or i32 %mul.i, 56
  %add.ptr12 = getelementptr i8, ptr %3, i32 %add.i94
  tail call void @msm_writel(i32 noundef 255, ptr noundef %add.ptr12) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %i.0108)
  %cmp13 = icmp eq i32 %i.0108, 4
  %cond = select i1 %cmp13, i32 0, i32 6
  %add.i96 = or i32 %mul.i, 60
  %add.ptr15 = getelementptr i8, ptr %3, i32 %add.i96
  tail call void @msm_writel(i32 noundef %cond, ptr noundef %add.ptr15) #6
  %cond17 = select i1 %cmp13, i32 143, i32 15
  %add.i98 = or i32 %mul.i, 12
  %add.ptr19 = getelementptr i8, ptr %3, i32 %add.i98
  tail call void @msm_writel(i32 noundef %cond17, ptr noundef %add.ptr19) #6
  %add.i100 = or i32 %mul.i, 8
  %add.ptr21 = getelementptr i8, ptr %3, i32 %add.i100
  tail call void @msm_writel(i32 noundef 16, ptr noundef %add.ptr21) #6
  %add.i102 = or i32 %mul.i, 16
  %add.ptr23 = getelementptr i8, ptr %3, i32 %add.i102
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr23) #6
  %add.i104 = or i32 %mul.i, 20
  %add.ptr25 = getelementptr i8, ptr %3, i32 %add.i104
  tail call void @msm_writel(i32 noundef 136, ptr noundef %add.ptr25) #6
  %8 = ptrtoint ptr %lane_base3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %lane_base3, align 4
  %cond.in.i = select i1 %cmp13, ptr %timing1, ptr %hs_zero.i
  %10 = ptrtoint ptr %cond.in.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %cond.i = load i32, ptr %cond.in.i, align 4
  %cond5.in.i = select i1 %cmp13, ptr %clk_prepare.i, ptr %hs_prepare.i
  %11 = ptrtoint ptr %cond5.in.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %cond5.i = load i32, ptr %cond5.in.i, align 4
  %cond10.in.i = select i1 %cmp13, ptr %clk_trail.i, ptr %hs_trail.i
  %12 = ptrtoint ptr %cond10.in.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %cond10.i = load i32, ptr %cond10.in.i, align 4
  %cond15.in.i = select i1 %cmp13, ptr %hs_rqst_ckln.i, ptr %hs_rqst.i
  %13 = ptrtoint ptr %cond15.in.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %cond15.i = load i32, ptr %cond15.in.i, align 4
  %cond20.in.i = select i1 %cmp13, ptr %hs_prep_dly_ckln.i, ptr %hs_prep_dly.i
  %14 = ptrtoint ptr %cond20.in.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %cond20.i = load i32, ptr %cond20.in.i, align 4
  %cond26.in.in.i = select i1 %cmp13, ptr %hs_halfbyte_en_ckln.i, ptr %hs_halfbyte_en.i
  %15 = ptrtoint ptr %cond26.in.in.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %cond26.in.i = load i8, ptr %cond26.in.in.i, align 1
  %16 = ptrtoint ptr %hs_exit.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %hs_exit.i, align 4
  %and.i.i = and i32 %17, 255
  %add.i.i = or i32 %mul.i, 24
  %add.ptr.i = getelementptr i8, ptr %9, i32 %add.i.i
  tail call void @msm_writel(i32 noundef %and.i.i, ptr noundef %add.ptr.i) #6
  %and.i96.i = and i32 %cond.i, 255
  %add.i98.i = or i32 %mul.i, 28
  %add.ptr30.i = getelementptr i8, ptr %9, i32 %add.i98.i
  tail call void @msm_writel(i32 noundef %and.i96.i, ptr noundef %add.ptr30.i) #6
  %and.i99.i = and i32 %cond5.i, 255
  %add.i101.i = or i32 %mul.i, 32
  %add.ptr33.i = getelementptr i8, ptr %9, i32 %add.i101.i
  tail call void @msm_writel(i32 noundef %and.i99.i, ptr noundef %add.ptr33.i) #6
  %and.i102.i = and i32 %cond10.i, 255
  %add.i104.i = or i32 %mul.i, 36
  %add.ptr36.i = getelementptr i8, ptr %9, i32 %add.i104.i
  tail call void @msm_writel(i32 noundef %and.i102.i, ptr noundef %add.ptr36.i) #6
  %and.i105.i = and i32 %cond15.i, 255
  %add.i107.i = or i32 %mul.i, 40
  %add.ptr39.i = getelementptr i8, ptr %9, i32 %add.i107.i
  tail call void @msm_writel(i32 noundef %and.i105.i, ptr noundef %add.ptr39.i) #6
  %shl.i.i = shl i32 %cond20.i, 6
  %and.i108.i = and i32 %shl.i.i, 192
  %add.ptr42.i = getelementptr i8, ptr %9, i32 %mul.i
  tail call void @msm_writel(i32 noundef %and.i108.i, ptr noundef %add.ptr42.i) #6
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %cond26.in.i)
  %tobool43.not.i = icmp ne i8 %cond26.in.i, 0
  %cond44.i = zext i1 %tobool43.not.i to i32
  %add.i111.i = or i32 %mul.i, 4
  %add.ptr46.i = getelementptr i8, ptr %9, i32 %add.i111.i
  tail call void @msm_writel(i32 noundef %cond44.i, ptr noundef %add.ptr46.i) #6
  %18 = ptrtoint ptr %ta_go.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ta_go.i, align 4
  %and.i112.i = and i32 %19, 7
  %20 = ptrtoint ptr %ta_sure.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ta_sure.i, align 4
  %shl.i113.i = shl i32 %21, 4
  %and.i114.i = and i32 %shl.i113.i, 112
  %or.i = or i32 %and.i114.i, %and.i112.i
  %add.i116.i = or i32 %mul.i, 44
  %add.ptr50.i = getelementptr i8, ptr %9, i32 %add.i116.i
  tail call void @msm_writel(i32 noundef %or.i, ptr noundef %add.ptr50.i) #6
  %22 = ptrtoint ptr %ta_get.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ta_get.i, align 4
  %and.i117.i = and i32 %23, 7
  %add.i119.i = or i32 %mul.i, 48
  %add.ptr53.i = getelementptr i8, ptr %9, i32 %add.i119.i
  tail call void @msm_writel(i32 noundef %and.i117.i, ptr noundef %add.ptr53.i) #6
  %add.i121.i = or i32 %mul.i, 52
  %add.ptr56.i = getelementptr i8, ptr %9, i32 %add.i121.i
  tail call void @msm_writel(i32 noundef 160, ptr noundef %add.ptr56.i) #6
  %inc = add nuw nsw i32 %i.0108, 1
  %exitcond.not = icmp eq i32 %inc, 5
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  %add.ptr26 = getelementptr i8, ptr %1, i32 72
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr26) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !86
  tail call void @arm_heavy_mb() #6
  %add.ptr27 = getelementptr i8, ptr %1, i32 32
  tail call void @msm_writel(i32 noundef 128, ptr noundef %add.ptr27) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !87
  tail call void @arm_heavy_mb() #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 21474800) #6
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr27) #6
  %call33 = tail call i32 @msm_readl(ptr noundef %add.ptr7) #6
  %id = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 9
  %25 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp34 = icmp eq i32 %26, 1
  br i1 %cmp34, label %land.lhs.true, label %for.end.if.else_crit_edge

for.end.if.else_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

land.lhs.true:                                    ; preds = %for.end
  %27 = ptrtoint ptr %usecase to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %usecase, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %cmp36 = icmp eq i32 %28, 2
  br i1 %cmp36, label %if.then37, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.else

if.then37:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %or38 = or i32 %call33, 4
  br label %if.end39

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %for.end.if.else_crit_edge
  %and = and i32 %call33, -5
  br label %if.end39

if.end39:                                         ; preds = %if.else, %if.then37
  %glbl_test_ctrl.0 = phi i32 [ %or38, %if.then37 ], [ %and, %if.else ]
  tail call void @msm_writel(i32 noundef %glbl_test_ctrl.0, ptr noundef %add.ptr7) #6
  %pll_base.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 2
  %29 = ptrtoint ptr %pll_base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %pll_base.i, align 4
  %31 = ptrtoint ptr %usecase to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %usecase, align 4
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values)
  switch i32 %32, label %if.then43 [
    i32 0, label %if.end39.if.end46_crit_edge
    i32 1, label %sw.bb1.i
    i32 2, label %if.then.i
  ]

if.end39.if.end46_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end46

sw.bb1.i:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  %vco_hw.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 17
  %34 = ptrtoint ptr %vco_hw.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %vco_hw.i, align 4
  %phy2.i = getelementptr inbounds %struct.dsi_pll_14nm, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %phy2.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %phy2.i, align 4
  %id.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %37, i32 0, i32 9
  %38 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %id.i, align 4
  %add.i105 = add i32 %39, 1
  %rem.i = srem i32 %add.i105, 2
  %arrayidx.i = getelementptr [2 x ptr], ptr @pll_14nm_list, i32 0, i32 %rem.i
  %40 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.i, align 4
  %slave.i = getelementptr inbounds %struct.dsi_pll_14nm, ptr %35, i32 0, i32 4
  %42 = ptrtoint ptr %slave.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %41, ptr %slave.i, align 4
  br label %if.end46

if.then.i:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr4.i = getelementptr i8, ptr %30, i32 28
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr4.i) #6
  br label %if.end46

if.then43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  %43 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %phy, align 4
  %dev45 = getelementptr inbounds %struct.platform_device, ptr %44, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev45, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.29, ptr noundef nonnull @__func__.dsi_14nm_phy_enable, i32 noundef -22) #6
  br label %cleanup

if.end46:                                         ; preds = %if.then.i, %sw.bb1.i, %if.end39.if.end46_crit_edge
  %.sink.i = phi i32 [ 264, %if.then.i ], [ 28, %sw.bb1.i ], [ 28, %if.end39.if.end46_crit_edge ]
  %clkbuflr_en.0.ph.sink.i = phi i32 [ 3, %if.then.i ], [ 3, %sw.bb1.i ], [ 1, %if.end39.if.end46_crit_edge ]
  %add.ptr417.i = getelementptr i8, ptr %30, i32 %.sink.i
  tail call void @msm_writel(i32 noundef %clkbuflr_en.0.ph.sink.i, ptr noundef %add.ptr417.i) #6
  %add.ptr47 = getelementptr i8, ptr %1, i32 28
  tail call void @msm_writel(i32 noundef 255, ptr noundef %add.ptr47) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end46, %if.then43, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -22, %if.then43 ], [ 0, %if.end46 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dsi_14nm_phy_disable(ptr nocapture noundef readonly %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 24
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr) #6
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr2 = getelementptr i8, ptr %3, i32 28
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !88
  tail call void @arm_heavy_mb() #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dsi_14nm_pll_save_state(ptr nocapture noundef readonly %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vco_hw = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 17
  %0 = ptrtoint ptr %vco_hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vco_hw, align 4
  %cached_state1 = getelementptr inbounds %struct.dsi_pll_14nm, ptr %1, i32 0, i32 3
  %phy2 = getelementptr inbounds %struct.dsi_pll_14nm, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %phy2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy2, align 4
  %base = getelementptr inbounds %struct.msm_dsi_phy, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 16
  %call = tail call i32 @msm_readl(ptr noundef %add.ptr3) #6
  %6 = trunc i32 %call to i8
  %conv = and i8 %6, 15
  %n1postdiv = getelementptr inbounds %struct.dsi_pll_14nm, ptr %1, i32 0, i32 3, i32 2
  %7 = ptrtoint ptr %n1postdiv to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv, ptr %n1postdiv, align 1
  %8 = lshr i8 %6, 4
  %n2postdiv = getelementptr inbounds %struct.dsi_pll_14nm, ptr %1, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %n2postdiv to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %n2postdiv, align 4
  %10 = ptrtoint ptr %phy2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phy2, align 4
  %id = getelementptr inbounds %struct.msm_dsi_phy, ptr %11, i32 0, i32 9
  %12 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %id, align 4
  %conv8 = zext i8 %conv to i32
  %conv10 = zext i8 %8 to i32
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.30, i32 noundef %13, i32 noundef %conv8, i32 noundef %conv10) #6
  %14 = ptrtoint ptr %vco_hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %vco_hw, align 4
  %call12 = tail call i32 @clk_hw_get_rate(ptr noundef %15) #6
  %16 = ptrtoint ptr %cached_state1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %call12, ptr %cached_state1, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsi_14nm_pll_restore_state(ptr nocapture noundef readonly %phy) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vco_hw = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 17
  %0 = ptrtoint ptr %vco_hw to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vco_hw, align 4
  %cached_state1 = getelementptr inbounds %struct.dsi_pll_14nm, ptr %1, i32 0, i32 3
  %phy2 = getelementptr inbounds %struct.dsi_pll_14nm, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %phy2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy2, align 4
  %base = getelementptr inbounds %struct.msm_dsi_phy, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %6 = ptrtoint ptr %cached_state1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cached_state1, align 4
  %call = tail call i32 @dsi_pll_14nm_vco_set_rate(ptr noundef %1, i32 noundef %7, i32 noundef 0)
  %n1postdiv = getelementptr inbounds %struct.dsi_pll_14nm, ptr %1, i32 0, i32 3, i32 2
  %8 = ptrtoint ptr %n1postdiv to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %n1postdiv, align 1
  %conv = zext i8 %9 to i32
  %n2postdiv = getelementptr inbounds %struct.dsi_pll_14nm, ptr %1, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %n2postdiv to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %n2postdiv, align 4
  %conv5 = zext i8 %11 to i32
  %shl = shl nuw nsw i32 %conv5, 4
  %or = or i32 %shl, %conv
  %12 = ptrtoint ptr %phy2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phy2, align 4
  %id = getelementptr inbounds %struct.msm_dsi_phy, ptr %13, i32 0, i32 9
  %14 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.32, i32 noundef %15, i32 noundef %conv, i32 noundef %conv5) #6
  %add.ptr11 = getelementptr i8, ptr %5, i32 16
  tail call void @msm_writel(i32 noundef %or, ptr noundef %add.ptr11) #6
  %usecase = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 14
  %16 = ptrtoint ptr %usecase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %usecase, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp = icmp eq i32 %17, 1
  br i1 %cmp, label %if.then13, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then13:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %slave = getelementptr inbounds %struct.dsi_pll_14nm, ptr %1, i32 0, i32 4
  %18 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %slave, align 4
  %phy14 = getelementptr inbounds %struct.dsi_pll_14nm, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %phy14 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %phy14, align 4
  %base15 = getelementptr inbounds %struct.msm_dsi_phy, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %base15 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base15, align 4
  %add.ptr16 = getelementptr i8, ptr %23, i32 16
  tail call void @msm_writel(i32 noundef %or, ptr noundef %add.ptr16) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then13, %entry.cleanup_crit_edge
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

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_hw_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsi_pll_14nm_vco_prepare(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %phy = getelementptr inbounds %struct.dsi_pll_14nm, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 4
  %pll_base = getelementptr inbounds %struct.msm_dsi_phy, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pll_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pll_base, align 4
  %base2 = getelementptr inbounds %struct.msm_dsi_phy, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %base2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base2, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.11) #6
  %6 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy, align 4
  %pll_on = getelementptr inbounds %struct.msm_dsi_phy, ptr %7, i32 0, i32 18
  %8 = ptrtoint ptr %pll_on to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %pll_on, align 4, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge, !prof !90

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr6 = getelementptr i8, ptr %3, i32 92
  tail call void @msm_writel(i32 noundef 16, ptr noundef %add.ptr6) #6
  %add.ptr7 = getelementptr i8, ptr %5, i32 72
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr7) #6
  %10 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phy, align 4
  %pll_base.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %11, i32 0, i32 2
  %12 = ptrtoint ptr %pll_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pll_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 204
  %call.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #6
  %and.i = and i32 %call.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %cond.false.i, label %if.end.while.cond10.preheader.i_crit_edge

if.end.while.cond10.preheader.i_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond10.preheader.i

while.cond10.preheader.i:                         ; preds = %cond.false.13.i.while.cond10.preheader.i_crit_edge, %cond.false.12.i.while.cond10.preheader.i_crit_edge, %cond.false.11.i.while.cond10.preheader.i_crit_edge, %cond.false.10.i.while.cond10.preheader.i_crit_edge, %cond.false.9.i.while.cond10.preheader.i_crit_edge, %cond.false.8.i.while.cond10.preheader.i_crit_edge, %cond.false.7.i.while.cond10.preheader.i_crit_edge, %cond.false.6.i.while.cond10.preheader.i_crit_edge, %cond.false.5.i.while.cond10.preheader.i_crit_edge, %cond.false.4.i.while.cond10.preheader.i_crit_edge, %cond.false.3.i.while.cond10.preheader.i_crit_edge, %cond.false.2.i.while.cond10.preheader.i_crit_edge, %cond.false.1.i.while.cond10.preheader.i_crit_edge, %cond.false.i.while.cond10.preheader.i_crit_edge, %if.end.while.cond10.preheader.i_crit_edge
  %call15.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #6
  %and16.i = and i32 %call15.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %tobool17.not.i = icmp eq i32 %and16.i, 0
  br i1 %tobool17.not.i, label %cond.false27.i, label %while.cond10.preheader.i.pll_14nm_poll_for_ready.exit_crit_edge

while.cond10.preheader.i.pll_14nm_poll_for_ready.exit_crit_edge: ; preds = %while.cond10.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pll_14nm_poll_for_ready.exit

cond.false.i:                                     ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748000) #6
  %call.1.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #6
  %and.1.i = and i32 %call.1.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1.i)
  %tobool1.not.1.i = icmp eq i32 %and.1.i, 0
  br i1 %tobool1.not.1.i, label %cond.false.1.i, label %cond.false.i.while.cond10.preheader.i_crit_edge

cond.false.i.while.cond10.preheader.i_crit_edge:  ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond10.preheader.i

cond.false.1.i:                                   ; preds = %cond.false.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 214748000) #6
  %call.2.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #6
  %and.2.i = and i32 %call.2.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2.i)
  %tobool1.not.2.i = icmp eq i32 %and.2.i, 0
  br i1 %tobool1.not.2.i, label %cond.false.2.i, label %cond.false.1.i.while.cond10.preheader.i_crit_edge

cond.false.1.i.while.cond10.preheader.i_crit_edge: ; preds = %cond.false.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond10.preheader.i

cond.false.2.i:                                   ; preds = %cond.false.1.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 214748000) #6
  %call.3.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #6
  %and.3.i = and i32 %call.3.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3.i)
  %tobool1.not.3.i = icmp eq i32 %and.3.i, 0
  br i1 %tobool1.not.3.i, label %cond.false.3.i, label %cond.false.2.i.while.cond10.preheader.i_crit_edge

cond.false.2.i.while.cond10.preheader.i_crit_edge: ; preds = %cond.false.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond10.preheader.i

cond.false.3.i:                                   ; preds = %cond.false.2.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 214748000) #6
  %call.4.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #6
  %and.4.i = and i32 %call.4.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4.i)
  %tobool1.not.4.i = icmp eq i32 %and.4.i, 0
  br i1 %tobool1.not.4.i, label %cond.false.4.i, label %cond.false.3.i.while.cond10.preheader.i_crit_edge

cond.false.3.i.while.cond10.preheader.i_crit_edge: ; preds = %cond.false.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond10.preheader.i

cond.false.4.i:                                   ; preds = %cond.false.3.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748000) #6
  %call.5.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #6
  %and.5.i = and i32 %call.5.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5.i)
  %tobool1.not.5.i = icmp eq i32 %and.5.i, 0
  br i1 %tobool1.not.5.i, label %cond.false.5.i, label %cond.false.4.i.while.cond10.preheader.i_crit_edge

cond.false.4.i.while.cond10.preheader.i_crit_edge: ; preds = %cond.false.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond10.preheader.i

cond.false.5.i:                                   ; preds = %cond.false.4.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748000) #6
  %call.6.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #6
  %and.6.i = and i32 %call.6.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6.i)
  %tobool1.not.6.i = icmp eq i32 %and.6.i, 0
  br i1 %tobool1.not.6.i, label %cond.false.6.i, label %cond.false.5.i.while.cond10.preheader.i_crit_edge

cond.false.5.i.while.cond10.preheader.i_crit_edge: ; preds = %cond.false.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond10.preheader.i

cond.false.6.i:                                   ; preds = %cond.false.5.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 214748000) #6
  %call.7.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #6
  %and.7.i = and i32 %call.7.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7.i)
  %tobool1.not.7.i = icmp eq i32 %and.7.i, 0
  br i1 %tobool1.not.7.i, label %cond.false.7.i, label %cond.false.6.i.while.cond10.preheader.i_crit_edge

cond.false.6.i.while.cond10.preheader.i_crit_edge: ; preds = %cond.false.6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond10.preheader.i

cond.false.7.i:                                   ; preds = %cond.false.6.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %21(i32 noundef 214748000) #6
  %call.8.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #6
  %and.8.i = and i32 %call.8.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.8.i)
  %tobool1.not.8.i = icmp eq i32 %and.8.i, 0
  br i1 %tobool1.not.8.i, label %cond.false.8.i, label %cond.false.7.i.while.cond10.preheader.i_crit_edge

cond.false.7.i.while.cond10.preheader.i_crit_edge: ; preds = %cond.false.7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond10.preheader.i

cond.false.8.i:                                   ; preds = %cond.false.7.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %22 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %22(i32 noundef 214748000) #6
  %call.9.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #6
  %and.9.i = and i32 %call.9.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.9.i)
  %tobool1.not.9.i = icmp eq i32 %and.9.i, 0
  br i1 %tobool1.not.9.i, label %cond.false.9.i, label %cond.false.8.i.while.cond10.preheader.i_crit_edge

cond.false.8.i.while.cond10.preheader.i_crit_edge: ; preds = %cond.false.8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond10.preheader.i

cond.false.9.i:                                   ; preds = %cond.false.8.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %23 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %23(i32 noundef 214748000) #6
  %call.10.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #6
  %and.10.i = and i32 %call.10.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.10.i)
  %tobool1.not.10.i = icmp eq i32 %and.10.i, 0
  br i1 %tobool1.not.10.i, label %cond.false.10.i, label %cond.false.9.i.while.cond10.preheader.i_crit_edge

cond.false.9.i.while.cond10.preheader.i_crit_edge: ; preds = %cond.false.9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond10.preheader.i

cond.false.10.i:                                  ; preds = %cond.false.9.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 214748000) #6
  %call.11.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #6
  %and.11.i = and i32 %call.11.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.11.i)
  %tobool1.not.11.i = icmp eq i32 %and.11.i, 0
  br i1 %tobool1.not.11.i, label %cond.false.11.i, label %cond.false.10.i.while.cond10.preheader.i_crit_edge

cond.false.10.i.while.cond10.preheader.i_crit_edge: ; preds = %cond.false.10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond10.preheader.i

cond.false.11.i:                                  ; preds = %cond.false.10.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %25 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %25(i32 noundef 214748000) #6
  %call.12.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #6
  %and.12.i = and i32 %call.12.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.12.i)
  %tobool1.not.12.i = icmp eq i32 %and.12.i, 0
  br i1 %tobool1.not.12.i, label %cond.false.12.i, label %cond.false.11.i.while.cond10.preheader.i_crit_edge

cond.false.11.i.while.cond10.preheader.i_crit_edge: ; preds = %cond.false.11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond10.preheader.i

cond.false.12.i:                                  ; preds = %cond.false.11.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %26 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %26(i32 noundef 214748000) #6
  %call.13.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #6
  %and.13.i = and i32 %call.13.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.13.i)
  %tobool1.not.13.i = icmp eq i32 %and.13.i, 0
  br i1 %tobool1.not.13.i, label %cond.false.13.i, label %cond.false.12.i.while.cond10.preheader.i_crit_edge

cond.false.12.i.while.cond10.preheader.i_crit_edge: ; preds = %cond.false.12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond10.preheader.i

cond.false.13.i:                                  ; preds = %cond.false.12.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 214748000) #6
  %call.14.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #6
  %and.14.i = and i32 %call.14.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.14.i)
  %tobool1.not.14.i = icmp eq i32 %and.14.i, 0
  br i1 %tobool1.not.14.i, label %cond.false.13.i.pll_14nm_poll_for_ready.exit.thread_crit_edge, label %cond.false.13.i.while.cond10.preheader.i_crit_edge

cond.false.13.i.while.cond10.preheader.i_crit_edge: ; preds = %cond.false.13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.cond10.preheader.i

cond.false.13.i.pll_14nm_poll_for_ready.exit.thread_crit_edge: ; preds = %cond.false.13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pll_14nm_poll_for_ready.exit.thread

cond.false27.i:                                   ; preds = %while.cond10.preheader.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %28 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %28(i32 noundef 214748000) #6
  %call15.1.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #6
  %and16.1.i = and i32 %call15.1.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.1.i)
  %tobool17.not.1.i = icmp eq i32 %and16.1.i, 0
  br i1 %tobool17.not.1.i, label %cond.false27.1.i, label %cond.false27.i.pll_14nm_poll_for_ready.exit_crit_edge

cond.false27.i.pll_14nm_poll_for_ready.exit_crit_edge: ; preds = %cond.false27.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pll_14nm_poll_for_ready.exit

cond.false27.1.i:                                 ; preds = %cond.false27.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 214748000) #6
  %call15.2.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #6
  %and16.2.i = and i32 %call15.2.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.2.i)
  %tobool17.not.2.i = icmp eq i32 %and16.2.i, 0
  br i1 %tobool17.not.2.i, label %cond.false27.2.i, label %cond.false27.1.i.pll_14nm_poll_for_ready.exit_crit_edge

cond.false27.1.i.pll_14nm_poll_for_ready.exit_crit_edge: ; preds = %cond.false27.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pll_14nm_poll_for_ready.exit

cond.false27.2.i:                                 ; preds = %cond.false27.1.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %30 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %30(i32 noundef 214748000) #6
  %call15.3.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #6
  %and16.3.i = and i32 %call15.3.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.3.i)
  %tobool17.not.3.i = icmp eq i32 %and16.3.i, 0
  br i1 %tobool17.not.3.i, label %cond.false27.3.i, label %cond.false27.2.i.pll_14nm_poll_for_ready.exit_crit_edge

cond.false27.2.i.pll_14nm_poll_for_ready.exit_crit_edge: ; preds = %cond.false27.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pll_14nm_poll_for_ready.exit

cond.false27.3.i:                                 ; preds = %cond.false27.2.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748000) #6
  %call15.4.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #6
  %and16.4.i = and i32 %call15.4.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.4.i)
  %tobool17.not.4.i = icmp eq i32 %and16.4.i, 0
  br i1 %tobool17.not.4.i, label %cond.false27.4.i, label %cond.false27.3.i.pll_14nm_poll_for_ready.exit_crit_edge

cond.false27.3.i.pll_14nm_poll_for_ready.exit_crit_edge: ; preds = %cond.false27.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pll_14nm_poll_for_ready.exit

cond.false27.4.i:                                 ; preds = %cond.false27.3.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %32 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %32(i32 noundef 214748000) #6
  %call15.5.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #6
  %and16.5.i = and i32 %call15.5.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.5.i)
  %tobool17.not.5.i = icmp eq i32 %and16.5.i, 0
  br i1 %tobool17.not.5.i, label %cond.false27.5.i, label %cond.false27.4.i.pll_14nm_poll_for_ready.exit_crit_edge

cond.false27.4.i.pll_14nm_poll_for_ready.exit_crit_edge: ; preds = %cond.false27.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pll_14nm_poll_for_ready.exit

cond.false27.5.i:                                 ; preds = %cond.false27.4.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %33 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %33(i32 noundef 214748000) #6
  %call15.6.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #6
  %and16.6.i = and i32 %call15.6.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.6.i)
  %tobool17.not.6.i = icmp eq i32 %and16.6.i, 0
  br i1 %tobool17.not.6.i, label %cond.false27.6.i, label %cond.false27.5.i.pll_14nm_poll_for_ready.exit_crit_edge

cond.false27.5.i.pll_14nm_poll_for_ready.exit_crit_edge: ; preds = %cond.false27.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pll_14nm_poll_for_ready.exit

cond.false27.6.i:                                 ; preds = %cond.false27.5.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 214748000) #6
  %call15.7.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #6
  %and16.7.i = and i32 %call15.7.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.7.i)
  %tobool17.not.7.i = icmp eq i32 %and16.7.i, 0
  br i1 %tobool17.not.7.i, label %cond.false27.7.i, label %cond.false27.6.i.pll_14nm_poll_for_ready.exit_crit_edge

cond.false27.6.i.pll_14nm_poll_for_ready.exit_crit_edge: ; preds = %cond.false27.6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pll_14nm_poll_for_ready.exit

cond.false27.7.i:                                 ; preds = %cond.false27.6.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %35 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %35(i32 noundef 214748000) #6
  %call15.8.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #6
  %and16.8.i = and i32 %call15.8.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.8.i)
  %tobool17.not.8.i = icmp eq i32 %and16.8.i, 0
  br i1 %tobool17.not.8.i, label %cond.false27.8.i, label %cond.false27.7.i.pll_14nm_poll_for_ready.exit_crit_edge

cond.false27.7.i.pll_14nm_poll_for_ready.exit_crit_edge: ; preds = %cond.false27.7.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pll_14nm_poll_for_ready.exit

cond.false27.8.i:                                 ; preds = %cond.false27.7.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %36 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %36(i32 noundef 214748000) #6
  %call15.9.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #6
  %and16.9.i = and i32 %call15.9.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.9.i)
  %tobool17.not.9.i = icmp eq i32 %and16.9.i, 0
  br i1 %tobool17.not.9.i, label %cond.false27.9.i, label %cond.false27.8.i.pll_14nm_poll_for_ready.exit_crit_edge

cond.false27.8.i.pll_14nm_poll_for_ready.exit_crit_edge: ; preds = %cond.false27.8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pll_14nm_poll_for_ready.exit

cond.false27.9.i:                                 ; preds = %cond.false27.8.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %37 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %37(i32 noundef 214748000) #6
  %call15.10.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #6
  %and16.10.i = and i32 %call15.10.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.10.i)
  %tobool17.not.10.i = icmp eq i32 %and16.10.i, 0
  br i1 %tobool17.not.10.i, label %cond.false27.10.i, label %cond.false27.9.i.pll_14nm_poll_for_ready.exit_crit_edge

cond.false27.9.i.pll_14nm_poll_for_ready.exit_crit_edge: ; preds = %cond.false27.9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pll_14nm_poll_for_ready.exit

cond.false27.10.i:                                ; preds = %cond.false27.9.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %38 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %38(i32 noundef 214748000) #6
  %call15.11.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #6
  %and16.11.i = and i32 %call15.11.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.11.i)
  %tobool17.not.11.i = icmp eq i32 %and16.11.i, 0
  br i1 %tobool17.not.11.i, label %cond.false27.11.i, label %cond.false27.10.i.pll_14nm_poll_for_ready.exit_crit_edge

cond.false27.10.i.pll_14nm_poll_for_ready.exit_crit_edge: ; preds = %cond.false27.10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pll_14nm_poll_for_ready.exit

cond.false27.11.i:                                ; preds = %cond.false27.10.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 214748000) #6
  %call15.12.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #6
  %and16.12.i = and i32 %call15.12.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.12.i)
  %tobool17.not.12.i = icmp eq i32 %and16.12.i, 0
  br i1 %tobool17.not.12.i, label %cond.false27.12.i, label %cond.false27.11.i.pll_14nm_poll_for_ready.exit_crit_edge

cond.false27.11.i.pll_14nm_poll_for_ready.exit_crit_edge: ; preds = %cond.false27.11.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pll_14nm_poll_for_ready.exit

cond.false27.12.i:                                ; preds = %cond.false27.11.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %40 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %40(i32 noundef 214748000) #6
  %call15.13.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #6
  %and16.13.i = and i32 %call15.13.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.13.i)
  %tobool17.not.13.i = icmp eq i32 %and16.13.i, 0
  br i1 %tobool17.not.13.i, label %cond.false27.13.i, label %cond.false27.12.i.pll_14nm_poll_for_ready.exit_crit_edge

cond.false27.12.i.pll_14nm_poll_for_ready.exit_crit_edge: ; preds = %cond.false27.12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pll_14nm_poll_for_ready.exit

cond.false27.13.i:                                ; preds = %cond.false27.12.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %41 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %41(i32 noundef 214748000) #6
  %call15.14.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #6
  %and16.14.i = and i32 %call15.14.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.14.i)
  %tobool17.not.14.i = icmp eq i32 %and16.14.i, 0
  br i1 %tobool17.not.14.i, label %cond.false27.13.i.pll_14nm_poll_for_ready.exit.thread_crit_edge, label %cond.false27.13.i.pll_14nm_poll_for_ready.exit_crit_edge

cond.false27.13.i.pll_14nm_poll_for_ready.exit_crit_edge: ; preds = %cond.false27.13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pll_14nm_poll_for_ready.exit

cond.false27.13.i.pll_14nm_poll_for_ready.exit.thread_crit_edge: ; preds = %cond.false27.13.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pll_14nm_poll_for_ready.exit.thread

pll_14nm_poll_for_ready.exit.thread:              ; preds = %cond.false27.13.i.pll_14nm_poll_for_ready.exit.thread_crit_edge, %cond.false.13.i.pll_14nm_poll_for_ready.exit.thread_crit_edge
  %cond10.ph.i = phi ptr [ @.str.16, %cond.false.13.i.pll_14nm_poll_for_ready.exit.thread_crit_edge ], [ @.str.15, %cond.false27.13.i.pll_14nm_poll_for_ready.exit.thread_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %42 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %42(i32 noundef 214748000) #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.14, ptr noundef nonnull %cond10.ph.i, ptr noundef nonnull @.str.16) #6
  %43 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %phy, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %46, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.12) #6
  br label %cleanup

pll_14nm_poll_for_ready.exit:                     ; preds = %cond.false27.13.i.pll_14nm_poll_for_ready.exit_crit_edge, %cond.false27.12.i.pll_14nm_poll_for_ready.exit_crit_edge, %cond.false27.11.i.pll_14nm_poll_for_ready.exit_crit_edge, %cond.false27.10.i.pll_14nm_poll_for_ready.exit_crit_edge, %cond.false27.9.i.pll_14nm_poll_for_ready.exit_crit_edge, %cond.false27.8.i.pll_14nm_poll_for_ready.exit_crit_edge, %cond.false27.7.i.pll_14nm_poll_for_ready.exit_crit_edge, %cond.false27.6.i.pll_14nm_poll_for_ready.exit_crit_edge, %cond.false27.5.i.pll_14nm_poll_for_ready.exit_crit_edge, %cond.false27.4.i.pll_14nm_poll_for_ready.exit_crit_edge, %cond.false27.3.i.pll_14nm_poll_for_ready.exit_crit_edge, %cond.false27.2.i.pll_14nm_poll_for_ready.exit_crit_edge, %cond.false27.1.i.pll_14nm_poll_for_ready.exit_crit_edge, %cond.false27.i.pll_14nm_poll_for_ready.exit_crit_edge, %while.cond10.preheader.i.pll_14nm_poll_for_ready.exit_crit_edge
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.15) #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.13) #6
  %47 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %phy, align 4
  %pll_on21 = getelementptr inbounds %struct.msm_dsi_phy, ptr %48, i32 0, i32 18
  %49 = ptrtoint ptr %pll_on21 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 1, ptr %pll_on21, align 4
  br label %cleanup

cleanup:                                          ; preds = %pll_14nm_poll_for_ready.exit, %pll_14nm_poll_for_ready.exit.thread, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %pll_14nm_poll_for_ready.exit.thread ], [ 0, %pll_14nm_poll_for_ready.exit ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dsi_pll_14nm_vco_unprepare(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %phy = getelementptr inbounds %struct.dsi_pll_14nm, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 4
  %base = getelementptr inbounds %struct.msm_dsi_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.11) #6
  %4 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy, align 4
  %pll_on = getelementptr inbounds %struct.msm_dsi_phy, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %pll_on to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pll_on, align 4, !range !89
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !91

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr5 = getelementptr i8, ptr %3, i32 72
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr5) #6
  %8 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy, align 4
  %pll_on7 = getelementptr inbounds %struct.msm_dsi_phy, ptr %9, i32 0, i32 18
  %10 = ptrtoint ptr %pll_on7 to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %pll_on7, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsi_pll_14nm_vco_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #0 align 64 {
if.end205:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %phy = getelementptr inbounds %struct.dsi_pll_14nm, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 4
  %pll_base = getelementptr inbounds %struct.msm_dsi_phy, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pll_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pll_base, align 4
  %conv = zext i32 %parent_rate to i64
  %add.ptr1 = getelementptr i8, ptr %3, i32 144
  %call = tail call i32 @msm_readl(ptr noundef %add.ptr1) #6
  %and = and i32 %call, 255
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.17, i32 noundef %and) #6
  %add.ptr2 = getelementptr i8, ptr %3, i32 188
  %call3 = tail call i32 @msm_readl(ptr noundef %add.ptr2) #6
  %and4 = shl i32 %call3, 16
  %shl = and i32 %and4, 983040
  %add.ptr5 = getelementptr i8, ptr %3, i32 184
  %call6 = tail call i32 @msm_readl(ptr noundef %add.ptr5) #6
  %and7 = shl i32 %call6, 8
  %shl8 = and i32 %and7, 65280
  %or = or i32 %shl8, %shl
  %add.ptr9 = getelementptr i8, ptr %3, i32 180
  %call10 = tail call i32 @msm_readl(ptr noundef %add.ptr9) #6
  %and11 = and i32 %call10, 255
  %or12 = or i32 %or, %and11
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.18, i32 noundef %or12) #6
  %conv13 = zext i32 %and to i64
  %mul = mul nuw nsw i64 %conv13, %conv
  %conv14 = zext i32 %or12 to i64
  %mul15 = mul nuw nsw i64 %conv14, %conv
  %div302 = lshr i64 %mul15, 20
  %add = add nuw nsw i64 %mul, 999
  %sub = add nuw nsw i64 %add, %div302
  %4 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %sub, i32 0) #9, !srcloc !92
  %asmresult.i = extractvalue { i64, i32 } %4, 0
  %asmresult4.i = extractvalue { i64, i32 } %4, 1
  %5 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %sub, i64 %asmresult.i, i32 %asmresult4.i) #9, !srcloc !93
  %asmresult10.i = extractvalue { i64, i32 } %5, 0
  %extract304 = lshr i64 %asmresult10.i, 9
  %extract.t305 = trunc i64 %extract304 to i32
  %conv209 = mul i32 %extract.t305, 1000
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.19, i32 noundef %conv209) #6
  ret i32 %conv209
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dsi_pll_14nm_clk_round_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, ptr nocapture noundef readnone %parent_rate) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %phy = getelementptr inbounds %struct.dsi_pll_14nm, ptr %hw, i32 0, i32 1
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
define internal i32 @dsi_pll_14nm_vco_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
pll_14nm_dec_frac_calc.exit:
  %conf = alloca %struct.dsi_pll_config, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %conf) #6
  %0 = call ptr @memset(ptr %conf, i32 255, i32 72)
  %phy = getelementptr inbounds %struct.dsi_pll_14nm, ptr %hw, i32 0, i32 1
  %1 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %phy, align 4
  %id = getelementptr inbounds %struct.msm_dsi_phy, ptr %2, i32 0, i32 9
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.20, i32 noundef %4, i32 noundef %rate, i32 noundef %parent_rate) #6
  %plllock_cnt.i = getelementptr inbounds %struct.dsi_pll_config, ptr %conf, i32 0, i32 2
  %5 = ptrtoint ptr %plllock_cnt.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 1, ptr %plllock_cnt.i, align 4
  %ssc_en.i = getelementptr inbounds %struct.dsi_pll_config, ptr %conf, i32 0, i32 1
  %6 = ptrtoint ptr %ssc_en.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %ssc_en.i, align 8
  %ssc_center.i = getelementptr inbounds %struct.dsi_pll_config, ptr %conf, i32 0, i32 3
  %7 = ptrtoint ptr %ssc_center.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %ssc_center.i, align 8
  %ssc_spread.i = getelementptr inbounds %struct.dsi_pll_config, ptr %conf, i32 0, i32 5
  %8 = ptrtoint ptr %ssc_spread.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 5, ptr %ssc_spread.i, align 8
  %ssc_freq.i = getelementptr inbounds %struct.dsi_pll_config, ptr %conf, i32 0, i32 6
  %9 = ptrtoint ptr %ssc_freq.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 31500, ptr %ssc_freq.i, align 4
  %ssc_adj_period.i = getelementptr inbounds %struct.dsi_pll_config, ptr %conf, i32 0, i32 4
  %10 = ptrtoint ptr %ssc_adj_period.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 37, ptr %ssc_adj_period.i, align 4
  %conv = zext i32 %rate to i64
  %11 = ptrtoint ptr %conf to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 %conv, ptr %conf, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.21, i64 noundef %conv, i64 noundef 19200000) #6
  %mul.i = shl nuw nsw i64 %conv, 20
  %12 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 -2327733145514495953, i64 %mul.i) #9, !srcloc !94
  %13 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -2327733145514495953, i64 %mul.i, i64 %12, i32 0) #9, !srcloc !93
  %asmresult10.i.i.i.i = extractvalue { i64, i32 } %13, 0
  %div158.i.i3.i = lshr i64 %asmresult10.i.i.i.i, 24
  %14 = trunc i64 %div158.i.i3.i to i32
  %conv1.i.i = and i32 %14, 1048575
  %shr.i.i = lshr i64 %asmresult10.i.i.i.i, 44
  %conv3.i = trunc i64 %shr.i.i to i32
  %dec_start4.i = getelementptr inbounds %struct.dsi_pll_config, ptr %conf, i32 0, i32 7
  %15 = ptrtoint ptr %dec_start4.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv3.i, ptr %dec_start4.i, align 8
  %div_frac_start5.i = getelementptr inbounds %struct.dsi_pll_config, ptr %conf, i32 0, i32 8
  %16 = ptrtoint ptr %div_frac_start5.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %conv1.i.i, ptr %div_frac_start5.i, align 4
  %shr.i.i.i = lshr i64 %asmresult10.i.i.i.i, 37
  %17 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %shr.i.i.i, i64 3689348814741910323) #9, !srcloc !95
  %18 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %shr.i.i.i, i64 %17) #9, !srcloc !96
  %extract.t2.i = trunc i64 %18 to i32
  %plllock_cmp.i = getelementptr inbounds %struct.dsi_pll_config, ptr %conf, i32 0, i32 11
  %19 = ptrtoint ptr %plllock_cmp.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %extract.t2.i, ptr %plllock_cmp.i, align 8
  %20 = ptrtoint ptr %ssc_en.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ssc_en.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool.not = icmp eq i32 %21, 0
  br i1 %tobool.not, label %pll_14nm_dec_frac_calc.exit.if.end_crit_edge, label %if.then

pll_14nm_dec_frac_calc.exit.if.end_crit_edge:     ; preds = %pll_14nm_dec_frac_calc.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %pll_14nm_dec_frac_calc.exit
  %22 = ptrtoint ptr %conf to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %conf, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.22, i64 noundef %23, i32 noundef 19200000) #6
  %24 = ptrtoint ptr %ssc_freq.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ssc_freq.i, align 4
  %div.i = udiv i32 %25, 500
  %add.i = add nuw nsw i32 %div.i, 19199
  %div1.i = udiv i32 %add.i, %div.i
  %sub2.i = add nsw i32 %div1.i, -1
  %ssc_period3.i = getelementptr inbounds %struct.dsi_pll_config, ptr %conf, i32 0, i32 9
  %26 = ptrtoint ptr %ssc_period3.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %sub2.i, ptr %ssc_period3.i, align 8
  %27 = ptrtoint ptr %ssc_spread.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ssc_spread.i, align 8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.23, i32 noundef %25, i32 noundef %28, i32 noundef %sub2.i) #6
  %conv7.i = and i64 %23, 4294967295
  %29 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 7870610804782742023, i64 %conv7.i) #9, !srcloc !94
  %30 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 7870610804782742023, i64 %conv7.i, i64 %29, i32 0) #9, !srcloc !93
  %asmresult10.i.i.i.i15 = extractvalue { i64, i32 } %30, 0
  %31 = shl i64 %asmresult10.i.i.i.i15, 7
  %shl.i = and i64 %31, -1048576
  %32 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %shl.i, i32 0) #9, !srcloc !92
  %asmresult.i.i.i.i = extractvalue { i64, i32 } %32, 0
  %asmresult4.i.i.i.i = extractvalue { i64, i32 } %32, 1
  %33 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %shl.i, i64 %asmresult.i.i.i.i, i32 %asmresult4.i.i.i.i) #9, !srcloc !93
  %asmresult10.i.i.i1.i = extractvalue { i64, i32 } %33, 0
  %div158.i.i28.i = lshr i64 %asmresult10.i.i.i1.i, 9
  %conv11.i = zext i32 %28 to i64
  %mul.i16 = mul i64 %div158.i.i28.i, %conv11.i
  %34 = tail call { i64, i32 } asm "umull\09${0:Q}, ${0:R}, ${2:Q}, ${3:Q}\0A\09cmn\09${0:Q}, ${2:Q}\0A\09adcs\09${0:R}, ${0:R}, ${2:R}\0A\09adc\09${0:Q}, $1, #0", "=&r,=&{r12},r,r,1,~{cc}"(i64 -9002011107970261189, i64 %mul.i16, i32 0) #9, !srcloc !92
  %asmresult.i.i.i3.i = extractvalue { i64, i32 } %34, 0
  %asmresult4.i.i.i4.i = extractvalue { i64, i32 } %34, 1
  %35 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 -9002011107970261189, i64 %mul.i16, i64 %asmresult.i.i.i3.i, i32 %asmresult4.i.i.i4.i) #9, !srcloc !93
  %asmresult10.i.i.i5.i = extractvalue { i64, i32 } %35, 0
  %div158.i.i69.i = lshr i64 %asmresult10.i.i.i5.i, 9
  %36 = ptrtoint ptr %ssc_adj_period.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ssc_adj_period.i, align 4
  %add13.i = add i32 %37, 1
  %conv14.i = zext i32 %add13.i to i64
  %mul15.i = mul i64 %div158.i.i69.i, %conv14.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul15.i)
  %cmp164.i.i = icmp ult i64 %mul15.i, 4294967296
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !90

if.then168.i.i:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %conv169.i.i = trunc i64 %mul15.i to i32
  %conv169.i.i.frozen = freeze i32 %conv169.i.i
  %div1.i.frozen = freeze i32 %div1.i
  %div172.i.i = udiv i32 %conv169.i.i.frozen, %div1.i.frozen
  %38 = mul i32 %div172.i.i, %div1.i.frozen
  %rem170.i.i.decomposed = sub i32 %conv169.i.i.frozen, %38
  %conv173.i.i = zext i32 %div172.i.i to i64
  br label %pll_14nm_ssc_calc.exit

if.else174.i.i:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %39 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %div1.i, i64 %mul15.i) #9, !srcloc !97
  %asmresult.i261.i.i = extractvalue { i64, i64 } %39, 0
  %asmresult1.i.i.i = extractvalue { i64, i64 } %39, 1
  %shr.i.i.i20 = lshr i64 %asmresult.i261.i.i, 32
  %conv.i.i.i = trunc i64 %shr.i.i.i20 to i32
  br label %pll_14nm_ssc_calc.exit

pll_14nm_ssc_calc.exit:                           ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i = phi i64 [ %conv173.i.i, %if.then168.i.i ], [ %asmresult1.i.i.i, %if.else174.i.i ]
  %__rem.0.i.i = phi i32 [ %rem170.i.i.decomposed, %if.then168.i.i ], [ %conv.i.i.i, %if.else174.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %__rem.0.i.i)
  %tobool.not.i = icmp ne i32 %__rem.0.i.i, 0
  %inc.i = zext i1 %tobool.not.i to i64
  %spec.select.i = add i64 %dividend.addr.0.i.i, %inc.i
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.24, i64 noundef %spec.select.i) #6
  %40 = trunc i64 %spec.select.i to i32
  %conv18.i = and i32 %40, 65535
  %ssc_step_size.i = getelementptr inbounds %struct.dsi_pll_config, ptr %conf, i32 0, i32 10
  %41 = ptrtoint ptr %ssc_step_size.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %conv18.i, ptr %ssc_step_size.i, align 4
  br label %if.end

if.end:                                           ; preds = %pll_14nm_ssc_calc.exit, %pll_14nm_dec_frac_calc.exit.if.end_crit_edge
  %42 = ptrtoint ptr %conf to i32
  call void @__asan_load8_noabort(i32 %42)
  %43 = load i64, ptr %conf, align 8
  %44 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 96000000) #9
  %45 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 96000000, i64 %44, i32 0) #9
  %asmresult10.i.i = extractvalue { i64, i32 } %45, 0
  %46 = trunc i64 %asmresult10.i.i to i32
  %47 = lshr i32 %46, 18
  %48 = and i32 %47, 1023
  %conv185.i = add nsw i32 %48, -2
  %pll_vco_div_ref.i = getelementptr inbounds %struct.dsi_pll_config, ptr %conf, i32 0, i32 12
  %49 = ptrtoint ptr %pll_vco_div_ref.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %conv185.i, ptr %pll_vco_div_ref.i, align 4
  %50 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %43) #9, !srcloc !94
  %51 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %43, i64 %50, i32 0) #9, !srcloc !93
  %asmresult10.i.i.i.i21 = extractvalue { i64, i32 } %51, 0
  %div158.i.i10.i = lshr i64 %asmresult10.i.i.i.i21, 18
  %mul188.i = mul nuw nsw i64 %div158.i.i10.i, 5
  %div2992.i = lshr i64 %mul188.i, 1
  %52 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div2992.i, i64 3689348814741910323) #9, !srcloc !95
  %53 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 3689348814741910323, i64 %div2992.i, i64 %52) #9, !srcloc !96
  %extract.t4.i = trunc i64 %53 to i32
  %pll_vco_count.i = getelementptr inbounds %struct.dsi_pll_config, ptr %conf, i32 0, i32 13
  %54 = ptrtoint ptr %pll_vco_count.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %extract.t4.i, ptr %pll_vco_count.i, align 8
  %extract.t7.i = add nsw i32 %48, -1
  %pll_kvco_div_ref.i = getelementptr inbounds %struct.dsi_pll_config, ptr %conf, i32 0, i32 14
  %55 = ptrtoint ptr %pll_kvco_div_ref.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %extract.t7.i, ptr %pll_kvco_div_ref.i, align 4
  %conv637.i = trunc i64 %43 to i32
  %56 = add i32 %conv637.i, -1300000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 500000000, i32 %56)
  %57 = icmp ult i32 %56, 500000000
  br i1 %57, label %if.end.pll_14nm_calc_vco_count.exit_crit_edge, label %if.else.i.i

if.end.pll_14nm_calc_vco_count.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %pll_14nm_calc_vco_count.exit

if.else.i.i:                                      ; preds = %if.end
  %58 = add i32 %conv637.i, -1800000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 499999999, i32 %58)
  %59 = icmp ult i32 %58, 499999999
  br i1 %59, label %if.else.i.i.pll_14nm_calc_vco_count.exit_crit_edge, label %if.else6.i.i

if.else.i.i.pll_14nm_calc_vco_count.exit_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pll_14nm_calc_vco_count.exit

if.else6.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %60 = add i32 %conv637.i, 1994967295
  call void @__sanitizer_cov_trace_const_cmp4(i32 299999999, i32 %60)
  %61 = icmp ult i32 %60, 299999999
  %phi.bo.i = select i1 %61, i32 25, i32 0
  br label %pll_14nm_calc_vco_count.exit

pll_14nm_calc_vco_count.exit:                     ; preds = %if.else6.i.i, %if.else.i.i.pll_14nm_calc_vco_count.exit_crit_edge, %if.end.pll_14nm_calc_vco_count.exit_crit_edge
  %slop.0.i.i = phi i32 [ 60, %if.end.pll_14nm_calc_vco_count.exit_crit_edge ], [ 40, %if.else.i.i.pll_14nm_calc_vco_count.exit_crit_edge ], [ %phi.bo.i, %if.else6.i.i ]
  %pll_kvco_count.i = getelementptr inbounds %struct.dsi_pll_config, ptr %conf, i32 0, i32 15
  %62 = ptrtoint ptr %pll_kvco_count.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %slop.0.i.i, ptr %pll_kvco_count.i, align 8
  %63 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %phy, align 4
  %usecase = getelementptr inbounds %struct.msm_dsi_phy, ptr %64, i32 0, i32 14
  %65 = ptrtoint ptr %usecase to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %usecase, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %66)
  %cmp = icmp eq i32 %66, 1
  br i1 %cmp, label %if.then3, label %pll_14nm_calc_vco_count.exit.if.end4_crit_edge

pll_14nm_calc_vco_count.exit.if.end4_crit_edge:   ; preds = %pll_14nm_calc_vco_count.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.then3:                                         ; preds = %pll_14nm_calc_vco_count.exit
  call void @__sanitizer_cov_trace_pc() #8
  %slave = getelementptr inbounds %struct.dsi_pll_14nm, ptr %hw, i32 0, i32 4
  %67 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %slave, align 4
  call fastcc void @pll_db_commit_14nm(ptr noundef %68, ptr noundef nonnull %conf)
  br label %if.end4

if.end4:                                          ; preds = %if.then3, %pll_14nm_calc_vco_count.exit.if.end4_crit_edge
  call fastcc void @pll_db_commit_14nm(ptr noundef %hw, ptr noundef nonnull %conf)
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %conf) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_readl(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pll_db_commit_14nm(ptr nocapture noundef readonly %pll, ptr nocapture noundef readonly %pconf) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %phy = getelementptr inbounds %struct.dsi_pll_14nm, ptr %pll, i32 0, i32 1
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 4
  %pll_base = getelementptr inbounds %struct.msm_dsi_phy, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pll_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pll_base, align 4
  %base2 = getelementptr inbounds %struct.msm_dsi_phy, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %base2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base2, align 4
  %id = getelementptr inbounds %struct.msm_dsi_phy, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.25, i32 noundef %7) #6
  %add.ptr = getelementptr i8, ptr %5, i32 76
  tail call void @msm_writel(i32 noundef 60, ptr noundef %add.ptr) #6
  %8 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy, align 4
  %pll_base.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %pll_base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pll_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %11, i32 40
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i) #6
  %add.ptr1.i = getelementptr i8, ptr %11, i32 192
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr1.i) #6
  %add.ptr2.i = getelementptr i8, ptr %11, i32 44
  tail call void @msm_writel(i32 noundef 48, ptr noundef %add.ptr2.i) #6
  %add.ptr3.i = getelementptr i8, ptr %11, i32 48
  tail call void @msm_writel(i32 noundef 32, ptr noundef %add.ptr3.i) #6
  %add.ptr4.i = getelementptr i8, ptr %11, i32 60
  tail call void @msm_writel(i32 noundef 5, ptr noundef %add.ptr4.i) #6
  %pll_vco_div_ref.i = getelementptr inbounds %struct.dsi_pll_config, ptr %pconf, i32 0, i32 12
  %12 = ptrtoint ptr %pll_vco_div_ref.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %pll_vco_div_ref.i, align 4
  %conv6.i = and i32 %13, 255
  %add.ptr7.i = getelementptr i8, ptr %11, i32 108
  tail call void @msm_writel(i32 noundef %conv6.i, ptr noundef %add.ptr7.i) #6
  %14 = ptrtoint ptr %pll_vco_div_ref.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pll_vco_div_ref.i, align 4
  %shr.i = lshr i32 %15, 8
  %conv10.i = and i32 %shr.i, 3
  %add.ptr12.i = getelementptr i8, ptr %11, i32 112
  tail call void @msm_writel(i32 noundef %conv10.i, ptr noundef %add.ptr12.i) #6
  %pll_kvco_div_ref.i = getelementptr inbounds %struct.dsi_pll_config, ptr %pconf, i32 0, i32 14
  %16 = ptrtoint ptr %pll_kvco_div_ref.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pll_kvco_div_ref.i, align 4
  %conv15.i = and i32 %17, 255
  %add.ptr16.i = getelementptr i8, ptr %11, i32 64
  tail call void @msm_writel(i32 noundef %conv15.i, ptr noundef %add.ptr16.i) #6
  %18 = ptrtoint ptr %pll_kvco_div_ref.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pll_kvco_div_ref.i, align 4
  %shr18.i = lshr i32 %19, 8
  %conv20.i = and i32 %shr18.i, 3
  %add.ptr22.i = getelementptr i8, ptr %11, i32 68
  tail call void @msm_writel(i32 noundef %conv20.i, ptr noundef %add.ptr22.i) #6
  %add.ptr23.i = getelementptr i8, ptr %11, i32 232
  tail call void @msm_writel(i32 noundef 16, ptr noundef %add.ptr23.i) #6
  tail call void @msm_writel(i32 noundef 4, ptr noundef %11) #6
  %add.ptr25.i = getelementptr i8, ptr %11, i32 4
  tail call void @msm_writel(i32 noundef 4, ptr noundef %add.ptr25.i) #6
  %add.ptr26.i = getelementptr i8, ptr %11, i32 240
  tail call void @msm_writel(i32 noundef 9, ptr noundef %add.ptr26.i) #6
  %add.ptr27.i = getelementptr i8, ptr %11, i32 248
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr27.i) #6
  %add.ptr28.i = getelementptr i8, ptr %11, i32 244
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr28.i) #6
  %add.ptr29.i = getelementptr i8, ptr %11, i32 252
  tail call void @msm_writel(i32 noundef 36, ptr noundef %add.ptr29.i) #6
  %add.ptr30.i = getelementptr i8, ptr %11, i32 256
  tail call void @msm_writel(i32 noundef 27, ptr noundef %add.ptr30.i) #6
  %add.ptr31.i = getelementptr i8, ptr %11, i32 16
  tail call void @msm_writel(i32 noundef 7, ptr noundef %add.ptr31.i) #6
  %add.ptr32.i = getelementptr i8, ptr %11, i32 196
  tail call void @msm_writel(i32 noundef 18, ptr noundef %add.ptr32.i) #6
  %20 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %phy, align 4
  %base.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i, align 4
  %add.ptr.i109 = getelementptr i8, ptr %23, i32 72
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr.i109) #6
  %add.ptr1.i110 = getelementptr i8, ptr %23, i32 32
  tail call void @msm_writel(i32 noundef 32, ptr noundef %add.ptr1.i110) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 2147480) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !98
  tail call void @arm_heavy_mb() #6
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr1.i110) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !99
  tail call void @arm_heavy_mb() #6
  %add.ptr4 = getelementptr i8, ptr %5, i32 20
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr4) #6
  %add.ptr5 = getelementptr i8, ptr %5, i32 28
  tail call void @msm_writel(i32 noundef 255, ptr noundef %add.ptr5) #6
  %dec_start = getelementptr inbounds %struct.dsi_pll_config, ptr %pconf, i32 0, i32 7
  %25 = ptrtoint ptr %dec_start to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dec_start, align 8
  %conv7 = and i32 %26, 255
  %add.ptr8 = getelementptr i8, ptr %3, i32 144
  tail call void @msm_writel(i32 noundef %conv7, ptr noundef %add.ptr8) #6
  %div_frac_start = getelementptr inbounds %struct.dsi_pll_config, ptr %pconf, i32 0, i32 8
  %27 = ptrtoint ptr %div_frac_start to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %div_frac_start, align 4
  %conv10 = and i32 %28, 255
  %add.ptr11 = getelementptr i8, ptr %3, i32 180
  tail call void @msm_writel(i32 noundef %conv10, ptr noundef %add.ptr11) #6
  %29 = ptrtoint ptr %div_frac_start to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %div_frac_start, align 4
  %shr = lshr i32 %30, 8
  %conv15 = and i32 %shr, 255
  %add.ptr16 = getelementptr i8, ptr %3, i32 184
  tail call void @msm_writel(i32 noundef %conv15, ptr noundef %add.ptr16) #6
  %31 = ptrtoint ptr %div_frac_start to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %div_frac_start, align 4
  %shr18 = lshr i32 %32, 16
  %conv20 = and i32 %shr18, 15
  %add.ptr22 = getelementptr i8, ptr %3, i32 188
  tail call void @msm_writel(i32 noundef %conv20, ptr noundef %add.ptr22) #6
  %plllock_cmp = getelementptr inbounds %struct.dsi_pll_config, ptr %pconf, i32 0, i32 11
  %33 = ptrtoint ptr %plllock_cmp to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %plllock_cmp, align 8
  %conv25 = and i32 %34, 255
  %add.ptr26 = getelementptr i8, ptr %3, i32 124
  tail call void @msm_writel(i32 noundef %conv25, ptr noundef %add.ptr26) #6
  %35 = ptrtoint ptr %plllock_cmp to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %plllock_cmp, align 8
  %shr28 = lshr i32 %36, 8
  %conv31 = and i32 %shr28, 255
  %add.ptr32 = getelementptr i8, ptr %3, i32 128
  tail call void @msm_writel(i32 noundef %conv31, ptr noundef %add.ptr32) #6
  %37 = ptrtoint ptr %plllock_cmp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %plllock_cmp, align 8
  %shr34 = lshr i32 %38, 16
  %conv36 = and i32 %shr34, 3
  %add.ptr38 = getelementptr i8, ptr %3, i32 132
  tail call void @msm_writel(i32 noundef %conv36, ptr noundef %add.ptr38) #6
  %plllock_cnt = getelementptr inbounds %struct.dsi_pll_config, ptr %pconf, i32 0, i32 2
  %39 = ptrtoint ptr %plllock_cnt to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %plllock_cnt, align 4
  %conv39 = shl i32 %40, 1
  %conv40 = and i32 %conv39, 254
  %add.ptr41 = getelementptr i8, ptr %3, i32 136
  tail call void @msm_writel(i32 noundef %conv40, ptr noundef %add.ptr41) #6
  %pll_vco_count = getelementptr inbounds %struct.dsi_pll_config, ptr %pconf, i32 0, i32 13
  %41 = ptrtoint ptr %pll_vco_count to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %pll_vco_count, align 8
  %conv44 = and i32 %42, 255
  %add.ptr45 = getelementptr i8, ptr %3, i32 116
  tail call void @msm_writel(i32 noundef %conv44, ptr noundef %add.ptr45) #6
  %43 = ptrtoint ptr %pll_vco_count to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pll_vco_count, align 8
  %shr47 = lshr i32 %44, 8
  %conv50 = and i32 %shr47, 255
  %add.ptr51 = getelementptr i8, ptr %3, i32 120
  tail call void @msm_writel(i32 noundef %conv50, ptr noundef %add.ptr51) #6
  %pll_kvco_count = getelementptr inbounds %struct.dsi_pll_config, ptr %pconf, i32 0, i32 15
  %45 = ptrtoint ptr %pll_kvco_count to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %pll_kvco_count, align 8
  %conv54 = and i32 %46, 255
  %add.ptr55 = getelementptr i8, ptr %3, i32 72
  tail call void @msm_writel(i32 noundef %conv54, ptr noundef %add.ptr55) #6
  %47 = ptrtoint ptr %pll_kvco_count to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %pll_kvco_count, align 8
  %shr57 = lshr i32 %48, 8
  %conv59 = and i32 %shr57, 3
  %add.ptr61 = getelementptr i8, ptr %3, i32 76
  tail call void @msm_writel(i32 noundef %conv59, ptr noundef %add.ptr61) #6
  %add.ptr62 = getelementptr i8, ptr %3, i32 260
  tail call void @msm_writel(i32 noundef 3, ptr noundef %add.ptr62) #6
  %ssc_en = getelementptr inbounds %struct.dsi_pll_config, ptr %pconf, i32 0, i32 1
  %49 = ptrtoint ptr %ssc_en to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ssc_en, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool.not = icmp eq i32 %50, 0
  br i1 %tobool.not, label %entry.do.body_crit_edge, label %if.then

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %51 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %phy, align 4
  %pll_base.i112 = getelementptr inbounds %struct.msm_dsi_phy, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %pll_base.i112 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pll_base.i112, align 4
  %ssc_adj_period.i = getelementptr inbounds %struct.dsi_pll_config, ptr %pconf, i32 0, i32 4
  %55 = ptrtoint ptr %ssc_adj_period.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ssc_adj_period.i, align 4
  %conv3.i = and i32 %56, 255
  %add.ptr.i113 = getelementptr i8, ptr %54, i32 152
  tail call void @msm_writel(i32 noundef %conv3.i, ptr noundef %add.ptr.i113) #6
  %57 = ptrtoint ptr %ssc_adj_period.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ssc_adj_period.i, align 4
  %shr.i114 = lshr i32 %58, 8
  %conv8.i = and i32 %shr.i114, 3
  %add.ptr10.i = getelementptr i8, ptr %54, i32 156
  tail call void @msm_writel(i32 noundef %conv8.i, ptr noundef %add.ptr10.i) #6
  %ssc_period.i = getelementptr inbounds %struct.dsi_pll_config, ptr %pconf, i32 0, i32 9
  %59 = ptrtoint ptr %ssc_period.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ssc_period.i, align 8
  %conv15.i115 = and i32 %60, 255
  %add.ptr16.i116 = getelementptr i8, ptr %54, i32 160
  tail call void @msm_writel(i32 noundef %conv15.i115, ptr noundef %add.ptr16.i116) #6
  %61 = ptrtoint ptr %ssc_period.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %ssc_period.i, align 8
  %shr18.i117 = lshr i32 %62, 8
  %conv23.i = and i32 %shr18.i117, 255
  %add.ptr24.i = getelementptr i8, ptr %54, i32 164
  tail call void @msm_writel(i32 noundef %conv23.i, ptr noundef %add.ptr24.i) #6
  %ssc_step_size.i = getelementptr inbounds %struct.dsi_pll_config, ptr %pconf, i32 0, i32 10
  %63 = ptrtoint ptr %ssc_step_size.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %ssc_step_size.i, align 4
  %conv29.i = and i32 %64, 255
  %add.ptr30.i118 = getelementptr i8, ptr %54, i32 168
  tail call void @msm_writel(i32 noundef %conv29.i, ptr noundef %add.ptr30.i118) #6
  %65 = ptrtoint ptr %ssc_step_size.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %ssc_step_size.i, align 4
  %shr32.i = lshr i32 %66, 8
  %conv37.i = and i32 %shr32.i, 255
  %add.ptr38.i = getelementptr i8, ptr %54, i32 172
  tail call void @msm_writel(i32 noundef %conv37.i, ptr noundef %add.ptr38.i) #6
  %ssc_center.i = getelementptr inbounds %struct.dsi_pll_config, ptr %pconf, i32 0, i32 3
  %67 = ptrtoint ptr %ssc_center.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %ssc_center.i, align 8
  %69 = shl i32 %68, 1
  %70 = and i32 %69, 2
  %conv44.i = or i32 %70, 1
  %add.ptr46.i = getelementptr i8, ptr %54, i32 148
  tail call void @msm_writel(i32 noundef %conv44.i, ptr noundef %add.ptr46.i) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !100
  tail call void @arm_heavy_mb() #6
  br label %do.body

do.body:                                          ; preds = %if.then, %entry.do.body_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !101
  tail call void @arm_heavy_mb() #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsi_pll_14nm_postdiv_recalc_rate(ptr noundef %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pll = getelementptr inbounds %struct.dsi_pll_14nm_postdiv, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pll, align 4
  %phy = getelementptr inbounds %struct.dsi_pll_14nm, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy, align 4
  %base1 = getelementptr inbounds %struct.msm_dsi_phy, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base1, align 4
  %shift2 = getelementptr inbounds %struct.dsi_pll_14nm_postdiv, ptr %hw, i32 0, i32 1
  %6 = ptrtoint ptr %shift2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %shift2, align 4
  %width3 = getelementptr inbounds %struct.dsi_pll_14nm_postdiv, ptr %hw, i32 0, i32 2
  %8 = ptrtoint ptr %width3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %width3, align 1
  %id = getelementptr inbounds %struct.msm_dsi_phy, ptr %3, i32 0, i32 9
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.26, i32 noundef %11, i32 noundef %parent_rate) #6
  %add.ptr5 = getelementptr i8, ptr %5, i32 16
  %call = tail call i32 @msm_readl(ptr noundef %add.ptr5) #6
  %conv = zext i8 %7 to i32
  %shr = lshr i32 %call, %conv
  %conv6 = zext i8 %9 to i32
  %notmask = shl nsw i32 -1, %conv6
  %sub = xor i32 %notmask, -1
  %and = and i32 %shr, %sub
  %flags = getelementptr inbounds %struct.dsi_pll_14nm_postdiv, ptr %hw, i32 0, i32 3
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %flags, align 2
  %conv7 = zext i8 %13 to i32
  %call9 = tail call i32 @divider_recalc_rate(ptr noundef %hw, i32 noundef %parent_rate, i32 noundef %and, ptr noundef null, i32 noundef %conv7, i32 noundef %conv6) #6
  ret i32 %call9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsi_pll_14nm_postdiv_round_rate(ptr noundef %hw, i32 noundef %rate, ptr noundef %prate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pll = getelementptr inbounds %struct.dsi_pll_14nm_postdiv, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pll, align 4
  %phy = getelementptr inbounds %struct.dsi_pll_14nm, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy, align 4
  %id = getelementptr inbounds %struct.msm_dsi_phy, ptr %3, i32 0, i32 9
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.26, i32 noundef %5, i32 noundef %rate) #6
  %width = getelementptr inbounds %struct.dsi_pll_14nm_postdiv, ptr %hw, i32 0, i32 2
  %6 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %width, align 1
  %flags = getelementptr inbounds %struct.dsi_pll_14nm_postdiv, ptr %hw, i32 0, i32 3
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %flags, align 2
  %conv = zext i8 %9 to i32
  %call.i = tail call ptr @clk_hw_get_parent(ptr noundef %hw) #6
  %call1.i = tail call i32 @divider_round_rate_parent(ptr noundef %hw, ptr noundef %call.i, i32 noundef %rate, ptr noundef %prate, ptr noundef null, i8 noundef zeroext %7, i32 noundef %conv) #6
  ret i32 %call1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsi_pll_14nm_postdiv_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %pll = getelementptr inbounds %struct.dsi_pll_14nm_postdiv, ptr %hw, i32 0, i32 4
  %0 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pll, align 4
  %phy = getelementptr inbounds %struct.dsi_pll_14nm, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy, align 4
  %base1 = getelementptr inbounds %struct.msm_dsi_phy, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %base1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base1, align 4
  %postdiv_lock = getelementptr inbounds %struct.dsi_pll_14nm, ptr %1, i32 0, i32 2
  %shift2 = getelementptr inbounds %struct.dsi_pll_14nm_postdiv, ptr %hw, i32 0, i32 1
  %6 = ptrtoint ptr %shift2 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %shift2, align 4
  %width3 = getelementptr inbounds %struct.dsi_pll_14nm_postdiv, ptr %hw, i32 0, i32 2
  %8 = ptrtoint ptr %width3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %width3, align 1
  %id = getelementptr inbounds %struct.msm_dsi_phy, ptr %3, i32 0, i32 9
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.27, i32 noundef %11, i32 noundef %rate, i32 noundef %parent_rate) #6
  %12 = ptrtoint ptr %width3 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %width3, align 1
  %flags6 = getelementptr inbounds %struct.dsi_pll_14nm_postdiv, ptr %hw, i32 0, i32 3
  %14 = ptrtoint ptr %flags6 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %flags6, align 2
  %conv = zext i8 %15 to i32
  %call = tail call i32 @divider_get_val(i32 noundef %rate, i32 noundef %parent_rate, ptr noundef null, i8 noundef zeroext %13, i32 noundef %conv) #6
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %postdiv_lock) #6
  %add.ptr14 = getelementptr i8, ptr %5, i32 16
  %call15 = tail call i32 @msm_readl(ptr noundef %add.ptr14) #6
  %conv16 = zext i8 %9 to i32
  %notmask = shl nsw i32 -1, %conv16
  %sub = xor i32 %notmask, -1
  %conv17 = zext i8 %7 to i32
  %shl18 = shl i32 %sub, %conv17
  %neg = xor i32 %shl18, -1
  %and = and i32 %call15, %neg
  %shl20 = shl i32 %call, %conv17
  %or = or i32 %and, %shl20
  tail call void @msm_writel(i32 noundef %or, ptr noundef %add.ptr14) #6
  %16 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %phy, align 4
  %usecase = getelementptr inbounds %struct.msm_dsi_phy, ptr %17, i32 0, i32 14
  %18 = ptrtoint ptr %usecase to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %usecase, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp23 = icmp eq i32 %19, 1
  br i1 %cmp23, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %slave = getelementptr inbounds %struct.dsi_pll_14nm, ptr %1, i32 0, i32 4
  %20 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %slave, align 4
  %phy25 = getelementptr inbounds %struct.dsi_pll_14nm, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %phy25 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %phy25, align 4
  %base26 = getelementptr inbounds %struct.msm_dsi_phy, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %base26 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base26, align 4
  %add.ptr27 = getelementptr i8, ptr %25, i32 16
  tail call void @msm_writel(i32 noundef %or, ptr noundef %add.ptr27) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %postdiv_lock, i32 noundef %call11) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @divider_recalc_rate(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @divider_round_rate_parent(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @divider_get_val(i32 noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_dsi_dphy_timing_calc_v2(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 39)
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
attributes #9 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !41, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !69, !71, !73, !75}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !{ptr @dsi_phy_14nm_cfgs, !1, !"dsi_phy_14nm_cfgs", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_14nm.c", i32 1025, i32 30}
!2 = !{ptr @dsi_phy_14nm_660_cfgs, !3, !"dsi_phy_14nm_660_cfgs", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_14nm.c", i32 1046, i32 30}
!4 = !{ptr @dsi_phy_14nm_8953_cfgs, !5, !"dsi_phy_14nm_8953_cfgs", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_14nm.c", i32 1067, i32 30}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_14nm.c", i32 884, i32 2}
!8 = !{ptr @dsi_pll_14nm_init.__key, !9, !"__key", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_14nm.c", i32 888, i32 2}
!10 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_14nm.c", i32 894, i32 3}
!13 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @pll_14nm_list, !15, !"pll_14nm_list", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_14nm.c", i32 108, i32 29}
!16 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_14nm.c", i32 805, i32 37}
!18 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_14nm.c", i32 815, i32 2}
!20 = !{ptr @.str.6, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_14nm.c", i32 817, i32 25}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_14nm.c", i32 824, i32 25}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_14nm.c", i32 833, i32 25}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_14nm.c", i32 844, i32 25}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_14nm.c", i32 855, i32 25}
!30 = !{ptr @clk_ops_dsi_pll_14nm_vco, !31, !"clk_ops_dsi_pll_14nm_vco", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_14nm.c", i32 587, i32 29}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_14nm.c", i32 537, i32 2}
!34 = !{ptr @.str.12, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_14nm.c", i32 549, i32 3}
!36 = !{ptr @.str.13, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_14nm.c", i32 553, i32 2}
!38 = !{ptr @.str.14, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_14nm.c", i32 143, i32 2}
!40 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.17, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_14nm.c", i32 503, i32 2}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_14nm.c", i32 512, i32 2}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_14nm.c", i32 525, i32 2}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_14nm.c", i32 462, i32 2}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_14nm.c", i32 213, i32 2}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_14nm.c", i32 172, i32 2}
!54 = !{ptr @.str.23, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_14nm.c", i32 180, i32 2}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_14nm.c", i32 198, i32 2}
!58 = !{ptr @.str.25, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_14nm.c", i32 389, i32 2}
!60 = !{ptr @clk_ops_dsi_pll_14nm_postdiv, !61, !"clk_ops_dsi_pll_14nm_postdiv", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_14nm.c", i32 674, i32 29}
!62 = !{ptr @.str.26, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_14nm.c", i32 609, i32 2}
!64 = !{ptr @.str.27, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_14nm.c", i32 645, i32 2}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_14nm.c", i32 952, i32 3}
!68 = !{ptr @__func__.dsi_14nm_phy_enable, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.29, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_14nm.c", i32 1005, i32 3}
!71 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_14nm.c", i32 696, i32 2}
!73 = distinct !{null, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_14nm.c", i32 713, i32 3}
!75 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_14nm.c", i32 720, i32 2}
!77 = !{i32 1, !"wchar_size", i32 2}
!78 = !{i32 1, !"min_enum_size", i32 4}
!79 = !{i32 8, !"branch-target-enforcement", i32 0}
!80 = !{i32 8, !"sign-return-address", i32 0}
!81 = !{i32 8, !"sign-return-address-all", i32 0}
!82 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!83 = !{i32 7, !"uwtable", i32 1}
!84 = !{i32 7, !"frame-pointer", i32 2}
!85 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!86 = !{i64 2157414137}
!87 = !{i64 2157414348}
!88 = !{i64 2157415592}
!89 = !{i8 0, i8 2}
!90 = !{!"branch_weights", i32 2000, i32 1}
!91 = !{!"branch_weights", i32 1, i32 2000}
!92 = !{i64 1173608, i64 1173635, i64 1173657, i64 1173685}
!93 = !{i64 1174016, i64 1174043, i64 1174076, i64 1174097, i64 1174124, i64 1174150}
!94 = !{i64 1173321, i64 1173348}
!95 = !{i64 1173491, i64 1173518}
!96 = !{i64 1173831, i64 1173858, i64 1173892, i64 1173913}
!97 = !{i64 2148659152, i64 2148659432, i64 2148659766, i64 2148660100}
!98 = !{i64 2157381474}
!99 = !{i64 2157381686}
!100 = !{i64 2157379410}
!101 = !{i64 2157382998}
