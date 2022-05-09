; ModuleID = '/llk/IR_all_yes/drivers/clk/mediatek/clk-mt8192.c_pt.bc'
source_filename = "../drivers/clk/mediatek/clk-mt8192.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.mtk_fixed_factor = type { i32, ptr, ptr, i32, i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mtk_pll_data = type { i32, ptr, i32, i32, i32, i32, i32, i32, i8, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i8 }
%struct.mtk_gate = type { i32, ptr, ptr, ptr, i32, ptr, i32 }
%struct.mtk_gate_regs = type { i32, i32, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mtk_fixed_clk = type { i32, ptr, ptr, i32 }
%struct.mtk_mux = type { i32, ptr, ptr, i32, i32, i32, i32, i32, i8, i8, i8, i8, ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mtk_composite = type { i32, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8 }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__of_table_mt8192_topckgen = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8192-topckgen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8192_topckgen_of_clk_init_driver }, section "__clk_of_table", align 4
@__initcall__kmod_clk_mt8192__183_1326_clk_mt8192_init3 = internal global ptr @clk_mt8192_init, section ".initcall3.init", align 4
@top_clk_data = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@top_early_divs = internal constant { [1 x %struct.mtk_fixed_factor], [44 x i8] } { [1 x %struct.mtk_fixed_factor] [%struct.mtk_fixed_factor { i32 134, ptr @.str, ptr @.str.1, i32 1, i32 2 }], [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"csw_f26m_d2\00", [20 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"clk26m\00", [25 x i8] zeroinitializer }, align 32
@clk_mt8192_drv = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @clk_mt8192_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.2, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_match_clk_mt8192, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clk-mt8192\00", [21 x i8] zeroinitializer }, align 32
@of_match_clk_mt8192 = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8192-apmixedsys\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clk_mt8192_apmixed_probe }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8192-topckgen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clk_mt8192_top_probe }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8192-infracfg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clk_mt8192_infra_probe }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8192-pericfg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clk_mt8192_peri_probe }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@clk_mt8192_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1308, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"could not register clock provider: %s: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clk_mt8192_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/clk/mediatek/clk-mt8192.c\00", [62 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@clk_mt8192_probe._entry_ptr = internal global ptr @clk_mt8192_probe._entry, section ".printk_index", align 4
@plls = internal constant { [10 x %struct.mtk_pll_data], [224 x i8] } { [10 x %struct.mtk_pll_data] [%struct.mtk_pll_data { i32 0, ptr @.str.8, i32 832, i32 844, i32 -16777216, i32 836, i32 0, i32 0, i8 0, i32 24, i32 1, ptr null, i32 8388608, i32 1500000000, i32 -494967296, i32 22, i32 8, i32 836, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 1, ptr @.str.9, i32 776, i32 788, i32 -16777216, i32 780, i32 0, i32 0, i8 0, i32 24, i32 1, ptr null, i32 8388608, i32 1500000000, i32 -494967296, i32 22, i32 8, i32 780, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 2, ptr @.str.10, i32 964, i32 972, i32 0, i32 964, i32 0, i32 0, i8 0, i32 24, i32 0, ptr null, i32 0, i32 1500000000, i32 -494967296, i32 22, i32 8, i32 964, i32 0, i32 964, ptr null, ptr null, i32 972, i8 2 }, %struct.mtk_pll_data { i32 3, ptr @.str.11, i32 848, i32 860, i32 0, i32 852, i32 0, i32 0, i8 0, i32 24, i32 0, ptr null, i32 0, i32 1500000000, i32 -494967296, i32 22, i32 8, i32 852, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 4, ptr @.str.12, i32 864, i32 876, i32 -16777216, i32 868, i32 0, i32 0, i8 0, i32 24, i32 1, ptr null, i32 8388608, i32 1500000000, i32 -494967296, i32 22, i32 8, i32 868, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 5, ptr @.str.13, i32 880, i32 892, i32 -16777216, i32 884, i32 0, i32 0, i8 0, i32 24, i32 1, ptr null, i32 8388608, i32 1500000000, i32 -494967296, i32 22, i32 8, i32 884, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 6, ptr @.str.14, i32 616, i32 628, i32 0, i32 620, i32 0, i32 0, i8 0, i32 24, i32 0, ptr null, i32 0, i32 1500000000, i32 -494967296, i32 22, i32 8, i32 620, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 7, ptr @.str.15, i32 896, i32 908, i32 0, i32 900, i32 0, i32 0, i8 0, i32 24, i32 0, ptr null, i32 0, i32 1500000000, i32 -494967296, i32 22, i32 8, i32 900, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 8, ptr @.str.16, i32 792, i32 808, i32 0, i32 796, i32 64, i32 12, i8 0, i32 24, i32 0, ptr null, i32 0, i32 1500000000, i32 -494967296, i32 32, i32 8, i32 800, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 9, ptr @.str.17, i32 812, i32 828, i32 0, i32 816, i32 0, i32 0, i8 0, i32 24, i32 0, ptr null, i32 0, i32 1500000000, i32 -494967296, i32 32, i32 8, i32 820, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }], [224 x i8] zeroinitializer }, align 32
@apmixed_clks = internal constant { [1 x %struct.mtk_gate], [36 x i8] } { [1 x %struct.mtk_gate] [%struct.mtk_gate { i32 10, ptr @.str.18, ptr @.str.1, ptr @apmixed_cg_regs, i32 16, ptr @mtk_clk_gate_ops_no_setclr_inv, i32 0 }], [36 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mainpll\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"univpll\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"usbpll\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"msdcpll\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mmpll\00", [26 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adsppll\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfgpll\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tvdpll\00", [25 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"apll1\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"apll2\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mipid26m\00", [23 x i8] zeroinitializer }, align 32
@apmixed_cg_regs = internal constant { %struct.mtk_gate_regs, [20 x i8] } { %struct.mtk_gate_regs { i32 20, i32 20, i32 20 }, [20 x i8] zeroinitializer }, align 32
@mtk_clk_gate_ops_no_setclr_inv = external dso_local constant %struct.clk_ops, align 4
@top_fixed_clks = internal constant { [1 x %struct.mtk_fixed_clk], [16 x i8] } { [1 x %struct.mtk_fixed_clk] [%struct.mtk_fixed_clk { i32 127, ptr @.str.19, ptr null, i32 260000000 }], [16 x i8] zeroinitializer }, align 32
@top_divs = internal constant { [71 x %struct.mtk_fixed_factor], [372 x i8] } { [71 x %struct.mtk_fixed_factor] [%struct.mtk_fixed_factor { i32 69, ptr @.str.20, ptr @.str.8, i32 1, i32 3 }, %struct.mtk_fixed_factor { i32 70, ptr @.str.21, ptr @.str.8, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 71, ptr @.str.22, ptr @.str.21, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 72, ptr @.str.23, ptr @.str.21, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 73, ptr @.str.24, ptr @.str.21, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 74, ptr @.str.25, ptr @.str.21, i32 1, i32 16 }, %struct.mtk_fixed_factor { i32 75, ptr @.str.26, ptr @.str.8, i32 1, i32 5 }, %struct.mtk_fixed_factor { i32 76, ptr @.str.27, ptr @.str.26, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 77, ptr @.str.28, ptr @.str.26, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 78, ptr @.str.29, ptr @.str.26, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 79, ptr @.str.30, ptr @.str.8, i32 1, i32 6 }, %struct.mtk_fixed_factor { i32 80, ptr @.str.31, ptr @.str.30, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 81, ptr @.str.32, ptr @.str.30, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 82, ptr @.str.33, ptr @.str.8, i32 1, i32 7 }, %struct.mtk_fixed_factor { i32 83, ptr @.str.34, ptr @.str.33, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 84, ptr @.str.35, ptr @.str.33, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 85, ptr @.str.36, ptr @.str.33, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 86, ptr @.str.37, ptr @.str.9, i32 1, i32 3 }, %struct.mtk_fixed_factor { i32 87, ptr @.str.38, ptr @.str.9, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 88, ptr @.str.39, ptr @.str.38, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 89, ptr @.str.40, ptr @.str.38, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 90, ptr @.str.41, ptr @.str.38, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 91, ptr @.str.42, ptr @.str.9, i32 1, i32 5 }, %struct.mtk_fixed_factor { i32 92, ptr @.str.43, ptr @.str.42, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 93, ptr @.str.44, ptr @.str.42, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 94, ptr @.str.45, ptr @.str.42, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 95, ptr @.str.46, ptr @.str.9, i32 1, i32 6 }, %struct.mtk_fixed_factor { i32 96, ptr @.str.47, ptr @.str.46, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 97, ptr @.str.48, ptr @.str.46, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 98, ptr @.str.49, ptr @.str.46, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 99, ptr @.str.50, ptr @.str.46, i32 1, i32 16 }, %struct.mtk_fixed_factor { i32 100, ptr @.str.51, ptr @.str.9, i32 1, i32 7 }, %struct.mtk_fixed_factor { i32 101, ptr @.str.52, ptr @.str.16, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 102, ptr @.str.53, ptr @.str.16, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 103, ptr @.str.54, ptr @.str.16, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 104, ptr @.str.55, ptr @.str.16, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 105, ptr @.str.56, ptr @.str.17, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 106, ptr @.str.57, ptr @.str.17, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 107, ptr @.str.58, ptr @.str.17, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 108, ptr @.str.59, ptr @.str.17, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 109, ptr @.str.60, ptr @.str.12, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 110, ptr @.str.61, ptr @.str.60, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 111, ptr @.str.62, ptr @.str.12, i32 1, i32 5 }, %struct.mtk_fixed_factor { i32 112, ptr @.str.63, ptr @.str.62, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 113, ptr @.str.64, ptr @.str.12, i32 1, i32 6 }, %struct.mtk_fixed_factor { i32 114, ptr @.str.65, ptr @.str.64, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 115, ptr @.str.66, ptr @.str.12, i32 1, i32 7 }, %struct.mtk_fixed_factor { i32 116, ptr @.str.67, ptr @.str.12, i32 1, i32 9 }, %struct.mtk_fixed_factor { i32 117, ptr @.str.68, ptr @.str.69, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 118, ptr @.str.70, ptr @.str.71, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 119, ptr @.str.72, ptr @.str.15, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 120, ptr @.str.73, ptr @.str.15, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 121, ptr @.str.74, ptr @.str.15, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 122, ptr @.str.75, ptr @.str.15, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 123, ptr @.str.76, ptr @.str.15, i32 1, i32 16 }, %struct.mtk_fixed_factor { i32 124, ptr @.str.77, ptr @.str.11, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 125, ptr @.str.78, ptr @.str.11, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 126, ptr @.str.79, ptr @.str.11, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 128, ptr @.str.80, ptr @.str.19, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 129, ptr @.str.81, ptr @.str.19, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 130, ptr @.str.82, ptr @.str.19, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 131, ptr @.str.83, ptr @.str.19, i32 1, i32 10 }, %struct.mtk_fixed_factor { i32 132, ptr @.str.84, ptr @.str.19, i32 1, i32 16 }, %struct.mtk_fixed_factor { i32 133, ptr @.str.85, ptr @.str.19, i32 1, i32 20 }, %struct.mtk_fixed_factor { i32 135, ptr @.str.86, ptr @.str.13, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 136, ptr @.str.87, ptr @.str.9, i32 1, i32 13 }, %struct.mtk_fixed_factor { i32 137, ptr @.str.88, ptr @.str.87, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 138, ptr @.str.89, ptr @.str.87, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 139, ptr @.str.90, ptr @.str.87, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 140, ptr @.str.91, ptr @.str.87, i32 1, i32 16 }, %struct.mtk_fixed_factor { i32 141, ptr @.str.92, ptr @.str.87, i32 1, i32 32 }], [372 x i8] zeroinitializer }, align 32
@top_mtk_muxes = internal constant { [59 x %struct.mtk_mux], [668 x i8] } { [59 x %struct.mtk_mux] [%struct.mtk_mux { i32 0, ptr @.str.93, ptr @axi_parents, i32 2048, i32 16, i32 20, i32 24, i32 4, i8 0, i8 3, i8 7, i8 0, ptr @mtk_mux_gate_clr_set_upd_ops, i8 7 }, %struct.mtk_mux { i32 1, ptr @.str.94, ptr @spm_parents, i32 2048, i32 16, i32 20, i32 24, i32 4, i8 8, i8 2, i8 15, i8 1, ptr @mtk_mux_gate_clr_set_upd_ops, i8 4 }, %struct.mtk_mux { i32 2, ptr @.str.95, ptr @scp_parents, i32 4, i32 16, i32 20, i32 24, i32 4, i8 16, i8 3, i8 23, i8 2, ptr @mtk_mux_gate_clr_set_upd_ops, i8 8 }, %struct.mtk_mux { i32 3, ptr @.str.96, ptr @bus_aximem_parents, i32 2048, i32 16, i32 20, i32 24, i32 4, i8 24, i8 3, i8 31, i8 3, ptr @mtk_mux_gate_clr_set_upd_ops, i8 5 }, %struct.mtk_mux { i32 4, ptr @.str.97, ptr @disp_parents, i32 4, i32 32, i32 36, i32 40, i32 4, i8 0, i8 4, i8 7, i8 4, ptr @mtk_mux_gate_clr_set_upd_ops, i8 10 }, %struct.mtk_mux { i32 5, ptr @.str.98, ptr @mdp_parents, i32 4, i32 32, i32 36, i32 40, i32 4, i8 8, i8 4, i8 15, i8 5, ptr @mtk_mux_gate_clr_set_upd_ops, i8 11 }, %struct.mtk_mux { i32 6, ptr @.str.99, ptr @img1_parents, i32 4, i32 32, i32 36, i32 40, i32 4, i8 16, i8 4, i8 23, i8 6, ptr @mtk_mux_gate_clr_set_upd_ops, i8 12 }, %struct.mtk_mux { i32 7, ptr @.str.100, ptr @img2_parents, i32 4, i32 32, i32 36, i32 40, i32 4, i8 24, i8 4, i8 31, i8 7, ptr @mtk_mux_gate_clr_set_upd_ops, i8 12 }, %struct.mtk_mux { i32 8, ptr @.str.101, ptr @ipe_parents, i32 4, i32 48, i32 52, i32 56, i32 4, i8 0, i8 4, i8 7, i8 8, ptr @mtk_mux_gate_clr_set_upd_ops, i8 9 }, %struct.mtk_mux { i32 9, ptr @.str.102, ptr @dpe_parents, i32 4, i32 48, i32 52, i32 56, i32 4, i8 8, i8 3, i8 15, i8 9, ptr @mtk_mux_gate_clr_set_upd_ops, i8 8 }, %struct.mtk_mux { i32 10, ptr @.str.103, ptr @cam_parents, i32 4, i32 48, i32 52, i32 56, i32 4, i8 16, i8 4, i8 23, i8 10, ptr @mtk_mux_gate_clr_set_upd_ops, i8 10 }, %struct.mtk_mux { i32 11, ptr @.str.104, ptr @ccu_parents, i32 4, i32 48, i32 52, i32 56, i32 4, i8 24, i8 4, i8 31, i8 11, ptr @mtk_mux_gate_clr_set_upd_ops, i8 10 }, %struct.mtk_mux { i32 12, ptr @.str.105, ptr @dsp7_parents, i32 4, i32 80, i32 84, i32 88, i32 4, i8 0, i8 3, i8 7, i8 16, ptr @mtk_mux_gate_clr_set_upd_ops, i8 8 }, %struct.mtk_mux { i32 13, ptr @.str.106, ptr @mfg_ref_parents, i32 4, i32 80, i32 84, i32 88, i32 4, i8 16, i8 2, i8 23, i8 18, ptr @mtk_mux_gate_clr_set_upd_ops, i8 4 }, %struct.mtk_mux { i32 14, ptr @.str.107, ptr @mfg_pll_parents, i32 4, i32 80, i32 84, i32 88, i32 -1, i8 18, i8 1, i8 0, i8 -1, ptr @mtk_mux_clr_set_upd_ops, i8 2 }, %struct.mtk_mux { i32 15, ptr @.str.108, ptr @camtg_parents, i32 4, i32 80, i32 84, i32 88, i32 4, i8 24, i8 3, i8 31, i8 19, ptr @mtk_mux_gate_clr_set_upd_ops, i8 8 }, %struct.mtk_mux { i32 16, ptr @.str.109, ptr @camtg2_parents, i32 4, i32 96, i32 100, i32 104, i32 4, i8 0, i8 3, i8 7, i8 20, ptr @mtk_mux_gate_clr_set_upd_ops, i8 8 }, %struct.mtk_mux { i32 17, ptr @.str.110, ptr @camtg3_parents, i32 4, i32 96, i32 100, i32 104, i32 4, i8 8, i8 3, i8 15, i8 21, ptr @mtk_mux_gate_clr_set_upd_ops, i8 8 }, %struct.mtk_mux { i32 18, ptr @.str.111, ptr @camtg4_parents, i32 4, i32 96, i32 100, i32 104, i32 4, i8 16, i8 3, i8 23, i8 22, ptr @mtk_mux_gate_clr_set_upd_ops, i8 8 }, %struct.mtk_mux { i32 19, ptr @.str.112, ptr @camtg5_parents, i32 4, i32 96, i32 100, i32 104, i32 4, i8 24, i8 3, i8 31, i8 23, ptr @mtk_mux_gate_clr_set_upd_ops, i8 8 }, %struct.mtk_mux { i32 20, ptr @.str.113, ptr @camtg6_parents, i32 4, i32 112, i32 116, i32 120, i32 4, i8 0, i8 3, i8 7, i8 24, ptr @mtk_mux_gate_clr_set_upd_ops, i8 8 }, %struct.mtk_mux { i32 21, ptr @.str.114, ptr @uart_parents, i32 4, i32 112, i32 116, i32 120, i32 4, i8 8, i8 1, i8 15, i8 25, ptr @mtk_mux_gate_clr_set_upd_ops, i8 2 }, %struct.mtk_mux { i32 22, ptr @.str.115, ptr @spi_parents, i32 4, i32 112, i32 116, i32 120, i32 4, i8 16, i8 2, i8 23, i8 26, ptr @mtk_mux_gate_clr_set_upd_ops, i8 4 }, %struct.mtk_mux { i32 23, ptr @.str.116, ptr @msdc50_0_h_parents, i32 4, i32 112, i32 116, i32 120, i32 4, i8 24, i8 2, i8 31, i8 27, ptr @mtk_mux_gate_clr_set_upd_ops, i8 3 }, %struct.mtk_mux { i32 24, ptr @.str.117, ptr @msdc50_0_parents, i32 4, i32 128, i32 132, i32 136, i32 4, i8 0, i8 3, i8 7, i8 28, ptr @mtk_mux_gate_clr_set_upd_ops, i8 6 }, %struct.mtk_mux { i32 25, ptr @.str.118, ptr @msdc30_1_parents, i32 4, i32 128, i32 132, i32 136, i32 4, i8 8, i8 3, i8 15, i8 29, ptr @mtk_mux_gate_clr_set_upd_ops, i8 5 }, %struct.mtk_mux { i32 26, ptr @.str.119, ptr @msdc30_2_parents, i32 4, i32 128, i32 132, i32 136, i32 4, i8 16, i8 3, i8 23, i8 30, ptr @mtk_mux_gate_clr_set_upd_ops, i8 5 }, %struct.mtk_mux { i32 27, ptr @.str.120, ptr @audio_parents, i32 4, i32 128, i32 132, i32 136, i32 8, i8 24, i8 2, i8 31, i8 0, ptr @mtk_mux_gate_clr_set_upd_ops, i8 4 }, %struct.mtk_mux { i32 28, ptr @.str.121, ptr @aud_intbus_parents, i32 4, i32 144, i32 148, i32 152, i32 8, i8 0, i8 2, i8 7, i8 1, ptr @mtk_mux_gate_clr_set_upd_ops, i8 3 }, %struct.mtk_mux { i32 29, ptr @.str.122, ptr @pwrap_ulposc_parents, i32 4, i32 144, i32 148, i32 152, i32 8, i8 8, i8 3, i8 15, i8 2, ptr @mtk_mux_gate_clr_set_upd_ops, i8 5 }, %struct.mtk_mux { i32 30, ptr @.str.123, ptr @atb_parents, i32 4, i32 144, i32 148, i32 152, i32 8, i8 16, i8 2, i8 23, i8 3, ptr @mtk_mux_gate_clr_set_upd_ops, i8 3 }, %struct.mtk_mux { i32 31, ptr @.str.124, ptr @dpi_parents, i32 4, i32 160, i32 164, i32 168, i32 8, i8 0, i8 3, i8 7, i8 5, ptr @mtk_mux_gate_clr_set_upd_ops, i8 5 }, %struct.mtk_mux { i32 32, ptr @.str.125, ptr @scam_parents, i32 4, i32 160, i32 164, i32 168, i32 8, i8 8, i8 1, i8 15, i8 6, ptr @mtk_mux_gate_clr_set_upd_ops, i8 2 }, %struct.mtk_mux { i32 33, ptr @.str.126, ptr @disp_pwm_parents, i32 4, i32 160, i32 164, i32 168, i32 8, i8 16, i8 3, i8 23, i8 7, ptr @mtk_mux_gate_clr_set_upd_ops, i8 5 }, %struct.mtk_mux { i32 34, ptr @.str.127, ptr @usb_top_parents, i32 4, i32 160, i32 164, i32 168, i32 8, i8 24, i8 2, i8 31, i8 8, ptr @mtk_mux_gate_clr_set_upd_ops, i8 4 }, %struct.mtk_mux { i32 35, ptr @.str.128, ptr @ssusb_xhci_parents, i32 4, i32 176, i32 180, i32 184, i32 8, i8 0, i8 2, i8 7, i8 9, ptr @mtk_mux_gate_clr_set_upd_ops, i8 4 }, %struct.mtk_mux { i32 36, ptr @.str.129, ptr @i2c_parents, i32 4, i32 176, i32 180, i32 184, i32 8, i8 8, i8 2, i8 15, i8 10, ptr @mtk_mux_gate_clr_set_upd_ops, i8 3 }, %struct.mtk_mux { i32 37, ptr @.str.130, ptr @seninf_parents, i32 4, i32 176, i32 180, i32 184, i32 8, i8 16, i8 3, i8 23, i8 11, ptr @mtk_mux_gate_clr_set_upd_ops, i8 8 }, %struct.mtk_mux { i32 38, ptr @.str.131, ptr @seninf1_parents, i32 4, i32 176, i32 180, i32 184, i32 8, i8 24, i8 3, i8 31, i8 12, ptr @mtk_mux_gate_clr_set_upd_ops, i8 8 }, %struct.mtk_mux { i32 39, ptr @.str.132, ptr @seninf2_parents, i32 4, i32 192, i32 196, i32 200, i32 8, i8 0, i8 3, i8 7, i8 13, ptr @mtk_mux_gate_clr_set_upd_ops, i8 8 }, %struct.mtk_mux { i32 40, ptr @.str.133, ptr @seninf3_parents, i32 4, i32 192, i32 196, i32 200, i32 8, i8 8, i8 3, i8 15, i8 14, ptr @mtk_mux_gate_clr_set_upd_ops, i8 8 }, %struct.mtk_mux { i32 41, ptr @.str.134, ptr @tl_parents, i32 4, i32 192, i32 196, i32 200, i32 8, i8 16, i8 2, i8 23, i8 15, ptr @mtk_mux_gate_clr_set_upd_ops, i8 3 }, %struct.mtk_mux { i32 42, ptr @.str.135, ptr @dxcc_parents, i32 4, i32 192, i32 196, i32 200, i32 8, i8 24, i8 2, i8 31, i8 16, ptr @mtk_mux_gate_clr_set_upd_ops, i8 4 }, %struct.mtk_mux { i32 43, ptr @.str.136, ptr @aud_engen1_parents, i32 4, i32 208, i32 212, i32 216, i32 8, i8 0, i8 2, i8 7, i8 17, ptr @mtk_mux_gate_clr_set_upd_ops, i8 4 }, %struct.mtk_mux { i32 44, ptr @.str.137, ptr @aud_engen2_parents, i32 4, i32 208, i32 212, i32 216, i32 8, i8 8, i8 2, i8 15, i8 18, ptr @mtk_mux_gate_clr_set_upd_ops, i8 4 }, %struct.mtk_mux { i32 45, ptr @.str.138, ptr @aes_ufsfde_parents, i32 4, i32 208, i32 212, i32 216, i32 8, i8 16, i8 3, i8 23, i8 19, ptr @mtk_mux_gate_clr_set_upd_ops, i8 7 }, %struct.mtk_mux { i32 46, ptr @.str.139, ptr @ufs_parents, i32 4, i32 208, i32 212, i32 216, i32 8, i8 24, i8 3, i8 31, i8 20, ptr @mtk_mux_gate_clr_set_upd_ops, i8 7 }, %struct.mtk_mux { i32 47, ptr @.str.140, ptr @aud_1_parents, i32 4, i32 224, i32 228, i32 232, i32 8, i8 0, i8 1, i8 7, i8 21, ptr @mtk_mux_gate_clr_set_upd_ops, i8 2 }, %struct.mtk_mux { i32 48, ptr @.str.141, ptr @aud_2_parents, i32 4, i32 224, i32 228, i32 232, i32 8, i8 8, i8 1, i8 15, i8 22, ptr @mtk_mux_gate_clr_set_upd_ops, i8 2 }, %struct.mtk_mux { i32 49, ptr @.str.142, ptr @adsp_parents, i32 4, i32 224, i32 228, i32 232, i32 8, i8 16, i8 3, i8 23, i8 23, ptr @mtk_mux_gate_clr_set_upd_ops, i8 8 }, %struct.mtk_mux { i32 50, ptr @.str.143, ptr @dpmaif_main_parents, i32 4, i32 224, i32 228, i32 232, i32 8, i8 24, i8 3, i8 31, i8 24, ptr @mtk_mux_gate_clr_set_upd_ops, i8 5 }, %struct.mtk_mux { i32 51, ptr @.str.144, ptr @venc_parents, i32 4, i32 240, i32 244, i32 248, i32 8, i8 0, i8 4, i8 7, i8 25, ptr @mtk_mux_gate_clr_set_upd_ops, i8 16 }, %struct.mtk_mux { i32 52, ptr @.str.145, ptr @vdec_parents, i32 4, i32 240, i32 244, i32 248, i32 8, i8 8, i8 4, i8 15, i8 26, ptr @mtk_mux_gate_clr_set_upd_ops, i8 16 }, %struct.mtk_mux { i32 53, ptr @.str.146, ptr @camtm_parents, i32 4, i32 240, i32 244, i32 248, i32 8, i8 16, i8 2, i8 23, i8 27, ptr @mtk_mux_gate_clr_set_upd_ops, i8 4 }, %struct.mtk_mux { i32 54, ptr @.str.147, ptr @pwm_parents, i32 4, i32 240, i32 244, i32 248, i32 8, i8 24, i8 1, i8 31, i8 28, ptr @mtk_mux_gate_clr_set_upd_ops, i8 2 }, %struct.mtk_mux { i32 55, ptr @.str.148, ptr @audio_h_parents, i32 4, i32 256, i32 260, i32 264, i32 8, i8 0, i8 2, i8 7, i8 29, ptr @mtk_mux_gate_clr_set_upd_ops, i8 4 }, %struct.mtk_mux { i32 56, ptr @.str.149, ptr @spmi_mst_parents, i32 4, i32 256, i32 260, i32 264, i32 8, i8 8, i8 3, i8 15, i8 30, ptr @mtk_mux_gate_clr_set_upd_ops, i8 7 }, %struct.mtk_mux { i32 57, ptr @.str.150, ptr @aes_msdcfde_parents, i32 4, i32 256, i32 260, i32 264, i32 12, i8 24, i8 3, i8 31, i8 1, ptr @mtk_mux_gate_clr_set_upd_ops, i8 6 }, %struct.mtk_mux { i32 58, ptr @.str.151, ptr @sflash_parents, i32 4, i32 272, i32 276, i32 280, i32 12, i8 8, i8 2, i8 15, i8 3, ptr @mtk_mux_gate_clr_set_upd_ops, i8 4 }], [668 x i8] zeroinitializer }, align 32
@mt8192_clk_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.153, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@top_muxes = internal global { [10 x %struct.mtk_composite], [112 x i8] } { [10 x %struct.mtk_composite] [%struct.mtk_composite { i32 59, ptr @.str.154, ptr @apll_i2s0_m_parents, ptr null, i32 4, i32 800, i32 0, i32 0, i8 16, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 60, ptr @.str.155, ptr @apll_i2s1_m_parents, ptr null, i32 4, i32 800, i32 0, i32 0, i8 17, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 61, ptr @.str.156, ptr @apll_i2s2_m_parents, ptr null, i32 4, i32 800, i32 0, i32 0, i8 18, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 62, ptr @.str.157, ptr @apll_i2s3_m_parents, ptr null, i32 4, i32 800, i32 0, i32 0, i8 19, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 63, ptr @.str.158, ptr @apll_i2s4_m_parents, ptr null, i32 4, i32 800, i32 0, i32 0, i8 20, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 64, ptr @.str.159, ptr @apll_i2s5_m_parents, ptr null, i32 4, i32 800, i32 0, i32 0, i8 21, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 65, ptr @.str.160, ptr @apll_i2s6_m_parents, ptr null, i32 4, i32 800, i32 0, i32 0, i8 22, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 66, ptr @.str.161, ptr @apll_i2s7_m_parents, ptr null, i32 4, i32 800, i32 0, i32 0, i8 23, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 67, ptr @.str.162, ptr @apll_i2s8_m_parents, ptr null, i32 4, i32 800, i32 0, i32 0, i8 24, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 68, ptr @.str.163, ptr @apll_i2s9_m_parents, ptr null, i32 4, i32 800, i32 0, i32 0, i8 25, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }], [112 x i8] zeroinitializer }, align 32
@top_adj_divs = internal constant { [11 x %struct.mtk_composite], [104 x i8] } { [11 x %struct.mtk_composite] [%struct.mtk_composite { i32 142, ptr @.str.164, ptr null, ptr @.str.154, i32 0, i32 0, i32 808, i32 800, i8 -1, i8 0, i8 0, i8 0, i8 8, i8 0, i8 0 }, %struct.mtk_composite { i32 143, ptr @.str.165, ptr null, ptr @.str.155, i32 0, i32 0, i32 808, i32 800, i8 -1, i8 0, i8 1, i8 8, i8 8, i8 0, i8 0 }, %struct.mtk_composite { i32 144, ptr @.str.166, ptr null, ptr @.str.156, i32 0, i32 0, i32 808, i32 800, i8 -1, i8 0, i8 2, i8 16, i8 8, i8 0, i8 0 }, %struct.mtk_composite { i32 145, ptr @.str.167, ptr null, ptr @.str.157, i32 0, i32 0, i32 808, i32 800, i8 -1, i8 0, i8 3, i8 24, i8 8, i8 0, i8 0 }, %struct.mtk_composite { i32 146, ptr @.str.168, ptr null, ptr @.str.158, i32 0, i32 0, i32 820, i32 800, i8 -1, i8 0, i8 4, i8 0, i8 8, i8 0, i8 0 }, %struct.mtk_composite { i32 147, ptr @.str.169, ptr null, ptr @.str.168, i32 0, i32 0, i32 820, i32 800, i8 -1, i8 0, i8 5, i8 8, i8 8, i8 0, i8 0 }, %struct.mtk_composite { i32 148, ptr @.str.170, ptr null, ptr @.str.159, i32 0, i32 0, i32 820, i32 800, i8 -1, i8 0, i8 6, i8 16, i8 8, i8 0, i8 0 }, %struct.mtk_composite { i32 149, ptr @.str.171, ptr null, ptr @.str.160, i32 0, i32 0, i32 820, i32 800, i8 -1, i8 0, i8 7, i8 24, i8 8, i8 0, i8 0 }, %struct.mtk_composite { i32 150, ptr @.str.172, ptr null, ptr @.str.161, i32 0, i32 0, i32 824, i32 800, i8 -1, i8 0, i8 8, i8 0, i8 8, i8 0, i8 0 }, %struct.mtk_composite { i32 151, ptr @.str.173, ptr null, ptr @.str.162, i32 0, i32 0, i32 824, i32 800, i8 -1, i8 0, i8 9, i8 8, i8 8, i8 0, i8 0 }, %struct.mtk_composite { i32 152, ptr @.str.174, ptr null, ptr @.str.163, i32 0, i32 0, i32 824, i32 800, i8 -1, i8 0, i8 10, i8 16, i8 8, i8 0, i8 0 }], [104 x i8] zeroinitializer }, align 32
@top_clks = internal constant { [2 x %struct.mtk_gate], [40 x i8] } { [2 x %struct.mtk_gate] [%struct.mtk_gate { i32 153, ptr @.str.175, ptr @.str.1, ptr @top_cg_regs, i32 24, ptr @mtk_clk_gate_ops_no_setclr_inv, i32 0 }, %struct.mtk_gate { i32 154, ptr @.str.176, ptr @.str.1, ptr @top_cg_regs, i32 25, ptr @mtk_clk_gate_ops_no_setclr_inv, i32 0 }], [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ulposc\00", [25 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mainpll_d3\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mainpll_d4\00", [21 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mainpll_d4_d2\00", [18 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mainpll_d4_d4\00", [18 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mainpll_d4_d8\00", [18 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mainpll_d4_d16\00", [17 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mainpll_d5\00", [21 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mainpll_d5_d2\00", [18 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mainpll_d5_d4\00", [18 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mainpll_d5_d8\00", [18 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mainpll_d6\00", [21 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mainpll_d6_d2\00", [18 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mainpll_d6_d4\00", [18 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mainpll_d7\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mainpll_d7_d2\00", [18 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mainpll_d7_d4\00", [18 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mainpll_d7_d8\00", [18 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"univpll_d3\00", [21 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"univpll_d4\00", [21 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"univpll_d4_d2\00", [18 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"univpll_d4_d4\00", [18 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"univpll_d4_d8\00", [18 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"univpll_d5\00", [21 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"univpll_d5_d2\00", [18 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"univpll_d5_d4\00", [18 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"univpll_d5_d8\00", [18 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"univpll_d6\00", [21 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"univpll_d6_d2\00", [18 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"univpll_d6_d4\00", [18 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"univpll_d6_d8\00", [18 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"univpll_d6_d16\00", [17 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"univpll_d7\00", [21 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apll1_ck\00", [23 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apll1_d2\00", [23 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apll1_d4\00", [23 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apll1_d8\00", [23 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apll2_ck\00", [23 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apll2_d2\00", [23 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apll2_d4\00", [23 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apll2_d8\00", [23 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmpll_d4\00", [23 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mmpll_d4_d2\00", [20 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmpll_d5\00", [23 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mmpll_d5_d2\00", [20 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmpll_d6\00", [23 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mmpll_d6_d2\00", [20 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmpll_d7\00", [23 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmpll_d9\00", [23 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"apupll_ck\00", [22 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"apupll\00", [25 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"npupll_ck\00", [22 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"npupll\00", [25 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tvdpll_ck\00", [22 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tvdpll_d2\00", [22 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tvdpll_d4\00", [22 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tvdpll_d8\00", [22 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tvdpll_d16\00", [21 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"msdcpll_ck\00", [21 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"msdcpll_d2\00", [21 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"msdcpll_d4\00", [21 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"osc_d2\00", [25 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"osc_d4\00", [25 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"osc_d8\00", [25 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"osc_d10\00", [24 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"osc_d16\00", [24 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"osc_d20\00", [24 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"adsppll_ck\00", [21 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"univpll_192m\00", [19 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"univpll_192m_d2\00", [16 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"univpll_192m_d4\00", [16 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"univpll_192m_d8\00", [16 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"univpll_192m_d16\00", [47 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"univpll_192m_d32\00", [47 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"axi_sel\00", [24 x i8] zeroinitializer }, align 32
@axi_parents = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.1, ptr @.str.23, ptr @.str.34, ptr @.str.22, ptr @.str.27, ptr @.str.31, ptr @.str.81], [36 x i8] zeroinitializer }, align 32
@mtk_mux_gate_clr_set_upd_ops = external dso_local constant %struct.clk_ops, align 4
@.str.94 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"spm_sel\00", [24 x i8] zeroinitializer }, align 32
@spm_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.1, ptr @.str.83, ptr @.str.35, ptr @.str.152], [16 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"scp_sel\00", [24 x i8] zeroinitializer }, align 32
@scp_parents = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.1, ptr @.str.42, ptr @.str.31, ptr @.str.30, ptr @.str.46, ptr @.str.22, ptr @.str.27, ptr @.str.39], [32 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"bus_aximem_sel\00", [17 x i8] zeroinitializer }, align 32
@bus_aximem_parents = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.1, ptr @.str.34, ptr @.str.22, ptr @.str.27, ptr @.str.30], [44 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"disp_sel\00", [23 x i8] zeroinitializer }, align 32
@disp_parents = internal constant { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @.str.1, ptr @.str.47, ptr @.str.27, ptr @.str.65, ptr @.str.43, ptr @.str.39, ptr @.str.66, ptr @.str.46, ptr @.str.21, ptr @.str.63], [56 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mdp_sel\00", [24 x i8] zeroinitializer }, align 32
@mdp_parents = internal constant { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @.str.1, ptr @.str.27, ptr @.str.65, ptr @.str.22, ptr @.str.61, ptr @.str.30, ptr @.str.46, ptr @.str.21, ptr @.str.72, ptr @.str.38, ptr @.str.63], [52 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"img1_sel\00", [23 x i8] zeroinitializer }, align 32
@img1_parents = internal constant { [12 x ptr], [48 x i8] } { [12 x ptr] [ptr @.str.1, ptr @.str.38, ptr @.str.72, ptr @.str.21, ptr @.str.42, ptr @.str.64, ptr @.str.46, ptr @.str.30, ptr @.str.61, ptr @.str.22, ptr @.str.65, ptr @.str.63], [48 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"img2_sel\00", [23 x i8] zeroinitializer }, align 32
@img2_parents = internal constant { [12 x ptr], [48 x i8] } { [12 x ptr] [ptr @.str.1, ptr @.str.38, ptr @.str.72, ptr @.str.21, ptr @.str.42, ptr @.str.64, ptr @.str.46, ptr @.str.30, ptr @.str.61, ptr @.str.22, ptr @.str.65, ptr @.str.63], [48 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ipe_sel\00", [24 x i8] zeroinitializer }, align 32
@ipe_parents = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.str.1, ptr @.str.21, ptr @.str.64, ptr @.str.46, ptr @.str.30, ptr @.str.39, ptr @.str.22, ptr @.str.65, ptr @.str.63], [60 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dpe_sel\00", [24 x i8] zeroinitializer }, align 32
@dpe_parents = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.1, ptr @.str.21, ptr @.str.64, ptr @.str.46, ptr @.str.30, ptr @.str.39, ptr @.str.43, ptr @.str.65], [32 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cam_sel\00", [24 x i8] zeroinitializer }, align 32
@cam_parents = internal constant { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @.str.1, ptr @.str.21, ptr @.str.64, ptr @.str.38, ptr @.str.42, ptr @.str.46, ptr @.str.66, ptr @.str.39, ptr @.str.22, ptr @.str.47], [56 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ccu_sel\00", [24 x i8] zeroinitializer }, align 32
@ccu_parents = internal constant { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @.str.1, ptr @.str.21, ptr @.str.64, ptr @.str.30, ptr @.str.66, ptr @.str.39, ptr @.str.65, ptr @.str.63, ptr @.str.42, ptr @.str.47], [56 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dsp7_sel\00", [23 x i8] zeroinitializer }, align 32
@dsp7_parents = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.1, ptr @.str.22, ptr @.str.30, ptr @.str.64, ptr @.str.42, ptr @.str.62, ptr @.str.38, ptr @.str.60], [32 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mfg_ref_sel\00", [20 x i8] zeroinitializer }, align 32
@mfg_ref_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.1, ptr @.str.1, ptr @.str.46, ptr @.str.27], [16 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mfg_pll_sel\00", [20 x i8] zeroinitializer }, align 32
@mfg_pll_parents = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.106, ptr @.str.14], [24 x i8] zeroinitializer }, align 32
@mtk_mux_clr_set_upd_ops = external dso_local constant %struct.clk_ops, align 4
@.str.108 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"camtg_sel\00", [22 x i8] zeroinitializer }, align 32
@camtg_parents = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.1, ptr @.str.90, ptr @.str.49, ptr @.str.89, ptr @.str.50, ptr @.str, ptr @.str.91, ptr @.str.92], [32 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"camtg2_sel\00", [21 x i8] zeroinitializer }, align 32
@camtg2_parents = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.1, ptr @.str.90, ptr @.str.49, ptr @.str.89, ptr @.str.50, ptr @.str, ptr @.str.91, ptr @.str.92], [32 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"camtg3_sel\00", [21 x i8] zeroinitializer }, align 32
@camtg3_parents = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.1, ptr @.str.90, ptr @.str.49, ptr @.str.89, ptr @.str.50, ptr @.str, ptr @.str.91, ptr @.str.92], [32 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"camtg4_sel\00", [21 x i8] zeroinitializer }, align 32
@camtg4_parents = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.1, ptr @.str.90, ptr @.str.49, ptr @.str.89, ptr @.str.50, ptr @.str, ptr @.str.91, ptr @.str.92], [32 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"camtg5_sel\00", [21 x i8] zeroinitializer }, align 32
@camtg5_parents = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.1, ptr @.str.90, ptr @.str.49, ptr @.str.89, ptr @.str.50, ptr @.str, ptr @.str.91, ptr @.str.92], [32 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"camtg6_sel\00", [21 x i8] zeroinitializer }, align 32
@camtg6_parents = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.1, ptr @.str.90, ptr @.str.49, ptr @.str.89, ptr @.str.50, ptr @.str, ptr @.str.91, ptr @.str.92], [32 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uart_sel\00", [23 x i8] zeroinitializer }, align 32
@uart_parents = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.1, ptr @.str.49], [24 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"spi_sel\00", [24 x i8] zeroinitializer }, align 32
@spi_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.1, ptr @.str.28, ptr @.str.32, ptr @.str.79], [16 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"msdc50_0_h_sel\00", [17 x i8] zeroinitializer }, align 32
@msdc50_0_h_parents = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.1, ptr @.str.22, ptr @.str.31], [20 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"msdc50_0_sel\00", [19 x i8] zeroinitializer }, align 32
@msdc50_0_parents = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.1, ptr @.str.77, ptr @.str.78, ptr @.str.40, ptr @.str.31, ptr @.str.39], [40 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"msdc30_1_sel\00", [19 x i8] zeroinitializer }, align 32
@msdc30_1_parents = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.1, ptr @.str.47, ptr @.str.31, ptr @.str.34, ptr @.str.78], [44 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"msdc30_2_sel\00", [19 x i8] zeroinitializer }, align 32
@msdc30_2_parents = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.1, ptr @.str.47, ptr @.str.31, ptr @.str.34, ptr @.str.78], [44 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"audio_sel\00", [22 x i8] zeroinitializer }, align 32
@audio_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.1, ptr @.str.29, ptr @.str.36, ptr @.str.25], [16 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aud_intbus_sel\00", [17 x i8] zeroinitializer }, align 32
@aud_intbus_parents = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.1, ptr @.str.23, ptr @.str.35], [20 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pwrap_ulposc_sel\00", [47 x i8] zeroinitializer }, align 32
@pwrap_ulposc_parents = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.83, ptr @.str.1, ptr @.str.81, ptr @.str.82, ptr @.str.84], [44 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"atb_sel\00", [24 x i8] zeroinitializer }, align 32
@atb_parents = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.1, ptr @.str.22, ptr @.str.27], [20 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dpi_sel\00", [24 x i8] zeroinitializer }, align 32
@dpi_parents = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.1, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76], [44 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"scam_sel\00", [23 x i8] zeroinitializer }, align 32
@scam_parents = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.1, ptr @.str.28], [24 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"disp_pwm_sel\00", [19 x i8] zeroinitializer }, align 32
@disp_pwm_parents = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.1, ptr @.str.48, ptr @.str.80, ptr @.str.81, ptr @.str.84], [44 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usb_top_sel\00", [20 x i8] zeroinitializer }, align 32
@usb_top_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.1, ptr @.str.44, ptr @.str.48, ptr @.str.43], [16 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ssusb_xhci_sel\00", [17 x i8] zeroinitializer }, align 32
@ssusb_xhci_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.1, ptr @.str.44, ptr @.str.48, ptr @.str.43], [16 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i2c_sel\00", [24 x i8] zeroinitializer }, align 32
@i2c_parents = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.1, ptr @.str.24, ptr @.str.44], [20 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"seninf_sel\00", [21 x i8] zeroinitializer }, align 32
@seninf_parents = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.1, ptr @.str.40, ptr @.str.47, ptr @.str.39, ptr @.str.51, ptr @.str.46, ptr @.str.64, ptr @.str.42], [32 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"seninf1_sel\00", [20 x i8] zeroinitializer }, align 32
@seninf1_parents = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.1, ptr @.str.40, ptr @.str.47, ptr @.str.39, ptr @.str.51, ptr @.str.46, ptr @.str.64, ptr @.str.42], [32 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"seninf2_sel\00", [20 x i8] zeroinitializer }, align 32
@seninf2_parents = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.1, ptr @.str.40, ptr @.str.47, ptr @.str.39, ptr @.str.51, ptr @.str.46, ptr @.str.64, ptr @.str.42], [32 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"seninf3_sel\00", [20 x i8] zeroinitializer }, align 32
@seninf3_parents = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.1, ptr @.str.40, ptr @.str.47, ptr @.str.39, ptr @.str.51, ptr @.str.46, ptr @.str.64, ptr @.str.42], [32 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tl_sel\00", [25 x i8] zeroinitializer }, align 32
@tl_parents = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.1, ptr @.str.88, ptr @.str.32], [20 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dxcc_sel\00", [23 x i8] zeroinitializer }, align 32
@dxcc_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.1, ptr @.str.22, ptr @.str.23, ptr @.str.24], [16 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aud_engen1_sel\00", [17 x i8] zeroinitializer }, align 32
@aud_engen1_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.1, ptr @.str.53, ptr @.str.54, ptr @.str.55], [16 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aud_engen2_sel\00", [17 x i8] zeroinitializer }, align 32
@aud_engen2_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.1, ptr @.str.57, ptr @.str.58, ptr @.str.59], [16 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aes_ufsfde_sel\00", [17 x i8] zeroinitializer }, align 32
@aes_ufsfde_parents = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.1, ptr @.str.21, ptr @.str.22, ptr @.str.30, ptr @.str.23, ptr @.str.39, ptr @.str.46], [36 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ufs_sel\00", [24 x i8] zeroinitializer }, align 32
@ufs_parents = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.1, ptr @.str.23, ptr @.str.24, ptr @.str.40, ptr @.str.31, ptr @.str.27, ptr @.str.78], [36 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"aud_1_sel\00", [22 x i8] zeroinitializer }, align 32
@aud_1_parents = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.1, ptr @.str.52], [24 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"aud_2_sel\00", [22 x i8] zeroinitializer }, align 32
@aud_2_parents = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.1, ptr @.str.56], [24 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"adsp_sel\00", [23 x i8] zeroinitializer }, align 32
@adsp_parents = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.1, ptr @.str.30, ptr @.str.27, ptr @.str.40, ptr @.str.38, ptr @.str.46, ptr @.str.19, ptr @.str.86], [32 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dpmaif_main_sel\00", [16 x i8] zeroinitializer }, align 32
@dpmaif_main_parents = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.1, ptr @.str.40, ptr @.str.30, ptr @.str.22, ptr @.str.39], [44 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"venc_sel\00", [23 x i8] zeroinitializer }, align 32
@venc_parents = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.1, ptr @.str.66, ptr @.str.30, ptr @.str.39, ptr @.str.22, ptr @.str.46, ptr @.str.64, ptr @.str.27, ptr @.str.31, ptr @.str.67, ptr @.str.40, ptr @.str.21, ptr @.str.38, ptr @.str.42, ptr @.str.43, ptr @.str.26], [32 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vdec_sel\00", [23 x i8] zeroinitializer }, align 32
@vdec_parents = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.1, ptr @.str.88, ptr @.str.44, ptr @.str.26, ptr @.str.27, ptr @.str.65, ptr @.str.43, ptr @.str.22, ptr @.str.39, ptr @.str.51, ptr @.str.66, ptr @.str.64, ptr @.str.42, ptr @.str.21, ptr @.str.38, ptr @.str.46], [32 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"camtm_sel\00", [22 x i8] zeroinitializer }, align 32
@camtm_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.1, ptr @.str.51, ptr @.str.47, ptr @.str.39], [16 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pwm_sel\00", [24 x i8] zeroinitializer }, align 32
@pwm_parents = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.1, ptr @.str.41], [24 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"audio_h_sel\00", [20 x i8] zeroinitializer }, align 32
@audio_h_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.1, ptr @.str.51, ptr @.str.52, ptr @.str.56], [16 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"spmi_mst_sel\00", [19 x i8] zeroinitializer }, align 32
@spmi_mst_parents = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.1, ptr @.str, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.152], [36 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"aes_msdcfde_sel\00", [16 x i8] zeroinitializer }, align 32
@aes_msdcfde_parents = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.1, ptr @.str.22, ptr @.str.30, ptr @.str.23, ptr @.str.39, ptr @.str.46], [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sflash_sel\00", [21 x i8] zeroinitializer }, align 32
@sflash_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.1, ptr @.str.36, ptr @.str.49, ptr @.str.45], [16 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"clk32k\00", [25 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mt8192_clk_lock\00", [16 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"apll_i2s0_m_sel\00", [16 x i8] zeroinitializer }, align 32
@apll_i2s0_m_parents = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.140, ptr @.str.141], [24 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"apll_i2s1_m_sel\00", [16 x i8] zeroinitializer }, align 32
@apll_i2s1_m_parents = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.140, ptr @.str.141], [24 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"apll_i2s2_m_sel\00", [16 x i8] zeroinitializer }, align 32
@apll_i2s2_m_parents = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.140, ptr @.str.141], [24 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"apll_i2s3_m_sel\00", [16 x i8] zeroinitializer }, align 32
@apll_i2s3_m_parents = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.140, ptr @.str.141], [24 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"apll_i2s4_m_sel\00", [16 x i8] zeroinitializer }, align 32
@apll_i2s4_m_parents = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.140, ptr @.str.141], [24 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"apll_i2s5_m_sel\00", [16 x i8] zeroinitializer }, align 32
@apll_i2s5_m_parents = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.140, ptr @.str.141], [24 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"apll_i2s6_m_sel\00", [16 x i8] zeroinitializer }, align 32
@apll_i2s6_m_parents = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.140, ptr @.str.141], [24 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"apll_i2s7_m_sel\00", [16 x i8] zeroinitializer }, align 32
@apll_i2s7_m_parents = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.140, ptr @.str.141], [24 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"apll_i2s8_m_sel\00", [16 x i8] zeroinitializer }, align 32
@apll_i2s8_m_parents = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.140, ptr @.str.141], [24 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"apll_i2s9_m_sel\00", [16 x i8] zeroinitializer }, align 32
@apll_i2s9_m_parents = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.140, ptr @.str.141], [24 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"apll12_div0\00", [20 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"apll12_div1\00", [20 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"apll12_div2\00", [20 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"apll12_div3\00", [20 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"apll12_div4\00", [20 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"apll12_divb\00", [20 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"apll12_div5\00", [20 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"apll12_div6\00", [20 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"apll12_div7\00", [20 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"apll12_div8\00", [20 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"apll12_div9\00", [20 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ssusb_top_ref\00", [18 x i8] zeroinitializer }, align 32
@top_cg_regs = internal constant { %struct.mtk_gate_regs, [20 x i8] } { %struct.mtk_gate_regs { i32 336, i32 336, i32 336 }, [20 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ssusb_phy_ref\00", [18 x i8] zeroinitializer }, align 32
@infra_clks = internal constant { [121 x %struct.mtk_gate], [836 x i8] } { [121 x %struct.mtk_gate] [%struct.mtk_gate { i32 0, ptr @.str.177, ptr @.str.122, ptr @infra0_cg_regs, i32 0, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 1, ptr @.str.178, ptr @.str.122, ptr @infra0_cg_regs, i32 1, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 2, ptr @.str.179, ptr @.str.122, ptr @infra0_cg_regs, i32 2, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 3, ptr @.str.180, ptr @.str.122, ptr @infra0_cg_regs, i32 3, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 4, ptr @.str.181, ptr @.str.95, ptr @infra0_cg_regs, i32 4, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 5, ptr @.str.182, ptr @.str.93, ptr @infra0_cg_regs, i32 5, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 6, ptr @.str.183, ptr @.str.93, ptr @infra0_cg_regs, i32 6, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 7, ptr @.str.184, ptr @.str.93, ptr @infra0_cg_regs, i32 8, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 8, ptr @.str.185, ptr @.str.93, ptr @infra0_cg_regs, i32 9, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 9, ptr @.str.186, ptr @.str.93, ptr @infra0_cg_regs, i32 10, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 10, ptr @.str.187, ptr @.str.129, ptr @infra0_cg_regs, i32 11, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 11, ptr @.str.188, ptr @.str.93, ptr @infra0_cg_regs, i32 12, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 12, ptr @.str.189, ptr @.str.129, ptr @infra0_cg_regs, i32 13, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 13, ptr @.str.190, ptr @.str.129, ptr @infra0_cg_regs, i32 14, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 14, ptr @.str.191, ptr @.str.93, ptr @infra0_cg_regs, i32 15, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 15, ptr @.str.192, ptr @.str.147, ptr @infra0_cg_regs, i32 16, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 16, ptr @.str.193, ptr @.str.147, ptr @infra0_cg_regs, i32 17, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 17, ptr @.str.194, ptr @.str.147, ptr @infra0_cg_regs, i32 18, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 18, ptr @.str.195, ptr @.str.147, ptr @infra0_cg_regs, i32 19, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 19, ptr @.str.196, ptr @.str.147, ptr @infra0_cg_regs, i32 21, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 20, ptr @.str.197, ptr @.str.114, ptr @infra0_cg_regs, i32 22, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 21, ptr @.str.198, ptr @.str.114, ptr @infra0_cg_regs, i32 23, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 22, ptr @.str.199, ptr @.str.114, ptr @infra0_cg_regs, i32 24, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 23, ptr @.str.200, ptr @.str.114, ptr @infra0_cg_regs, i32 25, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 24, ptr @.str.201, ptr @.str.93, ptr @infra0_cg_regs, i32 27, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 25, ptr @.str.202, ptr @.str.93, ptr @infra0_cg_regs, i32 28, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 26, ptr @.str.203, ptr @.str.93, ptr @infra0_cg_regs, i32 31, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 27, ptr @.str.204, ptr @.str.115, ptr @infra1_cg_regs, i32 1, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 28, ptr @.str.205, ptr @.str.116, ptr @infra1_cg_regs, i32 2, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 29, ptr @.str.206, ptr @.str.116, ptr @infra1_cg_regs, i32 4, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 30, ptr @.str.207, ptr @.str.116, ptr @infra1_cg_regs, i32 5, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 31, ptr @.str.208, ptr @.str.117, ptr @infra1_cg_regs, i32 6, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 32, ptr @.str.209, ptr @.str.93, ptr @infra1_cg_regs, i32 8, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 33, ptr @.str.210, ptr @.str.93, ptr @infra1_cg_regs, i32 9, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 34, ptr @.str.211, ptr @.str.1, ptr @infra1_cg_regs, i32 10, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 35, ptr @.str.212, ptr @.str.93, ptr @infra1_cg_regs, i32 11, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 36, ptr @.str.213, ptr @.str.93, ptr @infra1_cg_regs, i32 12, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 37, ptr @.str.214, ptr @.str.93, ptr @infra1_cg_regs, i32 13, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 38, ptr @.str.215, ptr @.str.1, ptr @infra1_cg_regs, i32 14, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 39, ptr @.str.216, ptr @.str.93, ptr @infra1_cg_regs, i32 15, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 40, ptr @.str.217, ptr @.str.118, ptr @infra1_cg_regs, i32 16, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 41, ptr @.str.218, ptr @.str.119, ptr @infra1_cg_regs, i32 17, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 42, ptr @.str.219, ptr @.str.134, ptr @infra1_cg_regs, i32 18, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 43, ptr @.str.220, ptr @.str.93, ptr @infra1_cg_regs, i32 19, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 44, ptr @.str.221, ptr @.str.93, ptr @infra1_cg_regs, i32 20, ptr @mtk_clk_gate_ops_setclr, i32 2048 }, %struct.mtk_gate { i32 45, ptr @.str.222, ptr @.str.93, ptr @infra1_cg_regs, i32 23, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 46, ptr @.str.223, ptr @.str.93, ptr @infra1_cg_regs, i32 24, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 47, ptr @.str.224, ptr @.str.93, ptr @infra1_cg_regs, i32 25, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 48, ptr @.str.225, ptr @.str.93, ptr @infra1_cg_regs, i32 26, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 49, ptr @.str.226, ptr @.str.135, ptr @infra1_cg_regs, i32 27, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 50, ptr @.str.227, ptr @.str.135, ptr @infra1_cg_regs, i32 28, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 51, ptr @.str.228, ptr @.str.93, ptr @infra1_cg_regs, i32 29, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 52, ptr @.str.229, ptr @.str.93, ptr @infra1_cg_regs, i32 30, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 53, ptr @.str.230, ptr @.str.1, ptr @infra1_cg_regs, i32 31, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 54, ptr @.str.231, ptr @.str.1, ptr @infra2_cg_regs, i32 0, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 55, ptr @.str.232, ptr @.str.127, ptr @infra2_cg_regs, i32 1, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 56, ptr @.str.233, ptr @.str.93, ptr @infra2_cg_regs, i32 2, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 57, ptr @.str.234, ptr @.str.93, ptr @infra2_cg_regs, i32 3, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 58, ptr @.str.235, ptr @.str.1, ptr @infra2_cg_regs, i32 4, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 59, ptr @.str.236, ptr @.str.1, ptr @infra2_cg_regs, i32 5, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 60, ptr @.str.237, ptr @.str.115, ptr @infra2_cg_regs, i32 6, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 61, ptr @.str.238, ptr @.str.129, ptr @infra2_cg_regs, i32 7, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 62, ptr @.str.239, ptr @.str.115, ptr @infra2_cg_regs, i32 9, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 63, ptr @.str.240, ptr @.str.115, ptr @infra2_cg_regs, i32 10, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 64, ptr @.str.241, ptr @.str.139, ptr @infra2_cg_regs, i32 11, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 65, ptr @.str.242, ptr @.str.1, ptr @infra2_cg_regs, i32 12, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 66, ptr @.str.243, ptr @.str.1, ptr @infra2_cg_regs, i32 13, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 67, ptr @.str.244, ptr @.str.93, ptr @infra2_cg_regs, i32 14, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 68, ptr @.str.245, ptr @.str.93, ptr @infra2_cg_regs, i32 16, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 69, ptr @.str.246, ptr @.str.129, ptr @infra2_cg_regs, i32 18, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 70, ptr @.str.247, ptr @.str.129, ptr @infra2_cg_regs, i32 19, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 71, ptr @.str.248, ptr @.str.129, ptr @infra2_cg_regs, i32 20, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 72, ptr @.str.249, ptr @.str.129, ptr @infra2_cg_regs, i32 21, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 73, ptr @.str.250, ptr @.str.129, ptr @infra2_cg_regs, i32 22, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 74, ptr @.str.251, ptr @.str.129, ptr @infra2_cg_regs, i32 23, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 75, ptr @.str.252, ptr @.str.129, ptr @infra2_cg_regs, i32 24, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 76, ptr @.str.253, ptr @.str.115, ptr @infra2_cg_regs, i32 25, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 77, ptr @.str.254, ptr @.str.115, ptr @infra2_cg_regs, i32 26, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 78, ptr @.str.255, ptr @.str.93, ptr @infra2_cg_regs, i32 27, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 79, ptr @.str.256, ptr @.str.139, ptr @infra2_cg_regs, i32 28, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 80, ptr @.str.257, ptr @.str.138, ptr @infra2_cg_regs, i32 29, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 81, ptr @.str.258, ptr @.str.139, ptr @infra2_cg_regs, i32 30, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 82, ptr @.str.259, ptr @.str.128, ptr @infra2_cg_regs, i32 31, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 83, ptr @.str.260, ptr @.str.117, ptr @infra3_cg_regs, i32 0, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 84, ptr @.str.261, ptr @.str.117, ptr @infra3_cg_regs, i32 1, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 85, ptr @.str.262, ptr @.str.117, ptr @infra3_cg_regs, i32 2, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 86, ptr @.str.263, ptr @.str.93, ptr @infra3_cg_regs, i32 5, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 87, ptr @.str.264, ptr @.str.129, ptr @infra3_cg_regs, i32 6, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 88, ptr @.str.265, ptr @.str.117, ptr @infra3_cg_regs, i32 7, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 89, ptr @.str.266, ptr @.str.117, ptr @infra3_cg_regs, i32 8, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 90, ptr @.str.267, ptr @.str.93, ptr @infra3_cg_regs, i32 9, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 91, ptr @.str.268, ptr @.str.93, ptr @infra3_cg_regs, i32 10, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 92, ptr @.str.269, ptr @.str.93, ptr @infra3_cg_regs, i32 11, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 93, ptr @.str.270, ptr @.str.93, ptr @infra3_cg_regs, i32 14, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 94, ptr @.str.271, ptr @.str.93, ptr @infra3_cg_regs, i32 15, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 95, ptr @.str.272, ptr @.str.93, ptr @infra3_cg_regs, i32 16, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 96, ptr @.str.273, ptr @.str.93, ptr @infra3_cg_regs, i32 17, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 97, ptr @.str.274, ptr @.str.93, ptr @infra3_cg_regs, i32 18, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 98, ptr @.str.275, ptr @.str.93, ptr @infra3_cg_regs, i32 19, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 99, ptr @.str.276, ptr @.str.1, ptr @infra3_cg_regs, i32 20, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 100, ptr @.str.277, ptr @.str.93, ptr @infra3_cg_regs, i32 21, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 101, ptr @.str.278, ptr @.str.129, ptr @infra3_cg_regs, i32 22, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 102, ptr @.str.279, ptr @.str.129, ptr @infra3_cg_regs, i32 23, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 103, ptr @.str.280, ptr @.str.117, ptr @infra3_cg_regs, i32 24, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 104, ptr @.str.281, ptr @.str.93, ptr @infra3_cg_regs, i32 25, ptr @mtk_clk_gate_ops_setclr, i32 2048 }, %struct.mtk_gate { i32 105, ptr @.str.282, ptr @.str.143, ptr @infra3_cg_regs, i32 26, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 106, ptr @.str.283, ptr @.str.93, ptr @infra3_cg_regs, i32 27, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 107, ptr @.str.284, ptr @.str.93, ptr @infra3_cg_regs, i32 28, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 108, ptr @.str.285, ptr @.str.93, ptr @infra3_cg_regs, i32 29, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 109, ptr @.str.286, ptr @.str.115, ptr @infra3_cg_regs, i32 30, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 110, ptr @.str.287, ptr @.str.115, ptr @infra3_cg_regs, i32 31, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 120, ptr @.str.288, ptr @.str.188, ptr @infra4_cg_regs, i32 31, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 111, ptr @.str.289, ptr @.str.93, ptr @infra5_cg_regs, i32 0, ptr @mtk_clk_gate_ops_setclr, i32 2048 }, %struct.mtk_gate { i32 112, ptr @.str.290, ptr @.str.93, ptr @infra5_cg_regs, i32 1, ptr @mtk_clk_gate_ops_setclr, i32 2048 }, %struct.mtk_gate { i32 113, ptr @.str.291, ptr @.str.93, ptr @infra5_cg_regs, i32 2, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 114, ptr @.str.292, ptr @.str.93, ptr @infra5_cg_regs, i32 3, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 115, ptr @.str.293, ptr @.str.93, ptr @infra5_cg_regs, i32 4, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 116, ptr @.str.294, ptr @.str.93, ptr @infra5_cg_regs, i32 5, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 117, ptr @.str.295, ptr @.str.93, ptr @infra5_cg_regs, i32 6, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 118, ptr @.str.296, ptr @.str.93, ptr @infra5_cg_regs, i32 30, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 119, ptr @.str.297, ptr @.str.93, ptr @infra5_cg_regs, i32 31, ptr @mtk_clk_gate_ops_setclr, i32 0 }], [836 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"infra_pmic_tmr\00", [17 x i8] zeroinitializer }, align 32
@infra0_cg_regs = internal constant { %struct.mtk_gate_regs, [20 x i8] } { %struct.mtk_gate_regs { i32 144, i32 132, i32 128 }, [20 x i8] zeroinitializer }, align 32
@mtk_clk_gate_ops_setclr = external dso_local constant %struct.clk_ops, align 4
@.str.178 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"infra_pmic_ap\00", [18 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"infra_pmic_md\00", [18 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"infra_pmic_conn\00", [16 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"infra_scpsys\00", [19 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"infra_sej\00", [22 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"infra_apxgpt\00", [19 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"infra_gce\00", [22 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"infra_gce2\00", [21 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"infra_therm\00", [20 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"infra_i2c0\00", [21 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"infra_ap_dma_pseudo\00", [44 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"infra_i2c2\00", [21 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"infra_i2c3\00", [21 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"infra_pwm_h\00", [20 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"infra_pwm1\00", [21 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"infra_pwm2\00", [21 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"infra_pwm3\00", [21 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"infra_pwm4\00", [21 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"infra_pwm\00", [22 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"infra_uart0\00", [20 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"infra_uart1\00", [20 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"infra_uart2\00", [20 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"infra_uart3\00", [20 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"infra_gce_26m\00", [18 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"infra_cq_dma_fpc\00", [47 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"infra_btif\00", [21 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"infra_spi0\00", [21 x i8] zeroinitializer }, align 32
@infra1_cg_regs = internal constant { %struct.mtk_gate_regs, [20 x i8] } { %struct.mtk_gate_regs { i32 148, i32 140, i32 136 }, [20 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"infra_msdc0\00", [20 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"infra_msdc1\00", [20 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"infra_msdc2\00", [20 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"infra_msdc0_src\00", [16 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"infra_gcpu\00", [21 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"infra_trng\00", [21 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"infra_auxadc\00", [19 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"infra_cpum\00", [21 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"infra_ccif1_ap\00", [17 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"infra_ccif1_md\00", [17 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"infra_auxadc_md\00", [16 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"infra_pcie_tl_26m\00", [46 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"infra_msdc1_src\00", [16 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"infra_msdc2_src\00", [16 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"infra_pcie_tl_96m\00", [46 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"infra_pcie_pl_p_250m\00", [43 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"infra_device_apc\00", [47 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"infra_ccif_ap\00", [18 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"infra_debugsys\00", [17 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"infra_audio\00", [20 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"infra_ccif_md\00", [18 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"infra_dxcc_sec_core\00", [44 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"infra_dxcc_ao\00", [18 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"infra_dbg_trace\00", [16 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"infra_devmpu_b\00", [17 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"infra_dramc_f26m\00", [47 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"infra_irtx\00", [21 x i8] zeroinitializer }, align 32
@infra2_cg_regs = internal constant { %struct.mtk_gate_regs, [20 x i8] } { %struct.mtk_gate_regs { i32 172, i32 168, i32 164 }, [20 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"infra_ssusb\00", [20 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"infra_disp_pwm\00", [17 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"infra_cldma_b\00", [18 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"infra_audio_26m_b\00", [46 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"infra_modem_temp_share\00", [41 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"infra_spi1\00", [21 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"infra_i2c4\00", [21 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"infra_spi2\00", [21 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"infra_spi3\00", [21 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"infra_unipro_sys\00", [47 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"infra_unipro_tick\00", [46 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"infra_ufs_mp_sap_b\00", [45 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"infra_md32_b\00", [19 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"infra_unipro_mbist\00", [45 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"infra_i2c5\00", [21 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"infra_i2c5_arbiter\00", [45 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"infra_i2c5_imm\00", [17 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"infra_i2c1_arbiter\00", [45 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"infra_i2c1_imm\00", [17 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"infra_i2c2_arbiter\00", [45 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"infra_i2c2_imm\00", [17 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"infra_spi4\00", [21 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"infra_spi5\00", [21 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"infra_cq_dma\00", [19 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"infra_ufs\00", [22 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"infra_aes_ufsfde\00", [47 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"infra_ufs_tick\00", [17 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"infra_ssusb_xhci\00", [47 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"infra_msdc0_self\00", [47 x i8] zeroinitializer }, align 32
@infra3_cg_regs = internal constant { %struct.mtk_gate_regs, [20 x i8] } { %struct.mtk_gate_regs { i32 200, i32 196, i32 192 }, [20 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"infra_msdc1_self\00", [47 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"infra_msdc2_self\00", [47 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"infra_ufs_axi\00", [18 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"infra_i2c6\00", [21 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"infra_ap_msdc0\00", [17 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"infra_md_msdc0\00", [17 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"infra_ccif5_ap\00", [17 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"infra_ccif5_md\00", [17 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"infra_pcie_top_h_133m\00", [42 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"infra_flashif_top_h_133m\00", [39 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"infra_pcie_peri_26m\00", [44 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"infra_ccif2_ap\00", [17 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"infra_ccif2_md\00", [17 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"infra_ccif3_ap\00", [17 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"infra_ccif3_md\00", [17 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"infra_sej_f13m\00", [17 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"infra_aes\00", [22 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"infra_i2c7\00", [21 x i8] zeroinitializer }, align 32
@.str.279 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"infra_i2c8\00", [21 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"infra_fbist2fpc\00", [16 x i8] zeroinitializer }, align 32
@.str.281 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"infra_device_apc_sync\00", [42 x i8] zeroinitializer }, align 32
@.str.282 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"infra_dpmaif_main\00", [46 x i8] zeroinitializer }, align 32
@.str.283 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"infra_pcie_tl_32k\00", [46 x i8] zeroinitializer }, align 32
@.str.284 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"infra_ccif4_ap\00", [17 x i8] zeroinitializer }, align 32
@.str.285 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"infra_ccif4_md\00", [17 x i8] zeroinitializer }, align 32
@.str.286 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"infra_spi6\00", [21 x i8] zeroinitializer }, align 32
@.str.287 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"infra_spi7\00", [21 x i8] zeroinitializer }, align 32
@.str.288 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"infra_ap_dma\00", [19 x i8] zeroinitializer }, align 32
@infra4_cg_regs = internal constant { %struct.mtk_gate_regs, [20 x i8] } { %struct.mtk_gate_regs { i32 216, i32 212, i32 208 }, [20 x i8] zeroinitializer }, align 32
@.str.289 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"infra_133m\00", [21 x i8] zeroinitializer }, align 32
@infra5_cg_regs = internal constant { %struct.mtk_gate_regs, [20 x i8] } { %struct.mtk_gate_regs { i32 232, i32 228, i32 224 }, [20 x i8] zeroinitializer }, align 32
@.str.290 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"infra_66m\00", [22 x i8] zeroinitializer }, align 32
@.str.291 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"infra_66m_peri_bus\00", [45 x i8] zeroinitializer }, align 32
@.str.292 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"infra_free_dcm_133m\00", [44 x i8] zeroinitializer }, align 32
@.str.293 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"infra_free_dcm_66m\00", [45 x i8] zeroinitializer }, align 32
@.str.294 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"infra_peri_bus_dcm_133m\00", [40 x i8] zeroinitializer }, align 32
@.str.295 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"infra_peri_bus_dcm_66m\00", [41 x i8] zeroinitializer }, align 32
@.str.296 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"infra_flashif_peri_26m\00", [41 x i8] zeroinitializer }, align 32
@.str.297 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"infra_flashif_fsflash\00", [42 x i8] zeroinitializer }, align 32
@peri_clks = internal constant { [1 x %struct.mtk_gate], [36 x i8] } { [1 x %struct.mtk_gate] [%struct.mtk_gate { i32 0, ptr @.str.298, ptr @.str.93, ptr @peri_cg_regs, i32 31, ptr @mtk_clk_gate_ops_no_setclr_inv, i32 0 }], [36 x i8] zeroinitializer }, align 32
@.str.298 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"peri_periaxi\00", [19 x i8] zeroinitializer }, align 32
@peri_cg_regs = internal constant { %struct.mtk_gate_regs, [20 x i8] } { %struct.mtk_gate_regs { i32 524, i32 524, i32 524 }, [20 x i8] zeroinitializer }, align 32
@___asan_gen_.299 = private unnamed_addr constant [13 x i8] c"top_clk_data\00", align 1
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1180, i32 33 }
@___asan_gen_.302 = private unnamed_addr constant [15 x i8] c"top_early_divs\00", align 1
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 27, i32 38 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 28, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant [15 x i8] c"clk_mt8192_drv\00", align 1
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1313, i32 31 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1316, i32 11 }
@___asan_gen_.317 = private unnamed_addr constant [20 x i8] c"of_match_clk_mt8192\00", align 1
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1279, i32 34 }
@___asan_gen_.320 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1308, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant [5 x i8] c"plls\00", align 1
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1157, i32 34 }
@___asan_gen_.341 = private unnamed_addr constant [13 x i8] c"apmixed_clks\00", align 1
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 883, i32 30 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1158, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1160, i32 2 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1162, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1164, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1166, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1168, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1170, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1172, i32 2 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1174, i32 2 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1176, i32 2 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 884, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant [16 x i8] c"apmixed_cg_regs\00", align 1
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 874, i32 35 }
@___asan_gen_.380 = private unnamed_addr constant [15 x i8] c"top_fixed_clks\00", align 1
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 23, i32 35 }
@___asan_gen_.383 = private unnamed_addr constant [9 x i8] c"top_divs\00", align 1
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 31, i32 38 }
@___asan_gen_.386 = private unnamed_addr constant [14 x i8] c"top_mtk_muxes\00", align 1
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 706, i32 29 }
@___asan_gen_.389 = private unnamed_addr constant [16 x i8] c"mt8192_clk_lock\00", align 1
@___asan_gen_.392 = private unnamed_addr constant [10 x i8] c"top_muxes\00", align 1
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 846, i32 29 }
@___asan_gen_.395 = private unnamed_addr constant [13 x i8] c"top_adj_divs\00", align 1
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 860, i32 35 }
@___asan_gen_.398 = private unnamed_addr constant [9 x i8] c"top_clks\00", align 1
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1111, i32 30 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 24, i32 2 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 32, i32 2 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 33, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 34, i32 2 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 35, i32 2 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 36, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 37, i32 2 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 38, i32 2 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 39, i32 2 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 40, i32 2 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 41, i32 2 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 42, i32 2 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 43, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 44, i32 2 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 45, i32 2 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 46, i32 2 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 47, i32 2 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 48, i32 2 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 49, i32 2 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 50, i32 2 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 51, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 52, i32 2 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 53, i32 2 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 54, i32 2 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 55, i32 2 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 56, i32 2 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 57, i32 2 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 58, i32 2 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 59, i32 2 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 60, i32 2 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 61, i32 2 }
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 62, i32 2 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 63, i32 2 }
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 64, i32 2 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 65, i32 2 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 66, i32 2 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 67, i32 2 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 68, i32 2 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 69, i32 2 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 70, i32 2 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 71, i32 2 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 72, i32 2 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 73, i32 2 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 74, i32 2 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 75, i32 2 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 76, i32 2 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 77, i32 2 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 78, i32 2 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 79, i32 2 }
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 80, i32 2 }
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 81, i32 2 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 82, i32 2 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 83, i32 2 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 84, i32 2 }
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 85, i32 2 }
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 86, i32 2 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 87, i32 2 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 88, i32 2 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 89, i32 2 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 90, i32 2 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 91, i32 2 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 92, i32 2 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 93, i32 2 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 94, i32 2 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 95, i32 2 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 96, i32 2 }
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 97, i32 2 }
@___asan_gen_.610 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 98, i32 2 }
@___asan_gen_.613 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 99, i32 2 }
@___asan_gen_.616 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 100, i32 2 }
@___asan_gen_.619 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 101, i32 2 }
@___asan_gen_.622 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 102, i32 2 }
@___asan_gen_.625 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 708, i32 2 }
@___asan_gen_.626 = private unnamed_addr constant [12 x i8] c"axi_parents\00", align 1
@___asan_gen_.628 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 105, i32 27 }
@___asan_gen_.631 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 711, i32 2 }
@___asan_gen_.632 = private unnamed_addr constant [12 x i8] c"spm_parents\00", align 1
@___asan_gen_.634 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 115, i32 27 }
@___asan_gen_.637 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 714, i32 2 }
@___asan_gen_.638 = private unnamed_addr constant [12 x i8] c"scp_parents\00", align 1
@___asan_gen_.640 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 122, i32 27 }
@___asan_gen_.643 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 716, i32 2 }
@___asan_gen_.644 = private unnamed_addr constant [19 x i8] c"bus_aximem_parents\00", align 1
@___asan_gen_.646 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 133, i32 27 }
@___asan_gen_.649 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 720, i32 2 }
@___asan_gen_.650 = private unnamed_addr constant [13 x i8] c"disp_parents\00", align 1
@___asan_gen_.652 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 141, i32 27 }
@___asan_gen_.655 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 722, i32 2 }
@___asan_gen_.656 = private unnamed_addr constant [12 x i8] c"mdp_parents\00", align 1
@___asan_gen_.658 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 154, i32 27 }
@___asan_gen_.661 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 724, i32 2 }
@___asan_gen_.662 = private unnamed_addr constant [13 x i8] c"img1_parents\00", align 1
@___asan_gen_.664 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 168, i32 27 }
@___asan_gen_.667 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 726, i32 2 }
@___asan_gen_.668 = private unnamed_addr constant [13 x i8] c"img2_parents\00", align 1
@___asan_gen_.670 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 183, i32 27 }
@___asan_gen_.673 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 729, i32 2 }
@___asan_gen_.674 = private unnamed_addr constant [12 x i8] c"ipe_parents\00", align 1
@___asan_gen_.676 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 198, i32 27 }
@___asan_gen_.679 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 731, i32 2 }
@___asan_gen_.680 = private unnamed_addr constant [12 x i8] c"dpe_parents\00", align 1
@___asan_gen_.682 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 210, i32 27 }
@___asan_gen_.685 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 733, i32 2 }
@___asan_gen_.686 = private unnamed_addr constant [12 x i8] c"cam_parents\00", align 1
@___asan_gen_.688 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 221, i32 27 }
@___asan_gen_.691 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 735, i32 2 }
@___asan_gen_.692 = private unnamed_addr constant [12 x i8] c"ccu_parents\00", align 1
@___asan_gen_.694 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 234, i32 27 }
@___asan_gen_.697 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 738, i32 2 }
@___asan_gen_.698 = private unnamed_addr constant [13 x i8] c"dsp7_parents\00", align 1
@___asan_gen_.700 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 247, i32 27 }
@___asan_gen_.703 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 740, i32 2 }
@___asan_gen_.704 = private unnamed_addr constant [16 x i8] c"mfg_ref_parents\00", align 1
@___asan_gen_.706 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 258, i32 27 }
@___asan_gen_.709 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 742, i32 2 }
@___asan_gen_.710 = private unnamed_addr constant [16 x i8] c"mfg_pll_parents\00", align 1
@___asan_gen_.712 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 265, i32 27 }
@___asan_gen_.715 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 744, i32 2 }
@___asan_gen_.716 = private unnamed_addr constant [14 x i8] c"camtg_parents\00", align 1
@___asan_gen_.718 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 270, i32 27 }
@___asan_gen_.721 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 747, i32 2 }
@___asan_gen_.722 = private unnamed_addr constant [15 x i8] c"camtg2_parents\00", align 1
@___asan_gen_.724 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 281, i32 27 }
@___asan_gen_.727 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 749, i32 2 }
@___asan_gen_.728 = private unnamed_addr constant [15 x i8] c"camtg3_parents\00", align 1
@___asan_gen_.730 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 292, i32 27 }
@___asan_gen_.733 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 751, i32 2 }
@___asan_gen_.734 = private unnamed_addr constant [15 x i8] c"camtg4_parents\00", align 1
@___asan_gen_.736 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 303, i32 27 }
@___asan_gen_.739 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 753, i32 2 }
@___asan_gen_.740 = private unnamed_addr constant [15 x i8] c"camtg5_parents\00", align 1
@___asan_gen_.742 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 314, i32 27 }
@___asan_gen_.745 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 756, i32 2 }
@___asan_gen_.746 = private unnamed_addr constant [15 x i8] c"camtg6_parents\00", align 1
@___asan_gen_.748 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 325, i32 27 }
@___asan_gen_.751 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 758, i32 2 }
@___asan_gen_.752 = private unnamed_addr constant [13 x i8] c"uart_parents\00", align 1
@___asan_gen_.754 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 336, i32 27 }
@___asan_gen_.757 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 760, i32 2 }
@___asan_gen_.758 = private unnamed_addr constant [12 x i8] c"spi_parents\00", align 1
@___asan_gen_.760 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 341, i32 27 }
@___asan_gen_.763 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 762, i32 2 }
@___asan_gen_.764 = private unnamed_addr constant [19 x i8] c"msdc50_0_h_parents\00", align 1
@___asan_gen_.766 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 348, i32 27 }
@___asan_gen_.769 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 765, i32 2 }
@___asan_gen_.770 = private unnamed_addr constant [17 x i8] c"msdc50_0_parents\00", align 1
@___asan_gen_.772 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 354, i32 27 }
@___asan_gen_.775 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 767, i32 2 }
@___asan_gen_.776 = private unnamed_addr constant [17 x i8] c"msdc30_1_parents\00", align 1
@___asan_gen_.778 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 363, i32 27 }
@___asan_gen_.781 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 769, i32 2 }
@___asan_gen_.782 = private unnamed_addr constant [17 x i8] c"msdc30_2_parents\00", align 1
@___asan_gen_.784 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 371, i32 27 }
@___asan_gen_.787 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 771, i32 2 }
@___asan_gen_.788 = private unnamed_addr constant [14 x i8] c"audio_parents\00", align 1
@___asan_gen_.790 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 379, i32 27 }
@___asan_gen_.793 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 774, i32 2 }
@___asan_gen_.794 = private unnamed_addr constant [19 x i8] c"aud_intbus_parents\00", align 1
@___asan_gen_.796 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 386, i32 27 }
@___asan_gen_.799 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 776, i32 2 }
@___asan_gen_.800 = private unnamed_addr constant [21 x i8] c"pwrap_ulposc_parents\00", align 1
@___asan_gen_.802 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 392, i32 27 }
@___asan_gen_.805 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 778, i32 2 }
@___asan_gen_.806 = private unnamed_addr constant [12 x i8] c"atb_parents\00", align 1
@___asan_gen_.808 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 400, i32 27 }
@___asan_gen_.811 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 781, i32 2 }
@___asan_gen_.812 = private unnamed_addr constant [12 x i8] c"dpi_parents\00", align 1
@___asan_gen_.814 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 406, i32 27 }
@___asan_gen_.817 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 783, i32 2 }
@___asan_gen_.818 = private unnamed_addr constant [13 x i8] c"scam_parents\00", align 1
@___asan_gen_.820 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 414, i32 27 }
@___asan_gen_.823 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 785, i32 2 }
@___asan_gen_.824 = private unnamed_addr constant [17 x i8] c"disp_pwm_parents\00", align 1
@___asan_gen_.826 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 419, i32 27 }
@___asan_gen_.829 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 787, i32 2 }
@___asan_gen_.830 = private unnamed_addr constant [16 x i8] c"usb_top_parents\00", align 1
@___asan_gen_.832 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 427, i32 27 }
@___asan_gen_.835 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 790, i32 2 }
@___asan_gen_.836 = private unnamed_addr constant [19 x i8] c"ssusb_xhci_parents\00", align 1
@___asan_gen_.838 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 434, i32 27 }
@___asan_gen_.841 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 792, i32 2 }
@___asan_gen_.842 = private unnamed_addr constant [12 x i8] c"i2c_parents\00", align 1
@___asan_gen_.844 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 441, i32 27 }
@___asan_gen_.847 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 794, i32 2 }
@___asan_gen_.848 = private unnamed_addr constant [15 x i8] c"seninf_parents\00", align 1
@___asan_gen_.850 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 447, i32 27 }
@___asan_gen_.853 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 796, i32 2 }
@___asan_gen_.854 = private unnamed_addr constant [16 x i8] c"seninf1_parents\00", align 1
@___asan_gen_.856 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 458, i32 27 }
@___asan_gen_.859 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 799, i32 2 }
@___asan_gen_.860 = private unnamed_addr constant [16 x i8] c"seninf2_parents\00", align 1
@___asan_gen_.862 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 469, i32 27 }
@___asan_gen_.865 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 801, i32 2 }
@___asan_gen_.866 = private unnamed_addr constant [16 x i8] c"seninf3_parents\00", align 1
@___asan_gen_.868 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 480, i32 27 }
@___asan_gen_.871 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 803, i32 2 }
@___asan_gen_.872 = private unnamed_addr constant [11 x i8] c"tl_parents\00", align 1
@___asan_gen_.874 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 491, i32 27 }
@___asan_gen_.877 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 805, i32 2 }
@___asan_gen_.878 = private unnamed_addr constant [13 x i8] c"dxcc_parents\00", align 1
@___asan_gen_.880 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 497, i32 27 }
@___asan_gen_.883 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 808, i32 2 }
@___asan_gen_.884 = private unnamed_addr constant [19 x i8] c"aud_engen1_parents\00", align 1
@___asan_gen_.886 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 504, i32 27 }
@___asan_gen_.889 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 810, i32 2 }
@___asan_gen_.890 = private unnamed_addr constant [19 x i8] c"aud_engen2_parents\00", align 1
@___asan_gen_.892 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 511, i32 27 }
@___asan_gen_.895 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 812, i32 2 }
@___asan_gen_.896 = private unnamed_addr constant [19 x i8] c"aes_ufsfde_parents\00", align 1
@___asan_gen_.898 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 518, i32 27 }
@___asan_gen_.901 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 814, i32 2 }
@___asan_gen_.902 = private unnamed_addr constant [12 x i8] c"ufs_parents\00", align 1
@___asan_gen_.904 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 528, i32 27 }
@___asan_gen_.907 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 817, i32 2 }
@___asan_gen_.908 = private unnamed_addr constant [14 x i8] c"aud_1_parents\00", align 1
@___asan_gen_.910 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 538, i32 27 }
@___asan_gen_.913 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 819, i32 2 }
@___asan_gen_.914 = private unnamed_addr constant [14 x i8] c"aud_2_parents\00", align 1
@___asan_gen_.916 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 543, i32 27 }
@___asan_gen_.919 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 821, i32 2 }
@___asan_gen_.920 = private unnamed_addr constant [13 x i8] c"adsp_parents\00", align 1
@___asan_gen_.922 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 548, i32 27 }
@___asan_gen_.925 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 823, i32 2 }
@___asan_gen_.926 = private unnamed_addr constant [20 x i8] c"dpmaif_main_parents\00", align 1
@___asan_gen_.928 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 559, i32 27 }
@___asan_gen_.931 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 826, i32 2 }
@___asan_gen_.932 = private unnamed_addr constant [13 x i8] c"venc_parents\00", align 1
@___asan_gen_.934 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 567, i32 27 }
@___asan_gen_.937 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 828, i32 2 }
@___asan_gen_.938 = private unnamed_addr constant [13 x i8] c"vdec_parents\00", align 1
@___asan_gen_.940 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 586, i32 27 }
@___asan_gen_.943 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 830, i32 2 }
@___asan_gen_.944 = private unnamed_addr constant [14 x i8] c"camtm_parents\00", align 1
@___asan_gen_.946 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 605, i32 27 }
@___asan_gen_.949 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 832, i32 2 }
@___asan_gen_.950 = private unnamed_addr constant [12 x i8] c"pwm_parents\00", align 1
@___asan_gen_.952 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 612, i32 27 }
@___asan_gen_.955 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 835, i32 2 }
@___asan_gen_.956 = private unnamed_addr constant [16 x i8] c"audio_h_parents\00", align 1
@___asan_gen_.958 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 617, i32 27 }
@___asan_gen_.961 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 837, i32 2 }
@___asan_gen_.962 = private unnamed_addr constant [17 x i8] c"spmi_mst_parents\00", align 1
@___asan_gen_.964 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 624, i32 27 }
@___asan_gen_.967 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 839, i32 2 }
@___asan_gen_.968 = private unnamed_addr constant [20 x i8] c"aes_msdcfde_parents\00", align 1
@___asan_gen_.970 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 634, i32 27 }
@___asan_gen_.973 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 842, i32 2 }
@___asan_gen_.974 = private unnamed_addr constant [15 x i8] c"sflash_parents\00", align 1
@___asan_gen_.976 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 643, i32 27 }
@___asan_gen_.979 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 119, i32 2 }
@___asan_gen_.982 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 21, i32 8 }
@___asan_gen_.985 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 848, i32 2 }
@___asan_gen_.986 = private unnamed_addr constant [20 x i8] c"apll_i2s0_m_parents\00", align 1
@___asan_gen_.988 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 650, i32 27 }
@___asan_gen_.991 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 849, i32 2 }
@___asan_gen_.992 = private unnamed_addr constant [20 x i8] c"apll_i2s1_m_parents\00", align 1
@___asan_gen_.994 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 655, i32 27 }
@___asan_gen_.997 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 850, i32 2 }
@___asan_gen_.998 = private unnamed_addr constant [20 x i8] c"apll_i2s2_m_parents\00", align 1
@___asan_gen_.1000 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 660, i32 27 }
@___asan_gen_.1003 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 851, i32 2 }
@___asan_gen_.1004 = private unnamed_addr constant [20 x i8] c"apll_i2s3_m_parents\00", align 1
@___asan_gen_.1006 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 665, i32 27 }
@___asan_gen_.1009 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 852, i32 2 }
@___asan_gen_.1010 = private unnamed_addr constant [20 x i8] c"apll_i2s4_m_parents\00", align 1
@___asan_gen_.1012 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 670, i32 27 }
@___asan_gen_.1015 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 853, i32 2 }
@___asan_gen_.1016 = private unnamed_addr constant [20 x i8] c"apll_i2s5_m_parents\00", align 1
@___asan_gen_.1018 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 675, i32 27 }
@___asan_gen_.1021 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 854, i32 2 }
@___asan_gen_.1022 = private unnamed_addr constant [20 x i8] c"apll_i2s6_m_parents\00", align 1
@___asan_gen_.1024 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 680, i32 27 }
@___asan_gen_.1027 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 855, i32 2 }
@___asan_gen_.1028 = private unnamed_addr constant [20 x i8] c"apll_i2s7_m_parents\00", align 1
@___asan_gen_.1030 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 685, i32 27 }
@___asan_gen_.1033 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 856, i32 2 }
@___asan_gen_.1034 = private unnamed_addr constant [20 x i8] c"apll_i2s8_m_parents\00", align 1
@___asan_gen_.1036 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 690, i32 27 }
@___asan_gen_.1039 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 857, i32 2 }
@___asan_gen_.1040 = private unnamed_addr constant [20 x i8] c"apll_i2s9_m_parents\00", align 1
@___asan_gen_.1042 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 695, i32 27 }
@___asan_gen_.1045 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 861, i32 2 }
@___asan_gen_.1048 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 862, i32 2 }
@___asan_gen_.1051 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 863, i32 2 }
@___asan_gen_.1054 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 864, i32 2 }
@___asan_gen_.1057 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 865, i32 2 }
@___asan_gen_.1060 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 866, i32 2 }
@___asan_gen_.1063 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 867, i32 2 }
@___asan_gen_.1066 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 868, i32 2 }
@___asan_gen_.1069 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 869, i32 2 }
@___asan_gen_.1072 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 870, i32 2 }
@___asan_gen_.1075 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 871, i32 2 }
@___asan_gen_.1078 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1112, i32 2 }
@___asan_gen_.1079 = private unnamed_addr constant [12 x i8] c"top_cg_regs\00", align 1
@___asan_gen_.1081 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1102, i32 35 }
@___asan_gen_.1084 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1113, i32 2 }
@___asan_gen_.1085 = private unnamed_addr constant [11 x i8] c"infra_clks\00", align 1
@___asan_gen_.1087 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 958, i32 30 }
@___asan_gen_.1090 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 960, i32 2 }
@___asan_gen_.1091 = private unnamed_addr constant [15 x i8] c"infra0_cg_regs\00", align 1
@___asan_gen_.1093 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 887, i32 35 }
@___asan_gen_.1096 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 961, i32 2 }
@___asan_gen_.1099 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 962, i32 2 }
@___asan_gen_.1102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 963, i32 2 }
@___asan_gen_.1105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 964, i32 2 }
@___asan_gen_.1108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 965, i32 2 }
@___asan_gen_.1111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 966, i32 2 }
@___asan_gen_.1114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 967, i32 2 }
@___asan_gen_.1117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 968, i32 2 }
@___asan_gen_.1120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 969, i32 2 }
@___asan_gen_.1123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 970, i32 2 }
@___asan_gen_.1126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 971, i32 2 }
@___asan_gen_.1129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 972, i32 2 }
@___asan_gen_.1132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 973, i32 2 }
@___asan_gen_.1135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 974, i32 2 }
@___asan_gen_.1138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 975, i32 2 }
@___asan_gen_.1141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 976, i32 2 }
@___asan_gen_.1144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 977, i32 2 }
@___asan_gen_.1147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 978, i32 2 }
@___asan_gen_.1150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 979, i32 2 }
@___asan_gen_.1153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 980, i32 2 }
@___asan_gen_.1156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 981, i32 2 }
@___asan_gen_.1159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 982, i32 2 }
@___asan_gen_.1162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 983, i32 2 }
@___asan_gen_.1165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 984, i32 2 }
@___asan_gen_.1168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 985, i32 2 }
@___asan_gen_.1171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 986, i32 2 }
@___asan_gen_.1174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 988, i32 2 }
@___asan_gen_.1175 = private unnamed_addr constant [15 x i8] c"infra1_cg_regs\00", align 1
@___asan_gen_.1177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 893, i32 35 }
@___asan_gen_.1180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 989, i32 2 }
@___asan_gen_.1183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 990, i32 2 }
@___asan_gen_.1186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 991, i32 2 }
@___asan_gen_.1189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 992, i32 2 }
@___asan_gen_.1192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 993, i32 2 }
@___asan_gen_.1195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 994, i32 2 }
@___asan_gen_.1198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 995, i32 2 }
@___asan_gen_.1201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 996, i32 2 }
@___asan_gen_.1204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 997, i32 2 }
@___asan_gen_.1207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 998, i32 2 }
@___asan_gen_.1210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 999, i32 2 }
@___asan_gen_.1213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1000, i32 2 }
@___asan_gen_.1216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1001, i32 2 }
@___asan_gen_.1219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1002, i32 2 }
@___asan_gen_.1222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1003, i32 2 }
@___asan_gen_.1225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1004, i32 2 }
@___asan_gen_.1228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1005, i32 2 }
@___asan_gen_.1231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1006, i32 2 }
@___asan_gen_.1234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1007, i32 2 }
@___asan_gen_.1237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1008, i32 2 }
@___asan_gen_.1240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1009, i32 2 }
@___asan_gen_.1243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1010, i32 2 }
@___asan_gen_.1246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1011, i32 2 }
@___asan_gen_.1249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1012, i32 2 }
@___asan_gen_.1252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1013, i32 2 }
@___asan_gen_.1255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1014, i32 2 }
@___asan_gen_.1258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1016, i32 2 }
@___asan_gen_.1259 = private unnamed_addr constant [15 x i8] c"infra2_cg_regs\00", align 1
@___asan_gen_.1261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 899, i32 35 }
@___asan_gen_.1264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1017, i32 2 }
@___asan_gen_.1267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1018, i32 2 }
@___asan_gen_.1270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1019, i32 2 }
@___asan_gen_.1273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1020, i32 2 }
@___asan_gen_.1276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1021, i32 2 }
@___asan_gen_.1279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1022, i32 2 }
@___asan_gen_.1282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1023, i32 2 }
@___asan_gen_.1285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1024, i32 2 }
@___asan_gen_.1288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1025, i32 2 }
@___asan_gen_.1291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1026, i32 2 }
@___asan_gen_.1294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1027, i32 2 }
@___asan_gen_.1297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1028, i32 2 }
@___asan_gen_.1300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1029, i32 2 }
@___asan_gen_.1303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1030, i32 2 }
@___asan_gen_.1306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1031, i32 2 }
@___asan_gen_.1309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1032, i32 2 }
@___asan_gen_.1312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1033, i32 2 }
@___asan_gen_.1315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1034, i32 2 }
@___asan_gen_.1318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1035, i32 2 }
@___asan_gen_.1321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1036, i32 2 }
@___asan_gen_.1324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1037, i32 2 }
@___asan_gen_.1327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1038, i32 2 }
@___asan_gen_.1330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1039, i32 2 }
@___asan_gen_.1333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1040, i32 2 }
@___asan_gen_.1336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1041, i32 2 }
@___asan_gen_.1339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1042, i32 2 }
@___asan_gen_.1342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1043, i32 2 }
@___asan_gen_.1345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1044, i32 2 }
@___asan_gen_.1348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1046, i32 2 }
@___asan_gen_.1349 = private unnamed_addr constant [15 x i8] c"infra3_cg_regs\00", align 1
@___asan_gen_.1351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 905, i32 35 }
@___asan_gen_.1354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1047, i32 2 }
@___asan_gen_.1357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1048, i32 2 }
@___asan_gen_.1360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1049, i32 2 }
@___asan_gen_.1363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1050, i32 2 }
@___asan_gen_.1366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1051, i32 2 }
@___asan_gen_.1369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1052, i32 2 }
@___asan_gen_.1372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1053, i32 2 }
@___asan_gen_.1375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1054, i32 2 }
@___asan_gen_.1378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1055, i32 2 }
@___asan_gen_.1381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1056, i32 2 }
@___asan_gen_.1384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1057, i32 2 }
@___asan_gen_.1387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1058, i32 2 }
@___asan_gen_.1390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1059, i32 2 }
@___asan_gen_.1393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1060, i32 2 }
@___asan_gen_.1396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1061, i32 2 }
@___asan_gen_.1399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1062, i32 2 }
@___asan_gen_.1402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1063, i32 2 }
@___asan_gen_.1405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1064, i32 2 }
@___asan_gen_.1408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1065, i32 2 }
@___asan_gen_.1411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1066, i32 2 }
@___asan_gen_.1414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1067, i32 2 }
@___asan_gen_.1417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1069, i32 2 }
@___asan_gen_.1420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1070, i32 2 }
@___asan_gen_.1423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1071, i32 2 }
@___asan_gen_.1426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1072, i32 2 }
@___asan_gen_.1429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1073, i32 2 }
@___asan_gen_.1432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1074, i32 2 }
@___asan_gen_.1435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1076, i32 2 }
@___asan_gen_.1436 = private unnamed_addr constant [15 x i8] c"infra4_cg_regs\00", align 1
@___asan_gen_.1438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 911, i32 35 }
@___asan_gen_.1441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1078, i32 2 }
@___asan_gen_.1442 = private unnamed_addr constant [15 x i8] c"infra5_cg_regs\00", align 1
@___asan_gen_.1444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 917, i32 35 }
@___asan_gen_.1447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1079, i32 2 }
@___asan_gen_.1450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1080, i32 2 }
@___asan_gen_.1453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1081, i32 2 }
@___asan_gen_.1456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1082, i32 2 }
@___asan_gen_.1459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1083, i32 2 }
@___asan_gen_.1462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1084, i32 2 }
@___asan_gen_.1465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1085, i32 2 }
@___asan_gen_.1468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1086, i32 2 }
@___asan_gen_.1469 = private unnamed_addr constant [10 x i8] c"peri_clks\00", align 1
@___asan_gen_.1471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1098, i32 30 }
@___asan_gen_.1472 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1099, i32 2 }
@___asan_gen_.1475 = private unnamed_addr constant [13 x i8] c"peri_cg_regs\00", align 1
@___asan_gen_.1476 = private constant [37 x i8] c"../drivers/clk/mediatek/clk-mt8192.c\00", align 1
@___asan_gen_.1477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1476, i32 1089, i32 35 }
@llvm.compiler.used = appending global [396 x ptr] [ptr @__initcall__kmod_clk_mt8192__183_1326_clk_mt8192_init3, ptr @__of_table_mt8192_topckgen, ptr @clk_mt8192_probe._entry, ptr @clk_mt8192_probe._entry_ptr, ptr @top_clk_data, ptr @top_early_divs, ptr @.str, ptr @.str.1, ptr @clk_mt8192_drv, ptr @.str.2, ptr @of_match_clk_mt8192, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @plls, ptr @apmixed_clks, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @apmixed_cg_regs, ptr @top_fixed_clks, ptr @top_divs, ptr @top_mtk_muxes, ptr @mt8192_clk_lock, ptr @top_muxes, ptr @top_adj_divs, ptr @top_clks, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @axi_parents, ptr @.str.94, ptr @spm_parents, ptr @.str.95, ptr @scp_parents, ptr @.str.96, ptr @bus_aximem_parents, ptr @.str.97, ptr @disp_parents, ptr @.str.98, ptr @mdp_parents, ptr @.str.99, ptr @img1_parents, ptr @.str.100, ptr @img2_parents, ptr @.str.101, ptr @ipe_parents, ptr @.str.102, ptr @dpe_parents, ptr @.str.103, ptr @cam_parents, ptr @.str.104, ptr @ccu_parents, ptr @.str.105, ptr @dsp7_parents, ptr @.str.106, ptr @mfg_ref_parents, ptr @.str.107, ptr @mfg_pll_parents, ptr @.str.108, ptr @camtg_parents, ptr @.str.109, ptr @camtg2_parents, ptr @.str.110, ptr @camtg3_parents, ptr @.str.111, ptr @camtg4_parents, ptr @.str.112, ptr @camtg5_parents, ptr @.str.113, ptr @camtg6_parents, ptr @.str.114, ptr @uart_parents, ptr @.str.115, ptr @spi_parents, ptr @.str.116, ptr @msdc50_0_h_parents, ptr @.str.117, ptr @msdc50_0_parents, ptr @.str.118, ptr @msdc30_1_parents, ptr @.str.119, ptr @msdc30_2_parents, ptr @.str.120, ptr @audio_parents, ptr @.str.121, ptr @aud_intbus_parents, ptr @.str.122, ptr @pwrap_ulposc_parents, ptr @.str.123, ptr @atb_parents, ptr @.str.124, ptr @dpi_parents, ptr @.str.125, ptr @scam_parents, ptr @.str.126, ptr @disp_pwm_parents, ptr @.str.127, ptr @usb_top_parents, ptr @.str.128, ptr @ssusb_xhci_parents, ptr @.str.129, ptr @i2c_parents, ptr @.str.130, ptr @seninf_parents, ptr @.str.131, ptr @seninf1_parents, ptr @.str.132, ptr @seninf2_parents, ptr @.str.133, ptr @seninf3_parents, ptr @.str.134, ptr @tl_parents, ptr @.str.135, ptr @dxcc_parents, ptr @.str.136, ptr @aud_engen1_parents, ptr @.str.137, ptr @aud_engen2_parents, ptr @.str.138, ptr @aes_ufsfde_parents, ptr @.str.139, ptr @ufs_parents, ptr @.str.140, ptr @aud_1_parents, ptr @.str.141, ptr @aud_2_parents, ptr @.str.142, ptr @adsp_parents, ptr @.str.143, ptr @dpmaif_main_parents, ptr @.str.144, ptr @venc_parents, ptr @.str.145, ptr @vdec_parents, ptr @.str.146, ptr @camtm_parents, ptr @.str.147, ptr @pwm_parents, ptr @.str.148, ptr @audio_h_parents, ptr @.str.149, ptr @spmi_mst_parents, ptr @.str.150, ptr @aes_msdcfde_parents, ptr @.str.151, ptr @sflash_parents, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @apll_i2s0_m_parents, ptr @.str.155, ptr @apll_i2s1_m_parents, ptr @.str.156, ptr @apll_i2s2_m_parents, ptr @.str.157, ptr @apll_i2s3_m_parents, ptr @.str.158, ptr @apll_i2s4_m_parents, ptr @.str.159, ptr @apll_i2s5_m_parents, ptr @.str.160, ptr @apll_i2s6_m_parents, ptr @.str.161, ptr @apll_i2s7_m_parents, ptr @.str.162, ptr @apll_i2s8_m_parents, ptr @.str.163, ptr @apll_i2s9_m_parents, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @top_cg_regs, ptr @.str.176, ptr @infra_clks, ptr @.str.177, ptr @infra0_cg_regs, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @infra1_cg_regs, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @infra2_cg_regs, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.str.254, ptr @.str.255, ptr @.str.256, ptr @.str.257, ptr @.str.258, ptr @.str.259, ptr @.str.260, ptr @infra3_cg_regs, ptr @.str.261, ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr @.str.266, ptr @.str.267, ptr @.str.268, ptr @.str.269, ptr @.str.270, ptr @.str.271, ptr @.str.272, ptr @.str.273, ptr @.str.274, ptr @.str.275, ptr @.str.276, ptr @.str.277, ptr @.str.278, ptr @.str.279, ptr @.str.280, ptr @.str.281, ptr @.str.282, ptr @.str.283, ptr @.str.284, ptr @.str.285, ptr @.str.286, ptr @.str.287, ptr @.str.288, ptr @infra4_cg_regs, ptr @.str.289, ptr @infra5_cg_regs, ptr @.str.290, ptr @.str.291, ptr @.str.292, ptr @.str.293, ptr @.str.294, ptr @.str.295, ptr @.str.296, ptr @.str.297, ptr @peri_clks, ptr @.str.298, ptr @peri_cg_regs], section "llvm.metadata"
@0 = internal global [393 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @top_clk_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @top_early_divs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mt8192_drv to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_match_clk_mt8192 to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mt8192_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plls to i32), i32 960, i32 1184, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apmixed_clks to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apmixed_cg_regs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @top_fixed_clks to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @top_divs to i32), i32 1420, i32 1792, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @top_mtk_muxes to i32), i32 2596, i32 3264, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8192_clk_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @top_muxes to i32), i32 400, i32 512, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @top_adj_divs to i32), i32 440, i32 544, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @top_clks to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.610 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.613 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.616 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.619 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.622 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.625 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axi_parents to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.628 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spm_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.634 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scp_parents to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.640 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bus_aximem_parents to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.646 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_parents to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.652 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mdp_parents to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.658 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img1_parents to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.664 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img2_parents to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipe_parents to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpe_parents to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_parents to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.688 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ccu_parents to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.694 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp7_parents to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.700 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.703 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mfg_ref_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.706 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mfg_pll_parents to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.715 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @camtg_parents to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @camtg2_parents to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @camtg3_parents to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @camtg4_parents to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @camtg5_parents to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @camtg6_parents to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.751 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart_parents to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.757 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msdc50_0_h_parents to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msdc50_0_parents to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.775 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msdc30_1_parents to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.781 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msdc30_2_parents to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.787 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aud_intbus_parents to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwrap_ulposc_parents to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atb_parents to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpi_parents to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.817 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scam_parents to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_pwm_parents to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.826 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_top_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.832 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssusb_xhci_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.838 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_parents to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seninf_parents to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.850 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seninf1_parents to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seninf2_parents to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seninf3_parents to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tl_parents to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dxcc_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.880 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aud_engen1_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.886 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aud_engen2_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.892 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aes_ufsfde_parents to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.898 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ufs_parents to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.904 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aud_1_parents to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.910 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aud_2_parents to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.916 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adsp_parents to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpmaif_main_parents to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.928 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venc_parents to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.937 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_parents to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.940 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @camtm_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.946 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_parents to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.950 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.952 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_h_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.958 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spmi_mst_parents to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aes_msdcfde_parents to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.973 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sflash_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.979 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.985 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apll_i2s0_m_parents to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.991 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apll_i2s1_m_parents to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.994 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.997 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apll_i2s2_m_parents to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1003 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apll_i2s3_m_parents to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1006 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1009 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apll_i2s4_m_parents to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1012 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1015 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apll_i2s5_m_parents to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1018 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1021 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apll_i2s6_m_parents to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apll_i2s7_m_parents to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1030 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apll_i2s8_m_parents to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1036 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apll_i2s9_m_parents to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1042 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1048 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1054 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1060 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1063 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1066 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1069 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1075 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1078 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @top_cg_regs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1084 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @infra_clks to i32), i32 3388, i32 4224, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1090 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @infra0_cg_regs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1096 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @infra1_cg_regs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1175 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @infra2_cg_regs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1259 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @infra3_cg_regs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1349 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.283 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.287 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.288 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @infra4_cg_regs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1436 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @infra5_cg_regs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1442 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.290 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.292 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.293 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.294 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.295 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.296 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.297 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @peri_clks to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1469 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.298 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1472 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @peri_cg_regs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1475 to i32), i32 ptrtoint (ptr @___asan_gen_.1476 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1477 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mt8192_topckgen_of_clk_init_driver(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %_flags.i = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %_flags.i) #4
  %call.i = tail call ptr @mtk_alloc_clk_data(i32 noundef 155) #4
  store ptr %call.i, ptr @top_clk_data, align 4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.clk_mt8192_top_init_early.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.clk_mt8192_top_init_early.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %clk_mt8192_top_init_early.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.05.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %1, i32 %i.05.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -517 to ptr), ptr %arrayidx.i, align 4
  %inc.i = add nuw nsw i32 %i.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 155
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mtk_clk_register_factors(ptr noundef nonnull @top_early_divs, i32 noundef 1, ptr noundef nonnull %call.i) #4
  %3 = load ptr, ptr @top_clk_data, align 4
  %call2.i = tail call i32 @of_clk_add_provider(ptr noundef %np, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %3) #4
  br label %clk_mt8192_top_init_early.exit

