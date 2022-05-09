; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm_8960.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm_8960.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.msm_dsi_phy_cfg = type { %struct.dsi_reg_config, %struct.msm_dsi_phy_ops, i32, i32, [2 x i32], i32, i32, i8, i8 }
%struct.dsi_reg_config = type { i32, [8 x %struct.dsi_reg_entry] }
%struct.dsi_reg_entry = type { [32 x i8], i32, i32 }
%struct.msm_dsi_phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.clk_bytediv = type { %struct.clk_hw, ptr }

@dsi_phy_28nm_8960_cfgs = dso_local constant { %struct.msm_dsi_phy_cfg, [72 x i8] } { %struct.msm_dsi_phy_cfg { %struct.dsi_reg_config { i32 1, [8 x %struct.dsi_reg_entry] [%struct.dsi_reg_entry { [32 x i8] c"vddio\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 100000, i32 100 }, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer, %struct.dsi_reg_entry zeroinitializer] }, %struct.msm_dsi_phy_ops { ptr @dsi_pll_28nm_8960_init, ptr @dsi_28nm_phy_enable, ptr @dsi_28nm_phy_disable, ptr @dsi_28nm_pll_save_state, ptr @dsi_28nm_pll_restore_state, ptr null }, i32 600000000, i32 1200000000, [2 x i32] [i32 74449664, i32 92275456], i32 2, i32 0, i8 1, i8 0 }, [72 x i8] zeroinitializer }, align 32
@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"*ERROR* failed to register PLL: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@clk_ops_dsi_pll_28nm_vco = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr @dsi_pll_28nm_vco_prepare, ptr @dsi_pll_28nm_vco_unprepare, ptr null, ptr null, ptr null, ptr null, ptr @dsi_pll_28nm_clk_is_enabled, ptr null, ptr null, ptr null, ptr @dsi_pll_28nm_clk_recalc_rate, ptr @dsi_pll_28nm_clk_round_rate, ptr null, ptr null, ptr null, ptr @dsi_pll_28nm_clk_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"pxo\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%d\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dsi%dvco_clk\00", [19 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dsi%dpllbyte\00", [19 x i8] zeroinitializer }, align 32
@clk_bytediv_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_bytediv_recalc_rate, ptr @clk_bytediv_round_rate, ptr null, ptr null, ptr null, ptr @clk_bytediv_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dsi%dpll\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"id=%d\0A\00", [25 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"*ERROR* DSI PLL lock failed\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DSI PLL lock success\0A\00", [42 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"DSI PLL is %slocked\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"*not* \00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"returning vco rate = %lu\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rate=%lu, parent's=%lu\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"*ERROR* %s: D-PHY timing calculation failed\0A\00", [51 x i8] zeroinitializer }, align 32
@__func__.dsi_28nm_phy_enable = private unnamed_addr constant [20 x i8] c"dsi_28nm_phy_enable\00", align 1
@___asan_gen_.18 = private unnamed_addr constant [23 x i8] c"dsi_phy_28nm_8960_cfgs\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 649, i32 30 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 475, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant [25 x i8] c"clk_ops_dsi_pll_28nm_vco\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 251, i32 29 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 388, i32 37 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 399, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 417, i32 25 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 431, i32 25 }
@___asan_gen_.42 = private unnamed_addr constant [16 x i8] c"clk_bytediv_ops\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 334, i32 29 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 445, i32 25 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 186, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 214, i32 3 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 218, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 85, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 171, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 100, i32 2 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 599, i32 2 }
@___asan_gen_.75 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.76 = private constant [51 x i8] c"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm_8960.c\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 602, i32 3 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @dsi_phy_28nm_8960_cfgs, ptr @.str, ptr @.str.1, ptr @clk_ops_dsi_pll_28nm_vco, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @clk_bytediv_ops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsi_phy_28nm_8960_cfgs to i32), i32 376, i32 448, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_ops_dsi_pll_28nm_vco to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_bytediv_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsi_pll_28nm_8960_init(ptr noundef %phy) #0 align 64 {
entry:
  %parent_name.i = alloca ptr, align 4
  %vco_init.i = alloca %struct.clk_init_data, align 4
  %.compoundliteral.i = alloca [1 x ptr], align 4
  %bytediv_init.i = alloca %struct.clk_init_data, align 4
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
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_name.i) #6
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %vco_init.i) #6
  %5 = getelementptr inbounds i8, ptr %vco_init.i, i32 20
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 33554431, ptr %5, align 4
  %ops.i = getelementptr inbounds %struct.clk_init_data, ptr %vco_init.i, i32 0, i32 1
  %7 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @clk_ops_dsi_pll_28nm_vco, ptr %ops.i, align 4
  %parent_names.i = getelementptr inbounds %struct.clk_init_data, ptr %vco_init.i, i32 0, i32 2
  %8 = ptrtoint ptr %.compoundliteral.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @.str.2, ptr %.compoundliteral.i, align 4
  %9 = ptrtoint ptr %parent_names.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %.compoundliteral.i, ptr %parent_names.i, align 4
  %parent_data.i = getelementptr inbounds %struct.clk_init_data, ptr %vco_init.i, i32 0, i32 3
  %10 = ptrtoint ptr %parent_data.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %parent_data.i, align 4
  %parent_hws.i = getelementptr inbounds %struct.clk_init_data, ptr %vco_init.i, i32 0, i32 4
  %11 = ptrtoint ptr %parent_hws.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %parent_hws.i, align 4
  %flags.i = getelementptr inbounds %struct.clk_init_data, ptr %vco_init.i, i32 0, i32 6
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 8, ptr %flags.i, align 4
  %13 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %phy, align 4
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %bytediv_init.i) #6
  %15 = call ptr @memset(ptr %bytediv_init.i, i32 0, i32 28)
  %id.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 9
  %16 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %id.i, align 4
  call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.3, i32 noundef %17) #6
  %call.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1.i, i32 noundef 16, i32 noundef 3520) #6
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end4.pll_28nm_register.exit.thread_crit_edge, label %if.end.i

