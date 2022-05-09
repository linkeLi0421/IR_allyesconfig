; ModuleID = '/llk/IR_all_yes/drivers/clk/mediatek/clk-mt8183.c_pt.bc'
source_filename = "../drivers/clk/mediatek/clk-mt8183.c"
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
%struct.mtk_pll_div_table = type { i32, i32 }
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

@__of_table_mt8183_topckgen = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8183-topckgen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt8183_topckgen_of_clk_init_driver }, section "__clk_of_table", align 4
@__initcall__kmod_clk_mt8183__183_1329_clk_mt8183_init3 = internal global ptr @clk_mt8183_init, section ".initcall3.init", align 4
@top_clk_data = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@top_early_divs = internal constant { [1 x %struct.mtk_fixed_factor], [44 x i8] } { [1 x %struct.mtk_fixed_factor] [%struct.mtk_fixed_factor { i32 113, ptr @.str, ptr @.str.1, i32 1, i32 2 }], [44 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"clk13m\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"clk26m\00", [25 x i8] zeroinitializer }, align 32
@clk_mt8183_drv = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @clk_mt8183_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.2, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_match_clk_mt8183, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clk-mt8183\00", [21 x i8] zeroinitializer }, align 32
@of_match_clk_mt8183 = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8183-apmixedsys\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clk_mt8183_apmixed_probe }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8183-topckgen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clk_mt8183_top_probe }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8183-infracfg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clk_mt8183_infra_probe }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8183-pericfg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clk_mt8183_peri_probe }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8183-mcucfg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clk_mt8183_mcu_probe }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@clk_mt8183_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1311, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"could not register clock provider: %s: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clk_mt8183_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/clk/mediatek/clk-mt8183.c\00", [62 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@clk_mt8183_probe._entry_ptr = internal global ptr @clk_mt8183_probe._entry, section ".printk_index", align 4
@plls = internal constant { [11 x %struct.mtk_pll_data], [256 x i8] } { [11 x %struct.mtk_pll_data] [%struct.mtk_pll_data { i32 0, ptr @.str.8, i32 512, i32 524, i32 1, i32 516, i32 0, i32 0, i8 0, i32 24, i32 3, ptr null, i32 16777216, i32 1500000000, i32 -494967296, i32 22, i32 8, i32 516, i32 0, i32 0, ptr @armpll_div_table, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 1, ptr @.str.9, i32 528, i32 540, i32 1, i32 532, i32 0, i32 0, i8 0, i32 24, i32 3, ptr null, i32 16777216, i32 1500000000, i32 -494967296, i32 22, i32 8, i32 532, i32 0, i32 0, ptr @armpll_div_table, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 2, ptr @.str.10, i32 656, i32 668, i32 1, i32 660, i32 0, i32 0, i8 0, i32 24, i32 3, ptr null, i32 16777216, i32 1500000000, i32 -494967296, i32 22, i32 8, i32 660, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 3, ptr @.str.11, i32 544, i32 556, i32 1, i32 548, i32 0, i32 0, i8 0, i32 24, i32 1, ptr null, i32 16777216, i32 1500000000, i32 -494967296, i32 22, i32 8, i32 548, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 4, ptr @.str.12, i32 560, i32 572, i32 1, i32 564, i32 0, i32 0, i8 0, i32 24, i32 1, ptr null, i32 16777216, i32 1500000000, i32 -494967296, i32 22, i32 8, i32 564, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 7, ptr @.str.13, i32 576, i32 588, i32 1, i32 580, i32 0, i32 0, i8 0, i32 24, i32 0, ptr null, i32 0, i32 1500000000, i32 -494967296, i32 22, i32 8, i32 580, i32 0, i32 0, ptr @mfgpll_div_table, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 5, ptr @.str.14, i32 592, i32 604, i32 1, i32 596, i32 0, i32 0, i8 0, i32 24, i32 0, ptr null, i32 0, i32 1500000000, i32 -494967296, i32 22, i32 8, i32 596, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 8, ptr @.str.15, i32 608, i32 620, i32 1, i32 612, i32 0, i32 0, i8 0, i32 24, i32 0, ptr null, i32 0, i32 1500000000, i32 -494967296, i32 22, i32 8, i32 612, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 6, ptr @.str.16, i32 624, i32 636, i32 1, i32 628, i32 0, i32 0, i8 0, i32 24, i32 1, ptr null, i32 8388608, i32 1500000000, i32 -494967296, i32 22, i32 8, i32 628, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 9, ptr @.str.17, i32 672, i32 688, i32 1, i32 672, i32 680, i32 20, i8 0, i32 1, i32 0, ptr null, i32 0, i32 1500000000, i32 -494967296, i32 32, i32 8, i32 676, i32 0, i32 672, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 10, ptr @.str.18, i32 692, i32 708, i32 1, i32 692, i32 700, i32 20, i8 1, i32 1, i32 0, ptr null, i32 0, i32 1500000000, i32 -494967296, i32 32, i32 8, i32 696, i32 0, i32 692, ptr null, ptr null, i32 0, i8 0 }], [256 x i8] zeroinitializer }, align 32
@apmixed_clks = internal constant { [11 x %struct.mtk_gate], [76 x i8] } { [11 x %struct.mtk_gate] [%struct.mtk_gate { i32 11, ptr @.str.19, ptr @.str.20, ptr @apmixed_cg_regs, i32 4, ptr @mtk_clk_gate_ops_no_setclr_inv, i32 0 }, %struct.mtk_gate { i32 12, ptr @.str.21, ptr @.str.20, ptr @apmixed_cg_regs, i32 5, ptr @mtk_clk_gate_ops_no_setclr_inv, i32 2048 }, %struct.mtk_gate { i32 13, ptr @.str.22, ptr @.str.20, ptr @apmixed_cg_regs, i32 6, ptr @mtk_clk_gate_ops_no_setclr_inv, i32 0 }, %struct.mtk_gate { i32 14, ptr @.str.23, ptr @.str.20, ptr @apmixed_cg_regs, i32 7, ptr @mtk_clk_gate_ops_no_setclr_inv, i32 0 }, %struct.mtk_gate { i32 15, ptr @.str.24, ptr @.str.20, ptr @apmixed_cg_regs, i32 8, ptr @mtk_clk_gate_ops_no_setclr_inv, i32 0 }, %struct.mtk_gate { i32 16, ptr @.str.25, ptr @.str.20, ptr @apmixed_cg_regs, i32 9, ptr @mtk_clk_gate_ops_no_setclr_inv, i32 0 }, %struct.mtk_gate { i32 17, ptr @.str.26, ptr @.str.20, ptr @apmixed_cg_regs, i32 11, ptr @mtk_clk_gate_ops_no_setclr_inv, i32 0 }, %struct.mtk_gate { i32 18, ptr @.str.27, ptr @.str.20, ptr @apmixed_cg_regs, i32 13, ptr @mtk_clk_gate_ops_no_setclr_inv, i32 0 }, %struct.mtk_gate { i32 19, ptr @.str.28, ptr @.str.20, ptr @apmixed_cg_regs, i32 14, ptr @mtk_clk_gate_ops_no_setclr_inv, i32 0 }, %struct.mtk_gate { i32 20, ptr @.str.29, ptr @.str.20, ptr @apmixed_cg_regs, i32 16, ptr @mtk_clk_gate_ops_no_setclr_inv, i32 0 }, %struct.mtk_gate { i32 21, ptr @.str.30, ptr @.str.20, ptr @apmixed_cg_regs, i32 17, ptr @mtk_clk_gate_ops_no_setclr_inv, i32 0 }], [76 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"armpll_ll\00", [22 x i8] zeroinitializer }, align 32
@armpll_div_table = internal constant { [6 x %struct.mtk_pll_div_table], [48 x i8] } { [6 x %struct.mtk_pll_div_table] [%struct.mtk_pll_div_table { i32 0, i32 -494967296 }, %struct.mtk_pll_div_table { i32 1, i32 1500000000 }, %struct.mtk_pll_div_table { i32 2, i32 750000000 }, %struct.mtk_pll_div_table { i32 3, i32 375000000 }, %struct.mtk_pll_div_table { i32 4, i32 187500000 }, %struct.mtk_pll_div_table zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"armpll_l\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ccipll\00", [25 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mainpll\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"univ2pll\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfgpll\00", [25 x i8] zeroinitializer }, align 32
@mfgpll_div_table = internal constant { [6 x %struct.mtk_pll_div_table], [48 x i8] } { [6 x %struct.mtk_pll_div_table] [%struct.mtk_pll_div_table { i32 0, i32 -494967296 }, %struct.mtk_pll_div_table { i32 1, i32 1600000000 }, %struct.mtk_pll_div_table { i32 2, i32 800000000 }, %struct.mtk_pll_div_table { i32 3, i32 400000000 }, %struct.mtk_pll_div_table { i32 4, i32 200000000 }, %struct.mtk_pll_div_table zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"msdcpll\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tvdpll\00", [25 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mmpll\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"apll1\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"apll2\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"apmixed_ssusb26m\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"f_f26m_ck\00", [22 x i8] zeroinitializer }, align 32
@apmixed_cg_regs = internal constant { %struct.mtk_gate_regs, [20 x i8] } { %struct.mtk_gate_regs { i32 32, i32 32, i32 32 }, [20 x i8] zeroinitializer }, align 32
@mtk_clk_gate_ops_no_setclr_inv = external dso_local constant %struct.clk_ops, align 4
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"apmixed_appll26m\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"apmixed_mipic026m\00", [46 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"apmixed_mdpll26m\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"apmixed_mmsys26m\00", [47 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"apmixed_ufs26m\00", [17 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"apmixed_mipic126m\00", [46 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"apmixed_mempll26m\00", [46 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"apmixed_lvpll26m\00", [47 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"apmixed_mipid026m\00", [46 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"apmixed_mipid126m\00", [46 x i8] zeroinitializer }, align 32
@top_fixed_clks = internal constant { [3 x %struct.mtk_fixed_clk], [48 x i8] } { [3 x %struct.mtk_fixed_clk] [%struct.mtk_fixed_clk { i32 112, ptr @.str.20, ptr @.str.1, i32 26000000 }, %struct.mtk_fixed_clk { i32 114, ptr @.str.31, ptr null, i32 250000 }, %struct.mtk_fixed_clk { i32 115, ptr @.str.32, ptr @.str.33, i32 192000000 }], [48 x i8] zeroinitializer }, align 32
@top_divs = internal constant { [72 x %struct.mtk_fixed_factor], [352 x i8] } { [72 x %struct.mtk_fixed_factor] [%struct.mtk_fixed_factor { i32 95, ptr @.str.34, ptr @.str.1, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 42, ptr @.str.35, ptr @.str.11, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 43, ptr @.str.36, ptr @.str.35, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 47, ptr @.str.37, ptr @.str.36, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 48, ptr @.str.38, ptr @.str.36, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 49, ptr @.str.39, ptr @.str.36, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 50, ptr @.str.40, ptr @.str.36, i32 1, i32 16 }, %struct.mtk_fixed_factor { i32 44, ptr @.str.41, ptr @.str.11, i32 1, i32 3 }, %struct.mtk_fixed_factor { i32 51, ptr @.str.42, ptr @.str.41, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 52, ptr @.str.43, ptr @.str.41, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 53, ptr @.str.44, ptr @.str.41, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 45, ptr @.str.45, ptr @.str.11, i32 1, i32 5 }, %struct.mtk_fixed_factor { i32 54, ptr @.str.46, ptr @.str.45, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 55, ptr @.str.47, ptr @.str.45, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 46, ptr @.str.48, ptr @.str.11, i32 1, i32 7 }, %struct.mtk_fixed_factor { i32 56, ptr @.str.49, ptr @.str.48, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 57, ptr @.str.50, ptr @.str.48, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 58, ptr @.str.51, ptr @.str.33, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 59, ptr @.str.52, ptr @.str.51, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 63, ptr @.str.53, ptr @.str.52, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 64, ptr @.str.54, ptr @.str.52, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 65, ptr @.str.55, ptr @.str.52, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 60, ptr @.str.56, ptr @.str.33, i32 1, i32 3 }, %struct.mtk_fixed_factor { i32 66, ptr @.str.57, ptr @.str.56, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 67, ptr @.str.58, ptr @.str.56, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 68, ptr @.str.59, ptr @.str.56, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 61, ptr @.str.60, ptr @.str.33, i32 1, i32 5 }, %struct.mtk_fixed_factor { i32 69, ptr @.str.61, ptr @.str.60, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 70, ptr @.str.62, ptr @.str.60, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 71, ptr @.str.63, ptr @.str.60, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 62, ptr @.str.64, ptr @.str.33, i32 1, i32 7 }, %struct.mtk_fixed_factor { i32 97, ptr @.str.65, ptr @.str.32, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 98, ptr @.str.66, ptr @.str.65, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 99, ptr @.str.67, ptr @.str.65, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 100, ptr @.str.68, ptr @.str.65, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 101, ptr @.str.69, ptr @.str.65, i32 1, i32 16 }, %struct.mtk_fixed_factor { i32 102, ptr @.str.70, ptr @.str.65, i32 1, i32 32 }, %struct.mtk_fixed_factor { i32 72, ptr @.str.71, ptr @.str.17, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 73, ptr @.str.72, ptr @.str.17, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 74, ptr @.str.73, ptr @.str.17, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 75, ptr @.str.74, ptr @.str.17, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 76, ptr @.str.75, ptr @.str.18, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 77, ptr @.str.76, ptr @.str.18, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 78, ptr @.str.77, ptr @.str.18, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 79, ptr @.str.78, ptr @.str.18, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 80, ptr @.str.79, ptr @.str.15, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 81, ptr @.str.80, ptr @.str.79, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 82, ptr @.str.81, ptr @.str.15, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 83, ptr @.str.82, ptr @.str.15, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 84, ptr @.str.83, ptr @.str.15, i32 1, i32 16 }, %struct.mtk_fixed_factor { i32 103, ptr @.str.84, ptr @.str.16, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 104, ptr @.str.85, ptr @.str.16, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 105, ptr @.str.86, ptr @.str.85, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 106, ptr @.str.87, ptr @.str.85, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 107, ptr @.str.88, ptr @.str.16, i32 1, i32 5 }, %struct.mtk_fixed_factor { i32 108, ptr @.str.89, ptr @.str.88, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 109, ptr @.str.90, ptr @.str.88, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 110, ptr @.str.91, ptr @.str.16, i32 1, i32 6 }, %struct.mtk_fixed_factor { i32 111, ptr @.str.92, ptr @.str.16, i32 1, i32 7 }, %struct.mtk_fixed_factor { i32 96, ptr @.str.93, ptr @.str.13, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 85, ptr @.str.94, ptr @.str.14, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 86, ptr @.str.95, ptr @.str.14, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 87, ptr @.str.96, ptr @.str.14, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 88, ptr @.str.97, ptr @.str.14, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 89, ptr @.str.98, ptr @.str.14, i32 1, i32 16 }, %struct.mtk_fixed_factor { i32 90, ptr @.str.99, ptr @.str.31, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 91, ptr @.str.100, ptr @.str.31, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 92, ptr @.str.101, ptr @.str.31, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 93, ptr @.str.102, ptr @.str.31, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 94, ptr @.str.103, ptr @.str.31, i32 1, i32 16 }, %struct.mtk_fixed_factor { i32 128, ptr @.str.33, ptr @.str.12, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 131, ptr @.str.104, ptr @.str.56, i32 1, i32 16 }], [352 x i8] zeroinitializer }, align 32
@top_muxes = internal constant { [41 x %struct.mtk_mux], [468 x i8] } { [41 x %struct.mtk_mux] [%struct.mtk_mux { i32 0, ptr @.str.105, ptr @axi_parents, i32 2048, i32 64, i32 68, i32 72, i32 4, i8 0, i8 2, i8 7, i8 0, ptr @mtk_mux_gate_clr_set_upd_ops, i8 4 }, %struct.mtk_mux { i32 1, ptr @.str.106, ptr @mm_parents, i32 4, i32 64, i32 68, i32 72, i32 4, i8 8, i8 3, i8 15, i8 1, ptr @mtk_mux_gate_clr_set_upd_ops, i8 6 }, %struct.mtk_mux { i32 34, ptr @.str.107, ptr @img_parents, i32 4, i32 64, i32 68, i32 72, i32 4, i8 16, i8 3, i8 23, i8 2, ptr @mtk_mux_gate_clr_set_upd_ops, i8 8 }, %struct.mtk_mux { i32 2, ptr @.str.108, ptr @cam_parents, i32 4, i32 64, i32 68, i32 72, i32 4, i8 24, i8 4, i8 31, i8 3, ptr @mtk_mux_gate_clr_set_upd_ops, i8 10 }, %struct.mtk_mux { i32 35, ptr @.str.109, ptr @dsp_parents, i32 4, i32 80, i32 84, i32 88, i32 4, i8 0, i8 4, i8 7, i8 4, ptr @mtk_mux_gate_clr_set_upd_ops, i8 9 }, %struct.mtk_mux { i32 36, ptr @.str.110, ptr @dsp1_parents, i32 4, i32 80, i32 84, i32 88, i32 4, i8 8, i8 4, i8 15, i8 5, ptr @mtk_mux_gate_clr_set_upd_ops, i8 9 }, %struct.mtk_mux { i32 37, ptr @.str.111, ptr @dsp2_parents, i32 4, i32 80, i32 84, i32 88, i32 4, i8 16, i8 4, i8 23, i8 6, ptr @mtk_mux_gate_clr_set_upd_ops, i8 9 }, %struct.mtk_mux { i32 38, ptr @.str.112, ptr @ipu_if_parents, i32 4, i32 80, i32 84, i32 88, i32 4, i8 24, i8 4, i8 31, i8 7, ptr @mtk_mux_gate_clr_set_upd_ops, i8 9 }, %struct.mtk_mux { i32 3, ptr @.str.113, ptr @mfg_parents, i32 4, i32 96, i32 100, i32 104, i32 4, i8 0, i8 2, i8 7, i8 8, ptr @mtk_mux_gate_clr_set_upd_ops, i8 4 }, %struct.mtk_mux { i32 26, ptr @.str.114, ptr @f52m_mfg_parents, i32 4, i32 96, i32 100, i32 104, i32 4, i8 8, i8 2, i8 15, i8 9, ptr @mtk_mux_gate_clr_set_upd_ops, i8 4 }, %struct.mtk_mux { i32 4, ptr @.str.115, ptr @camtg_parents, i32 4, i32 96, i32 100, i32 104, i32 4, i8 16, i8 3, i8 23, i8 10, ptr @mtk_mux_gate_clr_set_upd_ops, i8 8 }, %struct.mtk_mux { i32 29, ptr @.str.116, ptr @camtg2_parents, i32 4, i32 96, i32 100, i32 104, i32 4, i8 24, i8 3, i8 31, i8 11, ptr @mtk_mux_gate_clr_set_upd_ops, i8 8 }, %struct.mtk_mux { i32 39, ptr @.str.117, ptr @camtg3_parents, i32 4, i32 112, i32 116, i32 120, i32 4, i8 0, i8 3, i8 7, i8 12, ptr @mtk_mux_gate_clr_set_upd_ops, i8 8 }, %struct.mtk_mux { i32 40, ptr @.str.118, ptr @camtg4_parents, i32 4, i32 112, i32 116, i32 120, i32 4, i8 8, i8 3, i8 15, i8 13, ptr @mtk_mux_gate_clr_set_upd_ops, i8 8 }, %struct.mtk_mux { i32 5, ptr @.str.119, ptr @uart_parents, i32 4, i32 112, i32 116, i32 120, i32 4, i8 16, i8 1, i8 23, i8 14, ptr @mtk_mux_gate_clr_set_upd_ops, i8 2 }, %struct.mtk_mux { i32 6, ptr @.str.120, ptr @spi_parents, i32 4, i32 112, i32 116, i32 120, i32 4, i8 24, i8 2, i8 31, i8 15, ptr @mtk_mux_gate_clr_set_upd_ops, i8 4 }, %struct.mtk_mux { i32 7, ptr @.str.121, ptr @msdc50_hclk_parents, i32 4, i32 128, i32 132, i32 136, i32 4, i8 0, i8 2, i8 7, i8 16, ptr @mtk_mux_gate_clr_set_upd_ops, i8 3 }, %struct.mtk_mux { i32 8, ptr @.str.122, ptr @msdc50_0_parents, i32 4, i32 128, i32 132, i32 136, i32 4, i8 8, i8 3, i8 15, i8 17, ptr @mtk_mux_gate_clr_set_upd_ops, i8 6 }, %struct.mtk_mux { i32 9, ptr @.str.123, ptr @msdc30_1_parents, i32 4, i32 128, i32 132, i32 136, i32 4, i8 16, i8 3, i8 23, i8 18, ptr @mtk_mux_gate_clr_set_upd_ops, i8 5 }, %struct.mtk_mux { i32 10, ptr @.str.124, ptr @msdc30_2_parents, i32 4, i32 128, i32 132, i32 136, i32 4, i8 24, i8 3, i8 31, i8 19, ptr @mtk_mux_gate_clr_set_upd_ops, i8 5 }, %struct.mtk_mux { i32 11, ptr @.str.125, ptr @audio_parents, i32 4, i32 144, i32 148, i32 152, i32 4, i8 0, i8 2, i8 7, i8 20, ptr @mtk_mux_gate_clr_set_upd_ops, i8 4 }, %struct.mtk_mux { i32 12, ptr @.str.126, ptr @aud_intbus_parents, i32 4, i32 144, i32 148, i32 152, i32 4, i8 8, i8 2, i8 15, i8 21, ptr @mtk_mux_gate_clr_set_upd_ops, i8 3 }, %struct.mtk_mux { i32 41, ptr @.str.127, ptr @pmicspi_parents, i32 4, i32 144, i32 148, i32 152, i32 4, i8 16, i8 2, i8 23, i8 22, ptr @mtk_mux_gate_clr_set_upd_ops, i8 3 }, %struct.mtk_mux { i32 13, ptr @.str.128, ptr @fpwrap_ulposc_parents, i32 4, i32 144, i32 148, i32 152, i32 4, i8 24, i8 2, i8 31, i8 23, ptr @mtk_mux_gate_clr_set_upd_ops, i8 4 }, %struct.mtk_mux { i32 15, ptr @.str.129, ptr @atb_parents, i32 4, i32 160, i32 164, i32 168, i32 4, i8 0, i8 2, i8 7, i8 24, ptr @mtk_mux_gate_clr_set_upd_ops, i8 3 }, %struct.mtk_mux { i32 17, ptr @.str.130, ptr @dpi0_parents, i32 4, i32 160, i32 164, i32 168, i32 4, i8 16, i8 4, i8 23, i8 26, ptr @mtk_mux_gate_clr_set_upd_ops, i8 9 }, %struct.mtk_mux { i32 18, ptr @.str.131, ptr @scam_parents, i32 4, i32 160, i32 164, i32 168, i32 4, i8 24, i8 1, i8 31, i8 27, ptr @mtk_mux_gate_clr_set_upd_ops, i8 2 }, %struct.mtk_mux { i32 21, ptr @.str.132, ptr @disppwm_parents, i32 4, i32 176, i32 180, i32 184, i32 4, i8 0, i8 3, i8 7, i8 28, ptr @mtk_mux_gate_clr_set_upd_ops, i8 5 }, %struct.mtk_mux { i32 23, ptr @.str.133, ptr @usb_top_parents, i32 4, i32 176, i32 180, i32 184, i32 4, i8 8, i8 2, i8 15, i8 29, ptr @mtk_mux_gate_clr_set_upd_ops, i8 4 }, %struct.mtk_mux { i32 22, ptr @.str.134, ptr @ssusb_top_xhci_parents, i32 4, i32 176, i32 180, i32 184, i32 4, i8 16, i8 2, i8 23, i8 30, ptr @mtk_mux_gate_clr_set_upd_ops, i8 4 }, %struct.mtk_mux { i32 24, ptr @.str.135, ptr @spm_parents, i32 2048, i32 176, i32 180, i32 184, i32 8, i8 24, i8 1, i8 31, i8 0, ptr @mtk_mux_gate_clr_set_upd_ops, i8 2 }, %struct.mtk_mux { i32 25, ptr @.str.136, ptr @i2c_parents, i32 4, i32 192, i32 196, i32 200, i32 8, i8 0, i8 2, i8 7, i8 1, ptr @mtk_mux_gate_clr_set_upd_ops, i8 3 }, %struct.mtk_mux { i32 14, ptr @.str.137, ptr @scp_parents, i32 4, i32 192, i32 196, i32 200, i32 8, i8 8, i8 3, i8 15, i8 2, ptr @mtk_mux_gate_clr_set_upd_ops, i8 7 }, %struct.mtk_mux { i32 27, ptr @.str.138, ptr @seninf_parents, i32 4, i32 192, i32 196, i32 200, i32 8, i8 16, i8 2, i8 23, i8 3, ptr @mtk_mux_gate_clr_set_upd_ops, i8 4 }, %struct.mtk_mux { i32 28, ptr @.str.139, ptr @dxcc_parents, i32 4, i32 192, i32 196, i32 200, i32 8, i8 24, i8 2, i8 31, i8 4, ptr @mtk_mux_gate_clr_set_upd_ops, i8 4 }, %struct.mtk_mux { i32 30, ptr @.str.140, ptr @aud_engen1_parents, i32 4, i32 208, i32 212, i32 216, i32 8, i8 0, i8 2, i8 7, i8 5, ptr @mtk_mux_gate_clr_set_upd_ops, i8 4 }, %struct.mtk_mux { i32 31, ptr @.str.141, ptr @aud_engen2_parents, i32 4, i32 208, i32 212, i32 216, i32 8, i8 8, i8 2, i8 15, i8 6, ptr @mtk_mux_gate_clr_set_upd_ops, i8 4 }, %struct.mtk_mux { i32 32, ptr @.str.142, ptr @faes_ufsfde_parents, i32 4, i32 208, i32 212, i32 216, i32 8, i8 16, i8 3, i8 23, i8 7, ptr @mtk_mux_gate_clr_set_upd_ops, i8 6 }, %struct.mtk_mux { i32 33, ptr @.str.143, ptr @fufs_parents, i32 4, i32 208, i32 212, i32 216, i32 8, i8 24, i8 2, i8 31, i8 8, ptr @mtk_mux_gate_clr_set_upd_ops, i8 4 }, %struct.mtk_mux { i32 19, ptr @.str.144, ptr @aud_1_parents, i32 4, i32 224, i32 228, i32 232, i32 8, i8 0, i8 1, i8 7, i8 9, ptr @mtk_mux_gate_clr_set_upd_ops, i8 2 }, %struct.mtk_mux { i32 20, ptr @.str.145, ptr @aud_2_parents, i32 4, i32 224, i32 228, i32 232, i32 8, i8 8, i8 1, i8 15, i8 10, ptr @mtk_mux_gate_clr_set_upd_ops, i8 2 }], [468 x i8] zeroinitializer }, align 32
@mt8183_clk_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.146, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@top_aud_muxes = internal global { [6 x %struct.mtk_composite], [48 x i8] } { [6 x %struct.mtk_composite] [%struct.mtk_composite { i32 116, ptr @.str.147, ptr @apll_i2s0_parents, ptr null, i32 4, i32 800, i32 0, i32 0, i8 8, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 117, ptr @.str.148, ptr @apll_i2s1_parents, ptr null, i32 4, i32 800, i32 0, i32 0, i8 9, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 118, ptr @.str.149, ptr @apll_i2s2_parents, ptr null, i32 4, i32 800, i32 0, i32 0, i8 10, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 119, ptr @.str.150, ptr @apll_i2s3_parents, ptr null, i32 4, i32 800, i32 0, i32 0, i8 11, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 120, ptr @.str.151, ptr @apll_i2s4_parents, ptr null, i32 4, i32 800, i32 0, i32 0, i8 12, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 121, ptr @.str.152, ptr @apll_i2s5_parents, ptr null, i32 4, i32 808, i32 0, i32 0, i8 20, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }], [48 x i8] zeroinitializer }, align 32
@top_aud_divs = internal global { [6 x %struct.mtk_composite], [48 x i8] } { [6 x %struct.mtk_composite] [%struct.mtk_composite { i32 122, ptr @.str.153, ptr null, ptr @.str.147, i32 0, i32 0, i32 804, i32 800, i8 -1, i8 0, i8 2, i8 0, i8 8, i8 0, i8 0 }, %struct.mtk_composite { i32 123, ptr @.str.154, ptr null, ptr @.str.148, i32 0, i32 0, i32 804, i32 800, i8 -1, i8 0, i8 3, i8 8, i8 8, i8 0, i8 0 }, %struct.mtk_composite { i32 124, ptr @.str.155, ptr null, ptr @.str.149, i32 0, i32 0, i32 804, i32 800, i8 -1, i8 0, i8 4, i8 16, i8 8, i8 0, i8 0 }, %struct.mtk_composite { i32 125, ptr @.str.156, ptr null, ptr @.str.150, i32 0, i32 0, i32 804, i32 800, i8 -1, i8 0, i8 5, i8 24, i8 8, i8 0, i8 0 }, %struct.mtk_composite { i32 126, ptr @.str.157, ptr null, ptr @.str.151, i32 0, i32 0, i32 808, i32 800, i8 -1, i8 0, i8 6, i8 0, i8 8, i8 0, i8 0 }, %struct.mtk_composite { i32 127, ptr @.str.158, ptr null, ptr @.str.157, i32 0, i32 0, i32 808, i32 800, i8 -1, i8 0, i8 7, i8 8, i8 8, i8 0, i8 0 }], [48 x i8] zeroinitializer }, align 32
@top_clks = internal constant { [2 x %struct.mtk_gate], [40 x i8] } { [2 x %struct.mtk_gate] [%struct.mtk_gate { i32 129, ptr @.str.159, ptr @.str.11, ptr @top_cg_regs, i32 4, ptr @mtk_clk_gate_ops_no_setclr_inv, i32 0 }, %struct.mtk_gate { i32 130, ptr @.str.160, ptr @.str.33, ptr @top_cg_regs, i32 5, ptr @mtk_clk_gate_ops_no_setclr_inv, i32 0 }], [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"osc\00", [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"univpll_192m\00", [19 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"univpll\00", [24 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"csw_f26m_ck_d2\00", [17 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"syspll_ck\00", [22 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"syspll_d2\00", [22 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"syspll_d2_d2\00", [19 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"syspll_d2_d4\00", [19 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"syspll_d2_d8\00", [19 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"syspll_d2_d16\00", [18 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"syspll_d3\00", [22 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"syspll_d3_d2\00", [19 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"syspll_d3_d4\00", [19 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"syspll_d3_d8\00", [19 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"syspll_d5\00", [22 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"syspll_d5_d2\00", [19 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"syspll_d5_d4\00", [19 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"syspll_d7\00", [22 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"syspll_d7_d2\00", [19 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"syspll_d7_d4\00", [19 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"univpll_ck\00", [21 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"univpll_d2\00", [21 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"univpll_d2_d2\00", [18 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"univpll_d2_d4\00", [18 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"univpll_d2_d8\00", [18 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"univpll_d3\00", [21 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"univpll_d3_d2\00", [18 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"univpll_d3_d4\00", [18 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"univpll_d3_d8\00", [18 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"univpll_d5\00", [21 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"univpll_d5_d2\00", [18 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"univpll_d5_d4\00", [18 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"univpll_d5_d8\00", [18 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"univpll_d7\00", [21 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"univ_192m_ck\00", [19 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"univ_192m_d2\00", [19 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"univ_192m_d4\00", [19 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"univ_192m_d8\00", [19 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"univ_192m_d16\00", [18 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"univ_192m_d32\00", [18 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apll1_ck\00", [23 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apll1_d2\00", [23 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apll1_d4\00", [23 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apll1_d8\00", [23 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apll2_ck\00", [23 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apll2_d2\00", [23 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apll2_d4\00", [23 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apll2_d8\00", [23 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tvdpll_ck\00", [22 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tvdpll_d2\00", [22 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tvdpll_d4\00", [22 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tvdpll_d8\00", [22 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tvdpll_d16\00", [21 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmpll_ck\00", [23 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmpll_d4\00", [23 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mmpll_d4_d2\00", [20 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mmpll_d4_d4\00", [20 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmpll_d5\00", [23 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mmpll_d5_d2\00", [20 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mmpll_d5_d4\00", [20 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmpll_d6\00", [23 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmpll_d7\00", [23 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mfgpll_ck\00", [22 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"msdcpll_ck\00", [21 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"msdcpll_d2\00", [21 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"msdcpll_d4\00", [21 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"msdcpll_d8\00", [21 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"msdcpll_d16\00", [20 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ad_osc_ck\00", [22 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"osc_d2\00", [25 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"osc_d4\00", [25 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"osc_d8\00", [25 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"osc_d16\00", [24 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"univpll_d3_d16\00", [17 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"axi_sel\00", [24 x i8] zeroinitializer }, align 32
@axi_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.1, ptr @.str.38, ptr @.str.48, ptr @.str.101], [16 x i8] zeroinitializer }, align 32
@mtk_mux_gate_clr_set_upd_ops = external dso_local constant %struct.clk_ops, align 4
@.str.106 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mm_sel\00", [25 x i8] zeroinitializer }, align 32
@mm_parents = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.1, ptr @.str.92, ptr @.str.41, ptr @.str.53, ptr @.str.37, ptr @.str.42], [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"img_sel\00", [24 x i8] zeroinitializer }, align 32
@img_parents = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.1, ptr @.str.91, ptr @.str.56, ptr @.str.41, ptr @.str.53, ptr @.str.37, ptr @.str.57, ptr @.str.42], [32 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cam_sel\00", [24 x i8] zeroinitializer }, align 32
@cam_parents = internal constant { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @.str.1, ptr @.str.36, ptr @.str.91, ptr @.str.41, ptr @.str.92, ptr @.str.56, ptr @.str.53, ptr @.str.37, ptr @.str.42, ptr @.str.57], [56 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dsp_sel\00", [24 x i8] zeroinitializer }, align 32
@dsp_parents = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.str.1, ptr @.str.91, ptr @.str.92, ptr @.str.56, ptr @.str.41, ptr @.str.53, ptr @.str.37, ptr @.str.57, ptr @.str.42], [60 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dsp1_sel\00", [23 x i8] zeroinitializer }, align 32
@dsp1_parents = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.str.1, ptr @.str.91, ptr @.str.92, ptr @.str.56, ptr @.str.41, ptr @.str.53, ptr @.str.37, ptr @.str.57, ptr @.str.42], [60 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dsp2_sel\00", [23 x i8] zeroinitializer }, align 32
@dsp2_parents = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.str.1, ptr @.str.91, ptr @.str.92, ptr @.str.56, ptr @.str.41, ptr @.str.53, ptr @.str.37, ptr @.str.57, ptr @.str.42], [60 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ipu_if_sel\00", [21 x i8] zeroinitializer }, align 32
@ipu_if_parents = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.str.1, ptr @.str.91, ptr @.str.92, ptr @.str.56, ptr @.str.41, ptr @.str.53, ptr @.str.37, ptr @.str.57, ptr @.str.42], [60 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mfg_sel\00", [24 x i8] zeroinitializer }, align 32
@mfg_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.1, ptr @.str.93, ptr @.str.56, ptr @.str.41], [16 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"f52m_mfg_sel\00", [19 x i8] zeroinitializer }, align 32
@f52m_mfg_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.1, ptr @.str.57, ptr @.str.58, ptr @.str.59], [16 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"camtg_sel\00", [22 x i8] zeroinitializer }, align 32
@camtg_parents = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.1, ptr @.str.68, ptr @.str.59, ptr @.str.67, ptr @.str.104, ptr @.str.34, ptr @.str.69, ptr @.str.70], [32 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"camtg2_sel\00", [21 x i8] zeroinitializer }, align 32
@camtg2_parents = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.1, ptr @.str.68, ptr @.str.59, ptr @.str.67, ptr @.str.104, ptr @.str.34, ptr @.str.69, ptr @.str.70], [32 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"camtg3_sel\00", [21 x i8] zeroinitializer }, align 32
@camtg3_parents = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.1, ptr @.str.68, ptr @.str.59, ptr @.str.67, ptr @.str.104, ptr @.str.34, ptr @.str.69, ptr @.str.70], [32 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"camtg4_sel\00", [21 x i8] zeroinitializer }, align 32
@camtg4_parents = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.1, ptr @.str.68, ptr @.str.59, ptr @.str.67, ptr @.str.104, ptr @.str.34, ptr @.str.69, ptr @.str.70], [32 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uart_sel\00", [23 x i8] zeroinitializer }, align 32
@uart_parents = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.1, ptr @.str.59], [24 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"spi_sel\00", [24 x i8] zeroinitializer }, align 32
@spi_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.1, ptr @.str.46, ptr @.str.43, ptr @.str.96], [16 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"msdc50_hclk_sel\00", [16 x i8] zeroinitializer }, align 32
@msdc50_hclk_parents = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.1, ptr @.str.37, ptr @.str.42], [20 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"msdc50_0_sel\00", [19 x i8] zeroinitializer }, align 32
@msdc50_0_parents = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.1, ptr @.str.94, ptr @.str.95, ptr @.str.54, ptr @.str.42, ptr @.str.53], [40 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"msdc30_1_sel\00", [19 x i8] zeroinitializer }, align 32
@msdc30_1_parents = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.1, ptr @.str.57, ptr @.str.42, ptr @.str.48, ptr @.str.95], [44 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"msdc30_2_sel\00", [19 x i8] zeroinitializer }, align 32
@msdc30_2_parents = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.1, ptr @.str.57, ptr @.str.42, ptr @.str.48, ptr @.str.95], [44 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"audio_sel\00", [22 x i8] zeroinitializer }, align 32
@audio_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.1, ptr @.str.47, ptr @.str.50, ptr @.str.40], [16 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aud_intbus_sel\00", [17 x i8] zeroinitializer }, align 32
@aud_intbus_parents = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.1, ptr @.str.38, ptr @.str.49], [20 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pmicspi_sel\00", [20 x i8] zeroinitializer }, align 32
@pmicspi_parents = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.1, ptr @.str.39, ptr @.str.102], [20 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fpwrap_ulposc_sel\00", [46 x i8] zeroinitializer }, align 32
@fpwrap_ulposc_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.1, ptr @.str.103, ptr @.str.101, ptr @.str.102], [16 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"atb_sel\00", [24 x i8] zeroinitializer }, align 32
@atb_parents = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.1, ptr @.str.37, ptr @.str.45], [20 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dpi0_sel\00", [23 x i8] zeroinitializer }, align 32
@dpi0_parents = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.str.1, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.61, ptr @.str.58, ptr @.str.43, ptr @.str.59], [60 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"scam_sel\00", [23 x i8] zeroinitializer }, align 32
@scam_parents = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.1, ptr @.str.46], [24 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"disppwm_sel\00", [20 x i8] zeroinitializer }, align 32
@disppwm_parents = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.1, ptr @.str.58, ptr @.str.100, ptr @.str.101, ptr @.str.103], [44 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usb_top_sel\00", [20 x i8] zeroinitializer }, align 32
@usb_top_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.1, ptr @.str.62, ptr @.str.58, ptr @.str.61], [16 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ssusb_top_xhci_sel\00", [45 x i8] zeroinitializer }, align 32
@ssusb_top_xhci_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.1, ptr @.str.62, ptr @.str.58, ptr @.str.61], [16 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"spm_sel\00", [24 x i8] zeroinitializer }, align 32
@spm_parents = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.1, ptr @.str.39], [24 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i2c_sel\00", [24 x i8] zeroinitializer }, align 32
@i2c_parents = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.1, ptr @.str.39, ptr @.str.61], [20 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"scp_sel\00", [24 x i8] zeroinitializer }, align 32
@scp_parents = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.1, ptr @.str.55, ptr @.str.45, ptr @.str.37, ptr @.str.53, ptr @.str.41, ptr @.str.56], [36 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"seninf_sel\00", [21 x i8] zeroinitializer }, align 32
@seninf_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.1, ptr @.str.53, ptr @.str.57, ptr @.str.54], [16 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dxcc_sel\00", [23 x i8] zeroinitializer }, align 32
@dxcc_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.1, ptr @.str.37, ptr @.str.38, ptr @.str.39], [16 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"aud_eng1_sel\00", [19 x i8] zeroinitializer }, align 32
@aud_engen1_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.1, ptr @.str.72, ptr @.str.73, ptr @.str.74], [16 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"aud_eng2_sel\00", [19 x i8] zeroinitializer }, align 32
@aud_engen2_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.1, ptr @.str.76, ptr @.str.77, ptr @.str.78], [16 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"faes_ufsfde_sel\00", [16 x i8] zeroinitializer }, align 32
@faes_ufsfde_parents = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.1, ptr @.str.36, ptr @.str.37, ptr @.str.41, ptr @.str.38, ptr @.str.56], [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fufs_sel\00", [23 x i8] zeroinitializer }, align 32
@fufs_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.1, ptr @.str.38, ptr @.str.39, ptr @.str.40], [16 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"aud_1_sel\00", [22 x i8] zeroinitializer }, align 32
@aud_1_parents = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.1, ptr @.str.71], [24 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"aud_2_sel\00", [22 x i8] zeroinitializer }, align 32
@aud_2_parents = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.1, ptr @.str.75], [24 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mt8183_clk_lock\00", [16 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"apll_i2s0_sel\00", [18 x i8] zeroinitializer }, align 32
@apll_i2s0_parents = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.144, ptr @.str.145], [24 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"apll_i2s1_sel\00", [18 x i8] zeroinitializer }, align 32
@apll_i2s1_parents = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.144, ptr @.str.145], [24 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"apll_i2s2_sel\00", [18 x i8] zeroinitializer }, align 32
@apll_i2s2_parents = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.144, ptr @.str.145], [24 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"apll_i2s3_sel\00", [18 x i8] zeroinitializer }, align 32
@apll_i2s3_parents = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.144, ptr @.str.145], [24 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"apll_i2s4_sel\00", [18 x i8] zeroinitializer }, align 32
@apll_i2s4_parents = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.144, ptr @.str.145], [24 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"apll_i2s5_sel\00", [18 x i8] zeroinitializer }, align 32
@apll_i2s5_parents = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.144, ptr @.str.145], [24 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"apll12_div0\00", [20 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"apll12_div1\00", [20 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"apll12_div2\00", [20 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"apll12_div3\00", [20 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"apll12_div4\00", [20 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"apll12_divb\00", [20 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"armpll_div_pll1\00", [16 x i8] zeroinitializer }, align 32
@top_cg_regs = internal constant { %struct.mtk_gate_regs, [20 x i8] } { %struct.mtk_gate_regs { i32 260, i32 260, i32 260 }, [20 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"armpll_div_pll2\00", [16 x i8] zeroinitializer }, align 32
@infra_clks = internal constant { [97 x %struct.mtk_gate], [676 x i8] } { [97 x %struct.mtk_gate] [%struct.mtk_gate { i32 0, ptr @.str.163, ptr @.str.105, ptr @infra0_cg_regs, i32 0, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 1, ptr @.str.164, ptr @.str.105, ptr @infra0_cg_regs, i32 1, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 2, ptr @.str.165, ptr @.str.105, ptr @infra0_cg_regs, i32 2, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 3, ptr @.str.166, ptr @.str.105, ptr @infra0_cg_regs, i32 3, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 4, ptr @.str.167, ptr @.str.137, ptr @infra0_cg_regs, i32 4, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 5, ptr @.str.168, ptr @.str.20, ptr @infra0_cg_regs, i32 5, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 6, ptr @.str.169, ptr @.str.105, ptr @infra0_cg_regs, i32 6, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 7, ptr @.str.170, ptr @.str.105, ptr @infra0_cg_regs, i32 8, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 8, ptr @.str.171, ptr @.str.105, ptr @infra0_cg_regs, i32 9, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 9, ptr @.str.172, ptr @.str.105, ptr @infra0_cg_regs, i32 10, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 10, ptr @.str.173, ptr @.str.136, ptr @infra0_cg_regs, i32 11, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 11, ptr @.str.174, ptr @.str.136, ptr @infra0_cg_regs, i32 12, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 12, ptr @.str.175, ptr @.str.136, ptr @infra0_cg_regs, i32 13, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 13, ptr @.str.176, ptr @.str.136, ptr @infra0_cg_regs, i32 14, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 14, ptr @.str.177, ptr @.str.105, ptr @infra0_cg_regs, i32 15, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 15, ptr @.str.178, ptr @.str.136, ptr @infra0_cg_regs, i32 16, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 16, ptr @.str.179, ptr @.str.136, ptr @infra0_cg_regs, i32 17, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 17, ptr @.str.180, ptr @.str.136, ptr @infra0_cg_regs, i32 18, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 18, ptr @.str.181, ptr @.str.136, ptr @infra0_cg_regs, i32 19, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 19, ptr @.str.182, ptr @.str.136, ptr @infra0_cg_regs, i32 21, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 20, ptr @.str.183, ptr @.str.119, ptr @infra0_cg_regs, i32 22, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 21, ptr @.str.184, ptr @.str.119, ptr @infra0_cg_regs, i32 23, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 22, ptr @.str.185, ptr @.str.119, ptr @infra0_cg_regs, i32 24, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 23, ptr @.str.186, ptr @.str.119, ptr @infra0_cg_regs, i32 25, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 24, ptr @.str.187, ptr @.str.105, ptr @infra0_cg_regs, i32 27, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 25, ptr @.str.188, ptr @.str.105, ptr @infra0_cg_regs, i32 28, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 26, ptr @.str.189, ptr @.str.105, ptr @infra0_cg_regs, i32 31, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 27, ptr @.str.190, ptr @.str.120, ptr @infra1_cg_regs, i32 1, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 28, ptr @.str.191, ptr @.str.121, ptr @infra1_cg_regs, i32 2, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 29, ptr @.str.192, ptr @.str.105, ptr @infra1_cg_regs, i32 4, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 30, ptr @.str.193, ptr @.str.105, ptr @infra1_cg_regs, i32 5, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 31, ptr @.str.194, ptr @.str.122, ptr @infra1_cg_regs, i32 6, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 32, ptr @.str.195, ptr @.str.20, ptr @infra1_cg_regs, i32 7, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 33, ptr @.str.196, ptr @.str.105, ptr @infra1_cg_regs, i32 8, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 34, ptr @.str.197, ptr @.str.105, ptr @infra1_cg_regs, i32 9, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 35, ptr @.str.198, ptr @.str.20, ptr @infra1_cg_regs, i32 10, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 36, ptr @.str.199, ptr @.str.105, ptr @infra1_cg_regs, i32 11, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 37, ptr @.str.200, ptr @.str.105, ptr @infra1_cg_regs, i32 12, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 38, ptr @.str.201, ptr @.str.105, ptr @infra1_cg_regs, i32 13, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 39, ptr @.str.202, ptr @.str.20, ptr @infra1_cg_regs, i32 14, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 40, ptr @.str.203, ptr @.str.123, ptr @infra1_cg_regs, i32 16, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 41, ptr @.str.204, ptr @.str.124, ptr @infra1_cg_regs, i32 17, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 42, ptr @.str.205, ptr @.str.105, ptr @infra1_cg_regs, i32 18, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 43, ptr @.str.206, ptr @.str.105, ptr @infra1_cg_regs, i32 19, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 44, ptr @.str.207, ptr @.str.105, ptr @infra1_cg_regs, i32 20, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 45, ptr @.str.208, ptr @.str.105, ptr @infra1_cg_regs, i32 23, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 46, ptr @.str.209, ptr @.str.105, ptr @infra1_cg_regs, i32 24, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 47, ptr @.str.210, ptr @.str.105, ptr @infra1_cg_regs, i32 25, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 48, ptr @.str.211, ptr @.str.105, ptr @infra1_cg_regs, i32 26, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 49, ptr @.str.212, ptr @.str.139, ptr @infra1_cg_regs, i32 27, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 50, ptr @.str.213, ptr @.str.139, ptr @infra1_cg_regs, i32 28, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 91, ptr @.str.214, ptr @.str.105, ptr @infra1_cg_regs, i32 30, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 51, ptr @.str.215, ptr @.str.20, ptr @infra1_cg_regs, i32 31, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 52, ptr @.str.216, ptr @.str.20, ptr @infra2_cg_regs, i32 0, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 90, ptr @.str.217, ptr @.str.133, ptr @infra2_cg_regs, i32 1, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 53, ptr @.str.218, ptr @.str.105, ptr @infra2_cg_regs, i32 2, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 54, ptr @.str.219, ptr @.str.105, ptr @infra2_cg_regs, i32 3, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 55, ptr @.str.220, ptr @.str.20, ptr @infra2_cg_regs, i32 4, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 56, ptr @.str.221, ptr @.str.120, ptr @infra2_cg_regs, i32 6, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 57, ptr @.str.222, ptr @.str.136, ptr @infra2_cg_regs, i32 7, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 58, ptr @.str.223, ptr @.str.20, ptr @infra2_cg_regs, i32 8, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 59, ptr @.str.224, ptr @.str.120, ptr @infra2_cg_regs, i32 9, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 60, ptr @.str.225, ptr @.str.120, ptr @infra2_cg_regs, i32 10, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 61, ptr @.str.226, ptr @.str.134, ptr @infra2_cg_regs, i32 11, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 62, ptr @.str.227, ptr @.str.143, ptr @infra2_cg_regs, i32 12, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 63, ptr @.str.228, ptr @.str.143, ptr @infra2_cg_regs, i32 13, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 64, ptr @.str.229, ptr @.str.105, ptr @infra2_cg_regs, i32 14, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 66, ptr @.str.230, ptr @.str.105, ptr @infra2_cg_regs, i32 16, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 68, ptr @.str.231, ptr @.str.136, ptr @infra2_cg_regs, i32 18, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 69, ptr @.str.232, ptr @.str.136, ptr @infra2_cg_regs, i32 19, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 70, ptr @.str.233, ptr @.str.136, ptr @infra2_cg_regs, i32 20, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 71, ptr @.str.234, ptr @.str.136, ptr @infra2_cg_regs, i32 21, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 72, ptr @.str.235, ptr @.str.136, ptr @infra2_cg_regs, i32 22, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 73, ptr @.str.236, ptr @.str.136, ptr @infra2_cg_regs, i32 23, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 74, ptr @.str.237, ptr @.str.136, ptr @infra2_cg_regs, i32 24, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 75, ptr @.str.238, ptr @.str.120, ptr @infra2_cg_regs, i32 25, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 76, ptr @.str.239, ptr @.str.120, ptr @infra2_cg_regs, i32 26, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 77, ptr @.str.240, ptr @.str.105, ptr @infra2_cg_regs, i32 27, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 78, ptr @.str.241, ptr @.str.143, ptr @infra2_cg_regs, i32 28, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 79, ptr @.str.242, ptr @.str.142, ptr @infra2_cg_regs, i32 29, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 80, ptr @.str.243, ptr @.str.143, ptr @infra2_cg_regs, i32 30, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 81, ptr @.str.244, ptr @.str.122, ptr @infra3_cg_regs, i32 0, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 82, ptr @.str.245, ptr @.str.122, ptr @infra3_cg_regs, i32 1, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 83, ptr @.str.246, ptr @.str.122, ptr @infra3_cg_regs, i32 2, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 86, ptr @.str.247, ptr @.str.105, ptr @infra3_cg_regs, i32 5, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 87, ptr @.str.248, ptr @.str.136, ptr @infra3_cg_regs, i32 6, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 88, ptr @.str.249, ptr @.str.121, ptr @infra3_cg_regs, i32 7, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 89, ptr @.str.250, ptr @.str.121, ptr @infra3_cg_regs, i32 8, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 92, ptr @.str.251, ptr @.str.105, ptr @infra3_cg_regs, i32 16, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 93, ptr @.str.252, ptr @.str.105, ptr @infra3_cg_regs, i32 17, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 94, ptr @.str.253, ptr @.str.105, ptr @infra3_cg_regs, i32 18, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 95, ptr @.str.254, ptr @.str.105, ptr @infra3_cg_regs, i32 19, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 96, ptr @.str.255, ptr @.str.20, ptr @infra3_cg_regs, i32 20, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 97, ptr @.str.256, ptr @.str.105, ptr @infra3_cg_regs, i32 21, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 98, ptr @.str.257, ptr @.str.136, ptr @infra3_cg_regs, i32 22, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 99, ptr @.str.258, ptr @.str.136, ptr @infra3_cg_regs, i32 23, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 100, ptr @.str.259, ptr @.str.122, ptr @infra3_cg_regs, i32 24, ptr @mtk_clk_gate_ops_setclr, i32 0 }], [676 x i8] zeroinitializer }, align 32
@clk_mt8183_infra_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.161, ptr @.str.162, ptr @.str.5, i32 1237, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s(): could not register clock provider: %d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"clk_mt8183_infra_probe\00", [41 x i8] zeroinitializer }, align 32
@clk_mt8183_infra_probe._entry_ptr = internal global ptr @clk_mt8183_infra_probe._entry, section ".printk_index", align 4
@.str.163 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"infra_pmic_tmr\00", [17 x i8] zeroinitializer }, align 32
@infra0_cg_regs = internal constant { %struct.mtk_gate_regs, [20 x i8] } { %struct.mtk_gate_regs { i32 144, i32 132, i32 128 }, [20 x i8] zeroinitializer }, align 32
@mtk_clk_gate_ops_setclr = external dso_local constant %struct.clk_ops, align 4
@.str.164 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"infra_pmic_ap\00", [18 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"infra_pmic_md\00", [18 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"infra_pmic_conn\00", [16 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"infra_scp\00", [22 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"infra_sej\00", [22 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"infra_apxgpt\00", [19 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"infra_icusb\00", [20 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"infra_gce\00", [22 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"infra_therm\00", [20 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"infra_i2c0\00", [21 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"infra_i2c1\00", [21 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"infra_i2c2\00", [21 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"infra_i2c3\00", [21 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"infra_pwm_hclk\00", [17 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"infra_pwm1\00", [21 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"infra_pwm2\00", [21 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"infra_pwm3\00", [21 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"infra_pwm4\00", [21 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"infra_pwm\00", [22 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"infra_uart0\00", [20 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"infra_uart1\00", [20 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"infra_uart2\00", [20 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"infra_uart3\00", [20 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"infra_gce_26m\00", [18 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"infra_cqdma_fpc\00", [16 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"infra_btif\00", [21 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"infra_spi0\00", [21 x i8] zeroinitializer }, align 32
@infra1_cg_regs = internal constant { %struct.mtk_gate_regs, [20 x i8] } { %struct.mtk_gate_regs { i32 148, i32 140, i32 136 }, [20 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"infra_msdc0\00", [20 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"infra_msdc1\00", [20 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"infra_msdc2\00", [20 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"infra_msdc0_sck\00", [16 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"infra_dvfsrc\00", [19 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"infra_gcpu\00", [21 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"infra_trng\00", [21 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"infra_auxadc\00", [19 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"infra_cpum\00", [21 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"infra_ccif1_ap\00", [17 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"infra_ccif1_md\00", [17 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"infra_auxadc_md\00", [16 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"infra_msdc1_sck\00", [16 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"infra_msdc2_sck\00", [16 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"infra_apdma\00", [20 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"infra_xiu\00", [22 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"infra_device_apc\00", [47 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"infra_ccif_ap\00", [18 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"infra_debugsys\00", [17 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"infra_audio\00", [20 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"infra_ccif_md\00", [18 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"infra_dxcc_sec_core\00", [44 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"infra_dxcc_ao\00", [18 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"infra_devmpu_bclk\00", [46 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"infra_dramc_f26m\00", [47 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"infra_irtx\00", [21 x i8] zeroinitializer }, align 32
@infra2_cg_regs = internal constant { %struct.mtk_gate_regs, [20 x i8] } { %struct.mtk_gate_regs { i32 172, i32 168, i32 164 }, [20 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"infra_usb\00", [22 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"infra_disppwm\00", [18 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"infra_cldma_bclk\00", [47 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"infra_audio_26m_bclk\00", [43 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"infra_spi1\00", [21 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"infra_i2c4\00", [21 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"infra_md_tmp_share\00", [45 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"infra_spi2\00", [21 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"infra_spi3\00", [21 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"infra_unipro_sck\00", [47 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"infra_unipro_tick\00", [46 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"infra_ufs_mp_sap_bck\00", [43 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"infra_md32_bclk\00", [16 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"infra_unipro_mbist\00", [45 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"infra_i2c5\00", [21 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"infra_i2c5_arbiter\00", [45 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"infra_i2c5_imm\00", [17 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"infra_i2c1_arbiter\00", [45 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"infra_i2c1_imm\00", [17 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"infra_i2c2_arbiter\00", [45 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"infra_i2c2_imm\00", [17 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"infra_spi4\00", [21 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"infra_spi5\00", [21 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"infra_cqdma\00", [20 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"infra_ufs\00", [22 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"infra_aes_ufsfde\00", [47 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"infra_ufs_tick\00", [17 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"infra_msdc0_self\00", [47 x i8] zeroinitializer }, align 32
@infra3_cg_regs = internal constant { %struct.mtk_gate_regs, [20 x i8] } { %struct.mtk_gate_regs { i32 200, i32 196, i32 192 }, [20 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"infra_msdc1_self\00", [47 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"infra_msdc2_self\00", [47 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"infra_ufs_axi\00", [18 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"infra_i2c6\00", [21 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"infra_ap_msdc0\00", [17 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"infra_md_msdc0\00", [17 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"infra_ccif2_ap\00", [17 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"infra_ccif2_md\00", [17 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"infra_ccif3_ap\00", [17 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"infra_ccif3_md\00", [17 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"infra_sej_f13m\00", [17 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"infra_aes_bclk\00", [17 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"infra_i2c7\00", [21 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"infra_i2c8\00", [21 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"infra_fbist2fpc\00", [16 x i8] zeroinitializer }, align 32
@peri_clks = internal constant { [1 x %struct.mtk_gate], [36 x i8] } { [1 x %struct.mtk_gate] [%struct.mtk_gate { i32 0, ptr @.str.260, ptr @.str.105, ptr @peri_cg_regs, i32 31, ptr @mtk_clk_gate_ops_no_setclr_inv, i32 0 }], [36 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"peri_axi\00", [23 x i8] zeroinitializer }, align 32
@peri_cg_regs = internal constant { %struct.mtk_gate_regs, [20 x i8] } { %struct.mtk_gate_regs { i32 524, i32 524, i32 524 }, [20 x i8] zeroinitializer }, align 32
@mcu_muxes = internal global { [3 x %struct.mtk_composite], [40 x i8] } { [3 x %struct.mtk_composite] [%struct.mtk_composite { i32 0, ptr @.str.261, ptr @mcu_mp0_parents, ptr null, i32 4, i32 1952, i32 0, i32 0, i8 9, i8 2, i8 -1, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 1, ptr @.str.262, ptr @mcu_mp2_parents, ptr null, i32 4, i32 1960, i32 0, i32 0, i8 9, i8 2, i8 -1, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 2, ptr @.str.263, ptr @mcu_bus_parents, ptr null, i32 4, i32 1984, i32 0, i32 0, i8 9, i8 2, i8 -1, i8 -1, i8 0, i8 0, i8 4 }], [40 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mcu_mp0_sel\00", [20 x i8] zeroinitializer }, align 32
@mcu_mp0_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.1, ptr @.str.8, ptr @.str.159, ptr @.str.160], [16 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mcu_mp2_sel\00", [20 x i8] zeroinitializer }, align 32
@mcu_mp2_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.1, ptr @.str.9, ptr @.str.159, ptr @.str.160], [16 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mcu_bus_sel\00", [20 x i8] zeroinitializer }, align 32
@mcu_bus_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.1, ptr @.str.10, ptr @.str.159, ptr @.str.160], [16 x i8] zeroinitializer }, align 32
@___asan_gen_.264 = private unnamed_addr constant [13 x i8] c"top_clk_data\00", align 1
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 1170, i32 33 }
@___asan_gen_.267 = private unnamed_addr constant [15 x i8] c"top_early_divs\00", align 1
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 31, i32 38 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 32, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant [15 x i8] c"clk_mt8183_drv\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 1316, i32 31 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 1319, i32 11 }
@___asan_gen_.282 = private unnamed_addr constant [20 x i8] c"of_match_clk_mt8183\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 1277, i32 34 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 1309, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant [5 x i8] c"plls\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 1123, i32 34 }
@___asan_gen_.306 = private unnamed_addr constant [13 x i8] c"apmixed_clks\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 1038, i32 30 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 1124, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant [17 x i8] c"armpll_div_table\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 1105, i32 39 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 1127, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 1130, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 1133, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 1136, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 1139, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant [17 x i8] c"mfgpll_div_table\00", align 1
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 1114, i32 39 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 1142, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 1144, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 1146, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 1149, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 1151, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 1040, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant [16 x i8] c"apmixed_cg_regs\00", align 1
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 1021, i32 35 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 1042, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 1044, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 1046, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 1048, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 1050, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 1052, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 1054, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 1056, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 1058, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 1060, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant [15 x i8] c"top_fixed_clks\00", align 1
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 25, i32 35 }
@___asan_gen_.390 = private unnamed_addr constant [9 x i8] c"top_divs\00", align 1
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 35, i32 38 }
@___asan_gen_.393 = private unnamed_addr constant [10 x i8] c"top_muxes\00", align 1
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 523, i32 29 }
@___asan_gen_.396 = private unnamed_addr constant [16 x i8] c"mt8183_clk_lock\00", align 1
@___asan_gen_.399 = private unnamed_addr constant [14 x i8] c"top_aud_muxes\00", align 1
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 690, i32 29 }
@___asan_gen_.402 = private unnamed_addr constant [13 x i8] c"top_aud_divs\00", align 1
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 735, i32 29 }
@___asan_gen_.405 = private unnamed_addr constant [9 x i8] c"top_clks\00", align 1
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 760, i32 30 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 27, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 28, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 36, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 38, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 40, i32 2 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 42, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 44, i32 2 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 46, i32 2 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 48, i32 2 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 50, i32 2 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 52, i32 2 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 54, i32 2 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 56, i32 2 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 58, i32 2 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 60, i32 2 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 62, i32 2 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 64, i32 2 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 66, i32 2 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 68, i32 2 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 70, i32 2 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 72, i32 2 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 74, i32 2 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 76, i32 2 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 78, i32 2 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 80, i32 2 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 82, i32 2 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 84, i32 2 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 86, i32 2 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 88, i32 2 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 90, i32 2 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 92, i32 2 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 94, i32 2 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 96, i32 2 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 98, i32 2 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 100, i32 2 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 102, i32 2 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 104, i32 2 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 106, i32 2 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 108, i32 2 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 110, i32 2 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 112, i32 2 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 114, i32 2 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 116, i32 2 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 118, i32 2 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 120, i32 2 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 122, i32 2 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 124, i32 2 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 126, i32 2 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 128, i32 2 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 130, i32 2 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 132, i32 2 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 134, i32 2 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 136, i32 2 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 138, i32 2 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 140, i32 2 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 142, i32 2 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 144, i32 2 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 146, i32 2 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 148, i32 2 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 150, i32 2 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 152, i32 2 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 154, i32 2 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 156, i32 2 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 158, i32 2 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 160, i32 2 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 162, i32 2 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 164, i32 2 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 166, i32 2 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 168, i32 2 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 170, i32 2 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 172, i32 2 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 174, i32 2 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 178, i32 2 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 525, i32 2 }
@___asan_gen_.633 = private unnamed_addr constant [12 x i8] c"axi_parents\00", align 1
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 182, i32 27 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 528, i32 2 }
@___asan_gen_.639 = private unnamed_addr constant [11 x i8] c"mm_parents\00", align 1
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 189, i32 27 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 531, i32 2 }
@___asan_gen_.645 = private unnamed_addr constant [12 x i8] c"img_parents\00", align 1
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 198, i32 27 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 534, i32 2 }
@___asan_gen_.651 = private unnamed_addr constant [12 x i8] c"cam_parents\00", align 1
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 209, i32 27 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 538, i32 2 }
@___asan_gen_.657 = private unnamed_addr constant [12 x i8] c"dsp_parents\00", align 1
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 222, i32 27 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 541, i32 2 }
@___asan_gen_.663 = private unnamed_addr constant [13 x i8] c"dsp1_parents\00", align 1
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 234, i32 27 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 544, i32 2 }
@___asan_gen_.669 = private unnamed_addr constant [13 x i8] c"dsp2_parents\00", align 1
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 246, i32 27 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 547, i32 2 }
@___asan_gen_.675 = private unnamed_addr constant [15 x i8] c"ipu_if_parents\00", align 1
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 258, i32 27 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 551, i32 2 }
@___asan_gen_.681 = private unnamed_addr constant [12 x i8] c"mfg_parents\00", align 1
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 270, i32 27 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 554, i32 2 }
@___asan_gen_.687 = private unnamed_addr constant [17 x i8] c"f52m_mfg_parents\00", align 1
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 277, i32 27 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 557, i32 2 }
@___asan_gen_.693 = private unnamed_addr constant [14 x i8] c"camtg_parents\00", align 1
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 284, i32 27 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 560, i32 2 }
@___asan_gen_.699 = private unnamed_addr constant [15 x i8] c"camtg2_parents\00", align 1
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 295, i32 27 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 564, i32 2 }
@___asan_gen_.705 = private unnamed_addr constant [15 x i8] c"camtg3_parents\00", align 1
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 306, i32 27 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 567, i32 2 }
@___asan_gen_.711 = private unnamed_addr constant [15 x i8] c"camtg4_parents\00", align 1
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 317, i32 27 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 570, i32 2 }
@___asan_gen_.717 = private unnamed_addr constant [13 x i8] c"uart_parents\00", align 1
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 328, i32 27 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 573, i32 2 }
@___asan_gen_.723 = private unnamed_addr constant [12 x i8] c"spi_parents\00", align 1
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 333, i32 27 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 577, i32 2 }
@___asan_gen_.729 = private unnamed_addr constant [20 x i8] c"msdc50_hclk_parents\00", align 1
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 340, i32 27 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 580, i32 2 }
@___asan_gen_.735 = private unnamed_addr constant [17 x i8] c"msdc50_0_parents\00", align 1
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 346, i32 27 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 583, i32 2 }
@___asan_gen_.741 = private unnamed_addr constant [17 x i8] c"msdc30_1_parents\00", align 1
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 355, i32 27 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 586, i32 2 }
@___asan_gen_.747 = private unnamed_addr constant [17 x i8] c"msdc30_2_parents\00", align 1
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 363, i32 27 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 590, i32 2 }
@___asan_gen_.753 = private unnamed_addr constant [14 x i8] c"audio_parents\00", align 1
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 371, i32 27 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 593, i32 2 }
@___asan_gen_.759 = private unnamed_addr constant [19 x i8] c"aud_intbus_parents\00", align 1
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 378, i32 27 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 596, i32 2 }
@___asan_gen_.765 = private unnamed_addr constant [16 x i8] c"pmicspi_parents\00", align 1
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 384, i32 27 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 599, i32 2 }
@___asan_gen_.771 = private unnamed_addr constant [22 x i8] c"fpwrap_ulposc_parents\00", align 1
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 390, i32 27 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 603, i32 2 }
@___asan_gen_.777 = private unnamed_addr constant [12 x i8] c"atb_parents\00", align 1
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 397, i32 27 }
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 606, i32 2 }
@___asan_gen_.783 = private unnamed_addr constant [13 x i8] c"dpi0_parents\00", align 1
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 403, i32 27 }
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 609, i32 2 }
@___asan_gen_.789 = private unnamed_addr constant [13 x i8] c"scam_parents\00", align 1
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 415, i32 27 }
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 613, i32 2 }
@___asan_gen_.795 = private unnamed_addr constant [16 x i8] c"disppwm_parents\00", align 1
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 420, i32 27 }
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 616, i32 2 }
@___asan_gen_.801 = private unnamed_addr constant [16 x i8] c"usb_top_parents\00", align 1
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 428, i32 27 }
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 619, i32 2 }
@___asan_gen_.807 = private unnamed_addr constant [23 x i8] c"ssusb_top_xhci_parents\00", align 1
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 436, i32 27 }
@___asan_gen_.812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 622, i32 2 }
@___asan_gen_.813 = private unnamed_addr constant [12 x i8] c"spm_parents\00", align 1
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 443, i32 27 }
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 626, i32 2 }
@___asan_gen_.819 = private unnamed_addr constant [12 x i8] c"i2c_parents\00", align 1
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 448, i32 27 }
@___asan_gen_.824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 629, i32 2 }
@___asan_gen_.825 = private unnamed_addr constant [12 x i8] c"scp_parents\00", align 1
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 454, i32 27 }
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 632, i32 2 }
@___asan_gen_.831 = private unnamed_addr constant [15 x i8] c"seninf_parents\00", align 1
@___asan_gen_.833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 464, i32 27 }
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 635, i32 2 }
@___asan_gen_.837 = private unnamed_addr constant [13 x i8] c"dxcc_parents\00", align 1
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 471, i32 27 }
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 639, i32 2 }
@___asan_gen_.843 = private unnamed_addr constant [19 x i8] c"aud_engen1_parents\00", align 1
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 478, i32 27 }
@___asan_gen_.848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 642, i32 2 }
@___asan_gen_.849 = private unnamed_addr constant [19 x i8] c"aud_engen2_parents\00", align 1
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 485, i32 27 }
@___asan_gen_.854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 645, i32 2 }
@___asan_gen_.855 = private unnamed_addr constant [20 x i8] c"faes_ufsfde_parents\00", align 1
@___asan_gen_.857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 492, i32 27 }
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 648, i32 2 }
@___asan_gen_.861 = private unnamed_addr constant [13 x i8] c"fufs_parents\00", align 1
@___asan_gen_.863 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 501, i32 27 }
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 652, i32 2 }
@___asan_gen_.867 = private unnamed_addr constant [14 x i8] c"aud_1_parents\00", align 1
@___asan_gen_.869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 508, i32 27 }
@___asan_gen_.872 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 655, i32 2 }
@___asan_gen_.873 = private unnamed_addr constant [14 x i8] c"aud_2_parents\00", align 1
@___asan_gen_.875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 513, i32 27 }
@___asan_gen_.878 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 23, i32 8 }
@___asan_gen_.881 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 691, i32 2 }
@___asan_gen_.882 = private unnamed_addr constant [18 x i8] c"apll_i2s0_parents\00", align 1
@___asan_gen_.884 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 660, i32 27 }
@___asan_gen_.887 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 693, i32 2 }
@___asan_gen_.888 = private unnamed_addr constant [18 x i8] c"apll_i2s1_parents\00", align 1
@___asan_gen_.890 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 665, i32 27 }
@___asan_gen_.893 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 695, i32 2 }
@___asan_gen_.894 = private unnamed_addr constant [18 x i8] c"apll_i2s2_parents\00", align 1
@___asan_gen_.896 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 670, i32 27 }
@___asan_gen_.899 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 697, i32 2 }
@___asan_gen_.900 = private unnamed_addr constant [18 x i8] c"apll_i2s3_parents\00", align 1
@___asan_gen_.902 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 675, i32 27 }
@___asan_gen_.905 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 699, i32 2 }
@___asan_gen_.906 = private unnamed_addr constant [18 x i8] c"apll_i2s4_parents\00", align 1
@___asan_gen_.908 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 680, i32 27 }
@___asan_gen_.911 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 701, i32 2 }
@___asan_gen_.912 = private unnamed_addr constant [18 x i8] c"apll_i2s5_parents\00", align 1
@___asan_gen_.914 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 685, i32 27 }
@___asan_gen_.917 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 736, i32 2 }
@___asan_gen_.920 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 738, i32 2 }
@___asan_gen_.923 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 740, i32 2 }
@___asan_gen_.926 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 742, i32 2 }
@___asan_gen_.929 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 744, i32 2 }
@___asan_gen_.932 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 746, i32 2 }
@___asan_gen_.935 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 762, i32 2 }
@___asan_gen_.936 = private unnamed_addr constant [12 x i8] c"top_cg_regs\00", align 1
@___asan_gen_.938 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 750, i32 35 }
@___asan_gen_.941 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 763, i32 2 }
@___asan_gen_.942 = private unnamed_addr constant [11 x i8] c"infra_clks\00", align 1
@___asan_gen_.944 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 806, i32 30 }
@___asan_gen_.945 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.953 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 1235, i32 3 }
@___asan_gen_.956 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 808, i32 2 }
@___asan_gen_.957 = private unnamed_addr constant [15 x i8] c"infra0_cg_regs\00", align 1
@___asan_gen_.959 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 766, i32 35 }
@___asan_gen_.962 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 810, i32 2 }
@___asan_gen_.965 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 812, i32 2 }
@___asan_gen_.968 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 814, i32 2 }
@___asan_gen_.971 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 816, i32 2 }
@___asan_gen_.974 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 818, i32 2 }
@___asan_gen_.977 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 820, i32 2 }
@___asan_gen_.980 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 822, i32 2 }
@___asan_gen_.983 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 824, i32 2 }
@___asan_gen_.986 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 826, i32 2 }
@___asan_gen_.989 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 828, i32 2 }
@___asan_gen_.992 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 830, i32 2 }
@___asan_gen_.995 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 832, i32 2 }
@___asan_gen_.998 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 834, i32 2 }
@___asan_gen_.1001 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 836, i32 2 }
@___asan_gen_.1004 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 838, i32 2 }
@___asan_gen_.1007 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 840, i32 2 }
@___asan_gen_.1010 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 842, i32 2 }
@___asan_gen_.1013 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 844, i32 2 }
@___asan_gen_.1016 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 846, i32 2 }
@___asan_gen_.1019 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 848, i32 2 }
@___asan_gen_.1022 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 850, i32 2 }
@___asan_gen_.1025 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 852, i32 2 }
@___asan_gen_.1028 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 854, i32 2 }
@___asan_gen_.1031 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 856, i32 2 }
@___asan_gen_.1034 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 858, i32 2 }
@___asan_gen_.1037 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 860, i32 2 }
@___asan_gen_.1040 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 863, i32 2 }
@___asan_gen_.1041 = private unnamed_addr constant [15 x i8] c"infra1_cg_regs\00", align 1
@___asan_gen_.1043 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 772, i32 35 }
@___asan_gen_.1046 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 865, i32 2 }
@___asan_gen_.1049 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 867, i32 2 }
@___asan_gen_.1052 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 869, i32 2 }
@___asan_gen_.1055 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 871, i32 2 }
@___asan_gen_.1058 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 873, i32 2 }
@___asan_gen_.1061 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 875, i32 2 }
@___asan_gen_.1064 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 877, i32 2 }
@___asan_gen_.1067 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 879, i32 2 }
@___asan_gen_.1070 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 881, i32 2 }
@___asan_gen_.1073 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 883, i32 2 }
@___asan_gen_.1076 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 885, i32 2 }
@___asan_gen_.1079 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 887, i32 2 }
@___asan_gen_.1082 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 889, i32 2 }
@___asan_gen_.1085 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 891, i32 2 }
@___asan_gen_.1088 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 893, i32 2 }
@___asan_gen_.1091 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 895, i32 2 }
@___asan_gen_.1094 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 897, i32 2 }
@___asan_gen_.1097 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 899, i32 2 }
@___asan_gen_.1100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 901, i32 2 }
@___asan_gen_.1103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 903, i32 2 }
@___asan_gen_.1106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 905, i32 2 }
@___asan_gen_.1109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 907, i32 2 }
@___asan_gen_.1112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 909, i32 2 }
@___asan_gen_.1115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 911, i32 2 }
@___asan_gen_.1118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 913, i32 2 }
@___asan_gen_.1121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 916, i32 2 }
@___asan_gen_.1122 = private unnamed_addr constant [15 x i8] c"infra2_cg_regs\00", align 1
@___asan_gen_.1124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 778, i32 35 }
@___asan_gen_.1127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 918, i32 2 }
@___asan_gen_.1130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 920, i32 2 }
@___asan_gen_.1133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 922, i32 2 }
@___asan_gen_.1136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 924, i32 2 }
@___asan_gen_.1139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 926, i32 2 }
@___asan_gen_.1142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 928, i32 2 }
@___asan_gen_.1145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 930, i32 2 }
@___asan_gen_.1148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 932, i32 2 }
@___asan_gen_.1151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 934, i32 2 }
@___asan_gen_.1154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 936, i32 2 }
@___asan_gen_.1157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 938, i32 2 }
@___asan_gen_.1160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 940, i32 2 }
@___asan_gen_.1163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 942, i32 2 }
@___asan_gen_.1166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 944, i32 2 }
@___asan_gen_.1169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 946, i32 2 }
@___asan_gen_.1172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 948, i32 2 }
@___asan_gen_.1175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 950, i32 2 }
@___asan_gen_.1178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 952, i32 2 }
@___asan_gen_.1181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 954, i32 2 }
@___asan_gen_.1184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 956, i32 2 }
@___asan_gen_.1187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 958, i32 2 }
@___asan_gen_.1190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 960, i32 2 }
@___asan_gen_.1193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 962, i32 2 }
@___asan_gen_.1196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 964, i32 2 }
@___asan_gen_.1199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 966, i32 2 }
@___asan_gen_.1202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 968, i32 2 }
@___asan_gen_.1205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 970, i32 2 }
@___asan_gen_.1208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 973, i32 2 }
@___asan_gen_.1209 = private unnamed_addr constant [15 x i8] c"infra3_cg_regs\00", align 1
@___asan_gen_.1211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 784, i32 35 }
@___asan_gen_.1214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 975, i32 2 }
@___asan_gen_.1217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 977, i32 2 }
@___asan_gen_.1220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 979, i32 2 }
@___asan_gen_.1223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 981, i32 2 }
@___asan_gen_.1226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 983, i32 2 }
@___asan_gen_.1229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 985, i32 2 }
@___asan_gen_.1232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 987, i32 2 }
@___asan_gen_.1235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 989, i32 2 }
@___asan_gen_.1238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 991, i32 2 }
@___asan_gen_.1241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 993, i32 2 }
@___asan_gen_.1244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 995, i32 2 }
@___asan_gen_.1247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 997, i32 2 }
@___asan_gen_.1250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 999, i32 2 }
@___asan_gen_.1253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 1001, i32 2 }
@___asan_gen_.1256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 1003, i32 2 }
@___asan_gen_.1257 = private unnamed_addr constant [10 x i8] c"peri_clks\00", align 1
@___asan_gen_.1259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 1017, i32 30 }
@___asan_gen_.1262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 1018, i32 2 }
@___asan_gen_.1263 = private unnamed_addr constant [13 x i8] c"peri_cg_regs\00", align 1
@___asan_gen_.1265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 1007, i32 35 }
@___asan_gen_.1266 = private unnamed_addr constant [10 x i8] c"mcu_muxes\00", align 1
@___asan_gen_.1268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 726, i32 29 }
@___asan_gen_.1271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 728, i32 2 }
@___asan_gen_.1272 = private unnamed_addr constant [16 x i8] c"mcu_mp0_parents\00", align 1
@___asan_gen_.1274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 705, i32 27 }
@___asan_gen_.1277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 730, i32 2 }
@___asan_gen_.1278 = private unnamed_addr constant [16 x i8] c"mcu_mp2_parents\00", align 1
@___asan_gen_.1280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 712, i32 27 }
@___asan_gen_.1281 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 732, i32 2 }
@___asan_gen_.1284 = private unnamed_addr constant [16 x i8] c"mcu_bus_parents\00", align 1
@___asan_gen_.1285 = private constant [37 x i8] c"../drivers/clk/mediatek/clk-mt8183.c\00", align 1
@___asan_gen_.1286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1285, i32 719, i32 27 }
@llvm.compiler.used = appending global [345 x ptr] [ptr @__initcall__kmod_clk_mt8183__183_1329_clk_mt8183_init3, ptr @__of_table_mt8183_topckgen, ptr @clk_mt8183_infra_probe._entry, ptr @clk_mt8183_infra_probe._entry_ptr, ptr @clk_mt8183_probe._entry, ptr @clk_mt8183_probe._entry_ptr, ptr @top_clk_data, ptr @top_early_divs, ptr @.str, ptr @.str.1, ptr @clk_mt8183_drv, ptr @.str.2, ptr @of_match_clk_mt8183, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @plls, ptr @apmixed_clks, ptr @.str.8, ptr @armpll_div_table, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @mfgpll_div_table, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @apmixed_cg_regs, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @top_fixed_clks, ptr @top_divs, ptr @top_muxes, ptr @mt8183_clk_lock, ptr @top_aud_muxes, ptr @top_aud_divs, ptr @top_clks, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @axi_parents, ptr @.str.106, ptr @mm_parents, ptr @.str.107, ptr @img_parents, ptr @.str.108, ptr @cam_parents, ptr @.str.109, ptr @dsp_parents, ptr @.str.110, ptr @dsp1_parents, ptr @.str.111, ptr @dsp2_parents, ptr @.str.112, ptr @ipu_if_parents, ptr @.str.113, ptr @mfg_parents, ptr @.str.114, ptr @f52m_mfg_parents, ptr @.str.115, ptr @camtg_parents, ptr @.str.116, ptr @camtg2_parents, ptr @.str.117, ptr @camtg3_parents, ptr @.str.118, ptr @camtg4_parents, ptr @.str.119, ptr @uart_parents, ptr @.str.120, ptr @spi_parents, ptr @.str.121, ptr @msdc50_hclk_parents, ptr @.str.122, ptr @msdc50_0_parents, ptr @.str.123, ptr @msdc30_1_parents, ptr @.str.124, ptr @msdc30_2_parents, ptr @.str.125, ptr @audio_parents, ptr @.str.126, ptr @aud_intbus_parents, ptr @.str.127, ptr @pmicspi_parents, ptr @.str.128, ptr @fpwrap_ulposc_parents, ptr @.str.129, ptr @atb_parents, ptr @.str.130, ptr @dpi0_parents, ptr @.str.131, ptr @scam_parents, ptr @.str.132, ptr @disppwm_parents, ptr @.str.133, ptr @usb_top_parents, ptr @.str.134, ptr @ssusb_top_xhci_parents, ptr @.str.135, ptr @spm_parents, ptr @.str.136, ptr @i2c_parents, ptr @.str.137, ptr @scp_parents, ptr @.str.138, ptr @seninf_parents, ptr @.str.139, ptr @dxcc_parents, ptr @.str.140, ptr @aud_engen1_parents, ptr @.str.141, ptr @aud_engen2_parents, ptr @.str.142, ptr @faes_ufsfde_parents, ptr @.str.143, ptr @fufs_parents, ptr @.str.144, ptr @aud_1_parents, ptr @.str.145, ptr @aud_2_parents, ptr @.str.146, ptr @.str.147, ptr @apll_i2s0_parents, ptr @.str.148, ptr @apll_i2s1_parents, ptr @.str.149, ptr @apll_i2s2_parents, ptr @.str.150, ptr @apll_i2s3_parents, ptr @.str.151, ptr @apll_i2s4_parents, ptr @.str.152, ptr @apll_i2s5_parents, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @top_cg_regs, ptr @.str.160, ptr @infra_clks, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @infra0_cg_regs, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @infra1_cg_regs, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @infra2_cg_regs, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @infra3_cg_regs, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.str.254, ptr @.str.255, ptr @.str.256, ptr @.str.257, ptr @.str.258, ptr @.str.259, ptr @peri_clks, ptr @.str.260, ptr @peri_cg_regs, ptr @mcu_muxes, ptr @.str.261, ptr @mcu_mp0_parents, ptr @.str.262, ptr @mcu_mp2_parents, ptr @.str.263, ptr @mcu_bus_parents], section "llvm.metadata"
@0 = internal global [341 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @top_clk_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @top_early_divs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mt8183_drv to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_match_clk_mt8183 to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mt8183_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plls to i32), i32 1056, i32 1312, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apmixed_clks to i32), i32 308, i32 384, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armpll_div_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mfgpll_div_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apmixed_cg_regs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @top_fixed_clks to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @top_divs to i32), i32 1440, i32 1792, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @top_muxes to i32), i32 1804, i32 2272, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt8183_clk_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @top_aud_muxes to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @top_aud_divs to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @top_clks to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axi_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mm_parents to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @img_parents to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cam_parents to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp_parents to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp1_parents to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dsp2_parents to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipu_if_parents to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mfg_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f52m_mfg_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @camtg_parents to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @camtg2_parents to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @camtg3_parents to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @camtg4_parents to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart_parents to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msdc50_hclk_parents to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msdc50_0_parents to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msdc30_1_parents to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msdc30_2_parents to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aud_intbus_parents to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmicspi_parents to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fpwrap_ulposc_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atb_parents to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpi0_parents to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scam_parents to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disppwm_parents to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_top_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssusb_top_xhci_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spm_parents to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_parents to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scp_parents to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seninf_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dxcc_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aud_engen1_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aud_engen2_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @faes_ufsfde_parents to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fufs_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aud_1_parents to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aud_2_parents to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apll_i2s0_parents to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apll_i2s1_parents to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apll_i2s2_parents to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apll_i2s3_parents to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apll_i2s4_parents to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apll_i2s5_parents to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.935 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @top_cg_regs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.938 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.941 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @infra_clks to i32), i32 2716, i32 3392, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.944 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mt8183_infra_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.953 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.956 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @infra0_cg_regs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.959 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.962 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.965 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.968 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.971 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.974 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.977 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.980 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.983 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.986 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.989 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.992 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.995 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.998 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1001 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1004 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1007 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1010 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1013 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1016 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1019 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1022 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1025 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1028 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1031 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1034 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1037 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1040 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @infra1_cg_regs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1043 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1046 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1049 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1052 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1055 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1061 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1064 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1067 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1070 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1073 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1076 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1079 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1082 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1085 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1088 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1091 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1094 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1097 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @infra2_cg_regs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1122 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @infra3_cg_regs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @peri_clks to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1257 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @peri_cg_regs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcu_muxes to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcu_mp0_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1272 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcu_mp2_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1278 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcu_bus_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1284 to i32), i32 ptrtoint (ptr @___asan_gen_.1285 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1286 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mt8183_topckgen_of_clk_init_driver(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %_flags.i = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %_flags.i) #4
  %call.i = tail call ptr @mtk_alloc_clk_data(i32 noundef 132) #4
  store ptr %call.i, ptr @top_clk_data, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %i.05.i = phi i32 [ 0, %entry ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %1, i32 %i.05.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -517 to ptr), ptr %arrayidx.i, align 4
  %inc.i = add nuw nsw i32 %i.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 132
  br i1 %exitcond.not.i, label %clk_mt8183_top_init_early.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

clk_mt8183_top_init_early.exit:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mtk_clk_register_factors(ptr noundef nonnull @top_early_divs, i32 noundef 1, ptr noundef %call.i) #4
  %3 = load ptr, ptr @top_clk_data, align 4
  %call2.i = tail call i32 @of_clk_add_provider(ptr noundef %np, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %3) #4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_mt8183_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @clk_mt8183_drv, ptr noundef null) #4
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
define internal i32 @clk_mt8183_probe(ptr noundef %pdev) #2 align 64 {
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
define internal i32 @clk_mt8183_apmixed_probe(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @mtk_alloc_clk_data(i32 noundef 22) #4
  tail call void @mtk_clk_register_plls(ptr noundef %1, ptr noundef nonnull @plls, i32 noundef 11, ptr noundef %call) #4
  %call1 = tail call i32 @mtk_clk_register_gates(ptr noundef %1, ptr noundef nonnull @apmixed_clks, i32 noundef 11, ptr noundef %call) #4
  %call2 = tail call i32 @of_clk_add_provider(ptr noundef %1, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %call) #4
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_mt8183_top_probe(ptr noundef %pdev) #2 align 64 {
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
  call void @__sanitizer_cov_trace_pc() #6
  %3 = load ptr, ptr @top_clk_data, align 4
  tail call void @mtk_clk_register_fixed_clks(ptr noundef nonnull @top_fixed_clks, i32 noundef 3, ptr noundef %3) #4
  %4 = load ptr, ptr @top_clk_data, align 4
  tail call void @mtk_clk_register_factors(ptr noundef nonnull @top_early_divs, i32 noundef 1, ptr noundef %4) #4
  %5 = load ptr, ptr @top_clk_data, align 4
  tail call void @mtk_clk_register_factors(ptr noundef nonnull @top_divs, i32 noundef 72, ptr noundef %5) #4
  %6 = load ptr, ptr @top_clk_data, align 4
  %call3 = tail call i32 @mtk_clk_register_muxes(ptr noundef nonnull @top_muxes, i32 noundef 41, ptr noundef %1, ptr noundef nonnull @mt8183_clk_lock, ptr noundef %6) #4
  %7 = load ptr, ptr @top_clk_data, align 4
  tail call void @mtk_clk_register_composites(ptr noundef nonnull @top_aud_muxes, i32 noundef 6, ptr noundef %call, ptr noundef nonnull @mt8183_clk_lock, ptr noundef %7) #4
  %8 = load ptr, ptr @top_clk_data, align 4
  tail call void @mtk_clk_register_composites(ptr noundef nonnull @top_aud_divs, i32 noundef 6, ptr noundef %call, ptr noundef nonnull @mt8183_clk_lock, ptr noundef %8) #4
  %9 = load ptr, ptr @top_clk_data, align 4
  %call4 = tail call i32 @mtk_clk_register_gates(ptr noundef %1, ptr noundef nonnull @top_clks, i32 noundef 2, ptr noundef %9) #4
  %10 = load ptr, ptr @top_clk_data, align 4
  %call5 = tail call i32 @of_clk_add_provider(ptr noundef %1, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %10) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %call5, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_mt8183_infra_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @mtk_alloc_clk_data(i32 noundef 101) #4
  %call1 = tail call i32 @mtk_clk_register_gates(ptr noundef %1, ptr noundef nonnull @infra_clks, i32 noundef 97, ptr noundef %call) #4
  %call2 = tail call i32 @of_clk_add_provider(ptr noundef %1, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.161, ptr noundef nonnull @.str.162, i32 noundef %call2) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mtk_register_reset_controller_set_clr(ptr noundef %1, i32 noundef 4, i32 noundef 288) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_mt8183_peri_probe(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @mtk_alloc_clk_data(i32 noundef 1) #4
  %call1 = tail call i32 @mtk_clk_register_gates(ptr noundef %1, ptr noundef nonnull @peri_clks, i32 noundef 1, ptr noundef %call) #4
  %call2 = tail call i32 @of_clk_add_provider(ptr noundef %1, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %call) #4
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_mt8183_mcu_probe(ptr noundef %pdev) #2 align 64 {
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
  call void @__sanitizer_cov_trace_pc() #6
  %call3 = tail call ptr @mtk_alloc_clk_data(i32 noundef 3) #4
  tail call void @mtk_clk_register_composites(ptr noundef nonnull @mcu_muxes, i32 noundef 3, ptr noundef %call, ptr noundef nonnull @mt8183_clk_lock, ptr noundef %call3) #4
  %call4 = tail call i32 @of_clk_add_provider(ptr noundef %1, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %call3) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %call4, %if.end ]
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_register_reset_controller_set_clr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 341)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 341)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448, !450, !451, !452, !453, !455, !457, !459, !461, !463, !465, !467, !469, !471, !473, !475, !477, !479, !481, !483, !485, !487, !489, !491, !493, !495, !497, !499, !501, !503, !505, !507, !509, !511, !513, !515, !517, !519, !521, !523, !525, !527, !529, !531, !533, !535, !537, !539, !541, !543, !545, !547, !549, !551, !553, !555, !557, !559, !561, !563, !565, !567, !569, !571, !573, !575, !577, !579, !581, !583, !585, !587, !589, !591, !593, !595, !597, !599, !601, !603, !605, !607, !609, !611, !613, !615, !617, !619, !621, !623, !625, !627, !629, !631, !633, !635, !637, !639, !641, !643, !645, !647, !649, !651, !653, !655, !657, !659, !661, !663, !665, !667, !669, !671, !673, !675}
!llvm.module.flags = !{!677, !678, !679, !680, !681, !682, !683, !684}
!llvm.ident = !{!685}