clk_mt8192_top_init_early.exit:                   ; preds = %for.end.i, %entry.clk_mt8192_top_init_early.exit_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_mt8192_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @clk_mt8192_drv, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mtk_alloc_clk_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_clk_register_factors(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_mt8192_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 %call(ptr noundef %pdev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.3, ptr noundef %1, i32 noundef %call1) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call1, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_mt8192_apmixed_probe(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @mtk_alloc_clk_data(i32 noundef 11) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mtk_clk_register_plls(ptr noundef %1, ptr noundef nonnull @plls, i32 noundef 10, ptr noundef nonnull %call) #4
  %call1 = tail call i32 @mtk_clk_register_gates(ptr noundef %1, ptr noundef nonnull @apmixed_clks, i32 noundef 1, ptr noundef nonnull %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call5 = tail call i32 @of_clk_add_provider(ptr noundef %1, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull %call) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ -12, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_mt8192_top_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr @top_clk_data, align 4
  tail call void @mtk_clk_register_fixed_clks(ptr noundef nonnull @top_fixed_clks, i32 noundef 1, ptr noundef %3) #4
  %4 = load ptr, ptr @top_clk_data, align 4
  tail call void @mtk_clk_register_factors(ptr noundef nonnull @top_early_divs, i32 noundef 1, ptr noundef %4) #4
  %5 = load ptr, ptr @top_clk_data, align 4
  tail call void @mtk_clk_register_factors(ptr noundef nonnull @top_divs, i32 noundef 71, ptr noundef %5) #4
  %6 = load ptr, ptr @top_clk_data, align 4
  %call3 = tail call i32 @mtk_clk_register_muxes(ptr noundef nonnull @top_mtk_muxes, i32 noundef 59, ptr noundef %1, ptr noundef nonnull @mt8192_clk_lock, ptr noundef %6) #4
  %7 = load ptr, ptr @top_clk_data, align 4
  tail call void @mtk_clk_register_composites(ptr noundef nonnull @top_muxes, i32 noundef 10, ptr noundef %call, ptr noundef nonnull @mt8192_clk_lock, ptr noundef %7) #4
  %8 = load ptr, ptr @top_clk_data, align 4
  tail call void @mtk_clk_register_composites(ptr noundef nonnull @top_adj_divs, i32 noundef 11, ptr noundef %call, ptr noundef nonnull @mt8192_clk_lock, ptr noundef %8) #4
  %9 = load ptr, ptr @top_clk_data, align 4
  %call4 = tail call i32 @mtk_clk_register_gates(ptr noundef %1, ptr noundef nonnull @top_clks, i32 noundef 2, ptr noundef %9) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %10 = load ptr, ptr @top_clk_data, align 4
  %call7 = tail call i32 @of_clk_add_provider(ptr noundef %1, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %10) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %call7, %if.end6 ], [ %call4, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_mt8192_infra_probe(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @mtk_alloc_clk_data(i32 noundef 121) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @mtk_clk_register_gates(ptr noundef %1, ptr noundef nonnull @infra_clks, i32 noundef 121, ptr noundef nonnull %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call5 = tail call i32 @of_clk_add_provider(ptr noundef %1, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull %call) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ -12, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_mt8192_peri_probe(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @mtk_alloc_clk_data(i32 noundef 1) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @mtk_clk_register_gates(ptr noundef %1, ptr noundef nonnull @peri_clks, i32 noundef 1, ptr noundef nonnull %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call5 = tail call i32 @of_clk_add_provider(ptr noundef %1, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull %call) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.end4 ], [ -12, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_clk_register_plls(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_clk_register_gates(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_clk_register_fixed_clks(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_clk_register_muxes(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_clk_register_composites(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 393)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 393)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !156, !158, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !411, !413, !415, !417, !419, !421, !423, !425, !427, !429, !431, !433, !435, !437, !439, !441, !443, !445, !446, !448, !450, !452, !454, !456, !458, !460, !462, !464, !466, !468, !470, !472, !474, !476, !478, !480, !482, !484, !486, !488, !490, !492, !494, !496, !498, !500, !502, !504, !506, !508, !510, !512, !514, !516, !518, !520, !522, !524, !526, !528, !530, !532, !534, !536, !538, !540, !542, !544, !546, !548, !550, !552, !554, !556, !558, !560, !562, !564, !566, !568, !570, !572, !574, !576, !578, !580, !582, !584, !586, !588, !590, !592, !594, !596, !598, !600, !602, !604, !606, !608, !610, !612, !614, !616, !618, !620, !622, !624, !626, !628, !630, !632, !634, !636, !638, !640, !642, !644, !646, !648, !650, !652, !654, !656, !658, !660, !662, !664, !666, !668, !670, !672, !674, !676, !678, !680, !682, !684, !686, !688, !690, !692, !694, !696, !698, !700, !702, !704, !706, !708, !710, !712, !714, !716, !718, !720, !722, !724, !726, !728, !730, !732, !734, !736, !738, !740, !742, !744, !746, !748, !750, !752, !754, !756, !758, !760, !762, !764, !766, !768, !770, !772, !774, !776, !778, !780}
!llvm.module.flags = !{!782, !783, !784, !785, !786, !787, !788, !789}
!llvm.ident = !{!790}

!0 = !{ptr @__of_table_mt8192_topckgen, !1, !"__of_table_mt8192_topckgen", i1 false, i1 false}
!1 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1198, i32 1}
!2 = !{ptr @__initcall__kmod_clk_mt8192__183_1326_clk_mt8192_init3, !3, !"__initcall__kmod_clk_mt8192__183_1326_clk_mt8192_init3", i1 false, i1 false}
!3 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1326, i32 1}
!4 = !{ptr @top_clk_data, !5, !"top_clk_data", i1 false, i1 false}
!5 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1180, i32 33}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 28, i32 2}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @top_early_divs, !10, !"top_early_divs", i1 false, i1 false}
!10 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 27, i32 38}
!11 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1316, i32 11}
!13 = !{ptr @clk_mt8192_drv, !14, !"clk_mt8192_drv", i1 false, i1 false}
!14 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1313, i32 31}
!15 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1308, i32 3}
!17 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @clk_mt8192_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @clk_mt8192_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @of_match_clk_mt8192, !24, !"of_match_clk_mt8192", i1 false, i1 false}
!24 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1279, i32 34}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1158, i32 2}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1160, i32 2}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1162, i32 2}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1164, i32 2}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1166, i32 2}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1168, i32 2}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1170, i32 2}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1172, i32 2}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1174, i32 2}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1176, i32 2}
!45 = !{ptr @plls, !46, !"plls", i1 false, i1 false}
!46 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1157, i32 34}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 884, i32 2}
!49 = !{ptr @apmixed_clks, !50, !"apmixed_clks", i1 false, i1 false}
!50 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 883, i32 30}
!51 = !{ptr @apmixed_cg_regs, !52, !"apmixed_cg_regs", i1 false, i1 false}
!52 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 874, i32 35}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 24, i32 2}
!55 = !{ptr @top_fixed_clks, !56, !"top_fixed_clks", i1 false, i1 false}
!56 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 23, i32 35}
!57 = !{ptr @.str.20, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 32, i32 2}
!59 = !{ptr @.str.21, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 33, i32 2}
!61 = !{ptr @.str.22, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 34, i32 2}
!63 = !{ptr @.str.23, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 35, i32 2}
!65 = !{ptr @.str.24, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 36, i32 2}
!67 = !{ptr @.str.25, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 37, i32 2}
!69 = !{ptr @.str.26, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 38, i32 2}
!71 = !{ptr @.str.27, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 39, i32 2}
!73 = !{ptr @.str.28, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 40, i32 2}
!75 = !{ptr @.str.29, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 41, i32 2}
!77 = !{ptr @.str.30, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 42, i32 2}
!79 = !{ptr @.str.31, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 43, i32 2}
!81 = !{ptr @.str.32, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 44, i32 2}
!83 = !{ptr @.str.33, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 45, i32 2}
!85 = !{ptr @.str.34, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 46, i32 2}
!87 = !{ptr @.str.35, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 47, i32 2}
!89 = !{ptr @.str.36, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 48, i32 2}
!91 = !{ptr @.str.37, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 49, i32 2}
!93 = !{ptr @.str.38, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 50, i32 2}
!95 = !{ptr @.str.39, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 51, i32 2}
!97 = !{ptr @.str.40, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 52, i32 2}
!99 = !{ptr @.str.41, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 53, i32 2}
!101 = !{ptr @.str.42, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 54, i32 2}
!103 = !{ptr @.str.43, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 55, i32 2}
!105 = !{ptr @.str.44, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 56, i32 2}
!107 = !{ptr @.str.45, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 57, i32 2}
!109 = !{ptr @.str.46, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 58, i32 2}
!111 = !{ptr @.str.47, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 59, i32 2}
!113 = !{ptr @.str.48, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 60, i32 2}
!115 = !{ptr @.str.49, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 61, i32 2}
!117 = !{ptr @.str.50, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 62, i32 2}
!119 = !{ptr @.str.51, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 63, i32 2}
!121 = !{ptr @.str.52, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 64, i32 2}
!123 = !{ptr @.str.53, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 65, i32 2}
!125 = !{ptr @.str.54, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 66, i32 2}
!127 = !{ptr @.str.55, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 67, i32 2}
!129 = !{ptr @.str.56, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 68, i32 2}
!131 = !{ptr @.str.57, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 69, i32 2}
!133 = !{ptr @.str.58, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 70, i32 2}
!135 = !{ptr @.str.59, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 71, i32 2}
!137 = !{ptr @.str.60, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 72, i32 2}
!139 = !{ptr @.str.61, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 73, i32 2}
!141 = !{ptr @.str.62, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 74, i32 2}
!143 = !{ptr @.str.63, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 75, i32 2}
!145 = !{ptr @.str.64, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 76, i32 2}
!147 = !{ptr @.str.65, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 77, i32 2}
!149 = !{ptr @.str.66, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 78, i32 2}
!151 = !{ptr @.str.67, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 79, i32 2}
!153 = !{ptr @.str.68, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 80, i32 2}
!155 = !{ptr @.str.69, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @.str.70, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 81, i32 2}
!158 = !{ptr @.str.71, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @.str.72, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 82, i32 2}
!161 = !{ptr @.str.73, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 83, i32 2}
!163 = !{ptr @.str.74, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 84, i32 2}
!165 = !{ptr @.str.75, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 85, i32 2}
!167 = !{ptr @.str.76, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 86, i32 2}
!169 = !{ptr @.str.77, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 87, i32 2}
!171 = !{ptr @.str.78, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 88, i32 2}
!173 = !{ptr @.str.79, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 89, i32 2}
!175 = !{ptr @.str.80, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 90, i32 2}
!177 = !{ptr @.str.81, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 91, i32 2}
!179 = !{ptr @.str.82, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 92, i32 2}
!181 = !{ptr @.str.83, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 93, i32 2}
!183 = !{ptr @.str.84, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 94, i32 2}
!185 = !{ptr @.str.85, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 95, i32 2}
!187 = !{ptr @.str.86, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 96, i32 2}
!189 = !{ptr @.str.87, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 97, i32 2}
!191 = !{ptr @.str.88, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 98, i32 2}
!193 = !{ptr @.str.89, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 99, i32 2}
!195 = !{ptr @.str.90, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 100, i32 2}
!197 = !{ptr @.str.91, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 101, i32 2}
!199 = !{ptr @.str.92, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 102, i32 2}
!201 = !{ptr @top_divs, !202, !"top_divs", i1 false, i1 false}
!202 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 31, i32 38}
!203 = !{ptr @.str.93, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 708, i32 2}
!205 = !{ptr @.str.94, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 711, i32 2}
!207 = !{ptr @.str.95, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 714, i32 2}
!209 = !{ptr @.str.96, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 716, i32 2}
!211 = !{ptr @.str.97, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 720, i32 2}
!213 = !{ptr @.str.98, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 722, i32 2}
!215 = !{ptr @.str.99, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 724, i32 2}
!217 = !{ptr @.str.100, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 726, i32 2}
!219 = !{ptr @.str.101, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 729, i32 2}
!221 = !{ptr @.str.102, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 731, i32 2}
!223 = !{ptr @.str.103, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 733, i32 2}
!225 = !{ptr @.str.104, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 735, i32 2}
!227 = !{ptr @.str.105, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 738, i32 2}
!229 = !{ptr @.str.106, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 740, i32 2}
!231 = !{ptr @.str.107, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 742, i32 2}
!233 = !{ptr @.str.108, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 744, i32 2}
!235 = !{ptr @.str.109, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 747, i32 2}
!237 = !{ptr @.str.110, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 749, i32 2}
!239 = !{ptr @.str.111, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 751, i32 2}
!241 = !{ptr @.str.112, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 753, i32 2}
!243 = !{ptr @.str.113, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 756, i32 2}
!245 = !{ptr @.str.114, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 758, i32 2}
!247 = !{ptr @.str.115, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 760, i32 2}
!249 = !{ptr @.str.116, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 762, i32 2}
!251 = !{ptr @.str.117, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 765, i32 2}
!253 = !{ptr @.str.118, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 767, i32 2}
!255 = !{ptr @.str.119, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 769, i32 2}
!257 = !{ptr @.str.120, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 771, i32 2}
!259 = !{ptr @.str.121, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 774, i32 2}
!261 = !{ptr @.str.122, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 776, i32 2}
!263 = !{ptr @.str.123, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 778, i32 2}
!265 = !{ptr @.str.124, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 781, i32 2}
!267 = !{ptr @.str.125, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 783, i32 2}
!269 = !{ptr @.str.126, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 785, i32 2}
!271 = !{ptr @.str.127, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 787, i32 2}
!273 = !{ptr @.str.128, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 790, i32 2}
!275 = !{ptr @.str.129, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 792, i32 2}
!277 = !{ptr @.str.130, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 794, i32 2}
!279 = !{ptr @.str.131, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 796, i32 2}
!281 = !{ptr @.str.132, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 799, i32 2}
!283 = !{ptr @.str.133, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 801, i32 2}
!285 = !{ptr @.str.134, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 803, i32 2}
!287 = !{ptr @.str.135, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 805, i32 2}
!289 = !{ptr @.str.136, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 808, i32 2}
!291 = !{ptr @.str.137, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 810, i32 2}
!293 = !{ptr @.str.138, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 812, i32 2}
!295 = !{ptr @.str.139, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 814, i32 2}
!297 = !{ptr @.str.140, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 817, i32 2}
!299 = !{ptr @.str.141, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 819, i32 2}
!301 = !{ptr @.str.142, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 821, i32 2}
!303 = !{ptr @.str.143, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 823, i32 2}
!305 = !{ptr @.str.144, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 826, i32 2}
!307 = !{ptr @.str.145, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 828, i32 2}
!309 = !{ptr @.str.146, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 830, i32 2}
!311 = !{ptr @.str.147, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 832, i32 2}
!313 = !{ptr @.str.148, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 835, i32 2}
!315 = !{ptr @.str.149, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 837, i32 2}
!317 = !{ptr @.str.150, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 839, i32 2}
!319 = !{ptr @.str.151, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 842, i32 2}
!321 = !{ptr @top_mtk_muxes, !322, !"top_mtk_muxes", i1 false, i1 false}
!322 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 706, i32 29}
!323 = !{ptr @axi_parents, !324, !"axi_parents", i1 false, i1 false}
!324 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 105, i32 27}
!325 = !{ptr @.str.152, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 119, i32 2}
!327 = !{ptr @spm_parents, !328, !"spm_parents", i1 false, i1 false}
!328 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 115, i32 27}
!329 = !{ptr @scp_parents, !330, !"scp_parents", i1 false, i1 false}
!330 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 122, i32 27}
!331 = !{ptr @bus_aximem_parents, !332, !"bus_aximem_parents", i1 false, i1 false}
!332 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 133, i32 27}
!333 = !{ptr @disp_parents, !334, !"disp_parents", i1 false, i1 false}
!334 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 141, i32 27}
!335 = !{ptr @mdp_parents, !336, !"mdp_parents", i1 false, i1 false}
!336 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 154, i32 27}
!337 = !{ptr @img1_parents, !338, !"img1_parents", i1 false, i1 false}
!338 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 168, i32 27}
!339 = !{ptr @img2_parents, !340, !"img2_parents", i1 false, i1 false}
!340 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 183, i32 27}
!341 = !{ptr @ipe_parents, !342, !"ipe_parents", i1 false, i1 false}
!342 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 198, i32 27}
!343 = !{ptr @dpe_parents, !344, !"dpe_parents", i1 false, i1 false}
!344 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 210, i32 27}
!345 = !{ptr @cam_parents, !346, !"cam_parents", i1 false, i1 false}
!346 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 221, i32 27}
!347 = !{ptr @ccu_parents, !348, !"ccu_parents", i1 false, i1 false}
!348 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 234, i32 27}
!349 = !{ptr @dsp7_parents, !350, !"dsp7_parents", i1 false, i1 false}
!350 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 247, i32 27}
!351 = !{ptr @mfg_ref_parents, !352, !"mfg_ref_parents", i1 false, i1 false}
!352 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 258, i32 27}
!353 = !{ptr @mfg_pll_parents, !354, !"mfg_pll_parents", i1 false, i1 false}
!354 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 265, i32 27}
!355 = !{ptr @camtg_parents, !356, !"camtg_parents", i1 false, i1 false}
!356 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 270, i32 27}
!357 = !{ptr @camtg2_parents, !358, !"camtg2_parents", i1 false, i1 false}
!358 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 281, i32 27}
!359 = !{ptr @camtg3_parents, !360, !"camtg3_parents", i1 false, i1 false}
!360 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 292, i32 27}
!361 = !{ptr @camtg4_parents, !362, !"camtg4_parents", i1 false, i1 false}
!362 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 303, i32 27}
!363 = !{ptr @camtg5_parents, !364, !"camtg5_parents", i1 false, i1 false}
!364 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 314, i32 27}
!365 = !{ptr @camtg6_parents, !366, !"camtg6_parents", i1 false, i1 false}
!366 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 325, i32 27}
!367 = !{ptr @uart_parents, !368, !"uart_parents", i1 false, i1 false}
!368 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 336, i32 27}
!369 = !{ptr @spi_parents, !370, !"spi_parents", i1 false, i1 false}
!370 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 341, i32 27}
!371 = !{ptr @msdc50_0_h_parents, !372, !"msdc50_0_h_parents", i1 false, i1 false}
!372 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 348, i32 27}
!373 = !{ptr @msdc50_0_parents, !374, !"msdc50_0_parents", i1 false, i1 false}
!374 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 354, i32 27}
!375 = !{ptr @msdc30_1_parents, !376, !"msdc30_1_parents", i1 false, i1 false}
!376 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 363, i32 27}
!377 = !{ptr @msdc30_2_parents, !378, !"msdc30_2_parents", i1 false, i1 false}
!378 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 371, i32 27}
!379 = !{ptr @audio_parents, !380, !"audio_parents", i1 false, i1 false}
!380 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 379, i32 27}
!381 = !{ptr @aud_intbus_parents, !382, !"aud_intbus_parents", i1 false, i1 false}
!382 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 386, i32 27}
!383 = !{ptr @pwrap_ulposc_parents, !384, !"pwrap_ulposc_parents", i1 false, i1 false}
!384 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 392, i32 27}
!385 = !{ptr @atb_parents, !386, !"atb_parents", i1 false, i1 false}
!386 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 400, i32 27}
!387 = !{ptr @dpi_parents, !388, !"dpi_parents", i1 false, i1 false}
!388 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 406, i32 27}
!389 = !{ptr @scam_parents, !390, !"scam_parents", i1 false, i1 false}
!390 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 414, i32 27}
!391 = !{ptr @disp_pwm_parents, !392, !"disp_pwm_parents", i1 false, i1 false}
!392 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 419, i32 27}
!393 = !{ptr @usb_top_parents, !394, !"usb_top_parents", i1 false, i1 false}
!394 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 427, i32 27}
!395 = !{ptr @ssusb_xhci_parents, !396, !"ssusb_xhci_parents", i1 false, i1 false}
!396 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 434, i32 27}
!397 = !{ptr @i2c_parents, !398, !"i2c_parents", i1 false, i1 false}
!398 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 441, i32 27}
!399 = !{ptr @seninf_parents, !400, !"seninf_parents", i1 false, i1 false}
!400 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 447, i32 27}
!401 = !{ptr @seninf1_parents, !402, !"seninf1_parents", i1 false, i1 false}
!402 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 458, i32 27}
!403 = !{ptr @seninf2_parents, !404, !"seninf2_parents", i1 false, i1 false}
!404 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 469, i32 27}
!405 = !{ptr @seninf3_parents, !406, !"seninf3_parents", i1 false, i1 false}
!406 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 480, i32 27}
!407 = !{ptr @tl_parents, !408, !"tl_parents", i1 false, i1 false}
!408 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 491, i32 27}
!409 = !{ptr @dxcc_parents, !410, !"dxcc_parents", i1 false, i1 false}
!410 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 497, i32 27}
!411 = !{ptr @aud_engen1_parents, !412, !"aud_engen1_parents", i1 false, i1 false}
!412 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 504, i32 27}
!413 = !{ptr @aud_engen2_parents, !414, !"aud_engen2_parents", i1 false, i1 false}
!414 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 511, i32 27}
!415 = !{ptr @aes_ufsfde_parents, !416, !"aes_ufsfde_parents", i1 false, i1 false}
!416 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 518, i32 27}
!417 = !{ptr @ufs_parents, !418, !"ufs_parents", i1 false, i1 false}
!418 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 528, i32 27}
!419 = !{ptr @aud_1_parents, !420, !"aud_1_parents", i1 false, i1 false}
!420 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 538, i32 27}
!421 = !{ptr @aud_2_parents, !422, !"aud_2_parents", i1 false, i1 false}
!422 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 543, i32 27}
!423 = !{ptr @adsp_parents, !424, !"adsp_parents", i1 false, i1 false}
!424 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 548, i32 27}
!425 = !{ptr @dpmaif_main_parents, !426, !"dpmaif_main_parents", i1 false, i1 false}
!426 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 559, i32 27}
!427 = !{ptr @venc_parents, !428, !"venc_parents", i1 false, i1 false}
!428 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 567, i32 27}
!429 = !{ptr @vdec_parents, !430, !"vdec_parents", i1 false, i1 false}
!430 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 586, i32 27}
!431 = !{ptr @camtm_parents, !432, !"camtm_parents", i1 false, i1 false}
!432 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 605, i32 27}
!433 = !{ptr @pwm_parents, !434, !"pwm_parents", i1 false, i1 false}
!434 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 612, i32 27}
!435 = !{ptr @audio_h_parents, !436, !"audio_h_parents", i1 false, i1 false}
!436 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 617, i32 27}
!437 = !{ptr @spmi_mst_parents, !438, !"spmi_mst_parents", i1 false, i1 false}
!438 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 624, i32 27}
!439 = !{ptr @aes_msdcfde_parents, !440, !"aes_msdcfde_parents", i1 false, i1 false}
!440 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 634, i32 27}
!441 = !{ptr @sflash_parents, !442, !"sflash_parents", i1 false, i1 false}
!442 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 643, i32 27}
!443 = !{ptr @.str.153, !444, !"<string literal>", i1 false, i1 false}
!444 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 21, i32 8}
!445 = !{ptr @mt8192_clk_lock, !444, !"mt8192_clk_lock", i1 false, i1 false}
!446 = !{ptr @.str.154, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 848, i32 2}
!448 = !{ptr @.str.155, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 849, i32 2}
!450 = !{ptr @.str.156, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 850, i32 2}
!452 = !{ptr @.str.157, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 851, i32 2}
!454 = !{ptr @.str.158, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 852, i32 2}
!456 = !{ptr @.str.159, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 853, i32 2}
!458 = !{ptr @.str.160, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 854, i32 2}
!460 = !{ptr @.str.161, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 855, i32 2}
!462 = !{ptr @.str.162, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 856, i32 2}
!464 = !{ptr @.str.163, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 857, i32 2}
!466 = !{ptr @top_muxes, !467, !"top_muxes", i1 false, i1 false}
!467 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 846, i32 29}
!468 = !{ptr @apll_i2s0_m_parents, !469, !"apll_i2s0_m_parents", i1 false, i1 false}
!469 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 650, i32 27}
!470 = !{ptr @apll_i2s1_m_parents, !471, !"apll_i2s1_m_parents", i1 false, i1 false}
!471 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 655, i32 27}
!472 = !{ptr @apll_i2s2_m_parents, !473, !"apll_i2s2_m_parents", i1 false, i1 false}
!473 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 660, i32 27}
!474 = !{ptr @apll_i2s3_m_parents, !475, !"apll_i2s3_m_parents", i1 false, i1 false}
!475 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 665, i32 27}
!476 = !{ptr @apll_i2s4_m_parents, !477, !"apll_i2s4_m_parents", i1 false, i1 false}
!477 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 670, i32 27}
!478 = !{ptr @apll_i2s5_m_parents, !479, !"apll_i2s5_m_parents", i1 false, i1 false}
!479 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 675, i32 27}
!480 = !{ptr @apll_i2s6_m_parents, !481, !"apll_i2s6_m_parents", i1 false, i1 false}
!481 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 680, i32 27}
!482 = !{ptr @apll_i2s7_m_parents, !483, !"apll_i2s7_m_parents", i1 false, i1 false}
!483 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 685, i32 27}
!484 = !{ptr @apll_i2s8_m_parents, !485, !"apll_i2s8_m_parents", i1 false, i1 false}
!485 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 690, i32 27}
!486 = !{ptr @apll_i2s9_m_parents, !487, !"apll_i2s9_m_parents", i1 false, i1 false}
!487 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 695, i32 27}
!488 = !{ptr @.str.164, !489, !"<string literal>", i1 false, i1 false}
!489 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 861, i32 2}
!490 = !{ptr @.str.165, !491, !"<string literal>", i1 false, i1 false}
!491 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 862, i32 2}
!492 = !{ptr @.str.166, !493, !"<string literal>", i1 false, i1 false}
!493 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 863, i32 2}
!494 = !{ptr @.str.167, !495, !"<string literal>", i1 false, i1 false}
!495 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 864, i32 2}
!496 = !{ptr @.str.168, !497, !"<string literal>", i1 false, i1 false}
!497 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 865, i32 2}
!498 = !{ptr @.str.169, !499, !"<string literal>", i1 false, i1 false}
!499 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 866, i32 2}
!500 = !{ptr @.str.170, !501, !"<string literal>", i1 false, i1 false}
!501 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 867, i32 2}
!502 = !{ptr @.str.171, !503, !"<string literal>", i1 false, i1 false}
!503 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 868, i32 2}
!504 = !{ptr @.str.172, !505, !"<string literal>", i1 false, i1 false}
!505 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 869, i32 2}
!506 = !{ptr @.str.173, !507, !"<string literal>", i1 false, i1 false}
!507 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 870, i32 2}
!508 = !{ptr @.str.174, !509, !"<string literal>", i1 false, i1 false}
!509 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 871, i32 2}
!510 = !{ptr @top_adj_divs, !511, !"top_adj_divs", i1 false, i1 false}
!511 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 860, i32 35}
!512 = !{ptr @.str.175, !513, !"<string literal>", i1 false, i1 false}
!513 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1112, i32 2}
!514 = !{ptr @.str.176, !515, !"<string literal>", i1 false, i1 false}
!515 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1113, i32 2}
!516 = !{ptr @top_clks, !517, !"top_clks", i1 false, i1 false}
!517 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1111, i32 30}
!518 = !{ptr @top_cg_regs, !519, !"top_cg_regs", i1 false, i1 false}
!519 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1102, i32 35}
!520 = !{ptr @.str.177, !521, !"<string literal>", i1 false, i1 false}
!521 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 960, i32 2}
!522 = !{ptr @.str.178, !523, !"<string literal>", i1 false, i1 false}
!523 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 961, i32 2}
!524 = !{ptr @.str.179, !525, !"<string literal>", i1 false, i1 false}
!525 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 962, i32 2}
!526 = !{ptr @.str.180, !527, !"<string literal>", i1 false, i1 false}
!527 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 963, i32 2}
!528 = !{ptr @.str.181, !529, !"<string literal>", i1 false, i1 false}
!529 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 964, i32 2}
!530 = !{ptr @.str.182, !531, !"<string literal>", i1 false, i1 false}
!531 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 965, i32 2}
!532 = !{ptr @.str.183, !533, !"<string literal>", i1 false, i1 false}
!533 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 966, i32 2}
!534 = !{ptr @.str.184, !535, !"<string literal>", i1 false, i1 false}
!535 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 967, i32 2}
!536 = !{ptr @.str.185, !537, !"<string literal>", i1 false, i1 false}
!537 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 968, i32 2}
!538 = !{ptr @.str.186, !539, !"<string literal>", i1 false, i1 false}
!539 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 969, i32 2}
!540 = !{ptr @.str.187, !541, !"<string literal>", i1 false, i1 false}
!541 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 970, i32 2}
!542 = !{ptr @.str.188, !543, !"<string literal>", i1 false, i1 false}
!543 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 971, i32 2}
!544 = !{ptr @.str.189, !545, !"<string literal>", i1 false, i1 false}
!545 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 972, i32 2}
!546 = !{ptr @.str.190, !547, !"<string literal>", i1 false, i1 false}
!547 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 973, i32 2}
!548 = !{ptr @.str.191, !549, !"<string literal>", i1 false, i1 false}
!549 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 974, i32 2}
!550 = !{ptr @.str.192, !551, !"<string literal>", i1 false, i1 false}
!551 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 975, i32 2}
!552 = !{ptr @.str.193, !553, !"<string literal>", i1 false, i1 false}
!553 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 976, i32 2}
!554 = !{ptr @.str.194, !555, !"<string literal>", i1 false, i1 false}
!555 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 977, i32 2}
!556 = !{ptr @.str.195, !557, !"<string literal>", i1 false, i1 false}
!557 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 978, i32 2}
!558 = !{ptr @.str.196, !559, !"<string literal>", i1 false, i1 false}
!559 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 979, i32 2}
!560 = !{ptr @.str.197, !561, !"<string literal>", i1 false, i1 false}
!561 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 980, i32 2}
!562 = !{ptr @.str.198, !563, !"<string literal>", i1 false, i1 false}
!563 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 981, i32 2}
!564 = !{ptr @.str.199, !565, !"<string literal>", i1 false, i1 false}
!565 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 982, i32 2}
!566 = !{ptr @.str.200, !567, !"<string literal>", i1 false, i1 false}
!567 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 983, i32 2}
!568 = !{ptr @.str.201, !569, !"<string literal>", i1 false, i1 false}
!569 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 984, i32 2}
!570 = !{ptr @.str.202, !571, !"<string literal>", i1 false, i1 false}
!571 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 985, i32 2}
!572 = !{ptr @.str.203, !573, !"<string literal>", i1 false, i1 false}
!573 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 986, i32 2}
!574 = !{ptr @.str.204, !575, !"<string literal>", i1 false, i1 false}
!575 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 988, i32 2}
!576 = !{ptr @.str.205, !577, !"<string literal>", i1 false, i1 false}
!577 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 989, i32 2}
!578 = !{ptr @.str.206, !579, !"<string literal>", i1 false, i1 false}
!579 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 990, i32 2}
!580 = !{ptr @.str.207, !581, !"<string literal>", i1 false, i1 false}
!581 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 991, i32 2}
!582 = !{ptr @.str.208, !583, !"<string literal>", i1 false, i1 false}
!583 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 992, i32 2}
!584 = !{ptr @.str.209, !585, !"<string literal>", i1 false, i1 false}
!585 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 993, i32 2}
!586 = !{ptr @.str.210, !587, !"<string literal>", i1 false, i1 false}
!587 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 994, i32 2}
!588 = !{ptr @.str.211, !589, !"<string literal>", i1 false, i1 false}
!589 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 995, i32 2}
!590 = !{ptr @.str.212, !591, !"<string literal>", i1 false, i1 false}
!591 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 996, i32 2}
!592 = !{ptr @.str.213, !593, !"<string literal>", i1 false, i1 false}
!593 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 997, i32 2}
!594 = !{ptr @.str.214, !595, !"<string literal>", i1 false, i1 false}
!595 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 998, i32 2}
!596 = !{ptr @.str.215, !597, !"<string literal>", i1 false, i1 false}
!597 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 999, i32 2}
!598 = !{ptr @.str.216, !599, !"<string literal>", i1 false, i1 false}
!599 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1000, i32 2}
!600 = !{ptr @.str.217, !601, !"<string literal>", i1 false, i1 false}
!601 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1001, i32 2}
!602 = !{ptr @.str.218, !603, !"<string literal>", i1 false, i1 false}
!603 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1002, i32 2}
!604 = !{ptr @.str.219, !605, !"<string literal>", i1 false, i1 false}
!605 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1003, i32 2}
!606 = !{ptr @.str.220, !607, !"<string literal>", i1 false, i1 false}
!607 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1004, i32 2}
!608 = !{ptr @.str.221, !609, !"<string literal>", i1 false, i1 false}
!609 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1005, i32 2}
!610 = !{ptr @.str.222, !611, !"<string literal>", i1 false, i1 false}
!611 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1006, i32 2}
!612 = !{ptr @.str.223, !613, !"<string literal>", i1 false, i1 false}
!613 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1007, i32 2}
!614 = !{ptr @.str.224, !615, !"<string literal>", i1 false, i1 false}
!615 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1008, i32 2}
!616 = !{ptr @.str.225, !617, !"<string literal>", i1 false, i1 false}
!617 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1009, i32 2}
!618 = !{ptr @.str.226, !619, !"<string literal>", i1 false, i1 false}
!619 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1010, i32 2}
!620 = !{ptr @.str.227, !621, !"<string literal>", i1 false, i1 false}
!621 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1011, i32 2}
!622 = !{ptr @.str.228, !623, !"<string literal>", i1 false, i1 false}
!623 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1012, i32 2}
!624 = !{ptr @.str.229, !625, !"<string literal>", i1 false, i1 false}
!625 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1013, i32 2}
!626 = !{ptr @.str.230, !627, !"<string literal>", i1 false, i1 false}
!627 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1014, i32 2}
!628 = !{ptr @.str.231, !629, !"<string literal>", i1 false, i1 false}
!629 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1016, i32 2}
!630 = !{ptr @.str.232, !631, !"<string literal>", i1 false, i1 false}
!631 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1017, i32 2}
!632 = !{ptr @.str.233, !633, !"<string literal>", i1 false, i1 false}
!633 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1018, i32 2}
!634 = !{ptr @.str.234, !635, !"<string literal>", i1 false, i1 false}
!635 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1019, i32 2}
!636 = !{ptr @.str.235, !637, !"<string literal>", i1 false, i1 false}
!637 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1020, i32 2}
!638 = !{ptr @.str.236, !639, !"<string literal>", i1 false, i1 false}
!639 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1021, i32 2}
!640 = !{ptr @.str.237, !641, !"<string literal>", i1 false, i1 false}
!641 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1022, i32 2}
!642 = !{ptr @.str.238, !643, !"<string literal>", i1 false, i1 false}
!643 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1023, i32 2}
!644 = !{ptr @.str.239, !645, !"<string literal>", i1 false, i1 false}
!645 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1024, i32 2}
!646 = !{ptr @.str.240, !647, !"<string literal>", i1 false, i1 false}
!647 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1025, i32 2}
!648 = !{ptr @.str.241, !649, !"<string literal>", i1 false, i1 false}
!649 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1026, i32 2}
!650 = !{ptr @.str.242, !651, !"<string literal>", i1 false, i1 false}
!651 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1027, i32 2}
!652 = !{ptr @.str.243, !653, !"<string literal>", i1 false, i1 false}
!653 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1028, i32 2}
!654 = !{ptr @.str.244, !655, !"<string literal>", i1 false, i1 false}
!655 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1029, i32 2}
!656 = !{ptr @.str.245, !657, !"<string literal>", i1 false, i1 false}
!657 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1030, i32 2}
!658 = !{ptr @.str.246, !659, !"<string literal>", i1 false, i1 false}
!659 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1031, i32 2}
!660 = !{ptr @.str.247, !661, !"<string literal>", i1 false, i1 false}
!661 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1032, i32 2}
!662 = !{ptr @.str.248, !663, !"<string literal>", i1 false, i1 false}
!663 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1033, i32 2}
!664 = !{ptr @.str.249, !665, !"<string literal>", i1 false, i1 false}
!665 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1034, i32 2}
!666 = !{ptr @.str.250, !667, !"<string literal>", i1 false, i1 false}
!667 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1035, i32 2}
!668 = !{ptr @.str.251, !669, !"<string literal>", i1 false, i1 false}
!669 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1036, i32 2}
!670 = !{ptr @.str.252, !671, !"<string literal>", i1 false, i1 false}
!671 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1037, i32 2}
!672 = !{ptr @.str.253, !673, !"<string literal>", i1 false, i1 false}
!673 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1038, i32 2}
!674 = !{ptr @.str.254, !675, !"<string literal>", i1 false, i1 false}
!675 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1039, i32 2}
!676 = !{ptr @.str.255, !677, !"<string literal>", i1 false, i1 false}
!677 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1040, i32 2}
!678 = !{ptr @.str.256, !679, !"<string literal>", i1 false, i1 false}
!679 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1041, i32 2}
!680 = !{ptr @.str.257, !681, !"<string literal>", i1 false, i1 false}
!681 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1042, i32 2}
!682 = !{ptr @.str.258, !683, !"<string literal>", i1 false, i1 false}
!683 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1043, i32 2}
!684 = !{ptr @.str.259, !685, !"<string literal>", i1 false, i1 false}
!685 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1044, i32 2}
!686 = !{ptr @.str.260, !687, !"<string literal>", i1 false, i1 false}
!687 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1046, i32 2}
!688 = !{ptr @.str.261, !689, !"<string literal>", i1 false, i1 false}
!689 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1047, i32 2}
!690 = !{ptr @.str.262, !691, !"<string literal>", i1 false, i1 false}
!691 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1048, i32 2}
!692 = !{ptr @.str.263, !693, !"<string literal>", i1 false, i1 false}
!693 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1049, i32 2}
!694 = !{ptr @.str.264, !695, !"<string literal>", i1 false, i1 false}
!695 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1050, i32 2}
!696 = !{ptr @.str.265, !697, !"<string literal>", i1 false, i1 false}
!697 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1051, i32 2}
!698 = !{ptr @.str.266, !699, !"<string literal>", i1 false, i1 false}
!699 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1052, i32 2}
!700 = !{ptr @.str.267, !701, !"<string literal>", i1 false, i1 false}
!701 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1053, i32 2}
!702 = !{ptr @.str.268, !703, !"<string literal>", i1 false, i1 false}
!703 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1054, i32 2}
!704 = !{ptr @.str.269, !705, !"<string literal>", i1 false, i1 false}
!705 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1055, i32 2}
!706 = !{ptr @.str.270, !707, !"<string literal>", i1 false, i1 false}
!707 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1056, i32 2}
!708 = !{ptr @.str.271, !709, !"<string literal>", i1 false, i1 false}
!709 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1057, i32 2}
!710 = !{ptr @.str.272, !711, !"<string literal>", i1 false, i1 false}
!711 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1058, i32 2}
!712 = !{ptr @.str.273, !713, !"<string literal>", i1 false, i1 false}
!713 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1059, i32 2}
!714 = !{ptr @.str.274, !715, !"<string literal>", i1 false, i1 false}
!715 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1060, i32 2}
!716 = !{ptr @.str.275, !717, !"<string literal>", i1 false, i1 false}
!717 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1061, i32 2}
!718 = !{ptr @.str.276, !719, !"<string literal>", i1 false, i1 false}
!719 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1062, i32 2}
!720 = !{ptr @.str.277, !721, !"<string literal>", i1 false, i1 false}
!721 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1063, i32 2}
!722 = !{ptr @.str.278, !723, !"<string literal>", i1 false, i1 false}
!723 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1064, i32 2}
!724 = !{ptr @.str.279, !725, !"<string literal>", i1 false, i1 false}
!725 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1065, i32 2}
!726 = !{ptr @.str.280, !727, !"<string literal>", i1 false, i1 false}
!727 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1066, i32 2}
!728 = !{ptr @.str.281, !729, !"<string literal>", i1 false, i1 false}
!729 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1067, i32 2}
!730 = !{ptr @.str.282, !731, !"<string literal>", i1 false, i1 false}
!731 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1069, i32 2}
!732 = !{ptr @.str.283, !733, !"<string literal>", i1 false, i1 false}
!733 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1070, i32 2}
!734 = !{ptr @.str.284, !735, !"<string literal>", i1 false, i1 false}
!735 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1071, i32 2}
!736 = !{ptr @.str.285, !737, !"<string literal>", i1 false, i1 false}
!737 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1072, i32 2}
!738 = !{ptr @.str.286, !739, !"<string literal>", i1 false, i1 false}
!739 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1073, i32 2}
!740 = !{ptr @.str.287, !741, !"<string literal>", i1 false, i1 false}
!741 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1074, i32 2}
!742 = !{ptr @.str.288, !743, !"<string literal>", i1 false, i1 false}
!743 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1076, i32 2}
!744 = !{ptr @.str.289, !745, !"<string literal>", i1 false, i1 false}
!745 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1078, i32 2}
!746 = !{ptr @.str.290, !747, !"<string literal>", i1 false, i1 false}
!747 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1079, i32 2}
!748 = !{ptr @.str.291, !749, !"<string literal>", i1 false, i1 false}
!749 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1080, i32 2}
!750 = !{ptr @.str.292, !751, !"<string literal>", i1 false, i1 false}
!751 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1081, i32 2}
!752 = !{ptr @.str.293, !753, !"<string literal>", i1 false, i1 false}
!753 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1082, i32 2}
!754 = !{ptr @.str.294, !755, !"<string literal>", i1 false, i1 false}
!755 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1083, i32 2}
!756 = !{ptr @.str.295, !757, !"<string literal>", i1 false, i1 false}
!757 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1084, i32 2}
!758 = !{ptr @.str.296, !759, !"<string literal>", i1 false, i1 false}
!759 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1085, i32 2}
!760 = !{ptr @.str.297, !761, !"<string literal>", i1 false, i1 false}
!761 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1086, i32 2}
!762 = !{ptr @infra_clks, !763, !"infra_clks", i1 false, i1 false}
!763 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 958, i32 30}
!764 = !{ptr @infra0_cg_regs, !765, !"infra0_cg_regs", i1 false, i1 false}
!765 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 887, i32 35}
!766 = !{ptr @infra1_cg_regs, !767, !"infra1_cg_regs", i1 false, i1 false}
!767 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 893, i32 35}
!768 = !{ptr @infra2_cg_regs, !769, !"infra2_cg_regs", i1 false, i1 false}
!769 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 899, i32 35}
!770 = !{ptr @infra3_cg_regs, !771, !"infra3_cg_regs", i1 false, i1 false}
!771 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 905, i32 35}
!772 = !{ptr @infra4_cg_regs, !773, !"infra4_cg_regs", i1 false, i1 false}
!773 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 911, i32 35}
!774 = !{ptr @infra5_cg_regs, !775, !"infra5_cg_regs", i1 false, i1 false}
!775 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 917, i32 35}
!776 = !{ptr @.str.298, !777, !"<string literal>", i1 false, i1 false}
!777 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1099, i32 2}
!778 = !{ptr @peri_clks, !779, !"peri_clks", i1 false, i1 false}
!779 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1098, i32 30}
!780 = !{ptr @peri_cg_regs, !781, !"peri_cg_regs", i1 false, i1 false}
!781 = !{!"../drivers/clk/mediatek/clk-mt8192.c", i32 1089, i32 35}
!782 = !{i32 1, !"wchar_size", i32 2}
!783 = !{i32 1, !"min_enum_size", i32 4}
!784 = !{i32 8, !"branch-target-enforcement", i32 0}
!785 = !{i32 8, !"sign-return-address", i32 0}
!786 = !{i32 8, !"sign-return-address-all", i32 0}
!787 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!788 = !{i32 7, !"uwtable", i32 1}
!789 = !{i32 7, !"frame-pointer", i32 2}
!790 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