if.end4.pll_28nm_register.exit.thread_crit_edge:  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %pll_28nm_register.exit.thread

if.end.i:                                         ; preds = %if.end4
  %call.i96.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1.i, i32 noundef 32, i32 noundef 3520) #6
  %tobool4.not.i = icmp eq ptr %call.i96.i, null
  br i1 %tobool4.not.i, label %if.end.i.pll_28nm_register.exit.thread_crit_edge, label %if.end6.i

if.end.i.pll_28nm_register.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pll_28nm_register.exit.thread

if.end6.i:                                        ; preds = %if.end.i
  %call.i97.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1.i, i32 noundef 32, i32 noundef 3520) #6
  %18 = ptrtoint ptr %parent_name.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i97.i, ptr %parent_name.i, align 4
  %tobool8.not.i = icmp eq ptr %call.i97.i, null
  br i1 %tobool8.not.i, label %if.end6.i.pll_28nm_register.exit.thread_crit_edge, label %if.end10.i

if.end6.i.pll_28nm_register.exit.thread_crit_edge: ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pll_28nm_register.exit.thread

if.end10.i:                                       ; preds = %if.end6.i
  %call.i98.i = call noalias ptr @devm_kmalloc(ptr noundef %dev1.i, i32 noundef 32, i32 noundef 3520) #6
  %tobool12.not.i = icmp eq ptr %call.i98.i, null
  br i1 %tobool12.not.i, label %if.end10.i.pll_28nm_register.exit.thread_crit_edge, label %if.end14.i

if.end10.i.pll_28nm_register.exit.thread_crit_edge: ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pll_28nm_register.exit.thread

if.end14.i:                                       ; preds = %if.end10.i
  %19 = ptrtoint ptr %phy5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %phy5, align 4
  %id16.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %20, i32 0, i32 9
  %21 = ptrtoint ptr %id16.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %id16.i, align 4
  %call17.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call.i96.i, i32 noundef 32, ptr noundef nonnull @.str.4, i32 noundef %22) #6
  %23 = ptrtoint ptr %vco_init.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i96.i, ptr %vco_init.i, align 4
  %init.i = getelementptr inbounds %struct.clk_hw, ptr %call.i, i32 0, i32 2
  %24 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %vco_init.i, ptr %init.i, align 4
  %call20.i = call i32 @devm_clk_hw_register(ptr noundef %dev1.i, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %if.end23.i, label %if.end14.i.pll_28nm_register.exit.thread_crit_edge

if.end14.i.pll_28nm_register.exit.thread_crit_edge: ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pll_28nm_register.exit.thread

if.end23.i:                                       ; preds = %if.end14.i
  %init25.i = getelementptr inbounds %struct.clk_hw, ptr %call.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %init25.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %bytediv_init.i, ptr %init25.i, align 4
  %26 = ptrtoint ptr %phy5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %phy5, align 4
  %pll_base.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %pll_base.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pll_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %29, i32 36
  %reg.i = getelementptr inbounds %struct.clk_bytediv, ptr %call.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %add.ptr.i, ptr %reg.i, align 4
  %31 = ptrtoint ptr %parent_name.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %parent_name.i, align 4
  %id28.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %27, i32 0, i32 9
  %33 = ptrtoint ptr %id28.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %id28.i, align 4
  %call29.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %32, i32 noundef 32, ptr noundef nonnull @.str.4, i32 noundef %34) #6
  %35 = ptrtoint ptr %phy5 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %phy5, align 4
  %id31.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %36, i32 0, i32 9
  %37 = ptrtoint ptr %id31.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %id31.i, align 4
  %add.i = add i32 %38, 1
  %call32.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call.i98.i, i32 noundef 32, ptr noundef nonnull @.str.5, i32 noundef %add.i) #6
  %39 = ptrtoint ptr %bytediv_init.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call.i98.i, ptr %bytediv_init.i, align 4
  %ops34.i = getelementptr inbounds %struct.clk_init_data, ptr %bytediv_init.i, i32 0, i32 1
  %40 = ptrtoint ptr %ops34.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @clk_bytediv_ops, ptr %ops34.i, align 4
  %flags35.i = getelementptr inbounds %struct.clk_init_data, ptr %bytediv_init.i, i32 0, i32 6
  %41 = ptrtoint ptr %flags35.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 4, ptr %flags35.i, align 4
  %parent_names36.i = getelementptr inbounds %struct.clk_init_data, ptr %bytediv_init.i, i32 0, i32 2
  %42 = ptrtoint ptr %parent_names36.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %parent_name.i, ptr %parent_names36.i, align 4
  %num_parents37.i = getelementptr inbounds %struct.clk_init_data, ptr %bytediv_init.i, i32 0, i32 5
  %43 = ptrtoint ptr %num_parents37.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %num_parents37.i, align 4
  %call39.i = call i32 @devm_clk_hw_register(ptr noundef %dev1.i, ptr noundef nonnull %call.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39.i)
  %tobool40.not.i = icmp eq i32 %call39.i, 0
  br i1 %tobool40.not.i, label %if.end42.i, label %if.end23.i.pll_28nm_register.exit.thread_crit_edge

if.end23.i.pll_28nm_register.exit.thread_crit_edge: ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pll_28nm_register.exit.thread