!0 = !{ptr @__of_table_mt8183_topckgen, !1, !"__of_table_mt8183_topckgen", i1 false, i1 false}
!1 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 1187, i32 1}
!2 = !{ptr @__initcall__kmod_clk_mt8183__183_1329_clk_mt8183_init3, !3, !"__initcall__kmod_clk_mt8183__183_1329_clk_mt8183_init3", i1 false, i1 false}
!3 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 1329, i32 1}
!4 = !{ptr @top_clk_data, !5, !"top_clk_data", i1 false, i1 false}
!5 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 1170, i32 33}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 32, i32 2}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @top_early_divs, !10, !"top_early_divs", i1 false, i1 false}
!10 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 31, i32 38}
!11 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 1319, i32 11}
!13 = !{ptr @clk_mt8183_drv, !14, !"clk_mt8183_drv", i1 false, i1 false}
!14 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 1316, i32 31}
!15 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 1309, i32 3}
!17 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.6, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @clk_mt8183_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @clk_mt8183_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @of_match_clk_mt8183, !24, !"of_match_clk_mt8183", i1 false, i1 false}
!24 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 1277, i32 34}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 1124, i32 2}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 1127, i32 2}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 1130, i32 2}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 1133, i32 2}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 1136, i32 2}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 1139, i32 2}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 1142, i32 2}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 1144, i32 2}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 1146, i32 2}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 1149, i32 2}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 1151, i32 2}
!47 = !{ptr @plls, !48, !"plls", i1 false, i1 false}
!48 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 1123, i32 34}
!49 = !{ptr @armpll_div_table, !50, !"armpll_div_table", i1 false, i1 false}
!50 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 1105, i32 39}
!51 = !{ptr @mfgpll_div_table, !52, !"mfgpll_div_table", i1 false, i1 false}
!52 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 1114, i32 39}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 1040, i32 2}
!55 = !{ptr @.str.20, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 1042, i32 2}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 1044, i32 2}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 1046, i32 2}
!62 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 1048, i32 2}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 1050, i32 2}
!66 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 1052, i32 2}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 1054, i32 2}
!70 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 1056, i32 2}
!72 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 1058, i32 2}
!74 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 1060, i32 2}
!76 = !{ptr @apmixed_clks, !77, !"apmixed_clks", i1 false, i1 false}
!77 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 1038, i32 30}
!78 = !{ptr @apmixed_cg_regs, !79, !"apmixed_cg_regs", i1 false, i1 false}
!79 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 1021, i32 35}
!80 = !{ptr @.str.31, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 27, i32 2}
!82 = !{ptr @.str.32, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 28, i32 2}
!84 = !{ptr @.str.33, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @top_fixed_clks, !86, !"top_fixed_clks", i1 false, i1 false}
!86 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 25, i32 35}
!87 = !{ptr @.str.34, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 36, i32 2}
!89 = !{ptr @.str.35, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 38, i32 2}
!91 = !{ptr @.str.36, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 40, i32 2}
!93 = !{ptr @.str.37, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 42, i32 2}
!95 = !{ptr @.str.38, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 44, i32 2}
!97 = !{ptr @.str.39, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 46, i32 2}
!99 = !{ptr @.str.40, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 48, i32 2}
!101 = !{ptr @.str.41, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 50, i32 2}
!103 = !{ptr @.str.42, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 52, i32 2}
!105 = !{ptr @.str.43, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 54, i32 2}
!107 = !{ptr @.str.44, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 56, i32 2}
!109 = !{ptr @.str.45, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 58, i32 2}
!111 = !{ptr @.str.46, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 60, i32 2}
!113 = !{ptr @.str.47, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 62, i32 2}
!115 = !{ptr @.str.48, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 64, i32 2}
!117 = !{ptr @.str.49, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 66, i32 2}
!119 = !{ptr @.str.50, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 68, i32 2}
!121 = !{ptr @.str.51, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 70, i32 2}
!123 = !{ptr @.str.52, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 72, i32 2}
!125 = !{ptr @.str.53, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 74, i32 2}
!127 = !{ptr @.str.54, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 76, i32 2}
!129 = !{ptr @.str.55, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 78, i32 2}
!131 = !{ptr @.str.56, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 80, i32 2}
!133 = !{ptr @.str.57, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 82, i32 2}
!135 = !{ptr @.str.58, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 84, i32 2}
!137 = !{ptr @.str.59, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 86, i32 2}
!139 = !{ptr @.str.60, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 88, i32 2}
!141 = !{ptr @.str.61, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 90, i32 2}
!143 = !{ptr @.str.62, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 92, i32 2}
!145 = !{ptr @.str.63, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 94, i32 2}
!147 = !{ptr @.str.64, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 96, i32 2}
!149 = !{ptr @.str.65, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 98, i32 2}
!151 = !{ptr @.str.66, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 100, i32 2}
!153 = !{ptr @.str.67, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 102, i32 2}
!155 = !{ptr @.str.68, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 104, i32 2}
!157 = !{ptr @.str.69, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 106, i32 2}
!159 = !{ptr @.str.70, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 108, i32 2}
!161 = !{ptr @.str.71, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 110, i32 2}
!163 = !{ptr @.str.72, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 112, i32 2}
!165 = !{ptr @.str.73, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 114, i32 2}
!167 = !{ptr @.str.74, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 116, i32 2}
!169 = !{ptr @.str.75, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 118, i32 2}
!171 = !{ptr @.str.76, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 120, i32 2}
!173 = !{ptr @.str.77, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 122, i32 2}
!175 = !{ptr @.str.78, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 124, i32 2}
!177 = !{ptr @.str.79, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 126, i32 2}
!179 = !{ptr @.str.80, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 128, i32 2}
!181 = !{ptr @.str.81, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 130, i32 2}
!183 = !{ptr @.str.82, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 132, i32 2}
!185 = !{ptr @.str.83, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 134, i32 2}
!187 = !{ptr @.str.84, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 136, i32 2}
!189 = !{ptr @.str.85, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 138, i32 2}
!191 = !{ptr @.str.86, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 140, i32 2}
!193 = !{ptr @.str.87, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 142, i32 2}
!195 = !{ptr @.str.88, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 144, i32 2}
!197 = !{ptr @.str.89, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 146, i32 2}
!199 = !{ptr @.str.90, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 148, i32 2}
!201 = !{ptr @.str.91, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 150, i32 2}
!203 = !{ptr @.str.92, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 152, i32 2}
!205 = !{ptr @.str.93, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 154, i32 2}
!207 = !{ptr @.str.94, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 156, i32 2}
!209 = !{ptr @.str.95, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 158, i32 2}
!211 = !{ptr @.str.96, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 160, i32 2}
!213 = !{ptr @.str.97, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 162, i32 2}
!215 = !{ptr @.str.98, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 164, i32 2}
!217 = !{ptr @.str.99, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 166, i32 2}
!219 = !{ptr @.str.100, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 168, i32 2}
!221 = !{ptr @.str.101, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 170, i32 2}
!223 = !{ptr @.str.102, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 172, i32 2}
!225 = !{ptr @.str.103, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 174, i32 2}
!227 = !{ptr @.str.104, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 178, i32 2}
!229 = !{ptr @top_divs, !230, !"top_divs", i1 false, i1 false}
!230 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 35, i32 38}
!231 = !{ptr @.str.105, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 525, i32 2}
!233 = !{ptr @.str.106, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 528, i32 2}
!235 = !{ptr @.str.107, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 531, i32 2}
!237 = !{ptr @.str.108, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 534, i32 2}
!239 = !{ptr @.str.109, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 538, i32 2}
!241 = !{ptr @.str.110, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 541, i32 2}
!243 = !{ptr @.str.111, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 544, i32 2}
!245 = !{ptr @.str.112, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 547, i32 2}
!247 = !{ptr @.str.113, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 551, i32 2}
!249 = !{ptr @.str.114, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 554, i32 2}
!251 = !{ptr @.str.115, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 557, i32 2}
!253 = !{ptr @.str.116, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 560, i32 2}
!255 = !{ptr @.str.117, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 564, i32 2}
!257 = !{ptr @.str.118, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 567, i32 2}
!259 = !{ptr @.str.119, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 570, i32 2}
!261 = !{ptr @.str.120, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 573, i32 2}
!263 = !{ptr @.str.121, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 577, i32 2}
!265 = !{ptr @.str.122, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 580, i32 2}
!267 = !{ptr @.str.123, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 583, i32 2}
!269 = !{ptr @.str.124, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 586, i32 2}
!271 = !{ptr @.str.125, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 590, i32 2}
!273 = !{ptr @.str.126, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 593, i32 2}
!275 = !{ptr @.str.127, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 596, i32 2}
!277 = !{ptr @.str.128, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 599, i32 2}
!279 = !{ptr @.str.129, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 603, i32 2}
!281 = !{ptr @.str.130, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 606, i32 2}
!283 = !{ptr @.str.131, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 609, i32 2}
!285 = !{ptr @.str.132, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 613, i32 2}
!287 = !{ptr @.str.133, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 616, i32 2}
!289 = !{ptr @.str.134, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 619, i32 2}
!291 = !{ptr @.str.135, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 622, i32 2}
!293 = !{ptr @.str.136, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 626, i32 2}
!295 = !{ptr @.str.137, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 629, i32 2}
!297 = !{ptr @.str.138, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 632, i32 2}
!299 = !{ptr @.str.139, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 635, i32 2}
!301 = !{ptr @.str.140, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 639, i32 2}
!303 = !{ptr @.str.141, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 642, i32 2}
!305 = !{ptr @.str.142, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 645, i32 2}
!307 = !{ptr @.str.143, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 648, i32 2}
!309 = !{ptr @.str.144, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 652, i32 2}
!311 = !{ptr @.str.145, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 655, i32 2}
!313 = !{ptr @top_muxes, !314, !"top_muxes", i1 false, i1 false}
!314 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 523, i32 29}
!315 = !{ptr @axi_parents, !316, !"axi_parents", i1 false, i1 false}
!316 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 182, i32 27}
!317 = !{ptr @mm_parents, !318, !"mm_parents", i1 false, i1 false}
!318 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 189, i32 27}
!319 = !{ptr @img_parents, !320, !"img_parents", i1 false, i1 false}
!320 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 198, i32 27}
!321 = !{ptr @cam_parents, !322, !"cam_parents", i1 false, i1 false}
!322 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 209, i32 27}
!323 = !{ptr @dsp_parents, !324, !"dsp_parents", i1 false, i1 false}
!324 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 222, i32 27}
!325 = !{ptr @dsp1_parents, !326, !"dsp1_parents", i1 false, i1 false}
!326 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 234, i32 27}
!327 = !{ptr @dsp2_parents, !328, !"dsp2_parents", i1 false, i1 false}
!328 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 246, i32 27}
!329 = !{ptr @ipu_if_parents, !330, !"ipu_if_parents", i1 false, i1 false}
!330 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 258, i32 27}
!331 = !{ptr @mfg_parents, !332, !"mfg_parents", i1 false, i1 false}
!332 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 270, i32 27}
!333 = !{ptr @f52m_mfg_parents, !334, !"f52m_mfg_parents", i1 false, i1 false}
!334 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 277, i32 27}
!335 = !{ptr @camtg_parents, !336, !"camtg_parents", i1 false, i1 false}
!336 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 284, i32 27}
!337 = !{ptr @camtg2_parents, !338, !"camtg2_parents", i1 false, i1 false}
!338 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 295, i32 27}
!339 = !{ptr @camtg3_parents, !340, !"camtg3_parents", i1 false, i1 false}
!340 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 306, i32 27}
!341 = !{ptr @camtg4_parents, !342, !"camtg4_parents", i1 false, i1 false}
!342 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 317, i32 27}
!343 = !{ptr @uart_parents, !344, !"uart_parents", i1 false, i1 false}
!344 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 328, i32 27}
!345 = !{ptr @spi_parents, !346, !"spi_parents", i1 false, i1 false}
!346 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 333, i32 27}
!347 = !{ptr @msdc50_hclk_parents, !348, !"msdc50_hclk_parents", i1 false, i1 false}
!348 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 340, i32 27}
!349 = !{ptr @msdc50_0_parents, !350, !"msdc50_0_parents", i1 false, i1 false}
!350 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 346, i32 27}
!351 = !{ptr @msdc30_1_parents, !352, !"msdc30_1_parents", i1 false, i1 false}
!352 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 355, i32 27}
!353 = !{ptr @msdc30_2_parents, !354, !"msdc30_2_parents", i1 false, i1 false}
!354 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 363, i32 27}
!355 = !{ptr @audio_parents, !356, !"audio_parents", i1 false, i1 false}
!356 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 371, i32 27}
!357 = !{ptr @aud_intbus_parents, !358, !"aud_intbus_parents", i1 false, i1 false}
!358 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 378, i32 27}
!359 = !{ptr @pmicspi_parents, !360, !"pmicspi_parents", i1 false, i1 false}
!360 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 384, i32 27}
!361 = !{ptr @fpwrap_ulposc_parents, !362, !"fpwrap_ulposc_parents", i1 false, i1 false}
!362 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 390, i32 27}
!363 = !{ptr @atb_parents, !364, !"atb_parents", i1 false, i1 false}
!364 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 397, i32 27}
!365 = !{ptr @dpi0_parents, !366, !"dpi0_parents", i1 false, i1 false}
!366 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 403, i32 27}
!367 = !{ptr @scam_parents, !368, !"scam_parents", i1 false, i1 false}
!368 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 415, i32 27}
!369 = !{ptr @disppwm_parents, !370, !"disppwm_parents", i1 false, i1 false}
!370 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 420, i32 27}
!371 = !{ptr @usb_top_parents, !372, !"usb_top_parents", i1 false, i1 false}
!372 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 428, i32 27}
!373 = !{ptr @ssusb_top_xhci_parents, !374, !"ssusb_top_xhci_parents", i1 false, i1 false}
!374 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 436, i32 27}
!375 = !{ptr @spm_parents, !376, !"spm_parents", i1 false, i1 false}
!376 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 443, i32 27}
!377 = !{ptr @i2c_parents, !378, !"i2c_parents", i1 false, i1 false}
!378 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 448, i32 27}
!379 = !{ptr @scp_parents, !380, !"scp_parents", i1 false, i1 false}
!380 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 454, i32 27}
!381 = !{ptr @seninf_parents, !382, !"seninf_parents", i1 false, i1 false}
!382 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 464, i32 27}
!383 = !{ptr @dxcc_parents, !384, !"dxcc_parents", i1 false, i1 false}
!384 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 471, i32 27}
!385 = !{ptr @aud_engen1_parents, !386, !"aud_engen1_parents", i1 false, i1 false}
!386 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 478, i32 27}
!387 = !{ptr @aud_engen2_parents, !388, !"aud_engen2_parents", i1 false, i1 false}
!388 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 485, i32 27}
!389 = !{ptr @faes_ufsfde_parents, !390, !"faes_ufsfde_parents", i1 false, i1 false}
!390 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 492, i32 27}
!391 = !{ptr @fufs_parents, !392, !"fufs_parents", i1 false, i1 false}
!392 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 501, i32 27}
!393 = !{ptr @aud_1_parents, !394, !"aud_1_parents", i1 false, i1 false}
!394 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 508, i32 27}
!395 = !{ptr @aud_2_parents, !396, !"aud_2_parents", i1 false, i1 false}
!396 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 513, i32 27}
!397 = !{ptr @.str.146, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 23, i32 8}
!399 = !{ptr @mt8183_clk_lock, !398, !"mt8183_clk_lock", i1 false, i1 false}
!400 = !{ptr @.str.147, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 691, i32 2}
!402 = !{ptr @.str.148, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 693, i32 2}
!404 = !{ptr @.str.149, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 695, i32 2}
!406 = !{ptr @.str.150, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 697, i32 2}
!408 = !{ptr @.str.151, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 699, i32 2}
!410 = !{ptr @.str.152, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 701, i32 2}
!412 = !{ptr @top_aud_muxes, !413, !"top_aud_muxes", i1 false, i1 false}
!413 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 690, i32 29}
!414 = !{ptr @apll_i2s0_parents, !415, !"apll_i2s0_parents", i1 false, i1 false}
!415 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 660, i32 27}
!416 = !{ptr @apll_i2s1_parents, !417, !"apll_i2s1_parents", i1 false, i1 false}
!417 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 665, i32 27}
!418 = !{ptr @apll_i2s2_parents, !419, !"apll_i2s2_parents", i1 false, i1 false}
!419 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 670, i32 27}
!420 = !{ptr @apll_i2s3_parents, !421, !"apll_i2s3_parents", i1 false, i1 false}
!421 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 675, i32 27}
!422 = !{ptr @apll_i2s4_parents, !423, !"apll_i2s4_parents", i1 false, i1 false}
!423 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 680, i32 27}
!424 = !{ptr @apll_i2s5_parents, !425, !"apll_i2s5_parents", i1 false, i1 false}
!425 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 685, i32 27}
!426 = !{ptr @.str.153, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 736, i32 2}
!428 = !{ptr @.str.154, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 738, i32 2}
!430 = !{ptr @.str.155, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 740, i32 2}
!432 = !{ptr @.str.156, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 742, i32 2}
!434 = !{ptr @.str.157, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 744, i32 2}
!436 = !{ptr @.str.158, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 746, i32 2}
!438 = !{ptr @top_aud_divs, !439, !"top_aud_divs", i1 false, i1 false}
!439 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 735, i32 29}
!440 = !{ptr @.str.159, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 762, i32 2}
!442 = !{ptr @.str.160, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 763, i32 2}
!444 = !{ptr @top_clks, !445, !"top_clks", i1 false, i1 false}
!445 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 760, i32 30}
!446 = !{ptr @top_cg_regs, !447, !"top_cg_regs", i1 false, i1 false}
!447 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 750, i32 35}
!448 = !{ptr @.str.161, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 1235, i32 3}
!450 = !{ptr @.str.162, !449, !"<string literal>", i1 false, i1 false}
!451 = !{ptr @clk_mt8183_infra_probe._entry, !449, !"_entry", i1 false, i1 false}
!452 = !{ptr @clk_mt8183_infra_probe._entry_ptr, !449, !"_entry_ptr", i1 false, i1 false}
!453 = !{ptr @.str.163, !454, !"<string literal>", i1 false, i1 false}
!454 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 808, i32 2}
!455 = !{ptr @.str.164, !456, !"<string literal>", i1 false, i1 false}
!456 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 810, i32 2}
!457 = !{ptr @.str.165, !458, !"<string literal>", i1 false, i1 false}
!458 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 812, i32 2}
!459 = !{ptr @.str.166, !460, !"<string literal>", i1 false, i1 false}
!460 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 814, i32 2}
!461 = !{ptr @.str.167, !462, !"<string literal>", i1 false, i1 false}
!462 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 816, i32 2}
!463 = !{ptr @.str.168, !464, !"<string literal>", i1 false, i1 false}
!464 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 818, i32 2}
!465 = !{ptr @.str.169, !466, !"<string literal>", i1 false, i1 false}
!466 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 820, i32 2}
!467 = !{ptr @.str.170, !468, !"<string literal>", i1 false, i1 false}
!468 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 822, i32 2}
!469 = !{ptr @.str.171, !470, !"<string literal>", i1 false, i1 false}
!470 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 824, i32 2}
!471 = !{ptr @.str.172, !472, !"<string literal>", i1 false, i1 false}
!472 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 826, i32 2}
!473 = !{ptr @.str.173, !474, !"<string literal>", i1 false, i1 false}
!474 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 828, i32 2}
!475 = !{ptr @.str.174, !476, !"<string literal>", i1 false, i1 false}
!476 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 830, i32 2}
!477 = !{ptr @.str.175, !478, !"<string literal>", i1 false, i1 false}
!478 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 832, i32 2}
!479 = !{ptr @.str.176, !480, !"<string literal>", i1 false, i1 false}
!480 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 834, i32 2}
!481 = !{ptr @.str.177, !482, !"<string literal>", i1 false, i1 false}
!482 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 836, i32 2}
!483 = !{ptr @.str.178, !484, !"<string literal>", i1 false, i1 false}
!484 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 838, i32 2}
!485 = !{ptr @.str.179, !486, !"<string literal>", i1 false, i1 false}
!486 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 840, i32 2}
!487 = !{ptr @.str.180, !488, !"<string literal>", i1 false, i1 false}
!488 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 842, i32 2}
!489 = !{ptr @.str.181, !490, !"<string literal>", i1 false, i1 false}
!490 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 844, i32 2}
!491 = !{ptr @.str.182, !492, !"<string literal>", i1 false, i1 false}
!492 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 846, i32 2}
!493 = !{ptr @.str.183, !494, !"<string literal>", i1 false, i1 false}
!494 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 848, i32 2}
!495 = !{ptr @.str.184, !496, !"<string literal>", i1 false, i1 false}
!496 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 850, i32 2}
!497 = !{ptr @.str.185, !498, !"<string literal>", i1 false, i1 false}
!498 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 852, i32 2}
!499 = !{ptr @.str.186, !500, !"<string literal>", i1 false, i1 false}
!500 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 854, i32 2}
!501 = !{ptr @.str.187, !502, !"<string literal>", i1 false, i1 false}
!502 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 856, i32 2}
!503 = !{ptr @.str.188, !504, !"<string literal>", i1 false, i1 false}
!504 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 858, i32 2}
!505 = !{ptr @.str.189, !506, !"<string literal>", i1 false, i1 false}
!506 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 860, i32 2}
!507 = !{ptr @.str.190, !508, !"<string literal>", i1 false, i1 false}
!508 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 863, i32 2}
!509 = !{ptr @.str.191, !510, !"<string literal>", i1 false, i1 false}
!510 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 865, i32 2}
!511 = !{ptr @.str.192, !512, !"<string literal>", i1 false, i1 false}
!512 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 867, i32 2}
!513 = !{ptr @.str.193, !514, !"<string literal>", i1 false, i1 false}
!514 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 869, i32 2}
!515 = !{ptr @.str.194, !516, !"<string literal>", i1 false, i1 false}
!516 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 871, i32 2}
!517 = !{ptr @.str.195, !518, !"<string literal>", i1 false, i1 false}
!518 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 873, i32 2}
!519 = !{ptr @.str.196, !520, !"<string literal>", i1 false, i1 false}
!520 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 875, i32 2}
!521 = !{ptr @.str.197, !522, !"<string literal>", i1 false, i1 false}
!522 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 877, i32 2}
!523 = !{ptr @.str.198, !524, !"<string literal>", i1 false, i1 false}
!524 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 879, i32 2}
!525 = !{ptr @.str.199, !526, !"<string literal>", i1 false, i1 false}
!526 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 881, i32 2}
!527 = !{ptr @.str.200, !528, !"<string literal>", i1 false, i1 false}
!528 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 883, i32 2}
!529 = !{ptr @.str.201, !530, !"<string literal>", i1 false, i1 false}
!530 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 885, i32 2}
!531 = !{ptr @.str.202, !532, !"<string literal>", i1 false, i1 false}
!532 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 887, i32 2}
!533 = !{ptr @.str.203, !534, !"<string literal>", i1 false, i1 false}
!534 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 889, i32 2}
!535 = !{ptr @.str.204, !536, !"<string literal>", i1 false, i1 false}
!536 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 891, i32 2}
!537 = !{ptr @.str.205, !538, !"<string literal>", i1 false, i1 false}
!538 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 893, i32 2}
!539 = !{ptr @.str.206, !540, !"<string literal>", i1 false, i1 false}
!540 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 895, i32 2}
!541 = !{ptr @.str.207, !542, !"<string literal>", i1 false, i1 false}
!542 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 897, i32 2}
!543 = !{ptr @.str.208, !544, !"<string literal>", i1 false, i1 false}
!544 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 899, i32 2}
!545 = !{ptr @.str.209, !546, !"<string literal>", i1 false, i1 false}
!546 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 901, i32 2}
!547 = !{ptr @.str.210, !548, !"<string literal>", i1 false, i1 false}
!548 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 903, i32 2}
!549 = !{ptr @.str.211, !550, !"<string literal>", i1 false, i1 false}
!550 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 905, i32 2}
!551 = !{ptr @.str.212, !552, !"<string literal>", i1 false, i1 false}
!552 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 907, i32 2}
!553 = !{ptr @.str.213, !554, !"<string literal>", i1 false, i1 false}
!554 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 909, i32 2}
!555 = !{ptr @.str.214, !556, !"<string literal>", i1 false, i1 false}
!556 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 911, i32 2}
!557 = !{ptr @.str.215, !558, !"<string literal>", i1 false, i1 false}
!558 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 913, i32 2}
!559 = !{ptr @.str.216, !560, !"<string literal>", i1 false, i1 false}
!560 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 916, i32 2}
!561 = !{ptr @.str.217, !562, !"<string literal>", i1 false, i1 false}
!562 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 918, i32 2}
!563 = !{ptr @.str.218, !564, !"<string literal>", i1 false, i1 false}
!564 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 920, i32 2}
!565 = !{ptr @.str.219, !566, !"<string literal>", i1 false, i1 false}
!566 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 922, i32 2}
!567 = !{ptr @.str.220, !568, !"<string literal>", i1 false, i1 false}
!568 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 924, i32 2}
!569 = !{ptr @.str.221, !570, !"<string literal>", i1 false, i1 false}
!570 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 926, i32 2}
!571 = !{ptr @.str.222, !572, !"<string literal>", i1 false, i1 false}
!572 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 928, i32 2}
!573 = !{ptr @.str.223, !574, !"<string literal>", i1 false, i1 false}
!574 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 930, i32 2}
!575 = !{ptr @.str.224, !576, !"<string literal>", i1 false, i1 false}
!576 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 932, i32 2}
!577 = !{ptr @.str.225, !578, !"<string literal>", i1 false, i1 false}
!578 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 934, i32 2}
!579 = !{ptr @.str.226, !580, !"<string literal>", i1 false, i1 false}
!580 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 936, i32 2}
!581 = !{ptr @.str.227, !582, !"<string literal>", i1 false, i1 false}
!582 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 938, i32 2}
!583 = !{ptr @.str.228, !584, !"<string literal>", i1 false, i1 false}
!584 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 940, i32 2}
!585 = !{ptr @.str.229, !586, !"<string literal>", i1 false, i1 false}
!586 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 942, i32 2}
!587 = !{ptr @.str.230, !588, !"<string literal>", i1 false, i1 false}
!588 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 944, i32 2}
!589 = !{ptr @.str.231, !590, !"<string literal>", i1 false, i1 false}
!590 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 946, i32 2}
!591 = !{ptr @.str.232, !592, !"<string literal>", i1 false, i1 false}
!592 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 948, i32 2}
!593 = !{ptr @.str.233, !594, !"<string literal>", i1 false, i1 false}
!594 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 950, i32 2}
!595 = !{ptr @.str.234, !596, !"<string literal>", i1 false, i1 false}
!596 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 952, i32 2}
!597 = !{ptr @.str.235, !598, !"<string literal>", i1 false, i1 false}
!598 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 954, i32 2}
!599 = !{ptr @.str.236, !600, !"<string literal>", i1 false, i1 false}
!600 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 956, i32 2}
!601 = !{ptr @.str.237, !602, !"<string literal>", i1 false, i1 false}
!602 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 958, i32 2}
!603 = !{ptr @.str.238, !604, !"<string literal>", i1 false, i1 false}
!604 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 960, i32 2}
!605 = !{ptr @.str.239, !606, !"<string literal>", i1 false, i1 false}
!606 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 962, i32 2}
!607 = !{ptr @.str.240, !608, !"<string literal>", i1 false, i1 false}
!608 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 964, i32 2}
!609 = !{ptr @.str.241, !610, !"<string literal>", i1 false, i1 false}
!610 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 966, i32 2}
!611 = !{ptr @.str.242, !612, !"<string literal>", i1 false, i1 false}
!612 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 968, i32 2}
!613 = !{ptr @.str.243, !614, !"<string literal>", i1 false, i1 false}
!614 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 970, i32 2}
!615 = !{ptr @.str.244, !616, !"<string literal>", i1 false, i1 false}
!616 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 973, i32 2}
!617 = !{ptr @.str.245, !618, !"<string literal>", i1 false, i1 false}
!618 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 975, i32 2}
!619 = !{ptr @.str.246, !620, !"<string literal>", i1 false, i1 false}
!620 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 977, i32 2}
!621 = !{ptr @.str.247, !622, !"<string literal>", i1 false, i1 false}
!622 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 979, i32 2}
!623 = !{ptr @.str.248, !624, !"<string literal>", i1 false, i1 false}
!624 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 981, i32 2}
!625 = !{ptr @.str.249, !626, !"<string literal>", i1 false, i1 false}
!626 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 983, i32 2}
!627 = !{ptr @.str.250, !628, !"<string literal>", i1 false, i1 false}
!628 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 985, i32 2}
!629 = !{ptr @.str.251, !630, !"<string literal>", i1 false, i1 false}
!630 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 987, i32 2}
!631 = !{ptr @.str.252, !632, !"<string literal>", i1 false, i1 false}
!632 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 989, i32 2}
!633 = !{ptr @.str.253, !634, !"<string literal>", i1 false, i1 false}
!634 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 991, i32 2}
!635 = !{ptr @.str.254, !636, !"<string literal>", i1 false, i1 false}
!636 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 993, i32 2}
!637 = !{ptr @.str.255, !638, !"<string literal>", i1 false, i1 false}
!638 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 995, i32 2}
!639 = !{ptr @.str.256, !640, !"<string literal>", i1 false, i1 false}
!640 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 997, i32 2}
!641 = !{ptr @.str.257, !642, !"<string literal>", i1 false, i1 false}
!642 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 999, i32 2}
!643 = !{ptr @.str.258, !644, !"<string literal>", i1 false, i1 false}
!644 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 1001, i32 2}
!645 = !{ptr @.str.259, !646, !"<string literal>", i1 false, i1 false}
!646 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 1003, i32 2}
!647 = !{ptr @infra_clks, !648, !"infra_clks", i1 false, i1 false}
!648 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 806, i32 30}
!649 = !{ptr @infra0_cg_regs, !650, !"infra0_cg_regs", i1 false, i1 false}
!650 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 766, i32 35}
!651 = !{ptr @infra1_cg_regs, !652, !"infra1_cg_regs", i1 false, i1 false}
!652 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 772, i32 35}
!653 = !{ptr @infra2_cg_regs, !654, !"infra2_cg_regs", i1 false, i1 false}
!654 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 778, i32 35}
!655 = !{ptr @infra3_cg_regs, !656, !"infra3_cg_regs", i1 false, i1 false}
!656 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 784, i32 35}
!657 = !{ptr @.str.260, !658, !"<string literal>", i1 false, i1 false}
!658 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 1018, i32 2}
!659 = !{ptr @peri_clks, !660, !"peri_clks", i1 false, i1 false}
!660 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 1017, i32 30}
!661 = !{ptr @peri_cg_regs, !662, !"peri_cg_regs", i1 false, i1 false}
!662 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 1007, i32 35}
!663 = !{ptr @.str.261, !664, !"<string literal>", i1 false, i1 false}
!664 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 728, i32 2}
!665 = !{ptr @.str.262, !666, !"<string literal>", i1 false, i1 false}
!666 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 730, i32 2}
!667 = !{ptr @.str.263, !668, !"<string literal>", i1 false, i1 false}
!668 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 732, i32 2}
!669 = !{ptr @mcu_muxes, !670, !"mcu_muxes", i1 false, i1 false}
!670 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 726, i32 29}
!671 = !{ptr @mcu_mp0_parents, !672, !"mcu_mp0_parents", i1 false, i1 false}
!672 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 705, i32 27}
!673 = !{ptr @mcu_mp2_parents, !674, !"mcu_mp2_parents", i1 false, i1 false}
!674 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 712, i32 27}
!675 = !{ptr @mcu_bus_parents, !676, !"mcu_bus_parents", i1 false, i1 false}
!676 = !{!"../drivers/clk/mediatek/clk-mt8183.c", i32 719, i32 27}
!677 = !{i32 1, !"wchar_size", i32 2}
!678 = !{i32 1, !"min_enum_size", i32 4}
!679 = !{i32 8, !"branch-target-enforcement", i32 0}
!680 = !{i32 8, !"sign-return-address", i32 0}
!681 = !{i32 8, !"sign-return-address-all", i32 0}
!682 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!683 = !{i32 7, !"uwtable", i32 1}
!684 = !{i32 7, !"frame-pointer", i32 2}
!685 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