if.end42.i:                                       ; preds = %if.end23.i
  %44 = ptrtoint ptr %hws to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call.i.i, ptr %hws, align 4
  %45 = ptrtoint ptr %phy5 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %phy5, align 4
  %id45.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %46, i32 0, i32 9
  %47 = ptrtoint ptr %id45.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %id45.i, align 4
  %add46.i = add i32 %48, 1
  %call47.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %call.i98.i, i32 noundef 32, ptr noundef nonnull @.str.6, i32 noundef %add46.i) #6
  %49 = ptrtoint ptr %parent_name.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %parent_name.i, align 4
  %51 = ptrtoint ptr %phy5 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %phy5, align 4
  %pll_base49.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %52, i32 0, i32 2
  %53 = ptrtoint ptr %pll_base49.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %pll_base49.i, align 4
  %add.ptr50.i = getelementptr i8, ptr %54, i32 40
  %call51.i = call ptr @__devm_clk_hw_register_divider(ptr noundef %dev1.i, ptr noundef null, ptr noundef nonnull %call.i98.i, ptr noundef %50, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %add.ptr50.i, i8 noundef zeroext 0, i8 noundef zeroext 8, i8 noundef zeroext 0, ptr noundef null, ptr noundef null) #6
  %cmp.i.i = icmp ugt ptr %call51.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %pll_28nm_register.exit, label %pll_28nm_register.exit.thread26

pll_28nm_register.exit.thread26:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx56.i = getelementptr %struct.clk_hw_onecell_data, ptr %4, i32 2
  %55 = ptrtoint ptr %arrayidx56.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call51.i, ptr %arrayidx56.i, align 4
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %bytediv_init.i) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %vco_init.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %.compoundliteral.i)
  %vco_hw = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 17
  %56 = ptrtoint ptr %vco_hw to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call.i, ptr %vco_hw, align 4
  br label %cleanup

pll_28nm_register.exit.thread:                    ; preds = %if.end23.i.pll_28nm_register.exit.thread_crit_edge, %if.end14.i.pll_28nm_register.exit.thread_crit_edge, %if.end10.i.pll_28nm_register.exit.thread_crit_edge, %if.end6.i.pll_28nm_register.exit.thread_crit_edge, %if.end.i.pll_28nm_register.exit.thread_crit_edge, %if.end4.pll_28nm_register.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ %call39.i, %if.end23.i.pll_28nm_register.exit.thread_crit_edge ], [ %call20.i, %if.end14.i.pll_28nm_register.exit.thread_crit_edge ], [ -12, %if.end10.i.pll_28nm_register.exit.thread_crit_edge ], [ -12, %if.end6.i.pll_28nm_register.exit.thread_crit_edge ], [ -12, %if.end.i.pll_28nm_register.exit.thread_crit_edge ], [ -12, %if.end4.pll_28nm_register.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %bytediv_init.i) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %vco_init.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %.compoundliteral.i)
  br label %if.then8

pll_28nm_register.exit:                           ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #8
  %57 = ptrtoint ptr %call51.i to i32
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %bytediv_init.i) #6
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %vco_init.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %.compoundliteral.i)
  br label %if.then8

if.then8:                                         ; preds = %pll_28nm_register.exit, %pll_28nm_register.exit.thread
  %retval.0.i25 = phi i32 [ %retval.0.i.ph, %pll_28nm_register.exit.thread ], [ %57, %pll_28nm_register.exit ]
  call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %retval.0.i25) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %pll_28nm_register.exit.thread26, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i25, %if.then8 ], [ 0, %pll_28nm_register.exit.thread26 ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
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
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.15) #6
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
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef nonnull @.str.16, ptr noundef nonnull @__func__.dsi_28nm_phy_enable) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %reg_base.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 3
  %4 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_base.i, align 4
  tail call void @msm_writel(i32 noundef 3, ptr noundef %5) #6
  %add.ptr1.i = getelementptr i8, ptr %5, i32 4
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr1.i) #6
  %add.ptr2.i = getelementptr i8, ptr %5, i32 8
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr2.i) #6
  %add.ptr3.i = getelementptr i8, ptr %5, i32 12
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr3.i) #6
  %add.ptr4.i = getelementptr i8, ptr %5, i32 16
  tail call void @msm_writel(i32 noundef 256, ptr noundef %add.ptr4.i) #6
  %add.ptr = getelementptr i8, ptr %1, i32 432
  tail call void @msm_writel(i32 noundef 4, ptr noundef %add.ptr) #6
  %add.ptr3 = getelementptr i8, ptr %1, i32 384
  tail call void @msm_writel(i32 noundef 255, ptr noundef %add.ptr3) #6
  %add.ptr4 = getelementptr i8, ptr %1, i32 388
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr4) #6
  %add.ptr5 = getelementptr i8, ptr %1, i32 392
  tail call void @msm_writel(i32 noundef 6, ptr noundef %add.ptr5) #6
  %add.ptr6 = getelementptr i8, ptr %1, i32 368
  tail call void @msm_writel(i32 noundef 95, ptr noundef %add.ptr6) #6
  %add.ptr7 = getelementptr i8, ptr %1, i32 372
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr7) #6
  %add.ptr8 = getelementptr i8, ptr %1, i32 376
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr8) #6
  %add.ptr9 = getelementptr i8, ptr %1, i32 380
  tail call void @msm_writel(i32 noundef 16, ptr noundef %add.ptr9) #6
  %6 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %reg_base.i, align 4
  tail call void @msm_writel(i32 noundef 3, ptr noundef %7) #6
  %add.ptr1.i35 = getelementptr i8, ptr %7, i32 4
  tail call void @msm_writel(i32 noundef 10, ptr noundef %add.ptr1.i35) #6
  %add.ptr2.i36 = getelementptr i8, ptr %7, i32 8
  tail call void @msm_writel(i32 noundef 4, ptr noundef %add.ptr2.i36) #6
  %add.ptr3.i37 = getelementptr i8, ptr %7, i32 12
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr3.i37) #6
  %add.ptr4.i38 = getelementptr i8, ptr %7, i32 16
  tail call void @msm_writel(i32 noundef 32, ptr noundef %add.ptr4.i38) #6
  %8 = ptrtoint ptr %reg_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 24
  tail call void @msm_writel(i32 noundef 3, ptr noundef %add.ptr.i) #6
  %add.ptr1.i40 = getelementptr i8, ptr %9, i32 52
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr1.i40) #6
  %add.ptr2.i41 = getelementptr i8, ptr %9, i32 60
  tail call void @msm_writel(i32 noundef 90, ptr noundef %add.ptr2.i41) #6
  %add.ptr3.i42 = getelementptr i8, ptr %9, i32 68
  tail call void @msm_writel(i32 noundef 16, ptr noundef %add.ptr3.i42) #6
  %add.ptr4.i43 = getelementptr i8, ptr %9, i32 72
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr4.i43) #6
  %add.ptr5.i = getelementptr i8, ptr %9, i32 56
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr5.i) #6
  %add.ptr6.i = getelementptr i8, ptr %9, i32 40
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr6.i) #6
  tail call void @usleep_range_state(i32 noundef 5000, i32 noundef 6000, i32 noundef 2) #6
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr6.i) #6
  %add.ptr8.i = getelementptr i8, ptr %9, i32 80
  br label %do.body.i

do.body.i:                                        ; preds = %if.end.i.do.body.i_crit_edge, %if.end
  %i.0.i = phi i32 [ 5000, %if.end ], [ %dec.i, %if.end.i.do.body.i_crit_edge ]
  %call.i = tail call i32 @msm_readl(ptr noundef %add.ptr8.i) #6
  %and.i = and i32 %call.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.body.i.dsi_28nm_phy_calibration.exit_crit_edge, label %if.end.i

do.body.i.dsi_28nm_phy_calibration.exit_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dsi_28nm_phy_calibration.exit

if.end.i:                                         ; preds = %do.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748) #6
  %dec.i = add nsw i32 %i.0.i, -1
  %cmp.not.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.not.i, label %if.end.i.dsi_28nm_phy_calibration.exit_crit_edge, label %if.end.i.do.body.i_crit_edge

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body.i

if.end.i.dsi_28nm_phy_calibration.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dsi_28nm_phy_calibration.exit

dsi_28nm_phy_calibration.exit:                    ; preds = %if.end.i.dsi_28nm_phy_calibration.exit_crit_edge, %do.body.i.dsi_28nm_phy_calibration.exit_crit_edge
  %11 = ptrtoint ptr %base2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base2, align 4
  tail call void @msm_writel(i32 noundef 128, ptr noundef %12) #6
  %add.ptr3.i44 = getelementptr i8, ptr %12, i32 4
  tail call void @msm_writel(i32 noundef 69, ptr noundef %add.ptr3.i44) #6
  %add.ptr5.i45 = getelementptr i8, ptr %12, i32 8
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr5.i45) #6
  %add.ptr7.i = getelementptr i8, ptr %12, i32 12
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr7.i) #6
  %add.ptr9.i = getelementptr i8, ptr %12, i32 20
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr9.i) #6
  %add.ptr11.i = getelementptr i8, ptr %12, i32 24
  tail call void @msm_writel(i32 noundef 102, ptr noundef %add.ptr11.i) #6
  %add.ptr.1.i = getelementptr i8, ptr %12, i32 64
  tail call void @msm_writel(i32 noundef 128, ptr noundef %add.ptr.1.i) #6
  %add.ptr3.1.i = getelementptr i8, ptr %12, i32 68
  tail call void @msm_writel(i32 noundef 69, ptr noundef %add.ptr3.1.i) #6
  %add.ptr5.1.i = getelementptr i8, ptr %12, i32 72
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr5.1.i) #6
  %add.ptr7.1.i = getelementptr i8, ptr %12, i32 76
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr7.1.i) #6
  %add.ptr9.1.i = getelementptr i8, ptr %12, i32 84
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr9.1.i) #6
  %add.ptr11.1.i = getelementptr i8, ptr %12, i32 88
  tail call void @msm_writel(i32 noundef 102, ptr noundef %add.ptr11.1.i) #6
  %add.ptr.2.i = getelementptr i8, ptr %12, i32 128
  tail call void @msm_writel(i32 noundef 128, ptr noundef %add.ptr.2.i) #6
  %add.ptr3.2.i = getelementptr i8, ptr %12, i32 132
  tail call void @msm_writel(i32 noundef 69, ptr noundef %add.ptr3.2.i) #6
  %add.ptr5.2.i = getelementptr i8, ptr %12, i32 136
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr5.2.i) #6
  %add.ptr7.2.i = getelementptr i8, ptr %12, i32 140
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr7.2.i) #6
  %add.ptr9.2.i = getelementptr i8, ptr %12, i32 148
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr9.2.i) #6
  %add.ptr11.2.i = getelementptr i8, ptr %12, i32 152
  tail call void @msm_writel(i32 noundef 102, ptr noundef %add.ptr11.2.i) #6
  %add.ptr.3.i = getelementptr i8, ptr %12, i32 192
  tail call void @msm_writel(i32 noundef 128, ptr noundef %add.ptr.3.i) #6
  %add.ptr3.3.i = getelementptr i8, ptr %12, i32 196
  tail call void @msm_writel(i32 noundef 69, ptr noundef %add.ptr3.3.i) #6
  %add.ptr5.3.i = getelementptr i8, ptr %12, i32 200
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr5.3.i) #6
  %add.ptr7.3.i = getelementptr i8, ptr %12, i32 204
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr7.3.i) #6
  %add.ptr9.3.i = getelementptr i8, ptr %12, i32 212
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr9.3.i) #6
  %add.ptr11.3.i = getelementptr i8, ptr %12, i32 216
  tail call void @msm_writel(i32 noundef 102, ptr noundef %add.ptr11.3.i) #6
  %add.ptr12.i = getelementptr i8, ptr %12, i32 256
  tail call void @msm_writel(i32 noundef 64, ptr noundef %add.ptr12.i) #6
  %add.ptr13.i = getelementptr i8, ptr %12, i32 260
  tail call void @msm_writel(i32 noundef 103, ptr noundef %add.ptr13.i) #6
  %add.ptr14.i = getelementptr i8, ptr %12, i32 264
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr14.i) #6
  %add.ptr15.i = getelementptr i8, ptr %12, i32 268
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr15.i) #6
  %add.ptr16.i = getelementptr i8, ptr %12, i32 276
  tail call void @msm_writel(i32 noundef 1, ptr noundef %add.ptr16.i) #6
  %add.ptr17.i = getelementptr i8, ptr %12, i32 280
  tail call void @msm_writel(i32 noundef 136, ptr noundef %add.ptr17.i) #6
  %add.ptr10 = getelementptr i8, ptr %1, i32 412
  tail call void @msm_writel(i32 noundef 15, ptr noundef %add.ptr10) #6
  %add.ptr11 = getelementptr i8, ptr %1, i32 400
  tail call void @msm_writel(i32 noundef 3, ptr noundef %add.ptr11) #6
  %add.ptr12 = getelementptr i8, ptr %1, i32 396
  tail call void @msm_writel(i32 noundef 3, ptr noundef %add.ptr12) #6
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr10) #6
  %13 = ptrtoint ptr %base2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base2, align 4
  %15 = ptrtoint ptr %timing1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %timing1, align 4
  %and.i.i = and i32 %16, 255
  %add.ptr.i47 = getelementptr i8, ptr %14, i32 320
  tail call void @msm_writel(i32 noundef %and.i.i, ptr noundef %add.ptr.i47) #6
  %clk_trail.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 12, i32 1
  %17 = ptrtoint ptr %clk_trail.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %clk_trail.i, align 4
  %and.i45.i = and i32 %18, 255
  %add.ptr3.i48 = getelementptr i8, ptr %14, i32 324
  tail call void @msm_writel(i32 noundef %and.i45.i, ptr noundef %add.ptr3.i48) #6
  %clk_prepare.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 12, i32 2
  %19 = ptrtoint ptr %clk_prepare.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %clk_prepare.i, align 4
  %and.i46.i = and i32 %20, 255
  %add.ptr5.i49 = getelementptr i8, ptr %14, i32 328
  tail call void @msm_writel(i32 noundef %and.i46.i, ptr noundef %add.ptr5.i49) #6
  %add.ptr6.i50 = getelementptr i8, ptr %14, i32 332
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr6.i50) #6
  %hs_exit.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 12, i32 3
  %21 = ptrtoint ptr %hs_exit.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %hs_exit.i, align 4
  %and.i47.i = and i32 %22, 255
  %add.ptr8.i51 = getelementptr i8, ptr %14, i32 336
  tail call void @msm_writel(i32 noundef %and.i47.i, ptr noundef %add.ptr8.i51) #6
  %hs_zero.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 12, i32 4
  %23 = ptrtoint ptr %hs_zero.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %hs_zero.i, align 4
  %and.i48.i = and i32 %24, 255
  %add.ptr10.i = getelementptr i8, ptr %14, i32 340
  tail call void @msm_writel(i32 noundef %and.i48.i, ptr noundef %add.ptr10.i) #6
  %hs_prepare.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 12, i32 5
  %25 = ptrtoint ptr %hs_prepare.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %hs_prepare.i, align 4
  %and.i49.i = and i32 %26, 255
  %add.ptr12.i52 = getelementptr i8, ptr %14, i32 344
  tail call void @msm_writel(i32 noundef %and.i49.i, ptr noundef %add.ptr12.i52) #6
  %hs_trail.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 12, i32 6
  %27 = ptrtoint ptr %hs_trail.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %hs_trail.i, align 4
  %and.i50.i = and i32 %28, 255
  %add.ptr14.i53 = getelementptr i8, ptr %14, i32 348
  tail call void @msm_writel(i32 noundef %and.i50.i, ptr noundef %add.ptr14.i53) #6
  %hs_rqst.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 12, i32 7
  %29 = ptrtoint ptr %hs_rqst.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %hs_rqst.i, align 4
  %and.i51.i = and i32 %30, 255
  %add.ptr16.i54 = getelementptr i8, ptr %14, i32 352
  tail call void @msm_writel(i32 noundef %and.i51.i, ptr noundef %add.ptr16.i54) #6
  %ta_go.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 12, i32 8
  %31 = ptrtoint ptr %ta_go.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ta_go.i, align 4
  %and.i52.i = and i32 %32, 7
  %ta_sure.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 12, i32 9
  %33 = ptrtoint ptr %ta_sure.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ta_sure.i, align 4
  %shl.i.i = shl i32 %34, 4
  %and.i53.i = and i32 %shl.i.i, 112
  %or.i = or i32 %and.i53.i, %and.i52.i
  %add.ptr19.i = getelementptr i8, ptr %14, i32 356
  tail call void @msm_writel(i32 noundef %or.i, ptr noundef %add.ptr19.i) #6
  %ta_get.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %phy, i32 0, i32 12, i32 10
  %35 = ptrtoint ptr %ta_get.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ta_get.i, align 4
  %and.i54.i = and i32 %36, 7
  %add.ptr21.i = getelementptr i8, ptr %14, i32 360
  tail call void @msm_writel(i32 noundef %and.i54.i, ptr noundef %add.ptr21.i) #6
  %add.ptr23.i = getelementptr i8, ptr %14, i32 364
  tail call void @msm_writel(i32 noundef 0, ptr noundef %add.ptr23.i) #6
  br label %cleanup

cleanup:                                          ; preds = %dsi_28nm_phy_calibration.exit, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ 0, %dsi_28nm_phy_calibration.exit ]
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !49
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
  %cached_state1 = getelementptr inbounds %struct.dsi_pll_28nm, ptr %1, i32 0, i32 2
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
  %add.ptr4 = getelementptr i8, ptr %5, i32 36
  %call5 = tail call i32 @msm_readl(ptr noundef %add.ptr4) #6
  %conv6 = trunc i32 %call5 to i8
  %postdiv2 = getelementptr inbounds %struct.dsi_pll_28nm, ptr %1, i32 0, i32 2, i32 2
  %7 = ptrtoint ptr %postdiv2 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv6, ptr %postdiv2, align 1
  %add.ptr7 = getelementptr i8, ptr %5, i32 32
  %call8 = tail call i32 @msm_readl(ptr noundef %add.ptr7) #6
  %conv9 = trunc i32 %call8 to i8
  %postdiv1 = getelementptr inbounds %struct.dsi_pll_28nm, ptr %1, i32 0, i32 2, i32 3
  %8 = ptrtoint ptr %postdiv1 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv9, ptr %postdiv1, align 2
  %9 = ptrtoint ptr %vco_hw to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vco_hw, align 4
  %call11 = tail call i32 @clk_hw_get_rate(ptr noundef %10) #6
  %11 = ptrtoint ptr %cached_state1 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %call11, ptr %cached_state1, align 4
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
  %postdiv3 = getelementptr inbounds %struct.dsi_pll_28nm, ptr %1, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %postdiv3 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %postdiv3, align 4
  %conv = zext i8 %9 to i32
  %add.ptr5 = getelementptr i8, ptr %5, i32 40
  tail call void @msm_writel(i32 noundef %conv, ptr noundef %add.ptr5) #6
  %postdiv2 = getelementptr inbounds %struct.dsi_pll_28nm, ptr %1, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %postdiv2 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %postdiv2, align 1
  %conv6 = zext i8 %11 to i32
  %add.ptr7 = getelementptr i8, ptr %5, i32 36
  tail call void @msm_writel(i32 noundef %conv6, ptr noundef %add.ptr7) #6
  %postdiv1 = getelementptr inbounds %struct.dsi_pll_28nm, ptr %1, i32 0, i32 2, i32 3
  %12 = ptrtoint ptr %postdiv1 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %postdiv1, align 2
  %conv8 = zext i8 %13 to i32
  %add.ptr9 = getelementptr i8, ptr %5, i32 32
  tail call void @msm_writel(i32 noundef %conv8, ptr noundef %add.ptr9) #6
  ret i32 0
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dsi_pll_28nm_vco_prepare(ptr nocapture noundef readonly %hw) #0 align 64 {
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
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7, i32 noundef %7) #6
  %8 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %phy, align 4
  %pll_on = getelementptr inbounds %struct.msm_dsi_phy, ptr %9, i32 0, i32 18
  %10 = ptrtoint ptr %pll_on to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %pll_on, align 4, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge, !prof !51

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr7 = getelementptr i8, ptr %5, i32 36
  %call = tail call i32 @msm_readl(ptr noundef %add.ptr7) #6
  %add = add i32 %call, 1
  %div45 = lshr i32 %add, 3
  %add.ptr8 = getelementptr i8, ptr %5, i32 32
  %call9 = tail call i32 @msm_readl(ptr noundef %add.ptr8) #6
  %and = and i32 %call9, -16
  %sub = add nsw i32 %div45, -1
  %or = or i32 %sub, %and
  tail call void @msm_writel(i32 noundef %or, ptr noundef %add.ptr8) #6
  tail call void @msm_writel(i32 noundef 1, ptr noundef %5) #6
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %if.end
  %dec18.in.i = phi i32 [ 1000, %if.end ], [ %dec18.i, %if.end.i.while.body.i_crit_edge ]
  %12 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phy, align 4
  %pll_base.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %13, i32 0, i32 2
  %14 = ptrtoint ptr %pll_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pll_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 128
  %call.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #6
  %and.i = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.end.i, label %if.end23

if.end.i:                                         ; preds = %while.body.i
  %dec18.i = add nsw i32 %dec18.in.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %.val.i = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %.val.i(i32 noundef 21474800) #6
  %tobool.not.i = icmp eq i32 %dec18.i, 0
  br i1 %tobool.not.i, label %if.then22, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

if.then22:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.12) #6
  tail call void (ptr, ptr, ptr, ...) @drm_dev_printk(ptr noundef %dev1, ptr noundef nonnull @.str, ptr noundef nonnull @.str.8) #6
  br label %cleanup

if.end23:                                         ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11) #6
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.9) #6
  %16 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %phy, align 4
  %pll_on25 = getelementptr inbounds %struct.msm_dsi_phy, ptr %17, i32 0, i32 18
  %18 = ptrtoint ptr %pll_on25 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %pll_on25, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.then22, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then22 ], [ 0, %if.end23 ], [ 0, %entry.cleanup_crit_edge ]
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
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.7, i32 noundef %3) #6
  %4 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy, align 4
  %pll_on = getelementptr inbounds %struct.msm_dsi_phy, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %pll_on to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %pll_on, align 4, !range !50
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !52

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %pll_base = getelementptr inbounds %struct.msm_dsi_phy, ptr %5, i32 0, i32 2
  %8 = ptrtoint ptr %pll_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pll_base, align 4
  tail call void @msm_writel(i32 noundef 0, ptr noundef %9) #6
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
  br label %while.body.i

while.body.i:                                     ; preds = %if.end.i.while.body.i_crit_edge, %entry
  %dec18.in.i = phi i32 [ 8000, %entry ], [ %dec18.i, %if.end.i.while.body.i_crit_edge ]
  %0 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy.i, align 4
  %pll_base.i = getelementptr inbounds %struct.msm_dsi_phy, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pll_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pll_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 128
  %call.i = tail call i32 @msm_readl(ptr noundef %add.ptr.i) #6
  %and.i = and i32 %call.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.end.i, label %while.body.i.pll_28nm_poll_for_ready.exit_crit_edge

while.body.i.pll_28nm_poll_for_ready.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pll_28nm_poll_for_ready.exit

if.end.i:                                         ; preds = %while.body.i
  %dec18.i = add nsw i32 %dec18.in.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %.val.i = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %.val.i(i32 noundef 214748) #6
  %tobool.not.i = icmp eq i32 %dec18.i, 0
  br i1 %tobool.not.i, label %if.end.i.pll_28nm_poll_for_ready.exit_crit_edge, label %if.end.i.while.body.i_crit_edge

if.end.i.while.body.i_crit_edge:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

if.end.i.pll_28nm_poll_for_ready.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %pll_28nm_poll_for_ready.exit

pll_28nm_poll_for_ready.exit:                     ; preds = %if.end.i.pll_28nm_poll_for_ready.exit_crit_edge, %while.body.i.pll_28nm_poll_for_ready.exit_crit_edge
  %cond.ph.i = phi ptr [ @.str.12, %if.end.i.pll_28nm_poll_for_ready.exit_crit_edge ], [ @.str.11, %while.body.i.pll_28nm_poll_for_ready.exit_crit_edge ]
  %phi.bo.i = xor i1 %tobool1.not.i, true
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.10, ptr noundef nonnull %cond.ph.i) #6
  %conv = zext i1 %phi.bo.i to i32
  ret i32 %conv
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %add.ptr2 = getelementptr i8, ptr %3, i32 4
  %call3 = tail call i32 @msm_readl(ptr noundef %add.ptr2) #6
  %and4 = and i32 %call3, 255
  %add.ptr5 = getelementptr i8, ptr %3, i32 8
  %call6 = tail call i32 @msm_readl(ptr noundef %add.ptr5) #6
  %and7 = shl i32 %call6, 8
  %shl = and i32 %and7, 1792
  %or = add nuw nsw i32 %and4, 1
  %add = add nuw nsw i32 %or, %shl
  %add.ptr8 = getelementptr i8, ptr %3, i32 12
  %call9 = tail call i32 @msm_readl(ptr noundef %add.ptr8) #6
  %and10 = and i32 %call9, 63
  %add11 = add nuw nsw i32 %and10, 1
  %div = udiv i32 %parent_rate, %add11
  %mul = shl i32 %div, 1
  %mul12 = mul i32 %mul, %add
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %vco_rate.0 = phi i32 [ %mul12, %if.then ], [ 0, %entry.if.end_crit_edge ]
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.13, i32 noundef %vco_rate.0) #6
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
  %pll_base = getelementptr inbounds %struct.msm_dsi_phy, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pll_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pll_base, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.14, i32 noundef %rate, i32 noundef %parent_rate) #6
  %div = udiv i32 %rate, 10
  %mul = mul i32 %div, 27
  %div2 = udiv i32 %mul, 5400000
  %sub = add nsw i32 %div2, -1
  %and = and i32 %sub, 255
  %add.ptr3 = getelementptr i8, ptr %3, i32 4
  tail call void @msm_writel(i32 noundef %and, ptr noundef %add.ptr3) #6
  %add.ptr4 = getelementptr i8, ptr %3, i32 8
  %call = tail call i32 @msm_readl(ptr noundef %add.ptr4) #6
  %shr = lshr i32 %sub, 8
  %and5 = and i32 %shr, 7
  %or = or i32 %call, %and5
  tail call void @msm_writel(i32 noundef %or, ptr noundef %add.ptr4) #6
  %add.ptr7 = getelementptr i8, ptr %3, i32 12
  %call8 = tail call i32 @msm_readl(ptr noundef %add.ptr7) #6
  %or9 = or i32 %call8, 26
  tail call void @msm_writel(i32 noundef %or9, ptr noundef %add.ptr7) #6
  %add.ptr11 = getelementptr i8, ptr %3, i32 24
  tail call void @msm_writel(i32 noundef 15, ptr noundef %add.ptr11) #6
  %add.ptr12 = getelementptr i8, ptr %3, i32 32
  %call13 = tail call i32 @msm_readl(ptr noundef %add.ptr12) #6
  %or14 = or i32 %call13, 112
  tail call void @msm_writel(i32 noundef %or14, ptr noundef %add.ptr12) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_readl(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @msm_writel(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_bytediv_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %reg = getelementptr inbounds %struct.clk_bytediv, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %call = tail call i32 @msm_readl(ptr noundef %1) #6
  %and = and i32 %call, 255
  %add = add nuw nsw i32 %and, 1
  %div1 = udiv i32 %parent_rate, %add
  ret i32 %div1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_bytediv_round_rate(ptr noundef %hw, i32 noundef %rate, ptr nocapture noundef writeonly %prate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mul.i = shl i32 %rate, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 125000000, i32 %mul.i)
  %cmp.i = icmp ult i32 %mul.i, 125000000
  br i1 %cmp.i, label %entry.get_vco_mul_factor.exit_crit_edge, label %if.else.i

entry.get_vco_mul_factor.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_vco_mul_factor.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 250000000, i32 %mul.i)
  %cmp1.i = icmp ult i32 %mul.i, 250000000
  br i1 %cmp1.i, label %if.else.i.get_vco_mul_factor.exit_crit_edge, label %if.else3.i

if.else.i.get_vco_mul_factor.exit_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_vco_mul_factor.exit

if.else3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 600000000, i32 %mul.i)
  %cmp4.i = icmp ult i32 %mul.i, 600000000
  %..i = select i1 %cmp4.i, i32 16, i32 8
  br label %get_vco_mul_factor.exit

get_vco_mul_factor.exit:                          ; preds = %if.else3.i, %if.else.i.get_vco_mul_factor.exit_crit_edge, %entry.get_vco_mul_factor.exit_crit_edge
  %retval.0.i = phi i32 [ 64, %entry.get_vco_mul_factor.exit_crit_edge ], [ 32, %if.else.i.get_vco_mul_factor.exit_crit_edge ], [ %..i, %if.else3.i ]
  %mul = mul i32 %retval.0.i, %rate
  %call1 = tail call ptr @clk_hw_get_parent(ptr noundef %hw) #6
  %call2 = tail call i32 @clk_hw_round_rate(ptr noundef %call1, i32 noundef %mul) #6
  %0 = ptrtoint ptr %prate to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call2, ptr %prate, align 4
  %div = udiv i32 %call2, %retval.0.i
  ret i32 %div
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_bytediv_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %mul.i = shl i32 %rate, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 125000000, i32 %mul.i)
  %cmp.i = icmp ult i32 %mul.i, 125000000
  br i1 %cmp.i, label %entry.get_vco_mul_factor.exit_crit_edge, label %if.else.i

entry.get_vco_mul_factor.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_vco_mul_factor.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 250000000, i32 %mul.i)
  %cmp1.i = icmp ult i32 %mul.i, 250000000
  br i1 %cmp1.i, label %if.else.i.get_vco_mul_factor.exit_crit_edge, label %if.else3.i

if.else.i.get_vco_mul_factor.exit_crit_edge:      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %get_vco_mul_factor.exit

if.else3.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 600000000, i32 %mul.i)
  %cmp4.i = icmp ult i32 %mul.i, 600000000
  %phi.bo = select i1 %cmp4.i, i32 15, i32 7
  br label %get_vco_mul_factor.exit

get_vco_mul_factor.exit:                          ; preds = %if.else3.i, %if.else.i.get_vco_mul_factor.exit_crit_edge, %entry.get_vco_mul_factor.exit_crit_edge
  %retval.0.i = phi i32 [ 63, %entry.get_vco_mul_factor.exit_crit_edge ], [ 31, %if.else.i.get_vco_mul_factor.exit_crit_edge ], [ %phi.bo, %if.else3.i ]
  %reg = getelementptr inbounds %struct.clk_bytediv, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg, align 4
  %call1 = tail call i32 @msm_readl(ptr noundef %1) #6
  %or = or i32 %call1, %retval.0.i
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg, align 4
  tail call void @msm_writel(i32 noundef %or, ptr noundef %3) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @msm_dsi_dphy_timing_calc(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
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

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !26, !27, !29, !31, !33, !35, !37, !38}
!llvm.module.flags = !{!40, !41, !42, !43, !44, !45, !46, !47}
!llvm.ident = !{!48}

!0 = !{ptr @dsi_phy_28nm_8960_cfgs, !1, !"dsi_phy_28nm_8960_cfgs", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm_8960.c", i32 649, i32 30}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm_8960.c", i32 475, i32 3}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm_8960.c", i32 388, i32 37}
!7 = !{ptr @.str.3, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm_8960.c", i32 399, i32 2}
!9 = !{ptr @.str.4, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm_8960.c", i32 417, i32 25}
!11 = !{ptr @.str.5, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm_8960.c", i32 431, i32 25}
!13 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm_8960.c", i32 445, i32 25}
!15 = !{ptr @clk_ops_dsi_pll_28nm_vco, !16, !"clk_ops_dsi_pll_28nm_vco", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm_8960.c", i32 251, i32 29}
!17 = !{ptr @.str.7, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm_8960.c", i32 186, i32 2}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm_8960.c", i32 214, i32 3}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm_8960.c", i32 218, i32 2}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm_8960.c", i32 85, i32 2}
!25 = !{ptr @.str.11, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.12, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.13, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm_8960.c", i32 171, i32 2}
!29 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm_8960.c", i32 100, i32 2}
!31 = !{ptr @clk_bytediv_ops, !32, !"clk_bytediv_ops", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm_8960.c", i32 334, i32 29}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm_8960.c", i32 599, i32 2}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm_8960.c", i32 602, i32 3}
!37 = !{ptr @__func__.dsi_28nm_phy_enable, !36, !"<string literal>", i1 false, i1 false}
!38 = distinct !{null, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/msm/dsi/phy/dsi_phy_28nm_8960.c", i32 369, i32 3}
!40 = !{i32 1, !"wchar_size", i32 2}
!41 = !{i32 1, !"min_enum_size", i32 4}
!42 = !{i32 8, !"branch-target-enforcement", i32 0}
!43 = !{i32 8, !"sign-return-address", i32 0}
!44 = !{i32 8, !"sign-return-address-all", i32 0}
!45 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!46 = !{i32 7, !"uwtable", i32 1}
!47 = !{i32 7, !"frame-pointer", i32 2}
!48 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!49 = !{i64 2157368374}
!50 = !{i8 0, i8 2}
!51 = !{!"branch_weights", i32 2000, i32 1}
!52 = !{!"branch_weights", i32 1, i32 2000}
