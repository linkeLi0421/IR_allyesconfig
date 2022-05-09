; ModuleID = '/llk/IR_all_yes/drivers/clk/mediatek/clk-mt2712.c_pt.bc'
source_filename = "../drivers/clk/mediatek/clk-mt2712.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.mtk_fixed_factor = type { i32, ptr, ptr, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mtk_pll_data = type { i32, ptr, i32, i32, i32, i32, i32, i32, i8, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i8 }
%struct.mtk_pll_div_table = type { i32, i32 }
%struct.mtk_fixed_clk = type { i32, ptr, ptr, i32 }
%struct.mtk_composite = type { i32, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mtk_clk_divider = type { i32, ptr, ptr, i32, i32, i8, i8, i8, ptr }
%struct.mtk_gate = type { i32, ptr, ptr, ptr, i32, ptr, i32 }
%struct.mtk_gate_regs = type { i32, i32, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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

@__of_table_mt2712_topckgen = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2712-topckgen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt2712_topckgen_of_clk_init_driver }, section "__clk_of_table", align 4
@__initcall__kmod_clk_mt2712__183_1469_clk_mt2712_init3 = internal global ptr @clk_mt2712_init, section ".initcall3.init", align 4
@top_clk_data = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@top_early_divs = internal constant { [2 x %struct.mtk_fixed_factor], [56 x i8] } { [2 x %struct.mtk_fixed_factor] [%struct.mtk_fixed_factor { i32 65, ptr @.str.3, ptr @.str.4, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 85, ptr @.str.5, ptr @.str.3, i32 1, i32 2 }], [56 x i8] zeroinitializer }, align 32
@clk_mt2712_top_init_early._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1298, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s(): could not register clock provider: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"clk_mt2712_top_init_early\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/clk/mediatek/clk-mt2712.c\00", [62 x i8] zeroinitializer }, align 32
@clk_mt2712_top_init_early._entry_ptr = internal global ptr @clk_mt2712_top_init_early._entry, section ".printk_index", align 4
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sys_26m\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"clk26m\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clk26m_d2\00", [22 x i8] zeroinitializer }, align 32
@clk_mt2712_drv = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @clk_mt2712_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.6, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_match_clk_mt2712, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clk-mt2712\00", [21 x i8] zeroinitializer }, align 32
@of_match_clk_mt2712 = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2712-apmixedsys\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clk_mt2712_apmixed_probe }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2712-topckgen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clk_mt2712_top_probe }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2712-infracfg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clk_mt2712_infra_probe }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2712-pericfg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clk_mt2712_peri_probe }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2712-mcucfg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clk_mt2712_mcu_probe }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@clk_mt2712_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 1451, ptr @.str.9, ptr @.str.10 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"could not register clock provider: %s: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clk_mt2712_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@clk_mt2712_probe._entry_ptr = internal global ptr @clk_mt2712_probe._entry, section ".printk_index", align 4
@plls = internal constant { [15 x %struct.mtk_pll_data], [352 x i8] } { [15 x %struct.mtk_pll_data] [%struct.mtk_pll_data { i32 0, ptr @.str.12, i32 560, i32 572, i32 -268435199, i32 560, i32 0, i32 0, i8 0, i32 4, i32 1, ptr null, i32 16777216, i32 0, i32 -1294967296, i32 31, i32 0, i32 564, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 1, ptr @.str.13, i32 576, i32 588, i32 -33554175, i32 576, i32 0, i32 0, i8 0, i32 4, i32 1, ptr null, i32 16777216, i32 0, i32 -1294967296, i32 31, i32 0, i32 580, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 2, ptr @.str.14, i32 800, i32 812, i32 -1073741567, i32 800, i32 0, i32 0, i8 0, i32 4, i32 0, ptr null, i32 16777216, i32 0, i32 -1294967296, i32 31, i32 0, i32 804, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 3, ptr @.str.15, i32 640, i32 652, i32 257, i32 640, i32 0, i32 0, i8 0, i32 4, i32 0, ptr null, i32 16777216, i32 0, i32 -1294967296, i32 31, i32 0, i32 644, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 4, ptr @.str.16, i32 816, i32 832, i32 257, i32 816, i32 824, i32 20, i8 0, i32 4, i32 0, ptr null, i32 16777216, i32 0, i32 -1294967296, i32 31, i32 0, i32 820, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 5, ptr @.str.17, i32 848, i32 864, i32 257, i32 848, i32 856, i32 20, i8 1, i32 4, i32 0, ptr null, i32 16777216, i32 0, i32 -1294967296, i32 31, i32 0, i32 852, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 6, ptr @.str.18, i32 880, i32 892, i32 257, i32 880, i32 0, i32 0, i8 0, i32 4, i32 0, ptr null, i32 16777216, i32 0, i32 -1294967296, i32 31, i32 0, i32 884, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 7, ptr @.str.19, i32 912, i32 924, i32 257, i32 912, i32 0, i32 0, i8 0, i32 4, i32 0, ptr null, i32 16777216, i32 0, i32 -1294967296, i32 31, i32 0, i32 916, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 8, ptr @.str.20, i32 624, i32 636, i32 257, i32 624, i32 0, i32 0, i8 0, i32 4, i32 0, ptr null, i32 16777216, i32 0, i32 -1294967296, i32 31, i32 0, i32 628, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 9, ptr @.str.21, i32 1040, i32 1052, i32 257, i32 1040, i32 0, i32 0, i8 0, i32 4, i32 0, ptr null, i32 16777216, i32 0, i32 -1294967296, i32 31, i32 0, i32 1044, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 10, ptr @.str.22, i32 656, i32 668, i32 -1073741567, i32 656, i32 0, i32 0, i8 0, i32 4, i32 0, ptr null, i32 16777216, i32 0, i32 -1294967296, i32 31, i32 0, i32 660, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 11, ptr @.str.23, i32 592, i32 608, i32 257, i32 592, i32 0, i32 0, i8 0, i32 4, i32 0, ptr null, i32 16777216, i32 0, i32 -1294967296, i32 31, i32 0, i32 596, i32 0, i32 0, ptr @mmpll_div_table, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 12, ptr @.str.24, i32 256, i32 272, i32 -268435199, i32 256, i32 0, i32 0, i8 0, i32 4, i32 1, ptr null, i32 16777216, i32 0, i32 -1294967296, i32 31, i32 0, i32 260, i32 0, i32 0, ptr @armca35pll_div_table, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 13, ptr @.str.25, i32 528, i32 544, i32 257, i32 528, i32 0, i32 0, i8 0, i32 4, i32 0, ptr null, i32 16777216, i32 0, i32 -1294967296, i32 31, i32 0, i32 532, i32 0, i32 0, ptr @armca72pll_div_table, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 14, ptr @.str.26, i32 768, i32 780, i32 -1073741567, i32 768, i32 0, i32 0, i8 0, i32 4, i32 0, ptr null, i32 16777216, i32 0, i32 -1294967296, i32 31, i32 0, i32 772, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }], [352 x i8] zeroinitializer }, align 32
@clk_mt2712_apmixed_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.11, ptr @.str.2, i32 1274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"clk_mt2712_apmixed_probe\00", [39 x i8] zeroinitializer }, align 32
@clk_mt2712_apmixed_probe._entry_ptr = internal global ptr @clk_mt2712_apmixed_probe._entry, section ".printk_index", align 4
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mainpll\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"univpll\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vcodecpll\00", [22 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vencpll\00", [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"apll1\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"apll2\00", [26 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"lvdspll\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lvdspll2\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"msdcpll\00", [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"msdcpll2\00", [23 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tvdpll\00", [25 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mmpll\00", [26 x i8] zeroinitializer }, align 32
@mmpll_div_table = internal constant { [6 x %struct.mtk_pll_div_table], [48 x i8] } { [6 x %struct.mtk_pll_div_table] [%struct.mtk_pll_div_table { i32 0, i32 -1294967296 }, %struct.mtk_pll_div_table { i32 1, i32 1001000000 }, %struct.mtk_pll_div_table { i32 2, i32 601250000 }, %struct.mtk_pll_div_table { i32 3, i32 250250000 }, %struct.mtk_pll_div_table { i32 4, i32 125125000 }, %struct.mtk_pll_div_table zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"armca35pll\00", [21 x i8] zeroinitializer }, align 32
@armca35pll_div_table = internal constant { [6 x %struct.mtk_pll_div_table], [48 x i8] } { [6 x %struct.mtk_pll_div_table] [%struct.mtk_pll_div_table { i32 0, i32 -1294967296 }, %struct.mtk_pll_div_table { i32 1, i32 1202500000 }, %struct.mtk_pll_div_table { i32 2, i32 500500000 }, %struct.mtk_pll_div_table { i32 3, i32 315250000 }, %struct.mtk_pll_div_table { i32 4, i32 157625000 }, %struct.mtk_pll_div_table zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"armca72pll\00", [21 x i8] zeroinitializer }, align 32
@armca72pll_div_table = internal constant { [6 x %struct.mtk_pll_div_table], [48 x i8] } { [6 x %struct.mtk_pll_div_table] [%struct.mtk_pll_div_table { i32 0, i32 -1294967296 }, %struct.mtk_pll_div_table { i32 1, i32 994500000 }, %struct.mtk_pll_div_table { i32 2, i32 520000000 }, %struct.mtk_pll_div_table { i32 3, i32 315250000 }, %struct.mtk_pll_div_table { i32 4, i32 157625000 }, %struct.mtk_pll_div_table zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"etherpll\00", [23 x i8] zeroinitializer }, align 32
@clk_mt2712_top_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.2, i32 1312, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013%s(): ioremap failed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"clk_mt2712_top_probe\00", [43 x i8] zeroinitializer }, align 32
@clk_mt2712_top_probe._entry_ptr = internal global ptr @clk_mt2712_top_probe._entry, section ".printk_index", align 4
@top_fixed_clks = internal constant { [12 x %struct.mtk_fixed_clk], [32 x i8] } { [12 x %struct.mtk_fixed_clk] [%struct.mtk_fixed_clk { i32 87, ptr @.str.31, ptr null, i32 200000000 }, %struct.mtk_fixed_clk { i32 88, ptr @.str.32, ptr null, i32 200000000 }, %struct.mtk_fixed_clk { i32 89, ptr @.str.33, ptr null, i32 26000000 }, %struct.mtk_fixed_clk { i32 90, ptr @.str.34, ptr null, i32 350000000 }, %struct.mtk_fixed_clk { i32 91, ptr @.str.35, ptr null, i32 143000000 }, %struct.mtk_fixed_clk { i32 92, ptr @.str.36, ptr null, i32 143000000 }, %struct.mtk_fixed_clk { i32 93, ptr @.str.37, ptr null, i32 140000000 }, %struct.mtk_fixed_clk { i32 94, ptr @.str.38, ptr null, i32 140000000 }, %struct.mtk_fixed_clk { i32 95, ptr @.str.39, ptr null, i32 32768 }, %struct.mtk_fixed_clk { i32 96, ptr @.str.40, ptr null, i32 32747 }, %struct.mtk_fixed_clk { i32 97, ptr @.str.41, ptr null, i32 26000000 }, %struct.mtk_fixed_clk { i32 98, ptr @.str.42, ptr null, i32 108000000 }], [32 x i8] zeroinitializer }, align 32
@top_divs = internal constant { [87 x %struct.mtk_fixed_factor], [436 x i8] } { [87 x %struct.mtk_fixed_factor] [%struct.mtk_fixed_factor { i32 0, ptr @.str.43, ptr @.str.24, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 1, ptr @.str.44, ptr @.str.43, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 2, ptr @.str.45, ptr @.str.43, i32 1, i32 3 }, %struct.mtk_fixed_factor { i32 3, ptr @.str.46, ptr @.str.25, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 4, ptr @.str.47, ptr @.str.12, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 5, ptr @.str.48, ptr @.str.47, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 6, ptr @.str.49, ptr @.str.48, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 7, ptr @.str.50, ptr @.str.48, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 8, ptr @.str.51, ptr @.str.48, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 9, ptr @.str.52, ptr @.str.48, i32 1, i32 16 }, %struct.mtk_fixed_factor { i32 10, ptr @.str.53, ptr @.str.47, i32 1, i32 3 }, %struct.mtk_fixed_factor { i32 11, ptr @.str.54, ptr @.str.53, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 12, ptr @.str.55, ptr @.str.53, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 13, ptr @.str.56, ptr @.str.47, i32 1, i32 5 }, %struct.mtk_fixed_factor { i32 14, ptr @.str.57, ptr @.str.56, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 15, ptr @.str.58, ptr @.str.56, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 16, ptr @.str.59, ptr @.str.47, i32 1, i32 7 }, %struct.mtk_fixed_factor { i32 17, ptr @.str.60, ptr @.str.59, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 18, ptr @.str.61, ptr @.str.59, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 19, ptr @.str.62, ptr @.str.13, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 20, ptr @.str.63, ptr @.str.62, i32 1, i32 7 }, %struct.mtk_fixed_factor { i32 21, ptr @.str.64, ptr @.str.62, i32 1, i32 26 }, %struct.mtk_fixed_factor { i32 22, ptr @.str.65, ptr @.str.62, i32 1, i32 52 }, %struct.mtk_fixed_factor { i32 23, ptr @.str.66, ptr @.str.62, i32 1, i32 104 }, %struct.mtk_fixed_factor { i32 24, ptr @.str.67, ptr @.str.62, i32 1, i32 208 }, %struct.mtk_fixed_factor { i32 25, ptr @.str.68, ptr @.str.62, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 26, ptr @.str.69, ptr @.str.68, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 27, ptr @.str.70, ptr @.str.68, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 28, ptr @.str.71, ptr @.str.68, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 29, ptr @.str.72, ptr @.str.62, i32 1, i32 3 }, %struct.mtk_fixed_factor { i32 30, ptr @.str.73, ptr @.str.72, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 31, ptr @.str.74, ptr @.str.72, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 32, ptr @.str.75, ptr @.str.72, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 33, ptr @.str.76, ptr @.str.62, i32 1, i32 5 }, %struct.mtk_fixed_factor { i32 34, ptr @.str.77, ptr @.str.76, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 35, ptr @.str.78, ptr @.str.76, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 36, ptr @.str.79, ptr @.str.76, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 37, ptr @.str.80, ptr @.str.68, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 38, ptr @.str.81, ptr @.str.69, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 39, ptr @.str.82, ptr @.str.68, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 40, ptr @.str.83, ptr @.str.69, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 41, ptr @.str.84, ptr @.str.68, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 42, ptr @.str.85, ptr @.str.69, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 43, ptr @.str.86, ptr @.str.16, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 44, ptr @.str.87, ptr @.str.86, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 45, ptr @.str.88, ptr @.str.86, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 46, ptr @.str.89, ptr @.str.86, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 47, ptr @.str.90, ptr @.str.86, i32 1, i32 16 }, %struct.mtk_fixed_factor { i32 48, ptr @.str.91, ptr @.str.17, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 49, ptr @.str.92, ptr @.str.91, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 50, ptr @.str.93, ptr @.str.91, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 51, ptr @.str.94, ptr @.str.91, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 52, ptr @.str.95, ptr @.str.91, i32 1, i32 16 }, %struct.mtk_fixed_factor { i32 53, ptr @.str.96, ptr @.str.18, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 54, ptr @.str.97, ptr @.str.96, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 55, ptr @.str.98, ptr @.str.96, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 56, ptr @.str.99, ptr @.str.96, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 57, ptr @.str.100, ptr @.str.19, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 58, ptr @.str.101, ptr @.str.100, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 59, ptr @.str.102, ptr @.str.100, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 60, ptr @.str.103, ptr @.str.100, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 61, ptr @.str.104, ptr @.str.26, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 62, ptr @.str.105, ptr @.str.26, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 63, ptr @.str.106, ptr @.str.42, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 64, ptr @.str.107, ptr @.str.106, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 66, ptr @.str.108, ptr @.str.23, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 67, ptr @.str.109, ptr @.str.108, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 68, ptr @.str.110, ptr @.str.15, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 69, ptr @.str.111, ptr @.str.110, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 70, ptr @.str.112, ptr @.str.14, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 71, ptr @.str.113, ptr @.str.112, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 72, ptr @.str.114, ptr @.str.22, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 73, ptr @.str.115, ptr @.str.114, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 74, ptr @.str.116, ptr @.str.114, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 75, ptr @.str.117, ptr @.str.114, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 76, ptr @.str.118, ptr @.str.22, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 77, ptr @.str.119, ptr @.str.118, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 78, ptr @.str.120, ptr @.str.118, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 79, ptr @.str.121, ptr @.str.20, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 80, ptr @.str.122, ptr @.str.121, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 81, ptr @.str.123, ptr @.str.121, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 82, ptr @.str.124, ptr @.str.21, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 83, ptr @.str.125, ptr @.str.124, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 84, ptr @.str.126, ptr @.str.124, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 86, ptr @.str.127, ptr @.str.4, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 186, ptr @.str.128, ptr @.str.86, i32 1, i32 3 }, %struct.mtk_fixed_factor { i32 192, ptr @.str.129, ptr @.str.91, i32 1, i32 3 }], [436 x i8] zeroinitializer }, align 32
@top_muxes = internal global { [73 x %struct.mtk_composite], [728 x i8] } { [73 x %struct.mtk_composite] [%struct.mtk_composite { i32 99, ptr @.str.130, ptr @axi_parents, ptr null, i32 2048, i32 64, i32 0, i32 64, i8 0, i8 3, i8 7, i8 -1, i8 0, i8 0, i8 7 }, %struct.mtk_composite { i32 100, ptr @.str.131, ptr @mem_parents, ptr null, i32 2048, i32 64, i32 0, i32 64, i8 8, i8 1, i8 15, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 101, ptr @.str.132, ptr @mm_parents, ptr null, i32 4, i32 64, i32 0, i32 64, i8 24, i8 3, i8 31, i8 -1, i8 0, i8 0, i8 8 }, %struct.mtk_composite { i32 102, ptr @.str.133, ptr @pwm_parents, ptr null, i32 4, i32 80, i32 0, i32 80, i8 0, i8 2, i8 7, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 103, ptr @.str.134, ptr @vdec_parents, ptr null, i32 4, i32 80, i32 0, i32 80, i8 8, i8 4, i8 15, i8 -1, i8 0, i8 0, i8 10 }, %struct.mtk_composite { i32 104, ptr @.str.135, ptr @venc_parents, ptr null, i32 4, i32 80, i32 0, i32 80, i8 16, i8 4, i8 23, i8 -1, i8 0, i8 0, i8 9 }, %struct.mtk_composite { i32 105, ptr @.str.136, ptr @mfg_parents, ptr null, i32 4, i32 80, i32 0, i32 80, i8 24, i8 4, i8 31, i8 -1, i8 0, i8 0, i8 16 }, %struct.mtk_composite { i32 106, ptr @.str.137, ptr @camtg_parents, ptr null, i32 4, i32 96, i32 0, i32 96, i8 0, i8 4, i8 7, i8 -1, i8 0, i8 0, i8 11 }, %struct.mtk_composite { i32 107, ptr @.str.138, ptr @uart_parents, ptr null, i32 4, i32 96, i32 0, i32 96, i8 8, i8 1, i8 15, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 108, ptr @.str.139, ptr @spi_parents, ptr null, i32 4, i32 96, i32 0, i32 96, i8 16, i8 3, i8 23, i8 -1, i8 0, i8 0, i8 6 }, %struct.mtk_composite { i32 109, ptr @.str.140, ptr @usb20_parents, ptr null, i32 4, i32 96, i32 0, i32 96, i8 24, i8 2, i8 31, i8 -1, i8 0, i8 0, i8 3 }, %struct.mtk_composite { i32 110, ptr @.str.141, ptr @usb30_parents, ptr null, i32 4, i32 112, i32 0, i32 112, i8 0, i8 2, i8 7, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 111, ptr @.str.142, ptr @msdc50_0_h_parents, ptr null, i32 4, i32 112, i32 0, i32 112, i8 8, i8 3, i8 15, i8 -1, i8 0, i8 0, i8 6 }, %struct.mtk_composite { i32 112, ptr @.str.143, ptr @msdc50_0_parents, ptr null, i32 4, i32 112, i32 0, i32 112, i8 16, i8 4, i8 23, i8 -1, i8 0, i8 0, i8 11 }, %struct.mtk_composite { i32 113, ptr @.str.144, ptr @msdc30_1_parents, ptr null, i32 4, i32 112, i32 0, i32 112, i8 24, i8 3, i8 31, i8 -1, i8 0, i8 0, i8 7 }, %struct.mtk_composite { i32 114, ptr @.str.145, ptr @msdc30_1_parents, ptr null, i32 4, i32 128, i32 0, i32 128, i8 0, i8 3, i8 7, i8 -1, i8 0, i8 0, i8 7 }, %struct.mtk_composite { i32 115, ptr @.str.146, ptr @msdc30_3_parents, ptr null, i32 4, i32 128, i32 0, i32 128, i8 8, i8 4, i8 15, i8 -1, i8 0, i8 0, i8 13 }, %struct.mtk_composite { i32 116, ptr @.str.147, ptr @audio_parents, ptr null, i32 4, i32 128, i32 0, i32 128, i8 16, i8 2, i8 23, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 117, ptr @.str.148, ptr @aud_intbus_parents, ptr null, i32 4, i32 128, i32 0, i32 128, i8 24, i8 3, i8 31, i8 -1, i8 0, i8 0, i8 7 }, %struct.mtk_composite { i32 118, ptr @.str.149, ptr @pmicspi_parents, ptr null, i32 4, i32 144, i32 0, i32 144, i8 0, i8 3, i8 7, i8 -1, i8 0, i8 0, i8 7 }, %struct.mtk_composite { i32 119, ptr @.str.150, ptr @dpilvds1_parents, ptr null, i32 4, i32 144, i32 0, i32 144, i8 8, i8 3, i8 15, i8 -1, i8 0, i8 0, i8 6 }, %struct.mtk_composite { i32 120, ptr @.str.151, ptr @atb_parents, ptr null, i32 4, i32 144, i32 0, i32 144, i8 16, i8 2, i8 23, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 121, ptr @.str.152, ptr @nr_parents, ptr null, i32 4, i32 144, i32 0, i32 144, i8 24, i8 3, i8 31, i8 -1, i8 0, i8 0, i8 8 }, %struct.mtk_composite { i32 122, ptr @.str.153, ptr @nfi2x_parents, ptr null, i32 4, i32 160, i32 0, i32 160, i8 0, i8 4, i8 7, i8 -1, i8 0, i8 0, i8 11 }, %struct.mtk_composite { i32 123, ptr @.str.154, ptr @irda_parents, ptr null, i32 4, i32 160, i32 0, i32 160, i8 8, i8 2, i8 15, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 124, ptr @.str.155, ptr @cci400_parents, ptr null, i32 4, i32 160, i32 0, i32 160, i8 16, i8 3, i8 23, i8 -1, i8 0, i8 0, i8 8 }, %struct.mtk_composite { i32 125, ptr @.str.156, ptr @aud_1_parents, ptr null, i32 4, i32 160, i32 0, i32 160, i8 24, i8 2, i8 31, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 126, ptr @.str.157, ptr @aud_2_parents, ptr null, i32 4, i32 176, i32 0, i32 176, i8 0, i8 2, i8 7, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 127, ptr @.str.158, ptr @mem_mfg_parents, ptr null, i32 4, i32 176, i32 0, i32 176, i8 8, i8 2, i8 15, i8 -1, i8 0, i8 0, i8 3 }, %struct.mtk_composite { i32 128, ptr @.str.159, ptr @axi_mfg_parents, ptr null, i32 4, i32 176, i32 0, i32 176, i8 16, i8 2, i8 23, i8 -1, i8 0, i8 0, i8 3 }, %struct.mtk_composite { i32 129, ptr @.str.160, ptr @scam_parents, ptr null, i32 4, i32 176, i32 0, i32 176, i8 24, i8 2, i8 31, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 130, ptr @.str.161, ptr @nfiecc_parents, ptr null, i32 4, i32 192, i32 0, i32 192, i8 0, i8 3, i8 7, i8 -1, i8 0, i8 0, i8 7 }, %struct.mtk_composite { i32 131, ptr @.str.162, ptr @pe2_mac_p0_parents, ptr null, i32 4, i32 192, i32 0, i32 192, i8 8, i8 3, i8 15, i8 -1, i8 0, i8 0, i8 6 }, %struct.mtk_composite { i32 132, ptr @.str.163, ptr @pe2_mac_p0_parents, ptr null, i32 4, i32 192, i32 0, i32 192, i8 16, i8 3, i8 23, i8 -1, i8 0, i8 0, i8 6 }, %struct.mtk_composite { i32 133, ptr @.str.164, ptr @dpilvds_parents, ptr null, i32 4, i32 192, i32 0, i32 192, i8 24, i8 3, i8 31, i8 -1, i8 0, i8 0, i8 6 }, %struct.mtk_composite { i32 134, ptr @.str.165, ptr @msdc50_0_h_parents, ptr null, i32 4, i32 208, i32 0, i32 208, i8 0, i8 3, i8 7, i8 -1, i8 0, i8 0, i8 6 }, %struct.mtk_composite { i32 135, ptr @.str.166, ptr @hdcp_parents, ptr null, i32 4, i32 208, i32 0, i32 208, i8 8, i8 2, i8 15, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 136, ptr @.str.167, ptr @hdcp_24m_parents, ptr null, i32 4, i32 208, i32 0, i32 208, i8 16, i8 2, i8 23, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 137, ptr @.str.168, ptr @rtc_parents, ptr null, i32 2048, i32 208, i32 0, i32 208, i8 24, i8 2, i8 31, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 138, ptr @.str.169, ptr @spinor_parents, ptr null, i32 4, i32 1280, i32 0, i32 1280, i8 0, i8 4, i8 7, i8 -1, i8 0, i8 0, i8 10 }, %struct.mtk_composite { i32 139, ptr @.str.170, ptr @apll_parents, ptr null, i32 4, i32 1280, i32 0, i32 1280, i8 8, i8 4, i8 15, i8 -1, i8 0, i8 0, i8 13 }, %struct.mtk_composite { i32 140, ptr @.str.171, ptr @apll_parents, ptr null, i32 4, i32 1280, i32 0, i32 1280, i8 16, i8 4, i8 23, i8 -1, i8 0, i8 0, i8 13 }, %struct.mtk_composite { i32 141, ptr @.str.172, ptr @a1sys_hp_parents, ptr null, i32 4, i32 1280, i32 0, i32 1280, i8 24, i8 3, i8 31, i8 -1, i8 0, i8 0, i8 6 }, %struct.mtk_composite { i32 142, ptr @.str.173, ptr @a2sys_hp_parents, ptr null, i32 4, i32 1296, i32 0, i32 1296, i8 0, i8 3, i8 7, i8 -1, i8 0, i8 0, i8 6 }, %struct.mtk_composite { i32 143, ptr @.str.174, ptr @asm_l_parents, ptr null, i32 4, i32 1296, i32 0, i32 1296, i8 8, i8 2, i8 15, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 144, ptr @.str.175, ptr @asm_l_parents, ptr null, i32 4, i32 1296, i32 0, i32 1296, i8 16, i8 2, i8 23, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 145, ptr @.str.176, ptr @asm_l_parents, ptr null, i32 4, i32 1296, i32 0, i32 1296, i8 24, i8 2, i8 31, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 146, ptr @.str.177, ptr @i2so1_parents, ptr null, i32 4, i32 1312, i32 0, i32 1312, i8 0, i8 2, i8 7, i8 -1, i8 0, i8 0, i8 3 }, %struct.mtk_composite { i32 147, ptr @.str.178, ptr @i2so1_parents, ptr null, i32 4, i32 1312, i32 0, i32 1312, i8 8, i8 2, i8 15, i8 -1, i8 0, i8 0, i8 3 }, %struct.mtk_composite { i32 148, ptr @.str.179, ptr @i2so1_parents, ptr null, i32 4, i32 1312, i32 0, i32 1312, i8 16, i8 2, i8 23, i8 -1, i8 0, i8 0, i8 3 }, %struct.mtk_composite { i32 149, ptr @.str.180, ptr @i2so1_parents, ptr null, i32 4, i32 1312, i32 0, i32 1312, i8 24, i8 2, i8 31, i8 -1, i8 0, i8 0, i8 3 }, %struct.mtk_composite { i32 150, ptr @.str.181, ptr @i2so1_parents, ptr null, i32 4, i32 1328, i32 0, i32 1328, i8 0, i8 2, i8 7, i8 -1, i8 0, i8 0, i8 3 }, %struct.mtk_composite { i32 151, ptr @.str.182, ptr @i2so1_parents, ptr null, i32 4, i32 1328, i32 0, i32 1328, i8 8, i8 2, i8 15, i8 -1, i8 0, i8 0, i8 3 }, %struct.mtk_composite { i32 152, ptr @.str.183, ptr @i2so1_parents, ptr null, i32 4, i32 1328, i32 0, i32 1328, i8 16, i8 2, i8 23, i8 -1, i8 0, i8 0, i8 3 }, %struct.mtk_composite { i32 153, ptr @.str.184, ptr @i2so1_parents, ptr null, i32 4, i32 1328, i32 0, i32 1328, i8 24, i8 2, i8 31, i8 -1, i8 0, i8 0, i8 3 }, %struct.mtk_composite { i32 154, ptr @.str.185, ptr @ether_125m_parents, ptr null, i32 4, i32 1344, i32 0, i32 1344, i8 0, i8 2, i8 7, i8 -1, i8 0, i8 0, i8 3 }, %struct.mtk_composite { i32 155, ptr @.str.186, ptr @ether_50m_parents, ptr null, i32 4, i32 1344, i32 0, i32 1344, i8 8, i8 2, i8 15, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 156, ptr @.str.187, ptr @jpgdec_parents, ptr null, i32 4, i32 1344, i32 0, i32 1344, i8 16, i8 4, i8 23, i8 -1, i8 0, i8 0, i8 10 }, %struct.mtk_composite { i32 157, ptr @.str.188, ptr @spislv_parents, ptr null, i32 4, i32 1344, i32 0, i32 1344, i8 24, i8 3, i8 31, i8 -1, i8 0, i8 0, i8 8 }, %struct.mtk_composite { i32 158, ptr @.str.189, ptr @ether_parents, ptr null, i32 4, i32 1360, i32 0, i32 1360, i8 0, i8 2, i8 7, i8 -1, i8 0, i8 0, i8 3 }, %struct.mtk_composite { i32 159, ptr @.str.190, ptr @camtg_parents, ptr null, i32 4, i32 1360, i32 0, i32 1360, i8 8, i8 4, i8 15, i8 -1, i8 0, i8 0, i8 11 }, %struct.mtk_composite { i32 160, ptr @.str.191, ptr @di_parents, ptr null, i32 4, i32 1360, i32 0, i32 1360, i8 16, i8 3, i8 23, i8 -1, i8 0, i8 0, i8 8 }, %struct.mtk_composite { i32 161, ptr @.str.192, ptr @tvd_parents, ptr null, i32 4, i32 1360, i32 0, i32 1360, i8 24, i8 2, i8 31, i8 -1, i8 0, i8 0, i8 3 }, %struct.mtk_composite { i32 162, ptr @.str.193, ptr @i2c_parents, ptr null, i32 4, i32 1376, i32 0, i32 1376, i8 0, i8 3, i8 7, i8 -1, i8 0, i8 0, i8 5 }, %struct.mtk_composite { i32 163, ptr @.str.194, ptr @pwm_parents, ptr null, i32 4, i32 1376, i32 0, i32 1376, i8 8, i8 2, i8 15, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 164, ptr @.str.195, ptr @msdc0p_aes_parents, ptr null, i32 4, i32 1376, i32 0, i32 1376, i8 16, i8 2, i8 23, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 165, ptr @.str.196, ptr @cmsys_parents, ptr null, i32 4, i32 1376, i32 0, i32 1376, i8 24, i8 3, i8 31, i8 -1, i8 0, i8 0, i8 5 }, %struct.mtk_composite { i32 166, ptr @.str.197, ptr @gcpu_parents, ptr null, i32 4, i32 1392, i32 0, i32 1392, i8 0, i8 3, i8 7, i8 -1, i8 0, i8 0, i8 7 }, %struct.mtk_composite { i32 167, ptr @.str.198, ptr @aud_apll1_parents, ptr null, i32 4, i32 308, i32 0, i32 0, i8 0, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 168, ptr @.str.199, ptr @aud_apll2_parents, ptr null, i32 4, i32 308, i32 0, i32 0, i8 1, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 169, ptr @.str.200, ptr @audull_vtx_parents, ptr null, i32 4, i32 308, i32 0, i32 0, i8 31, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 187, ptr @.str.201, ptr @apll1_ref_parents, ptr null, i32 4, i32 308, i32 0, i32 0, i8 4, i8 3, i8 -1, i8 -1, i8 0, i8 0, i8 8 }, %struct.mtk_composite { i32 188, ptr @.str.202, ptr @apll1_ref_parents, ptr null, i32 4, i32 308, i32 0, i32 0, i8 7, i8 3, i8 -1, i8 -1, i8 0, i8 0, i8 8 }], [728 x i8] zeroinitializer }, align 32
@mt2712_clk_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.211, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@top_adj_divs = internal constant { [8 x %struct.mtk_clk_divider], [32 x i8] } { [8 x %struct.mtk_clk_divider] [%struct.mtk_clk_divider { i32 170, ptr @.str.212, ptr @.str.177, i32 0, i32 292, i8 0, i8 8, i8 0, ptr null }, %struct.mtk_clk_divider { i32 171, ptr @.str.213, ptr @.str.178, i32 0, i32 292, i8 8, i8 8, i8 0, ptr null }, %struct.mtk_clk_divider { i32 172, ptr @.str.214, ptr @.str.179, i32 0, i32 292, i8 16, i8 8, i8 0, ptr null }, %struct.mtk_clk_divider { i32 173, ptr @.str.215, ptr @.str.180, i32 0, i32 292, i8 24, i8 8, i8 0, ptr null }, %struct.mtk_clk_divider { i32 174, ptr @.str.216, ptr @.str.181, i32 0, i32 296, i8 0, i8 8, i8 0, ptr null }, %struct.mtk_clk_divider { i32 175, ptr @.str.217, ptr @.str.182, i32 0, i32 296, i8 8, i8 8, i8 0, ptr null }, %struct.mtk_clk_divider { i32 176, ptr @.str.218, ptr @.str.183, i32 0, i32 296, i8 16, i8 8, i8 0, ptr null }, %struct.mtk_clk_divider { i32 177, ptr @.str.219, ptr @.str.184, i32 0, i32 296, i8 24, i8 8, i8 0, ptr null }], [32 x i8] zeroinitializer }, align 32
@top_clks = internal constant { [11 x %struct.mtk_gate], [76 x i8] } { [11 x %struct.mtk_gate] [%struct.mtk_gate { i32 178, ptr @.str.220, ptr @.str.177, ptr @top0_cg_regs, i32 0, ptr @mtk_clk_gate_ops_no_setclr, i32 0 }, %struct.mtk_gate { i32 179, ptr @.str.221, ptr @.str.178, ptr @top0_cg_regs, i32 1, ptr @mtk_clk_gate_ops_no_setclr, i32 0 }, %struct.mtk_gate { i32 180, ptr @.str.222, ptr @.str.179, ptr @top0_cg_regs, i32 2, ptr @mtk_clk_gate_ops_no_setclr, i32 0 }, %struct.mtk_gate { i32 181, ptr @.str.223, ptr @.str.180, ptr @top0_cg_regs, i32 3, ptr @mtk_clk_gate_ops_no_setclr, i32 0 }, %struct.mtk_gate { i32 182, ptr @.str.224, ptr @.str.181, ptr @top0_cg_regs, i32 4, ptr @mtk_clk_gate_ops_no_setclr, i32 0 }, %struct.mtk_gate { i32 183, ptr @.str.225, ptr @.str.182, ptr @top0_cg_regs, i32 5, ptr @mtk_clk_gate_ops_no_setclr, i32 0 }, %struct.mtk_gate { i32 184, ptr @.str.226, ptr @.str.183, ptr @top0_cg_regs, i32 6, ptr @mtk_clk_gate_ops_no_setclr, i32 0 }, %struct.mtk_gate { i32 185, ptr @.str.227, ptr @.str.184, ptr @top0_cg_regs, i32 7, ptr @mtk_clk_gate_ops_no_setclr, i32 0 }, %struct.mtk_gate { i32 189, ptr @.str.228, ptr @.str.153, ptr @top1_cg_regs, i32 0, ptr @mtk_clk_gate_ops_no_setclr_inv, i32 0 }, %struct.mtk_gate { i32 190, ptr @.str.229, ptr @.str.161, ptr @top1_cg_regs, i32 1, ptr @mtk_clk_gate_ops_no_setclr_inv, i32 0 }, %struct.mtk_gate { i32 191, ptr @.str.230, ptr @.str.153, ptr @top1_cg_regs, i32 2, ptr @mtk_clk_gate_ops_no_setclr_inv, i32 0 }], [76 x i8] zeroinitializer }, align 32
@clk_mt2712_top_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.28, ptr @.str.2, i32 1341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@clk_mt2712_top_probe._entry_ptr.30 = internal global ptr @clk_mt2712_top_probe._entry.29, section ".printk_index", align 4
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vpll3_dpix\00", [21 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vpll_dpix\00", [22 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ltepll_fs26m\00", [19 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dmpll_ck\00", [23 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dsi0_lntc\00", [22 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"dsi1_lntc\00", [22 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"lvdstx3\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"lvdstx\00", [25 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clkrtc_ext\00", [21 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clkrtc_int\00", [21 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"csi0\00", [27 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cvbspll\00", [24 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"armca35pll_ck\00", [18 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"armca35pll_600m\00", [16 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"armca35pll_400m\00", [16 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"armca72pll_ck\00", [18 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"syspll_ck\00", [22 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"syspll_d2\00", [22 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"syspll1_d2\00", [21 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"syspll1_d4\00", [21 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"syspll1_d8\00", [21 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"syspll1_d16\00", [20 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"syspll_d3\00", [22 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"syspll2_d2\00", [21 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"syspll2_d4\00", [21 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"syspll_d5\00", [22 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"syspll3_d2\00", [21 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"syspll3_d4\00", [21 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"syspll_d7\00", [22 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"syspll4_d2\00", [21 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"syspll4_d4\00", [21 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"univpll_ck\00", [21 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"univpll_d7\00", [21 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univpll_d26\00", [20 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univpll_d52\00", [20 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"univpll_d104\00", [19 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"univpll_d208\00", [19 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"univpll_d2\00", [21 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univpll1_d2\00", [20 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univpll1_d4\00", [20 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univpll1_d8\00", [20 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"univpll_d3\00", [21 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univpll2_d2\00", [20 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univpll2_d4\00", [20 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univpll2_d8\00", [20 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"univpll_d5\00", [21 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univpll3_d2\00", [20 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univpll3_d4\00", [20 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univpll3_d8\00", [20 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"f_mp0_pll1_ck\00", [18 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"f_mp0_pll2_ck\00", [18 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"f_big_pll1_ck\00", [18 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"f_big_pll2_ck\00", [18 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"f_bus_pll1_ck\00", [18 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"f_bus_pll2_ck\00", [18 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apll1_ck\00", [23 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apll1_d2\00", [23 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apll1_d4\00", [23 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apll1_d8\00", [23 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"apll1_d16\00", [22 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apll2_ck\00", [23 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apll2_d2\00", [23 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apll2_d4\00", [23 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apll2_d8\00", [23 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"apll2_d16\00", [22 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lvdspll_ck\00", [21 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lvdspll_d2\00", [21 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lvdspll_d4\00", [21 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"lvdspll_d8\00", [21 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lvdspll2_ck\00", [20 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lvdspll2_d2\00", [20 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lvdspll2_d4\00", [20 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lvdspll2_d8\00", [20 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"etherpll_125m\00", [18 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"etherpll_50m\00", [19 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cvbs\00", [27 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cvbs_d2\00", [24 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmpll_ck\00", [23 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmpll_d2\00", [23 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vencpll_ck\00", [21 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vencpll_d2\00", [21 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vcodecpll_ck\00", [19 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vcodecpll_d2\00", [19 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tvdpll_ck\00", [22 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tvdpll_d2\00", [22 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tvdpll_d4\00", [22 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tvdpll_d8\00", [22 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"tvdpll_429m\00", [20 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tvdpll_429m_d2\00", [17 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tvdpll_429m_d4\00", [17 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"msdcpll_ck\00", [21 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"msdcpll_d2\00", [21 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"msdcpll_d4\00", [21 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"msdcpll2_ck\00", [20 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"msdcpll2_d2\00", [20 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"msdcpll2_d4\00", [20 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"d2a_ulclk_6p5m\00", [17 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apll1_d3\00", [23 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apll2_d3\00", [23 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"axi_sel\00", [24 x i8] zeroinitializer }, align 32
@axi_parents = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.4, ptr @.str.49, ptr @.str.56, ptr @.str.50, ptr @.str.76, ptr @.str.73, ptr @.str.124], [36 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mem_sel\00", [24 x i8] zeroinitializer }, align 32
@mem_parents = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.4, ptr @.str.34], [24 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mm_sel\00", [25 x i8] zeroinitializer }, align 32
@mm_parents = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.110, ptr @.str.53, ptr @.str.49, ptr @.str.56, ptr @.str.50, ptr @.str.69, ptr @.str.73], [32 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pwm_sel\00", [24 x i8] zeroinitializer }, align 32
@pwm_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.4, ptr @.str.74, ptr @.str.77, ptr @.str.70], [16 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vdec_sel\00", [23 x i8] zeroinitializer }, align 32
@vdec_parents = internal constant { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @.str.4, ptr @.str.112, ptr @.str.118, ptr @.str.72, ptr @.str.110, ptr @.str.53, ptr @.str.69, ptr @.str.109, ptr @.str.57, ptr @.str.114], [56 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"venc_sel\00", [23 x i8] zeroinitializer }, align 32
@venc_parents = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.str.4, ptr @.str.69, ptr @.str.109, ptr @.str.115, ptr @.str.49, ptr @.str.76, ptr @.str.113, ptr @.str.73, ptr @.str.57], [60 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mfg_sel\00", [24 x i8] zeroinitializer }, align 32
@mfg_parents = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.4, ptr @.str.108, ptr @.str.72, ptr @.str.4, ptr @.str.4, ptr @.str.4, ptr @.str.4, ptr @.str.4, ptr @.str.4, ptr @.str.53, ptr @.str.49, ptr @.str.56, ptr @.str.72, ptr @.str.69, ptr @.str.76, ptr @.str.73], [32 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"camtg_sel\00", [22 x i8] zeroinitializer }, align 32
@camtg_parents = internal constant { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @.str.4, ptr @.str.65, ptr @.str.67, ptr @.str.66, ptr @.str.5, ptr @.str.64, ptr @.str.75, ptr @.str.58, ptr @.str.57, ptr @.str.70, ptr @.str.73], [52 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uart_sel\00", [23 x i8] zeroinitializer }, align 32
@uart_parents = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.4, ptr @.str.75], [24 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"spi_sel\00", [24 x i8] zeroinitializer }, align 32
@spi_parents = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.4, ptr @.str.74, ptr @.str.70, ptr @.str.73, ptr @.str.77, ptr @.str.71], [40 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb20_sel\00", [22 x i8] zeroinitializer }, align 32
@usb20_parents = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.4, ptr @.str.71, ptr @.str.78], [20 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb30_sel\00", [22 x i8] zeroinitializer }, align 32
@usb30_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.4, ptr @.str.77, ptr @.str.78, ptr @.str.74], [16 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"msdc50_0_h_sel\00", [17 x i8] zeroinitializer }, align 32
@msdc50_0_h_parents = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.4, ptr @.str.49, ptr @.str.54, ptr @.str.60, ptr @.str.76, ptr @.str.70], [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"msdc50_0_sel\00", [19 x i8] zeroinitializer }, align 32
@msdc50_0_parents = internal constant { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @.str.4, ptr @.str.121, ptr @.str.122, ptr @.str.70, ptr @.str.54, ptr @.str.123, ptr @.str.111, ptr @.str.69, ptr @.str.124, ptr @.str.125, ptr @.str.126], [52 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"msdc30_1_sel\00", [19 x i8] zeroinitializer }, align 32
@msdc30_1_parents = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.4, ptr @.str.73, ptr @.str.122, ptr @.str.70, ptr @.str.54, ptr @.str.63, ptr @.str.111], [36 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"msdc30_2_sel\00", [19 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"msdc30_3_sel\00", [19 x i8] zeroinitializer }, align 32
@msdc30_3_parents = internal constant { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @.str.4, ptr @.str.124, ptr @.str.125, ptr @.str.73, ptr @.str.126, ptr @.str.70, ptr @.str.54, ptr @.str.59, ptr @.str.63, ptr @.str.111, ptr @.str.121, ptr @.str.122, ptr @.str.123], [44 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"audio_sel\00", [22 x i8] zeroinitializer }, align 32
@audio_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.4, ptr @.str.58, ptr @.str.61, ptr @.str.52], [16 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aud_intbus_sel\00", [17 x i8] zeroinitializer }, align 32
@aud_intbus_parents = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.4, ptr @.str.50, ptr @.str.60, ptr @.str.77, ptr @.str.75, ptr @.str.57, ptr @.str.58], [36 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pmicspi_sel\00", [20 x i8] zeroinitializer }, align 32
@pmicspi_parents = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.4, ptr @.str.51, ptr @.str.58, ptr @.str.52, ptr @.str.78, ptr @.str.64, ptr @.str.58], [36 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dpilvds1_sel\00", [19 x i8] zeroinitializer }, align 32
@dpilvds1_parents = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.4, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.203], [40 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"atb_sel\00", [24 x i8] zeroinitializer }, align 32
@atb_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.4, ptr @.str.49, ptr @.str.76, ptr @.str.56], [16 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nr_sel\00", [25 x i8] zeroinitializer }, align 32
@nr_parents = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.70, ptr @.str.54, ptr @.str.50, ptr @.str.71, ptr @.str.77, ptr @.str.73, ptr @.str.56], [32 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nfi2x_sel\00", [22 x i8] zeroinitializer }, align 32
@nfi2x_parents = internal constant { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @.str.4, ptr @.str.61, ptr @.str.78, ptr @.str.71, ptr @.str.55, ptr @.str.77, ptr @.str.59, ptr @.str.54, ptr @.str.73, ptr @.str.56, ptr @.str.49], [52 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"irda_sel\00", [23 x i8] zeroinitializer }, align 32
@irda_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.4, ptr @.str.74, ptr @.str.55, ptr @.str.75], [16 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cci400_sel\00", [21 x i8] zeroinitializer }, align 32
@cci400_parents = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.110, ptr @.str.44, ptr @.str.45, ptr @.str.68, ptr @.str.48, ptr @.str.121, ptr @.str.72], [32 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"aud_1_sel\00", [22 x i8] zeroinitializer }, align 32
@aud_1_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.4, ptr @.str.86, ptr @.str.74, ptr @.str.75], [16 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"aud_2_sel\00", [22 x i8] zeroinitializer }, align 32
@aud_2_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.4, ptr @.str.91, ptr @.str.74, ptr @.str.75], [16 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mem_mfg_sel\00", [20 x i8] zeroinitializer }, align 32
@mem_mfg_parents = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.4, ptr @.str.108, ptr @.str.72], [20 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"axi_mfg_sel\00", [20 x i8] zeroinitializer }, align 32
@axi_mfg_parents = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.4, ptr @.str.130, ptr @.str.76], [20 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"scam_sel\00", [23 x i8] zeroinitializer }, align 32
@scam_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.4, ptr @.str.57, ptr @.str.74, ptr @.str.55], [16 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nfiecc_sel\00", [21 x i8] zeroinitializer }, align 32
@nfiecc_parents = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.4, ptr @.str.153, ptr @.str.59, ptr @.str.54, ptr @.str.73, ptr @.str.76, ptr @.str.49], [36 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pe2_mac_p0_sel\00", [17 x i8] zeroinitializer }, align 32
@pe2_mac_p0_parents = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.4, ptr @.str.51, ptr @.str.60, ptr @.str.55, ptr @.str.74, ptr @.str.57], [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pe2_mac_p1_sel\00", [17 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dpilvds_sel\00", [20 x i8] zeroinitializer }, align 32
@dpilvds_parents = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.4, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.203], [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"msdc50_3_h_sel\00", [17 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hdcp_sel\00", [23 x i8] zeroinitializer }, align 32
@hdcp_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.4, ptr @.str.60, ptr @.str.58, ptr @.str.74], [16 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hdcp_24m_sel\00", [19 x i8] zeroinitializer }, align 32
@hdcp_24m_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.4, ptr @.str.64, ptr @.str.65, ptr @.str.75], [16 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rtc_sel\00", [24 x i8] zeroinitializer }, align 32
@rtc_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.40, ptr @.str.39, ptr @.str.4, ptr @.str.79], [16 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"spinor_sel\00", [21 x i8] zeroinitializer }, align 32
@spinor_parents = internal constant { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @.str.4, ptr @.str.5, ptr @.str.61, ptr @.str.75, ptr @.str.78, ptr @.str.60, ptr @.str.55, ptr @.str.74, ptr @.str.104, ptr @.str.50], [56 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apll_sel\00", [23 x i8] zeroinitializer }, align 32
@apll_parents = internal constant { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @.str.4, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.4, ptr @.str.4], [44 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"apll2_sel\00", [22 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"a1sys_hp_sel\00", [19 x i8] zeroinitializer }, align 32
@a1sys_hp_parents = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.4, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.128], [40 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"a2sys_hp_sel\00", [19 x i8] zeroinitializer }, align 32
@a2sys_hp_parents = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.4, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.129], [40 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"asm_l_sel\00", [22 x i8] zeroinitializer }, align 32
@asm_l_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.4, ptr @.str.74, ptr @.str.73, ptr @.str.56], [16 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"asm_m_sel\00", [22 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"asm_h_sel\00", [22 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"i2so1_sel\00", [22 x i8] zeroinitializer }, align 32
@i2so1_parents = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.4, ptr @.str.86, ptr @.str.91], [20 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"i2so2_sel\00", [22 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"i2so3_sel\00", [22 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tdmo0_sel\00", [22 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tdmo1_sel\00", [22 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"i2si1_sel\00", [22 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"i2si2_sel\00", [22 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"i2si3_sel\00", [22 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ether_125m_sel\00", [17 x i8] zeroinitializer }, align 32
@ether_125m_parents = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.4, ptr @.str.104, ptr @.str.77], [20 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ether_50m_sel\00", [18 x i8] zeroinitializer }, align 32
@ether_50m_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.4, ptr @.str.105, ptr @.str.128, ptr @.str.78], [16 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"jpgdec_sel\00", [21 x i8] zeroinitializer }, align 32
@jpgdec_parents = internal constant { [10 x ptr], [56 x i8] } { [10 x ptr] [ptr @.str.4, ptr @.str.72, ptr @.str.118, ptr @.str.110, ptr @.str.53, ptr @.str.112, ptr @.str.69, ptr @.str.45, ptr @.str.119, ptr @.str.120], [56 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"spislv_sel\00", [21 x i8] zeroinitializer }, align 32
@spislv_parents = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.74, ptr @.str.70, ptr @.str.73, ptr @.str.77, ptr @.str.71, ptr @.str.69, ptr @.str.76], [32 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ether_sel\00", [22 x i8] zeroinitializer }, align 32
@ether_parents = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.4, ptr @.str.105, ptr @.str.64], [20 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cam2tg_sel\00", [21 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"di_sel\00", [25 x i8] zeroinitializer }, align 32
@di_parents = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.110, ptr @.str.111, ptr @.str.106, ptr @.str.107], [32 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tvd_sel\00", [24 x i8] zeroinitializer }, align 32
@tvd_parents = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.4, ptr @.str.107, ptr @.str.75], [20 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i2c_sel\00", [24 x i8] zeroinitializer }, align 32
@i2c_parents = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.4, ptr @.str.64, ptr @.str.74, ptr @.str.77, ptr @.str.70], [44 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pwm_infra_sel\00", [18 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"msdc0p_aes_sel\00", [17 x i8] zeroinitializer }, align 32
@msdc0p_aes_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.4, ptr @.str.48, ptr @.str.72, ptr @.str.112], [16 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cmsys_sel\00", [22 x i8] zeroinitializer }, align 32
@cmsys_parents = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.4, ptr @.str.72, ptr @.str.53, ptr @.str.49, ptr @.str.54], [44 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"gcpu_sel\00", [23 x i8] zeroinitializer }, align 32
@gcpu_parents = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.4, ptr @.str.53, ptr @.str.49, ptr @.str.69, ptr @.str.76, ptr @.str.77, ptr @.str.72], [36 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"aud_apll1_sel\00", [18 x i8] zeroinitializer }, align 32
@aud_apll1_parents = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.16, ptr @.str.204], [24 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"aud_apll2_sel\00", [18 x i8] zeroinitializer }, align 32
@aud_apll2_parents = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.17, ptr @.str.205], [24 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"audull_vtx_sel\00", [17 x i8] zeroinitializer }, align 32
@audull_vtx_parents = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.127, ptr @.str.206], [24 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"apll1_ref_sel\00", [18 x i8] zeroinitializer }, align 32
@apll1_ref_parents = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.205, ptr @.str.204, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.209, ptr @.str.210], [32 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"apll2_ref_sel\00", [18 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"clkfpc\00", [25 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clkaud_ext_i_1\00", [17 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clkaud_ext_i_2\00", [17 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clkaud_ext_i_0\00", [17 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clki2si0_mck_i\00", [17 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clki2si1_mck_i\00", [17 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clki2si2_mck_i\00", [17 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clktdmin_mclk_i\00", [16 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mt2712_clk_lock\00", [16 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"apll_div0\00", [22 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"apll_div1\00", [22 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"apll_div2\00", [22 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"apll_div3\00", [22 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"apll_div4\00", [22 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"apll_div5\00", [22 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"apll_div6\00", [22 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"apll_div7\00", [22 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"apll_div_pdn0\00", [18 x i8] zeroinitializer }, align 32
@top0_cg_regs = internal constant { %struct.mtk_gate_regs, [20 x i8] } { %struct.mtk_gate_regs { i32 288, i32 288, i32 288 }, [20 x i8] zeroinitializer }, align 32
@mtk_clk_gate_ops_no_setclr = external dso_local constant %struct.clk_ops, align 4
@.str.221 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"apll_div_pdn1\00", [18 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"apll_div_pdn2\00", [18 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"apll_div_pdn3\00", [18 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"apll_div_pdn4\00", [18 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"apll_div_pdn5\00", [18 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"apll_div_pdn6\00", [18 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"apll_div_pdn7\00", [18 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"nfi2x_en\00", [23 x i8] zeroinitializer }, align 32
@top1_cg_regs = internal constant { %struct.mtk_gate_regs, [20 x i8] } { %struct.mtk_gate_regs { i32 1060, i32 1060, i32 1060 }, [20 x i8] zeroinitializer }, align 32
@mtk_clk_gate_ops_no_setclr_inv = external dso_local constant %struct.clk_ops, align 4
@.str.229 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nfiecc_en\00", [22 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"nfi1x_ck_en\00", [20 x i8] zeroinitializer }, align 32
@infra_clks = internal constant { [7 x %struct.mtk_gate], [60 x i8] } { [7 x %struct.mtk_gate] [%struct.mtk_gate { i32 0, ptr @.str.232, ptr @.str.130, ptr @infra_cg_regs, i32 0, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 1, ptr @.str.233, ptr @.str.130, ptr @infra_cg_regs, i32 6, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 2, ptr @.str.234, ptr @.str.131, ptr @infra_cg_regs, i32 8, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 3, ptr @.str.235, ptr @.str.130, ptr @infra_cg_regs, i32 16, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 4, ptr @.str.236, ptr @.str.139, ptr @infra_cg_regs, i32 24, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 5, ptr @.str.237, ptr @.str.188, ptr @infra_cg_regs, i32 25, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 6, ptr @.str.238, ptr @.str.130, ptr @infra_cg_regs, i32 26, ptr @mtk_clk_gate_ops_setclr, i32 0 }], [60 x i8] zeroinitializer }, align 32
@clk_mt2712_infra_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.231, ptr @.str.2, i32 1361, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"clk_mt2712_infra_probe\00", [41 x i8] zeroinitializer }, align 32
@clk_mt2712_infra_probe._entry_ptr = internal global ptr @clk_mt2712_infra_probe._entry, section ".printk_index", align 4
@.str.232 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"infra_dbgclk\00", [19 x i8] zeroinitializer }, align 32
@infra_cg_regs = internal constant { %struct.mtk_gate_regs, [20 x i8] } { %struct.mtk_gate_regs { i32 72, i32 68, i32 64 }, [20 x i8] zeroinitializer }, align 32
@mtk_clk_gate_ops_setclr = external dso_local constant %struct.clk_ops, align 4
@.str.233 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"infra_gce\00", [22 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"infra_m4u\00", [22 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"infra_kp\00", [23 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"infra_ao_spi0\00", [18 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"infra_ao_spi1\00", [18 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"infra_ao_uart5\00", [17 x i8] zeroinitializer }, align 32
@peri_clks = internal constant { [46 x %struct.mtk_gate], [344 x i8] } { [46 x %struct.mtk_gate] [%struct.mtk_gate { i32 0, ptr @.str.240, ptr @.str.130, ptr @peri0_cg_regs, i32 0, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 1, ptr @.str.241, ptr @.str.130, ptr @peri0_cg_regs, i32 1, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 2, ptr @.str.242, ptr @.str.133, ptr @peri0_cg_regs, i32 2, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 3, ptr @.str.243, ptr @.str.133, ptr @peri0_cg_regs, i32 3, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 4, ptr @.str.244, ptr @.str.133, ptr @peri0_cg_regs, i32 4, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 5, ptr @.str.245, ptr @.str.133, ptr @peri0_cg_regs, i32 5, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 6, ptr @.str.246, ptr @.str.133, ptr @peri0_cg_regs, i32 6, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 7, ptr @.str.247, ptr @.str.133, ptr @peri0_cg_regs, i32 7, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 8, ptr @.str.248, ptr @.str.133, ptr @peri0_cg_regs, i32 8, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 9, ptr @.str.249, ptr @.str.133, ptr @peri0_cg_regs, i32 9, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 10, ptr @.str.250, ptr @.str.133, ptr @peri0_cg_regs, i32 10, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 11, ptr @.str.251, ptr @.str.130, ptr @peri0_cg_regs, i32 13, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 12, ptr @.str.252, ptr @.str.143, ptr @peri0_cg_regs, i32 14, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 13, ptr @.str.253, ptr @.str.144, ptr @peri0_cg_regs, i32 15, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 14, ptr @.str.254, ptr @.str.145, ptr @peri0_cg_regs, i32 16, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 15, ptr @.str.255, ptr @.str.146, ptr @peri0_cg_regs, i32 17, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 16, ptr @.str.256, ptr @.str.138, ptr @peri0_cg_regs, i32 20, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 17, ptr @.str.257, ptr @.str.138, ptr @peri0_cg_regs, i32 21, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 18, ptr @.str.258, ptr @.str.138, ptr @peri0_cg_regs, i32 22, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 19, ptr @.str.259, ptr @.str.138, ptr @peri0_cg_regs, i32 23, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 20, ptr @.str.260, ptr @.str.130, ptr @peri0_cg_regs, i32 24, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 21, ptr @.str.261, ptr @.str.130, ptr @peri0_cg_regs, i32 25, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 22, ptr @.str.262, ptr @.str.130, ptr @peri0_cg_regs, i32 26, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 23, ptr @.str.263, ptr @.str.130, ptr @peri0_cg_regs, i32 27, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 24, ptr @.str.264, ptr @.str.130, ptr @peri0_cg_regs, i32 28, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 25, ptr @.str.265, ptr @.str.33, ptr @peri0_cg_regs, i32 29, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 26, ptr @.str.266, ptr @.str.139, ptr @peri0_cg_regs, i32 30, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 27, ptr @.str.267, ptr @.str.169, ptr @peri1_cg_regs, i32 1, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 28, ptr @.str.268, ptr @.str.130, ptr @peri1_cg_regs, i32 3, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 29, ptr @.str.269, ptr @.str.139, ptr @peri1_cg_regs, i32 5, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 30, ptr @.str.270, ptr @.str.139, ptr @peri1_cg_regs, i32 6, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 31, ptr @.str.271, ptr @.str.139, ptr @peri1_cg_regs, i32 8, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 32, ptr @.str.272, ptr @.str.138, ptr @peri1_cg_regs, i32 9, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 33, ptr @.str.273, ptr @.str.138, ptr @peri1_cg_regs, i32 11, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 34, ptr @.str.274, ptr @.str.138, ptr @peri1_cg_regs, i32 12, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 35, ptr @.str.275, ptr @.str.138, ptr @peri1_cg_regs, i32 14, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 36, ptr @.str.276, ptr @.str.138, ptr @peri1_cg_regs, i32 15, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 37, ptr @.str.277, ptr @.str.138, ptr @peri1_cg_regs, i32 16, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 38, ptr @.str.278, ptr @.str.143, ptr @peri2_cg_regs, i32 0, ptr @mtk_clk_gate_ops_no_setclr_inv, i32 0 }, %struct.mtk_gate { i32 39, ptr @.str.279, ptr @.str.144, ptr @peri2_cg_regs, i32 1, ptr @mtk_clk_gate_ops_no_setclr_inv, i32 0 }, %struct.mtk_gate { i32 40, ptr @.str.280, ptr @.str.145, ptr @peri2_cg_regs, i32 2, ptr @mtk_clk_gate_ops_no_setclr_inv, i32 0 }, %struct.mtk_gate { i32 41, ptr @.str.281, ptr @.str.146, ptr @peri2_cg_regs, i32 3, ptr @mtk_clk_gate_ops_no_setclr_inv, i32 0 }, %struct.mtk_gate { i32 42, ptr @.str.282, ptr @.str.142, ptr @peri2_cg_regs, i32 4, ptr @mtk_clk_gate_ops_no_setclr_inv, i32 0 }, %struct.mtk_gate { i32 43, ptr @.str.283, ptr @.str.165, ptr @peri2_cg_regs, i32 5, ptr @mtk_clk_gate_ops_no_setclr_inv, i32 0 }, %struct.mtk_gate { i32 44, ptr @.str.284, ptr @.str.130, ptr @peri2_cg_regs, i32 6, ptr @mtk_clk_gate_ops_no_setclr_inv, i32 0 }, %struct.mtk_gate { i32 45, ptr @.str.285, ptr @.str.131, ptr @peri2_cg_regs, i32 7, ptr @mtk_clk_gate_ops_no_setclr_inv, i32 0 }], [344 x i8] zeroinitializer }, align 32
@clk_mt2712_peri_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.239, ptr @.str.2, i32 1383, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"clk_mt2712_peri_probe\00", [42 x i8] zeroinitializer }, align 32
@clk_mt2712_peri_probe._entry_ptr = internal global ptr @clk_mt2712_peri_probe._entry, section ".printk_index", align 4
@.str.240 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"per_nfi\00", [24 x i8] zeroinitializer }, align 32
@peri0_cg_regs = internal constant { %struct.mtk_gate_regs, [20 x i8] } { %struct.mtk_gate_regs { i32 24, i32 16, i32 8 }, [20 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"per_therm\00", [22 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"per_pwm0\00", [23 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"per_pwm1\00", [23 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"per_pwm2\00", [23 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"per_pwm3\00", [23 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"per_pwm4\00", [23 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"per_pwm5\00", [23 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"per_pwm6\00", [23 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"per_pwm7\00", [23 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"per_pwm\00", [24 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"per_ap_dma\00", [21 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"per_msdc30_0\00", [19 x i8] zeroinitializer }, align 32
@.str.253 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"per_msdc30_1\00", [19 x i8] zeroinitializer }, align 32
@.str.254 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"per_msdc30_2\00", [19 x i8] zeroinitializer }, align 32
@.str.255 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"per_msdc30_3\00", [19 x i8] zeroinitializer }, align 32
@.str.256 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"per_uart0\00", [22 x i8] zeroinitializer }, align 32
@.str.257 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"per_uart1\00", [22 x i8] zeroinitializer }, align 32
@.str.258 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"per_uart2\00", [22 x i8] zeroinitializer }, align 32
@.str.259 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"per_uart3\00", [22 x i8] zeroinitializer }, align 32
@.str.260 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"per_i2c0\00", [23 x i8] zeroinitializer }, align 32
@.str.261 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"per_i2c1\00", [23 x i8] zeroinitializer }, align 32
@.str.262 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"per_i2c2\00", [23 x i8] zeroinitializer }, align 32
@.str.263 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"per_i2c3\00", [23 x i8] zeroinitializer }, align 32
@.str.264 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"per_i2c4\00", [23 x i8] zeroinitializer }, align 32
@.str.265 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"per_auxadc\00", [21 x i8] zeroinitializer }, align 32
@.str.266 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"per_spi0\00", [23 x i8] zeroinitializer }, align 32
@.str.267 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"per_spi\00", [24 x i8] zeroinitializer }, align 32
@peri1_cg_regs = internal constant { %struct.mtk_gate_regs, [20 x i8] } { %struct.mtk_gate_regs { i32 28, i32 20, i32 12 }, [20 x i8] zeroinitializer }, align 32
@.str.268 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"per_i2c5\00", [23 x i8] zeroinitializer }, align 32
@.str.269 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"per_spi2\00", [23 x i8] zeroinitializer }, align 32
@.str.270 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"per_spi3\00", [23 x i8] zeroinitializer }, align 32
@.str.271 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"per_spi5\00", [23 x i8] zeroinitializer }, align 32
@.str.272 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"per_uart4\00", [22 x i8] zeroinitializer }, align 32
@.str.273 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"per_sflash\00", [21 x i8] zeroinitializer }, align 32
@.str.274 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"per_gmac\00", [23 x i8] zeroinitializer }, align 32
@.str.275 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"per_pcie0\00", [22 x i8] zeroinitializer }, align 32
@.str.276 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"per_pcie1\00", [22 x i8] zeroinitializer }, align 32
@.str.277 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"per_gmac_pclk\00", [18 x i8] zeroinitializer }, align 32
@.str.278 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"per_msdc50_0_en\00", [16 x i8] zeroinitializer }, align 32
@peri2_cg_regs = internal constant { %struct.mtk_gate_regs, [20 x i8] } { %struct.mtk_gate_regs { i32 1068, i32 1068, i32 1068 }, [20 x i8] zeroinitializer }, align 32
@.str.279 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"per_msdc30_1_en\00", [16 x i8] zeroinitializer }, align 32
@.str.280 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"per_msdc30_2_en\00", [16 x i8] zeroinitializer }, align 32
@.str.281 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"per_msdc30_3_en\00", [16 x i8] zeroinitializer }, align 32
@.str.282 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"per_msdc50_0_h\00", [17 x i8] zeroinitializer }, align 32
@.str.283 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"per_msdc50_3_h\00", [17 x i8] zeroinitializer }, align 32
@.str.284 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"per_msdc30_0_q\00", [17 x i8] zeroinitializer }, align 32
@.str.285 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"per_msdc30_3_q\00", [17 x i8] zeroinitializer }, align 32
@clk_mt2712_mcu_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.286, ptr @.str.2, i32 1399, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.286 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"clk_mt2712_mcu_probe\00", [43 x i8] zeroinitializer }, align 32
@clk_mt2712_mcu_probe._entry_ptr = internal global ptr @clk_mt2712_mcu_probe._entry, section ".printk_index", align 4
@mcu_muxes = internal global { [3 x %struct.mtk_composite], [40 x i8] } { [3 x %struct.mtk_composite] [%struct.mtk_composite { i32 0, ptr @.str.289, ptr @mcu_mp0_parents, ptr null, i32 2048, i32 1952, i32 0, i32 1952, i8 9, i8 2, i8 -1, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 1, ptr @.str.290, ptr @mcu_mp2_parents, ptr null, i32 2048, i32 1960, i32 0, i32 1960, i8 9, i8 2, i8 -1, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 2, ptr @.str.291, ptr @mcu_bus_parents, ptr null, i32 2048, i32 1984, i32 0, i32 1984, i8 9, i8 2, i8 -1, i8 -1, i8 0, i8 0, i8 4 }], [40 x i8] zeroinitializer }, align 32
@clk_mt2712_mcu_probe._entry.287 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.286, ptr @.str.2, i32 1412, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@clk_mt2712_mcu_probe._entry_ptr.288 = internal global ptr @clk_mt2712_mcu_probe._entry.287, section ".printk_index", align 4
@.str.289 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mcu_mp0_sel\00", [20 x i8] zeroinitializer }, align 32
@mcu_mp0_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.4, ptr @.str.43, ptr @.str.80, ptr @.str.81], [16 x i8] zeroinitializer }, align 32
@.str.290 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mcu_mp2_sel\00", [20 x i8] zeroinitializer }, align 32
@mcu_mp2_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.4, ptr @.str.46, ptr @.str.82, ptr @.str.83], [16 x i8] zeroinitializer }, align 32
@.str.291 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mcu_bus_sel\00", [20 x i8] zeroinitializer }, align 32
@mcu_bus_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.4, ptr @.str.155, ptr @.str.84, ptr @.str.85], [16 x i8] zeroinitializer }, align 32
@___asan_gen_.292 = private unnamed_addr constant [13 x i8] c"top_clk_data\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1279, i32 33 }
@___asan_gen_.295 = private unnamed_addr constant [15 x i8] c"top_early_divs\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 38, i32 38 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1297, i32 3 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 39, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 41, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant [15 x i8] c"clk_mt2712_drv\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1456, i32 31 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1459, i32 11 }
@___asan_gen_.325 = private unnamed_addr constant [20 x i8] c"of_match_clk_mt2712\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1417, i32 34 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1449, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant [5 x i8] c"plls\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1224, i32 34 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1273, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1225, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1227, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1229, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1231, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1233, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1235, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1237, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1239, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1241, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1243, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1245, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1247, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant [16 x i8] c"mmpll_div_table\00", align 1
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1215, i32 39 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1250, i32 2 }
@___asan_gen_.394 = private unnamed_addr constant [21 x i8] c"armca35pll_div_table\00", align 1
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1197, i32 39 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1253, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant [21 x i8] c"armca72pll_div_table\00", align 1
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1206, i32 39 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1256, i32 2 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1312, i32 3 }
@___asan_gen_.415 = private unnamed_addr constant [15 x i8] c"top_fixed_clks\00", align 1
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 23, i32 35 }
@___asan_gen_.418 = private unnamed_addr constant [9 x i8] c"top_divs\00", align 1
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 45, i32 38 }
@___asan_gen_.421 = private unnamed_addr constant [10 x i8] c"top_muxes\00", align 1
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 736, i32 29 }
@___asan_gen_.424 = private unnamed_addr constant [16 x i8] c"mt2712_clk_lock\00", align 1
@___asan_gen_.427 = private unnamed_addr constant [13 x i8] c"top_adj_divs\00", align 1
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 937, i32 37 }
@___asan_gen_.430 = private unnamed_addr constant [9 x i8] c"top_clks\00", align 1
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 978, i32 30 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1340, i32 3 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 24, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 25, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 26, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 27, i32 2 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 28, i32 2 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 29, i32 2 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 30, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 31, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 32, i32 2 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 33, i32 2 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 34, i32 2 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 35, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 46, i32 2 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 48, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 50, i32 2 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 52, i32 2 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 54, i32 2 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 56, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 58, i32 2 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 60, i32 2 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 62, i32 2 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 64, i32 2 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 66, i32 2 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 68, i32 2 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 70, i32 2 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 72, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 74, i32 2 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 76, i32 2 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 78, i32 2 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 80, i32 2 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 82, i32 2 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 84, i32 2 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 86, i32 2 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 88, i32 2 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 90, i32 2 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 92, i32 2 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 94, i32 2 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 96, i32 2 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 98, i32 2 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 100, i32 2 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 102, i32 2 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 104, i32 2 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 106, i32 2 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 108, i32 2 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 110, i32 2 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 112, i32 2 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 114, i32 2 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 116, i32 2 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 118, i32 2 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 120, i32 2 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 122, i32 2 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 124, i32 2 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 126, i32 2 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 128, i32 2 }
@___asan_gen_.600 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 130, i32 2 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 132, i32 2 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 134, i32 2 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 136, i32 2 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 138, i32 2 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 140, i32 2 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 142, i32 2 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 144, i32 2 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 146, i32 2 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 148, i32 2 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 150, i32 2 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 152, i32 2 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 154, i32 2 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 156, i32 2 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 158, i32 2 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 160, i32 2 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 162, i32 2 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 164, i32 2 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 166, i32 2 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 168, i32 2 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 170, i32 2 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 172, i32 2 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 174, i32 2 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 176, i32 2 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 178, i32 2 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 180, i32 2 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 182, i32 2 }
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 184, i32 2 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 186, i32 2 }
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 188, i32 2 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 190, i32 2 }
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 192, i32 2 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 194, i32 2 }
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 196, i32 2 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 198, i32 2 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 200, i32 2 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 202, i32 2 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 204, i32 2 }
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 206, i32 2 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 208, i32 2 }
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 210, i32 2 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 212, i32 2 }
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 214, i32 2 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 216, i32 2 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 218, i32 2 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 738, i32 2 }
@___asan_gen_.736 = private unnamed_addr constant [12 x i8] c"axi_parents\00", align 1
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 222, i32 27 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 740, i32 2 }
@___asan_gen_.742 = private unnamed_addr constant [12 x i8] c"mem_parents\00", align 1
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 232, i32 27 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 742, i32 2 }
@___asan_gen_.748 = private unnamed_addr constant [11 x i8] c"mm_parents\00", align 1
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 237, i32 27 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 745, i32 2 }
@___asan_gen_.754 = private unnamed_addr constant [12 x i8] c"pwm_parents\00", align 1
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 248, i32 27 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 747, i32 2 }
@___asan_gen_.760 = private unnamed_addr constant [13 x i8] c"vdec_parents\00", align 1
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 255, i32 27 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 749, i32 2 }
@___asan_gen_.766 = private unnamed_addr constant [13 x i8] c"venc_parents\00", align 1
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 268, i32 27 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 751, i32 2 }
@___asan_gen_.772 = private unnamed_addr constant [12 x i8] c"mfg_parents\00", align 1
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 280, i32 27 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 754, i32 2 }
@___asan_gen_.778 = private unnamed_addr constant [14 x i8] c"camtg_parents\00", align 1
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 299, i32 27 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 756, i32 2 }
@___asan_gen_.784 = private unnamed_addr constant [13 x i8] c"uart_parents\00", align 1
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 313, i32 27 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 758, i32 2 }
@___asan_gen_.790 = private unnamed_addr constant [12 x i8] c"spi_parents\00", align 1
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 318, i32 27 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 760, i32 2 }
@___asan_gen_.796 = private unnamed_addr constant [14 x i8] c"usb20_parents\00", align 1
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 327, i32 27 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 763, i32 2 }
@___asan_gen_.802 = private unnamed_addr constant [14 x i8] c"usb30_parents\00", align 1
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 333, i32 27 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 765, i32 2 }
@___asan_gen_.808 = private unnamed_addr constant [19 x i8] c"msdc50_0_h_parents\00", align 1
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 340, i32 27 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 767, i32 2 }
@___asan_gen_.814 = private unnamed_addr constant [17 x i8] c"msdc50_0_parents\00", align 1
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 349, i32 27 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 769, i32 2 }
@___asan_gen_.820 = private unnamed_addr constant [17 x i8] c"msdc30_1_parents\00", align 1
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 363, i32 27 }
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 772, i32 2 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 774, i32 2 }
@___asan_gen_.829 = private unnamed_addr constant [17 x i8] c"msdc30_3_parents\00", align 1
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 373, i32 27 }
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 776, i32 2 }
@___asan_gen_.835 = private unnamed_addr constant [14 x i8] c"audio_parents\00", align 1
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 389, i32 27 }
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 778, i32 2 }
@___asan_gen_.841 = private unnamed_addr constant [19 x i8] c"aud_intbus_parents\00", align 1
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 396, i32 27 }
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 781, i32 2 }
@___asan_gen_.847 = private unnamed_addr constant [16 x i8] c"pmicspi_parents\00", align 1
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 406, i32 27 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 783, i32 2 }
@___asan_gen_.853 = private unnamed_addr constant [17 x i8] c"dpilvds1_parents\00", align 1
@___asan_gen_.855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 416, i32 27 }
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 785, i32 2 }
@___asan_gen_.859 = private unnamed_addr constant [12 x i8] c"atb_parents\00", align 1
@___asan_gen_.861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 425, i32 27 }
@___asan_gen_.864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 787, i32 2 }
@___asan_gen_.865 = private unnamed_addr constant [11 x i8] c"nr_parents\00", align 1
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 432, i32 27 }
@___asan_gen_.870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 790, i32 2 }
@___asan_gen_.871 = private unnamed_addr constant [14 x i8] c"nfi2x_parents\00", align 1
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 443, i32 27 }
@___asan_gen_.876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 792, i32 2 }
@___asan_gen_.877 = private unnamed_addr constant [13 x i8] c"irda_parents\00", align 1
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 457, i32 27 }
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 794, i32 2 }
@___asan_gen_.883 = private unnamed_addr constant [15 x i8] c"cci400_parents\00", align 1
@___asan_gen_.885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 464, i32 27 }
@___asan_gen_.888 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 796, i32 2 }
@___asan_gen_.889 = private unnamed_addr constant [14 x i8] c"aud_1_parents\00", align 1
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 475, i32 27 }
@___asan_gen_.894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 799, i32 2 }
@___asan_gen_.895 = private unnamed_addr constant [14 x i8] c"aud_2_parents\00", align 1
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 482, i32 27 }
@___asan_gen_.900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 801, i32 2 }
@___asan_gen_.901 = private unnamed_addr constant [16 x i8] c"mem_mfg_parents\00", align 1
@___asan_gen_.903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 489, i32 27 }
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 803, i32 2 }
@___asan_gen_.907 = private unnamed_addr constant [16 x i8] c"axi_mfg_parents\00", align 1
@___asan_gen_.909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 495, i32 27 }
@___asan_gen_.912 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 805, i32 2 }
@___asan_gen_.913 = private unnamed_addr constant [13 x i8] c"scam_parents\00", align 1
@___asan_gen_.915 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 501, i32 27 }
@___asan_gen_.918 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 808, i32 2 }
@___asan_gen_.919 = private unnamed_addr constant [15 x i8] c"nfiecc_parents\00", align 1
@___asan_gen_.921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 508, i32 27 }
@___asan_gen_.924 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 810, i32 2 }
@___asan_gen_.925 = private unnamed_addr constant [19 x i8] c"pe2_mac_p0_parents\00", align 1
@___asan_gen_.927 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 518, i32 27 }
@___asan_gen_.930 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 812, i32 2 }
@___asan_gen_.933 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 814, i32 2 }
@___asan_gen_.934 = private unnamed_addr constant [16 x i8] c"dpilvds_parents\00", align 1
@___asan_gen_.936 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 527, i32 27 }
@___asan_gen_.939 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 817, i32 2 }
@___asan_gen_.942 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 819, i32 2 }
@___asan_gen_.943 = private unnamed_addr constant [13 x i8] c"hdcp_parents\00", align 1
@___asan_gen_.945 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 536, i32 27 }
@___asan_gen_.948 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 821, i32 2 }
@___asan_gen_.949 = private unnamed_addr constant [17 x i8] c"hdcp_24m_parents\00", align 1
@___asan_gen_.951 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 543, i32 27 }
@___asan_gen_.954 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 823, i32 2 }
@___asan_gen_.955 = private unnamed_addr constant [12 x i8] c"rtc_parents\00", align 1
@___asan_gen_.957 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 550, i32 27 }
@___asan_gen_.960 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 826, i32 2 }
@___asan_gen_.961 = private unnamed_addr constant [15 x i8] c"spinor_parents\00", align 1
@___asan_gen_.963 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 557, i32 27 }
@___asan_gen_.966 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 828, i32 2 }
@___asan_gen_.967 = private unnamed_addr constant [13 x i8] c"apll_parents\00", align 1
@___asan_gen_.969 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 570, i32 27 }
@___asan_gen_.972 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 830, i32 2 }
@___asan_gen_.975 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 832, i32 2 }
@___asan_gen_.976 = private unnamed_addr constant [17 x i8] c"a1sys_hp_parents\00", align 1
@___asan_gen_.978 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 586, i32 27 }
@___asan_gen_.981 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 835, i32 2 }
@___asan_gen_.982 = private unnamed_addr constant [17 x i8] c"a2sys_hp_parents\00", align 1
@___asan_gen_.984 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 595, i32 27 }
@___asan_gen_.987 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 837, i32 2 }
@___asan_gen_.988 = private unnamed_addr constant [14 x i8] c"asm_l_parents\00", align 1
@___asan_gen_.990 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 604, i32 27 }
@___asan_gen_.993 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 839, i32 2 }
@___asan_gen_.996 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 841, i32 2 }
@___asan_gen_.999 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 844, i32 2 }
@___asan_gen_.1000 = private unnamed_addr constant [14 x i8] c"i2so1_parents\00", align 1
@___asan_gen_.1002 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 611, i32 27 }
@___asan_gen_.1005 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 846, i32 2 }
@___asan_gen_.1008 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 848, i32 2 }
@___asan_gen_.1011 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 850, i32 2 }
@___asan_gen_.1014 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 853, i32 2 }
@___asan_gen_.1017 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 855, i32 2 }
@___asan_gen_.1020 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 857, i32 2 }
@___asan_gen_.1023 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 859, i32 2 }
@___asan_gen_.1026 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 862, i32 2 }
@___asan_gen_.1027 = private unnamed_addr constant [19 x i8] c"ether_125m_parents\00", align 1
@___asan_gen_.1029 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 617, i32 27 }
@___asan_gen_.1032 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 864, i32 2 }
@___asan_gen_.1033 = private unnamed_addr constant [18 x i8] c"ether_50m_parents\00", align 1
@___asan_gen_.1035 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 623, i32 27 }
@___asan_gen_.1038 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 866, i32 2 }
@___asan_gen_.1039 = private unnamed_addr constant [15 x i8] c"jpgdec_parents\00", align 1
@___asan_gen_.1041 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 630, i32 27 }
@___asan_gen_.1044 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 868, i32 2 }
@___asan_gen_.1045 = private unnamed_addr constant [15 x i8] c"spislv_parents\00", align 1
@___asan_gen_.1047 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 643, i32 27 }
@___asan_gen_.1050 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 871, i32 2 }
@___asan_gen_.1051 = private unnamed_addr constant [14 x i8] c"ether_parents\00", align 1
@___asan_gen_.1053 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 654, i32 27 }
@___asan_gen_.1056 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 873, i32 2 }
@___asan_gen_.1059 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 875, i32 2 }
@___asan_gen_.1060 = private unnamed_addr constant [11 x i8] c"di_parents\00", align 1
@___asan_gen_.1062 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 660, i32 27 }
@___asan_gen_.1065 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 877, i32 2 }
@___asan_gen_.1066 = private unnamed_addr constant [12 x i8] c"tvd_parents\00", align 1
@___asan_gen_.1068 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 671, i32 27 }
@___asan_gen_.1071 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 880, i32 2 }
@___asan_gen_.1072 = private unnamed_addr constant [12 x i8] c"i2c_parents\00", align 1
@___asan_gen_.1074 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 677, i32 27 }
@___asan_gen_.1077 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 882, i32 2 }
@___asan_gen_.1080 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 884, i32 2 }
@___asan_gen_.1081 = private unnamed_addr constant [19 x i8] c"msdc0p_aes_parents\00", align 1
@___asan_gen_.1083 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 685, i32 27 }
@___asan_gen_.1086 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 886, i32 2 }
@___asan_gen_.1087 = private unnamed_addr constant [14 x i8] c"cmsys_parents\00", align 1
@___asan_gen_.1089 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 692, i32 27 }
@___asan_gen_.1092 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 889, i32 2 }
@___asan_gen_.1093 = private unnamed_addr constant [13 x i8] c"gcpu_parents\00", align 1
@___asan_gen_.1095 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 700, i32 27 }
@___asan_gen_.1098 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 892, i32 2 }
@___asan_gen_.1099 = private unnamed_addr constant [18 x i8] c"aud_apll1_parents\00", align 1
@___asan_gen_.1101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 710, i32 27 }
@___asan_gen_.1104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 894, i32 2 }
@___asan_gen_.1105 = private unnamed_addr constant [18 x i8] c"aud_apll2_parents\00", align 1
@___asan_gen_.1107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 715, i32 27 }
@___asan_gen_.1110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 896, i32 2 }
@___asan_gen_.1111 = private unnamed_addr constant [19 x i8] c"audull_vtx_parents\00", align 1
@___asan_gen_.1113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 731, i32 27 }
@___asan_gen_.1116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 898, i32 2 }
@___asan_gen_.1117 = private unnamed_addr constant [18 x i8] c"apll1_ref_parents\00", align 1
@___asan_gen_.1119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 720, i32 27 }
@___asan_gen_.1122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 900, i32 2 }
@___asan_gen_.1125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 422, i32 2 }
@___asan_gen_.1128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 712, i32 2 }
@___asan_gen_.1131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 717, i32 2 }
@___asan_gen_.1134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 733, i32 2 }
@___asan_gen_.1137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 723, i32 2 }
@___asan_gen_.1140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 724, i32 2 }
@___asan_gen_.1143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 725, i32 2 }
@___asan_gen_.1146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 726, i32 2 }
@___asan_gen_.1149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 21, i32 8 }
@___asan_gen_.1152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 938, i32 2 }
@___asan_gen_.1155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 939, i32 2 }
@___asan_gen_.1158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 940, i32 2 }
@___asan_gen_.1161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 941, i32 2 }
@___asan_gen_.1164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 942, i32 2 }
@___asan_gen_.1167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 943, i32 2 }
@___asan_gen_.1170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 944, i32 2 }
@___asan_gen_.1173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 945, i32 2 }
@___asan_gen_.1176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 980, i32 2 }
@___asan_gen_.1177 = private unnamed_addr constant [13 x i8] c"top0_cg_regs\00", align 1
@___asan_gen_.1179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 948, i32 35 }
@___asan_gen_.1182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 981, i32 2 }
@___asan_gen_.1185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 982, i32 2 }
@___asan_gen_.1188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 983, i32 2 }
@___asan_gen_.1191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 984, i32 2 }
@___asan_gen_.1194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 985, i32 2 }
@___asan_gen_.1197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 986, i32 2 }
@___asan_gen_.1200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 987, i32 2 }
@___asan_gen_.1203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 989, i32 2 }
@___asan_gen_.1204 = private unnamed_addr constant [13 x i8] c"top1_cg_regs\00", align 1
@___asan_gen_.1206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 954, i32 35 }
@___asan_gen_.1209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 990, i32 2 }
@___asan_gen_.1212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 991, i32 2 }
@___asan_gen_.1213 = private unnamed_addr constant [11 x i8] c"infra_clks\00", align 1
@___asan_gen_.1215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1009, i32 30 }
@___asan_gen_.1221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1360, i32 3 }
@___asan_gen_.1224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1010, i32 2 }
@___asan_gen_.1225 = private unnamed_addr constant [14 x i8] c"infra_cg_regs\00", align 1
@___asan_gen_.1227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 994, i32 35 }
@___asan_gen_.1230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1011, i32 2 }
@___asan_gen_.1233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1012, i32 2 }
@___asan_gen_.1236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1013, i32 2 }
@___asan_gen_.1239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1014, i32 2 }
@___asan_gen_.1242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1015, i32 2 }
@___asan_gen_.1245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1016, i32 2 }
@___asan_gen_.1246 = private unnamed_addr constant [10 x i8] c"peri_clks\00", align 1
@___asan_gen_.1248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1064, i32 30 }
@___asan_gen_.1254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1382, i32 3 }
@___asan_gen_.1257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1066, i32 2 }
@___asan_gen_.1258 = private unnamed_addr constant [14 x i8] c"peri0_cg_regs\00", align 1
@___asan_gen_.1260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1019, i32 35 }
@___asan_gen_.1263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1068, i32 2 }
@___asan_gen_.1266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1070, i32 2 }
@___asan_gen_.1269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1072, i32 2 }
@___asan_gen_.1272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1074, i32 2 }
@___asan_gen_.1275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1076, i32 2 }
@___asan_gen_.1278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1078, i32 2 }
@___asan_gen_.1281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1080, i32 2 }
@___asan_gen_.1284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1082, i32 2 }
@___asan_gen_.1287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1084, i32 2 }
@___asan_gen_.1290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1086, i32 2 }
@___asan_gen_.1293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1088, i32 2 }
@___asan_gen_.1296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1090, i32 2 }
@___asan_gen_.1299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1092, i32 2 }
@___asan_gen_.1302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1094, i32 2 }
@___asan_gen_.1305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1096, i32 2 }
@___asan_gen_.1308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1098, i32 2 }
@___asan_gen_.1311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1100, i32 2 }
@___asan_gen_.1314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1102, i32 2 }
@___asan_gen_.1317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1104, i32 2 }
@___asan_gen_.1320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1106, i32 2 }
@___asan_gen_.1323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1108, i32 2 }
@___asan_gen_.1326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1110, i32 2 }
@___asan_gen_.1329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1112, i32 2 }
@___asan_gen_.1332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1114, i32 2 }
@___asan_gen_.1335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1116, i32 2 }
@___asan_gen_.1338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1118, i32 2 }
@___asan_gen_.1341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1121, i32 2 }
@___asan_gen_.1342 = private unnamed_addr constant [14 x i8] c"peri1_cg_regs\00", align 1
@___asan_gen_.1344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1025, i32 35 }
@___asan_gen_.1347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1123, i32 2 }
@___asan_gen_.1350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1125, i32 2 }
@___asan_gen_.1353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1127, i32 2 }
@___asan_gen_.1356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1129, i32 2 }
@___asan_gen_.1359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1131, i32 2 }
@___asan_gen_.1362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1133, i32 2 }
@___asan_gen_.1365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1135, i32 2 }
@___asan_gen_.1368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1137, i32 2 }
@___asan_gen_.1371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1139, i32 2 }
@___asan_gen_.1374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1141, i32 2 }
@___asan_gen_.1377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1144, i32 2 }
@___asan_gen_.1378 = private unnamed_addr constant [14 x i8] c"peri2_cg_regs\00", align 1
@___asan_gen_.1380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1031, i32 35 }
@___asan_gen_.1383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1146, i32 2 }
@___asan_gen_.1386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1148, i32 2 }
@___asan_gen_.1389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1150, i32 2 }
@___asan_gen_.1392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1152, i32 2 }
@___asan_gen_.1395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1154, i32 2 }
@___asan_gen_.1398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1156, i32 2 }
@___asan_gen_.1401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1158, i32 2 }
@___asan_gen_.1407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1399, i32 3 }
@___asan_gen_.1408 = private unnamed_addr constant [10 x i8] c"mcu_muxes\00", align 1
@___asan_gen_.1410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 925, i32 29 }
@___asan_gen_.1411 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.1413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 1411, i32 3 }
@___asan_gen_.1416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 927, i32 2 }
@___asan_gen_.1417 = private unnamed_addr constant [16 x i8] c"mcu_mp0_parents\00", align 1
@___asan_gen_.1419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 904, i32 27 }
@___asan_gen_.1422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 930, i32 2 }
@___asan_gen_.1423 = private unnamed_addr constant [16 x i8] c"mcu_mp2_parents\00", align 1
@___asan_gen_.1425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 911, i32 27 }
@___asan_gen_.1426 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 933, i32 2 }
@___asan_gen_.1429 = private unnamed_addr constant [16 x i8] c"mcu_bus_parents\00", align 1
@___asan_gen_.1430 = private constant [37 x i8] c"../drivers/clk/mediatek/clk-mt2712.c\00", align 1
@___asan_gen_.1431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1430, i32 918, i32 27 }
@llvm.compiler.used = appending global [391 x ptr] [ptr @__initcall__kmod_clk_mt2712__183_1469_clk_mt2712_init3, ptr @__of_table_mt2712_topckgen, ptr @clk_mt2712_apmixed_probe._entry, ptr @clk_mt2712_apmixed_probe._entry_ptr, ptr @clk_mt2712_infra_probe._entry, ptr @clk_mt2712_infra_probe._entry_ptr, ptr @clk_mt2712_mcu_probe._entry, ptr @clk_mt2712_mcu_probe._entry.287, ptr @clk_mt2712_mcu_probe._entry_ptr, ptr @clk_mt2712_mcu_probe._entry_ptr.288, ptr @clk_mt2712_peri_probe._entry, ptr @clk_mt2712_peri_probe._entry_ptr, ptr @clk_mt2712_probe._entry, ptr @clk_mt2712_probe._entry_ptr, ptr @clk_mt2712_top_init_early._entry, ptr @clk_mt2712_top_init_early._entry_ptr, ptr @clk_mt2712_top_probe._entry, ptr @clk_mt2712_top_probe._entry.29, ptr @clk_mt2712_top_probe._entry_ptr, ptr @clk_mt2712_top_probe._entry_ptr.30, ptr @top_clk_data, ptr @top_early_divs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @clk_mt2712_drv, ptr @.str.6, ptr @of_match_clk_mt2712, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @plls, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @mmpll_div_table, ptr @.str.24, ptr @armca35pll_div_table, ptr @.str.25, ptr @armca72pll_div_table, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @top_fixed_clks, ptr @top_divs, ptr @top_muxes, ptr @mt2712_clk_lock, ptr @top_adj_divs, ptr @top_clks, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @axi_parents, ptr @.str.131, ptr @mem_parents, ptr @.str.132, ptr @mm_parents, ptr @.str.133, ptr @pwm_parents, ptr @.str.134, ptr @vdec_parents, ptr @.str.135, ptr @venc_parents, ptr @.str.136, ptr @mfg_parents, ptr @.str.137, ptr @camtg_parents, ptr @.str.138, ptr @uart_parents, ptr @.str.139, ptr @spi_parents, ptr @.str.140, ptr @usb20_parents, ptr @.str.141, ptr @usb30_parents, ptr @.str.142, ptr @msdc50_0_h_parents, ptr @.str.143, ptr @msdc50_0_parents, ptr @.str.144, ptr @msdc30_1_parents, ptr @.str.145, ptr @.str.146, ptr @msdc30_3_parents, ptr @.str.147, ptr @audio_parents, ptr @.str.148, ptr @aud_intbus_parents, ptr @.str.149, ptr @pmicspi_parents, ptr @.str.150, ptr @dpilvds1_parents, ptr @.str.151, ptr @atb_parents, ptr @.str.152, ptr @nr_parents, ptr @.str.153, ptr @nfi2x_parents, ptr @.str.154, ptr @irda_parents, ptr @.str.155, ptr @cci400_parents, ptr @.str.156, ptr @aud_1_parents, ptr @.str.157, ptr @aud_2_parents, ptr @.str.158, ptr @mem_mfg_parents, ptr @.str.159, ptr @axi_mfg_parents, ptr @.str.160, ptr @scam_parents, ptr @.str.161, ptr @nfiecc_parents, ptr @.str.162, ptr @pe2_mac_p0_parents, ptr @.str.163, ptr @.str.164, ptr @dpilvds_parents, ptr @.str.165, ptr @.str.166, ptr @hdcp_parents, ptr @.str.167, ptr @hdcp_24m_parents, ptr @.str.168, ptr @rtc_parents, ptr @.str.169, ptr @spinor_parents, ptr @.str.170, ptr @apll_parents, ptr @.str.171, ptr @.str.172, ptr @a1sys_hp_parents, ptr @.str.173, ptr @a2sys_hp_parents, ptr @.str.174, ptr @asm_l_parents, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @i2so1_parents, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @ether_125m_parents, ptr @.str.186, ptr @ether_50m_parents, ptr @.str.187, ptr @jpgdec_parents, ptr @.str.188, ptr @spislv_parents, ptr @.str.189, ptr @ether_parents, ptr @.str.190, ptr @.str.191, ptr @di_parents, ptr @.str.192, ptr @tvd_parents, ptr @.str.193, ptr @i2c_parents, ptr @.str.194, ptr @.str.195, ptr @msdc0p_aes_parents, ptr @.str.196, ptr @cmsys_parents, ptr @.str.197, ptr @gcpu_parents, ptr @.str.198, ptr @aud_apll1_parents, ptr @.str.199, ptr @aud_apll2_parents, ptr @.str.200, ptr @audull_vtx_parents, ptr @.str.201, ptr @apll1_ref_parents, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @top0_cg_regs, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @top1_cg_regs, ptr @.str.229, ptr @.str.230, ptr @infra_clks, ptr @.str.231, ptr @.str.232, ptr @infra_cg_regs, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @peri_clks, ptr @.str.239, ptr @.str.240, ptr @peri0_cg_regs, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @.str.251, ptr @.str.252, ptr @.str.253, ptr @.str.254, ptr @.str.255, ptr @.str.256, ptr @.str.257, ptr @.str.258, ptr @.str.259, ptr @.str.260, ptr @.str.261, ptr @.str.262, ptr @.str.263, ptr @.str.264, ptr @.str.265, ptr @.str.266, ptr @.str.267, ptr @peri1_cg_regs, ptr @.str.268, ptr @.str.269, ptr @.str.270, ptr @.str.271, ptr @.str.272, ptr @.str.273, ptr @.str.274, ptr @.str.275, ptr @.str.276, ptr @.str.277, ptr @.str.278, ptr @peri2_cg_regs, ptr @.str.279, ptr @.str.280, ptr @.str.281, ptr @.str.282, ptr @.str.283, ptr @.str.284, ptr @.str.285, ptr @.str.286, ptr @mcu_muxes, ptr @.str.289, ptr @mcu_mp0_parents, ptr @.str.290, ptr @mcu_mp2_parents, ptr @.str.291, ptr @mcu_bus_parents], section "llvm.metadata"
@0 = internal global [380 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @top_clk_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @top_early_divs to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mt2712_top_init_early._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1411 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mt2712_drv to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_match_clk_mt2712 to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mt2712_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1411 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plls to i32), i32 1440, i32 1792, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mt2712_apmixed_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1411 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmpll_div_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armca35pll_div_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @armca72pll_div_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mt2712_top_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1411 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @top_fixed_clks to i32), i32 192, i32 224, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @top_divs to i32), i32 1740, i32 2176, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @top_muxes to i32), i32 2920, i32 3648, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2712_clk_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @top_adj_divs to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @top_clks to i32), i32 308, i32 384, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mt2712_top_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1411 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axi_parents to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mem_parents to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mm_parents to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_parents to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venc_parents to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mfg_parents to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @camtg_parents to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart_parents to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_parents to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb20_parents to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb30_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.802 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msdc50_0_h_parents to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msdc50_0_parents to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.814 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msdc30_1_parents to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.820 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msdc30_3_parents to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aud_intbus_parents to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.841 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmicspi_parents to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.847 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpilvds1_parents to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atb_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nr_parents to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.865 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfi2x_parents to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.871 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @irda_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.877 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cci400_parents to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aud_1_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.889 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aud_2_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.895 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mem_mfg_parents to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.901 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axi_mfg_parents to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.907 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scam_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.913 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfiecc_parents to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.919 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pe2_mac_p0_parents to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.925 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpilvds_parents to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.934 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdcp_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdcp_24m_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.949 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.955 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spinor_parents to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.961 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apll_parents to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.967 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a1sys_hp_parents to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.976 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a2sys_hp_parents to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.982 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asm_l_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.988 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2so1_parents to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1000 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ether_125m_parents to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ether_50m_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1035 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @jpgdec_parents to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.1039 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spislv_parents to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1045 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ether_parents to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1051 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @di_parents to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1060 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tvd_parents to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1066 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_parents to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1072 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msdc0p_aes_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1081 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmsys_parents to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1087 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gcpu_parents to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.1093 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1095 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aud_apll1_parents to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1099 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aud_apll2_parents to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1105 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audull_vtx_parents to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1111 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apll1_ref_parents to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1117 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @top0_cg_regs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1177 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @top1_cg_regs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1204 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @infra_clks to i32), i32 196, i32 256, i32 ptrtoint (ptr @___asan_gen_.1213 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mt2712_infra_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1411 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @infra_cg_regs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1225 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @peri_clks to i32), i32 1288, i32 1632, i32 ptrtoint (ptr @___asan_gen_.1246 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mt2712_peri_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1411 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @peri0_cg_regs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1258 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.253 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.254 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.255 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.256 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.257 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.258 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.259 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.260 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.261 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.262 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.263 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.264 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.265 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.266 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.267 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @peri1_cg_regs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1342 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.268 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.269 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.270 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.271 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.272 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.273 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.274 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.275 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.276 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.277 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.278 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @peri2_cg_regs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1378 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.279 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.280 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.281 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.282 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.283 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.284 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.285 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mt2712_mcu_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1411 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.286 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcu_muxes to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.1408 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mt2712_mcu_probe._entry.287 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1411 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.289 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcu_mp0_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1417 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.290 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcu_mp2_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1423 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.291 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1426 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcu_bus_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1429 to i32), i32 ptrtoint (ptr @___asan_gen_.1430 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1431 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mt2712_topckgen_of_clk_init_driver(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %_flags.i = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %_flags.i) #4
  %0 = load ptr, ptr @top_clk_data, align 4
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  %call.i = tail call ptr @mtk_alloc_clk_data(i32 noundef 193) #4
  store ptr %call.i, ptr @top_clk_data, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.i
  %i.010.i = phi i32 [ 0, %if.then.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %2, i32 %i.010.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -517 to ptr), ptr %arrayidx.i, align 4
  %inc.i = add nuw nsw i32 %i.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 193
  br i1 %exitcond.not.i, label %for.body.i.if.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.end.i:                                         ; preds = %for.body.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %4 = load ptr, ptr @top_clk_data, align 4
  tail call void @mtk_clk_register_factors(ptr noundef nonnull @top_early_divs, i32 noundef 2, ptr noundef %4) #4
  %5 = load ptr, ptr @top_clk_data, align 4
  %call2.i = tail call i32 @of_clk_add_provider(ptr noundef %np, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.clk_mt2712_top_init_early.exit_crit_edge, label %do.end.i

if.end.i.clk_mt2712_top_init_early.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %clk_mt2712_top_init_early.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call2.i) #7
  br label %clk_mt2712_top_init_early.exit

clk_mt2712_top_init_early.exit:                   ; preds = %do.end.i, %if.end.i.clk_mt2712_top_init_early.exit_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_mt2712_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @clk_mt2712_drv, ptr noundef null) #4
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

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_mt2712_probe(ptr noundef %pdev) #3 align 64 {
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
  %cmp.not = icmp eq i32 %call1, 0
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7, ptr noundef %1, i32 noundef %call1) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ %call1, %do.end ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_mt2712_apmixed_probe(ptr nocapture noundef readonly %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @mtk_alloc_clk_data(i32 noundef 15) #4
  tail call void @mtk_clk_register_plls(ptr noundef %1, ptr noundef nonnull @plls, i32 noundef 15, ptr noundef %call) #4
  %call1 = tail call i32 @of_clk_add_provider(ptr noundef %1, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.11, i32 noundef %call1) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_mt2712_top_probe(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28) #7
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr @top_clk_data, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %if.then4, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call5 = tail call ptr @mtk_alloc_clk_data(i32 noundef 193) #4
  store ptr %call5, ptr @top_clk_data, align 4
  br label %if.end13

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.037 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %arrayidx = getelementptr ptr, ptr %5, i32 %i.037
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %cmp7 = icmp eq ptr %7, inttoptr (i32 -517 to ptr)
  br i1 %cmp7, label %if.then8, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then8:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then8, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.037, 1
  %exitcond.not = icmp eq i32 %inc, 193
  br i1 %exitcond.not, label %for.inc.if.end13_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.if.end13_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end13

if.end13:                                         ; preds = %for.inc.if.end13_crit_edge, %if.then4
  %9 = load ptr, ptr @top_clk_data, align 4
  tail call void @mtk_clk_register_fixed_clks(ptr noundef nonnull @top_fixed_clks, i32 noundef 12, ptr noundef %9) #4
  %10 = load ptr, ptr @top_clk_data, align 4
  tail call void @mtk_clk_register_factors(ptr noundef nonnull @top_early_divs, i32 noundef 2, ptr noundef %10) #4
  %11 = load ptr, ptr @top_clk_data, align 4
  tail call void @mtk_clk_register_factors(ptr noundef nonnull @top_divs, i32 noundef 87, ptr noundef %11) #4
  %12 = load ptr, ptr @top_clk_data, align 4
  tail call void @mtk_clk_register_composites(ptr noundef nonnull @top_muxes, i32 noundef 73, ptr noundef %call, ptr noundef nonnull @mt2712_clk_lock, ptr noundef %12) #4
  %13 = load ptr, ptr @top_clk_data, align 4
  tail call void @mtk_clk_register_dividers(ptr noundef nonnull @top_adj_divs, i32 noundef 8, ptr noundef %call, ptr noundef nonnull @mt2712_clk_lock, ptr noundef %13) #4
  %14 = load ptr, ptr @top_clk_data, align 4
  %call14 = tail call i32 @mtk_clk_register_gates(ptr noundef %1, ptr noundef nonnull @top_clks, i32 noundef 11, ptr noundef %14) #4
  %15 = load ptr, ptr @top_clk_data, align 4
  %call15 = tail call i32 @of_clk_add_provider(ptr noundef %1, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %15) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16.not = icmp eq i32 %call15, 0
  br i1 %cmp16.not, label %if.end13.cleanup_crit_edge, label %do.end20

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end20:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  %call22 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.28, i32 noundef %call15) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end20, %if.end13.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %2, %do.end ], [ %call15, %do.end20 ], [ 0, %if.end13.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_mt2712_infra_probe(ptr nocapture noundef readonly %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @mtk_alloc_clk_data(i32 noundef 7) #4
  %call1 = tail call i32 @mtk_clk_register_gates(ptr noundef %1, ptr noundef nonnull @infra_clks, i32 noundef 7, ptr noundef %call) #4
  %call2 = tail call i32 @of_clk_add_provider(ptr noundef %1, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp.not = icmp eq i32 %call2, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.231, i32 noundef %call2) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @mtk_register_reset_controller(ptr noundef %1, i32 noundef 2, i32 noundef 48) #4
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_mt2712_peri_probe(ptr nocapture noundef readonly %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @mtk_alloc_clk_data(i32 noundef 46) #4
  %call1 = tail call i32 @mtk_clk_register_gates(ptr noundef %1, ptr noundef nonnull @peri_clks, i32 noundef 46, ptr noundef %call) #4
  %call2 = tail call i32 @of_clk_add_provider(ptr noundef %1, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp.not = icmp eq i32 %call2, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.239, i32 noundef %call2) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call void @mtk_register_reset_controller(ptr noundef %1, i32 noundef 2, i32 noundef 0) #4
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_mt2712_mcu_probe(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.286) #7
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call ptr @mtk_alloc_clk_data(i32 noundef 3) #4
  tail call void @mtk_clk_register_composites(ptr noundef nonnull @mcu_muxes, i32 noundef 3, ptr noundef %call, ptr noundef nonnull @mt2712_clk_lock, ptr noundef %call4) #4
  %call5 = tail call i32 @of_clk_add_provider(ptr noundef %1, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %call4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp.not = icmp eq i32 %call5, 0
  br i1 %cmp.not, label %if.end.cleanup_crit_edge, label %do.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.286, i32 noundef %call5) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end9, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %2, %do.end ], [ %call5, %do.end9 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_clk_register_plls(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_clk_register_fixed_clks(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_clk_register_composites(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_clk_register_dividers(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_clk_register_gates(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_register_reset_controller(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 380)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 380)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !14, !15, !17, !19, !21, !23, !25, !26, !27, !28, !29, !30, !32, !34, !35, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !77, !78, !79, !81, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448, !450, !452, !454, !456, !458, !460, !462, !464, !466, !468, !470, !472, !474, !476, !478, !480, !482, !484, !486, !488, !490, !492, !494, !496, !498, !500, !502, !504, !506, !508, !510, !512, !514, !516, !518, !520, !522, !524, !526, !528, !530, !532, !534, !536, !538, !540, !542, !544, !546, !548, !550, !552, !554, !556, !558, !560, !562, !564, !565, !567, !569, !571, !573, !575, !577, !579, !581, !583, !585, !587, !589, !591, !593, !595, !597, !599, !601, !603, !605, !607, !609, !611, !613, !614, !615, !617, !619, !621, !623, !625, !627, !629, !631, !633, !635, !636, !637, !639, !641, !643, !645, !647, !649, !651, !653, !655, !657, !659, !661, !663, !665, !667, !669, !671, !673, !675, !677, !679, !681, !683, !685, !687, !689, !691, !693, !695, !697, !699, !701, !703, !705, !707, !709, !711, !713, !715, !717, !719, !721, !723, !725, !727, !729, !731, !733, !735, !737, !739, !740, !741, !743, !744, !746, !748, !750, !752, !754, !756}
!llvm.module.flags = !{!758, !759, !760, !761, !762, !763, !764, !765}
!llvm.ident = !{!766}

!0 = !{ptr @__of_table_mt2712_topckgen, !1, !"__of_table_mt2712_topckgen", i1 false, i1 false}
!1 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1301, i32 1}
!2 = !{ptr @__initcall__kmod_clk_mt2712__183_1469_clk_mt2712_init3, !3, !"__initcall__kmod_clk_mt2712__183_1469_clk_mt2712_init3", i1 false, i1 false}
!3 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1469, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1297, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @clk_mt2712_top_init_early._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @clk_mt2712_top_init_early._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @top_clk_data, !11, !"top_clk_data", i1 false, i1 false}
!11 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1279, i32 33}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 39, i32 2}
!14 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 41, i32 2}
!17 = !{ptr @top_early_divs, !18, !"top_early_divs", i1 false, i1 false}
!18 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 38, i32 38}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1459, i32 11}
!21 = !{ptr @clk_mt2712_drv, !22, !"clk_mt2712_drv", i1 false, i1 false}
!22 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1456, i32 31}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1449, i32 3}
!25 = !{ptr @.str.8, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @clk_mt2712_probe._entry, !24, !"_entry", i1 false, i1 false}
!29 = !{ptr @clk_mt2712_probe._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @of_match_clk_mt2712, !31, !"of_match_clk_mt2712", i1 false, i1 false}
!31 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1417, i32 34}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1273, i32 3}
!34 = !{ptr @clk_mt2712_apmixed_probe._entry, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @clk_mt2712_apmixed_probe._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1225, i32 2}
!38 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1227, i32 2}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1229, i32 2}
!42 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1231, i32 2}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1233, i32 2}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1235, i32 2}
!48 = !{ptr @.str.18, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1237, i32 2}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1239, i32 2}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1241, i32 2}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1243, i32 2}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1245, i32 2}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1247, i32 2}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1250, i32 2}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1253, i32 2}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1256, i32 2}
!66 = !{ptr @plls, !67, !"plls", i1 false, i1 false}
!67 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1224, i32 34}
!68 = !{ptr @mmpll_div_table, !69, !"mmpll_div_table", i1 false, i1 false}
!69 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1215, i32 39}
!70 = !{ptr @armca35pll_div_table, !71, !"armca35pll_div_table", i1 false, i1 false}
!71 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1197, i32 39}
!72 = !{ptr @armca72pll_div_table, !73, !"armca72pll_div_table", i1 false, i1 false}
!73 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1206, i32 39}
!74 = !{ptr @.str.27, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1312, i32 3}
!76 = !{ptr @.str.28, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @clk_mt2712_top_probe._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @clk_mt2712_top_probe._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @clk_mt2712_top_probe._entry.29, !80, !"_entry", i1 false, i1 false}
!80 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1340, i32 3}
!81 = !{ptr @clk_mt2712_top_probe._entry_ptr.30, !80, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.31, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 24, i32 2}
!84 = !{ptr @.str.32, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 25, i32 2}
!86 = !{ptr @.str.33, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 26, i32 2}
!88 = !{ptr @.str.34, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 27, i32 2}
!90 = !{ptr @.str.35, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 28, i32 2}
!92 = !{ptr @.str.36, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 29, i32 2}
!94 = !{ptr @.str.37, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 30, i32 2}
!96 = !{ptr @.str.38, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 31, i32 2}
!98 = !{ptr @.str.39, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 32, i32 2}
!100 = !{ptr @.str.40, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 33, i32 2}
!102 = !{ptr @.str.41, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 34, i32 2}
!104 = !{ptr @.str.42, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 35, i32 2}
!106 = !{ptr @top_fixed_clks, !107, !"top_fixed_clks", i1 false, i1 false}
!107 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 23, i32 35}
!108 = !{ptr @.str.43, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 46, i32 2}
!110 = !{ptr @.str.44, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 48, i32 2}
!112 = !{ptr @.str.45, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 50, i32 2}
!114 = !{ptr @.str.46, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 52, i32 2}
!116 = !{ptr @.str.47, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 54, i32 2}
!118 = !{ptr @.str.48, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 56, i32 2}
!120 = !{ptr @.str.49, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 58, i32 2}
!122 = !{ptr @.str.50, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 60, i32 2}
!124 = !{ptr @.str.51, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 62, i32 2}
!126 = !{ptr @.str.52, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 64, i32 2}
!128 = !{ptr @.str.53, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 66, i32 2}
!130 = !{ptr @.str.54, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 68, i32 2}
!132 = !{ptr @.str.55, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 70, i32 2}
!134 = !{ptr @.str.56, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 72, i32 2}
!136 = !{ptr @.str.57, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 74, i32 2}
!138 = !{ptr @.str.58, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 76, i32 2}
!140 = !{ptr @.str.59, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 78, i32 2}
!142 = !{ptr @.str.60, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 80, i32 2}
!144 = !{ptr @.str.61, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 82, i32 2}
!146 = !{ptr @.str.62, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 84, i32 2}
!148 = !{ptr @.str.63, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 86, i32 2}
!150 = !{ptr @.str.64, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 88, i32 2}
!152 = !{ptr @.str.65, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 90, i32 2}
!154 = !{ptr @.str.66, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 92, i32 2}
!156 = !{ptr @.str.67, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 94, i32 2}
!158 = !{ptr @.str.68, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 96, i32 2}
!160 = !{ptr @.str.69, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 98, i32 2}
!162 = !{ptr @.str.70, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 100, i32 2}
!164 = !{ptr @.str.71, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 102, i32 2}
!166 = !{ptr @.str.72, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 104, i32 2}
!168 = !{ptr @.str.73, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 106, i32 2}
!170 = !{ptr @.str.74, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 108, i32 2}
!172 = !{ptr @.str.75, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 110, i32 2}
!174 = !{ptr @.str.76, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 112, i32 2}
!176 = !{ptr @.str.77, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 114, i32 2}
!178 = !{ptr @.str.78, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 116, i32 2}
!180 = !{ptr @.str.79, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 118, i32 2}
!182 = !{ptr @.str.80, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 120, i32 2}
!184 = !{ptr @.str.81, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 122, i32 2}
!186 = !{ptr @.str.82, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 124, i32 2}
!188 = !{ptr @.str.83, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 126, i32 2}
!190 = !{ptr @.str.84, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 128, i32 2}
!192 = !{ptr @.str.85, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 130, i32 2}
!194 = !{ptr @.str.86, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 132, i32 2}
!196 = !{ptr @.str.87, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 134, i32 2}
!198 = !{ptr @.str.88, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 136, i32 2}
!200 = !{ptr @.str.89, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 138, i32 2}
!202 = !{ptr @.str.90, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 140, i32 2}
!204 = !{ptr @.str.91, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 142, i32 2}
!206 = !{ptr @.str.92, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 144, i32 2}
!208 = !{ptr @.str.93, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 146, i32 2}
!210 = !{ptr @.str.94, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 148, i32 2}
!212 = !{ptr @.str.95, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 150, i32 2}
!214 = !{ptr @.str.96, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 152, i32 2}
!216 = !{ptr @.str.97, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 154, i32 2}
!218 = !{ptr @.str.98, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 156, i32 2}
!220 = !{ptr @.str.99, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 158, i32 2}
!222 = !{ptr @.str.100, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 160, i32 2}
!224 = !{ptr @.str.101, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 162, i32 2}
!226 = !{ptr @.str.102, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 164, i32 2}
!228 = !{ptr @.str.103, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 166, i32 2}
!230 = !{ptr @.str.104, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 168, i32 2}
!232 = !{ptr @.str.105, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 170, i32 2}
!234 = !{ptr @.str.106, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 172, i32 2}
!236 = !{ptr @.str.107, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 174, i32 2}
!238 = !{ptr @.str.108, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 176, i32 2}
!240 = !{ptr @.str.109, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 178, i32 2}
!242 = !{ptr @.str.110, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 180, i32 2}
!244 = !{ptr @.str.111, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 182, i32 2}
!246 = !{ptr @.str.112, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 184, i32 2}
!248 = !{ptr @.str.113, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 186, i32 2}
!250 = !{ptr @.str.114, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 188, i32 2}
!252 = !{ptr @.str.115, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 190, i32 2}
!254 = !{ptr @.str.116, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 192, i32 2}
!256 = !{ptr @.str.117, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 194, i32 2}
!258 = !{ptr @.str.118, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 196, i32 2}
!260 = !{ptr @.str.119, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 198, i32 2}
!262 = !{ptr @.str.120, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 200, i32 2}
!264 = !{ptr @.str.121, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 202, i32 2}
!266 = !{ptr @.str.122, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 204, i32 2}
!268 = !{ptr @.str.123, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 206, i32 2}
!270 = !{ptr @.str.124, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 208, i32 2}
!272 = !{ptr @.str.125, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 210, i32 2}
!274 = !{ptr @.str.126, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 212, i32 2}
!276 = !{ptr @.str.127, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 214, i32 2}
!278 = !{ptr @.str.128, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 216, i32 2}
!280 = !{ptr @.str.129, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 218, i32 2}
!282 = !{ptr @top_divs, !283, !"top_divs", i1 false, i1 false}
!283 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 45, i32 38}
!284 = !{ptr @.str.130, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 738, i32 2}
!286 = !{ptr @.str.131, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 740, i32 2}
!288 = !{ptr @.str.132, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 742, i32 2}
!290 = !{ptr @.str.133, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 745, i32 2}
!292 = !{ptr @.str.134, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 747, i32 2}
!294 = !{ptr @.str.135, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 749, i32 2}
!296 = !{ptr @.str.136, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 751, i32 2}
!298 = !{ptr @.str.137, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 754, i32 2}
!300 = !{ptr @.str.138, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 756, i32 2}
!302 = !{ptr @.str.139, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 758, i32 2}
!304 = !{ptr @.str.140, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 760, i32 2}
!306 = !{ptr @.str.141, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 763, i32 2}
!308 = !{ptr @.str.142, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 765, i32 2}
!310 = !{ptr @.str.143, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 767, i32 2}
!312 = !{ptr @.str.144, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 769, i32 2}
!314 = !{ptr @.str.145, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 772, i32 2}
!316 = !{ptr @.str.146, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 774, i32 2}
!318 = !{ptr @.str.147, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 776, i32 2}
!320 = !{ptr @.str.148, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 778, i32 2}
!322 = !{ptr @.str.149, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 781, i32 2}
!324 = !{ptr @.str.150, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 783, i32 2}
!326 = !{ptr @.str.151, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 785, i32 2}
!328 = !{ptr @.str.152, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 787, i32 2}
!330 = !{ptr @.str.153, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 790, i32 2}
!332 = !{ptr @.str.154, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 792, i32 2}
!334 = !{ptr @.str.155, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 794, i32 2}
!336 = !{ptr @.str.156, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 796, i32 2}
!338 = !{ptr @.str.157, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 799, i32 2}
!340 = !{ptr @.str.158, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 801, i32 2}
!342 = !{ptr @.str.159, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 803, i32 2}
!344 = !{ptr @.str.160, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 805, i32 2}
!346 = !{ptr @.str.161, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 808, i32 2}
!348 = !{ptr @.str.162, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 810, i32 2}
!350 = !{ptr @.str.163, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 812, i32 2}
!352 = !{ptr @.str.164, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 814, i32 2}
!354 = !{ptr @.str.165, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 817, i32 2}
!356 = !{ptr @.str.166, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 819, i32 2}
!358 = !{ptr @.str.167, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 821, i32 2}
!360 = !{ptr @.str.168, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 823, i32 2}
!362 = !{ptr @.str.169, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 826, i32 2}
!364 = !{ptr @.str.170, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 828, i32 2}
!366 = !{ptr @.str.171, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 830, i32 2}
!368 = !{ptr @.str.172, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 832, i32 2}
!370 = !{ptr @.str.173, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 835, i32 2}
!372 = !{ptr @.str.174, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 837, i32 2}
!374 = !{ptr @.str.175, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 839, i32 2}
!376 = !{ptr @.str.176, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 841, i32 2}
!378 = !{ptr @.str.177, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 844, i32 2}
!380 = !{ptr @.str.178, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 846, i32 2}
!382 = !{ptr @.str.179, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 848, i32 2}
!384 = !{ptr @.str.180, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 850, i32 2}
!386 = !{ptr @.str.181, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 853, i32 2}
!388 = !{ptr @.str.182, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 855, i32 2}
!390 = !{ptr @.str.183, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 857, i32 2}
!392 = !{ptr @.str.184, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 859, i32 2}
!394 = !{ptr @.str.185, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 862, i32 2}
!396 = !{ptr @.str.186, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 864, i32 2}
!398 = !{ptr @.str.187, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 866, i32 2}
!400 = !{ptr @.str.188, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 868, i32 2}
!402 = !{ptr @.str.189, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 871, i32 2}
!404 = !{ptr @.str.190, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 873, i32 2}
!406 = !{ptr @.str.191, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 875, i32 2}
!408 = !{ptr @.str.192, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 877, i32 2}
!410 = !{ptr @.str.193, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 880, i32 2}
!412 = !{ptr @.str.194, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 882, i32 2}
!414 = !{ptr @.str.195, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 884, i32 2}
!416 = !{ptr @.str.196, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 886, i32 2}
!418 = !{ptr @.str.197, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 889, i32 2}
!420 = !{ptr @.str.198, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 892, i32 2}
!422 = !{ptr @.str.199, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 894, i32 2}
!424 = !{ptr @.str.200, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 896, i32 2}
!426 = !{ptr @.str.201, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 898, i32 2}
!428 = !{ptr @.str.202, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 900, i32 2}
!430 = !{ptr @top_muxes, !431, !"top_muxes", i1 false, i1 false}
!431 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 736, i32 29}
!432 = !{ptr @axi_parents, !433, !"axi_parents", i1 false, i1 false}
!433 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 222, i32 27}
!434 = !{ptr @mem_parents, !435, !"mem_parents", i1 false, i1 false}
!435 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 232, i32 27}
!436 = !{ptr @mm_parents, !437, !"mm_parents", i1 false, i1 false}
!437 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 237, i32 27}
!438 = !{ptr @pwm_parents, !439, !"pwm_parents", i1 false, i1 false}
!439 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 248, i32 27}
!440 = !{ptr @vdec_parents, !441, !"vdec_parents", i1 false, i1 false}
!441 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 255, i32 27}
!442 = !{ptr @venc_parents, !443, !"venc_parents", i1 false, i1 false}
!443 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 268, i32 27}
!444 = !{ptr @mfg_parents, !445, !"mfg_parents", i1 false, i1 false}
!445 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 280, i32 27}
!446 = !{ptr @camtg_parents, !447, !"camtg_parents", i1 false, i1 false}
!447 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 299, i32 27}
!448 = !{ptr @uart_parents, !449, !"uart_parents", i1 false, i1 false}
!449 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 313, i32 27}
!450 = !{ptr @spi_parents, !451, !"spi_parents", i1 false, i1 false}
!451 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 318, i32 27}
!452 = !{ptr @usb20_parents, !453, !"usb20_parents", i1 false, i1 false}
!453 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 327, i32 27}
!454 = !{ptr @usb30_parents, !455, !"usb30_parents", i1 false, i1 false}
!455 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 333, i32 27}
!456 = !{ptr @msdc50_0_h_parents, !457, !"msdc50_0_h_parents", i1 false, i1 false}
!457 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 340, i32 27}
!458 = !{ptr @msdc50_0_parents, !459, !"msdc50_0_parents", i1 false, i1 false}
!459 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 349, i32 27}
!460 = !{ptr @msdc30_1_parents, !461, !"msdc30_1_parents", i1 false, i1 false}
!461 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 363, i32 27}
!462 = !{ptr @msdc30_3_parents, !463, !"msdc30_3_parents", i1 false, i1 false}
!463 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 373, i32 27}
!464 = !{ptr @audio_parents, !465, !"audio_parents", i1 false, i1 false}
!465 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 389, i32 27}
!466 = !{ptr @aud_intbus_parents, !467, !"aud_intbus_parents", i1 false, i1 false}
!467 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 396, i32 27}
!468 = !{ptr @pmicspi_parents, !469, !"pmicspi_parents", i1 false, i1 false}
!469 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 406, i32 27}
!470 = !{ptr @.str.203, !471, !"<string literal>", i1 false, i1 false}
!471 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 422, i32 2}
!472 = !{ptr @dpilvds1_parents, !473, !"dpilvds1_parents", i1 false, i1 false}
!473 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 416, i32 27}
!474 = !{ptr @atb_parents, !475, !"atb_parents", i1 false, i1 false}
!475 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 425, i32 27}
!476 = !{ptr @nr_parents, !477, !"nr_parents", i1 false, i1 false}
!477 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 432, i32 27}
!478 = !{ptr @nfi2x_parents, !479, !"nfi2x_parents", i1 false, i1 false}
!479 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 443, i32 27}
!480 = !{ptr @irda_parents, !481, !"irda_parents", i1 false, i1 false}
!481 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 457, i32 27}
!482 = !{ptr @cci400_parents, !483, !"cci400_parents", i1 false, i1 false}
!483 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 464, i32 27}
!484 = !{ptr @aud_1_parents, !485, !"aud_1_parents", i1 false, i1 false}
!485 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 475, i32 27}
!486 = !{ptr @aud_2_parents, !487, !"aud_2_parents", i1 false, i1 false}
!487 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 482, i32 27}
!488 = !{ptr @mem_mfg_parents, !489, !"mem_mfg_parents", i1 false, i1 false}
!489 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 489, i32 27}
!490 = !{ptr @axi_mfg_parents, !491, !"axi_mfg_parents", i1 false, i1 false}
!491 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 495, i32 27}
!492 = !{ptr @scam_parents, !493, !"scam_parents", i1 false, i1 false}
!493 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 501, i32 27}
!494 = !{ptr @nfiecc_parents, !495, !"nfiecc_parents", i1 false, i1 false}
!495 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 508, i32 27}
!496 = !{ptr @pe2_mac_p0_parents, !497, !"pe2_mac_p0_parents", i1 false, i1 false}
!497 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 518, i32 27}
!498 = !{ptr @dpilvds_parents, !499, !"dpilvds_parents", i1 false, i1 false}
!499 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 527, i32 27}
!500 = !{ptr @hdcp_parents, !501, !"hdcp_parents", i1 false, i1 false}
!501 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 536, i32 27}
!502 = !{ptr @hdcp_24m_parents, !503, !"hdcp_24m_parents", i1 false, i1 false}
!503 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 543, i32 27}
!504 = !{ptr @rtc_parents, !505, !"rtc_parents", i1 false, i1 false}
!505 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 550, i32 27}
!506 = !{ptr @spinor_parents, !507, !"spinor_parents", i1 false, i1 false}
!507 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 557, i32 27}
!508 = !{ptr @apll_parents, !509, !"apll_parents", i1 false, i1 false}
!509 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 570, i32 27}
!510 = !{ptr @a1sys_hp_parents, !511, !"a1sys_hp_parents", i1 false, i1 false}
!511 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 586, i32 27}
!512 = !{ptr @a2sys_hp_parents, !513, !"a2sys_hp_parents", i1 false, i1 false}
!513 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 595, i32 27}
!514 = !{ptr @asm_l_parents, !515, !"asm_l_parents", i1 false, i1 false}
!515 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 604, i32 27}
!516 = !{ptr @i2so1_parents, !517, !"i2so1_parents", i1 false, i1 false}
!517 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 611, i32 27}
!518 = !{ptr @ether_125m_parents, !519, !"ether_125m_parents", i1 false, i1 false}
!519 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 617, i32 27}
!520 = !{ptr @ether_50m_parents, !521, !"ether_50m_parents", i1 false, i1 false}
!521 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 623, i32 27}
!522 = !{ptr @jpgdec_parents, !523, !"jpgdec_parents", i1 false, i1 false}
!523 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 630, i32 27}
!524 = !{ptr @spislv_parents, !525, !"spislv_parents", i1 false, i1 false}
!525 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 643, i32 27}
!526 = !{ptr @ether_parents, !527, !"ether_parents", i1 false, i1 false}
!527 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 654, i32 27}
!528 = !{ptr @di_parents, !529, !"di_parents", i1 false, i1 false}
!529 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 660, i32 27}
!530 = !{ptr @tvd_parents, !531, !"tvd_parents", i1 false, i1 false}
!531 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 671, i32 27}
!532 = !{ptr @i2c_parents, !533, !"i2c_parents", i1 false, i1 false}
!533 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 677, i32 27}
!534 = !{ptr @msdc0p_aes_parents, !535, !"msdc0p_aes_parents", i1 false, i1 false}
!535 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 685, i32 27}
!536 = !{ptr @cmsys_parents, !537, !"cmsys_parents", i1 false, i1 false}
!537 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 692, i32 27}
!538 = !{ptr @gcpu_parents, !539, !"gcpu_parents", i1 false, i1 false}
!539 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 700, i32 27}
!540 = !{ptr @.str.204, !541, !"<string literal>", i1 false, i1 false}
!541 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 712, i32 2}
!542 = !{ptr @aud_apll1_parents, !543, !"aud_apll1_parents", i1 false, i1 false}
!543 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 710, i32 27}
!544 = !{ptr @.str.205, !545, !"<string literal>", i1 false, i1 false}
!545 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 717, i32 2}
!546 = !{ptr @aud_apll2_parents, !547, !"aud_apll2_parents", i1 false, i1 false}
!547 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 715, i32 27}
!548 = !{ptr @.str.206, !549, !"<string literal>", i1 false, i1 false}
!549 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 733, i32 2}
!550 = !{ptr @audull_vtx_parents, !551, !"audull_vtx_parents", i1 false, i1 false}
!551 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 731, i32 27}
!552 = !{ptr @.str.207, !553, !"<string literal>", i1 false, i1 false}
!553 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 723, i32 2}
!554 = !{ptr @.str.208, !555, !"<string literal>", i1 false, i1 false}
!555 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 724, i32 2}
!556 = !{ptr @.str.209, !557, !"<string literal>", i1 false, i1 false}
!557 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 725, i32 2}
!558 = !{ptr @.str.210, !559, !"<string literal>", i1 false, i1 false}
!559 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 726, i32 2}
!560 = !{ptr @apll1_ref_parents, !561, !"apll1_ref_parents", i1 false, i1 false}
!561 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 720, i32 27}
!562 = !{ptr @.str.211, !563, !"<string literal>", i1 false, i1 false}
!563 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 21, i32 8}
!564 = !{ptr @mt2712_clk_lock, !563, !"mt2712_clk_lock", i1 false, i1 false}
!565 = !{ptr @.str.212, !566, !"<string literal>", i1 false, i1 false}
!566 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 938, i32 2}
!567 = !{ptr @.str.213, !568, !"<string literal>", i1 false, i1 false}
!568 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 939, i32 2}
!569 = !{ptr @.str.214, !570, !"<string literal>", i1 false, i1 false}
!570 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 940, i32 2}
!571 = !{ptr @.str.215, !572, !"<string literal>", i1 false, i1 false}
!572 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 941, i32 2}
!573 = !{ptr @.str.216, !574, !"<string literal>", i1 false, i1 false}
!574 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 942, i32 2}
!575 = !{ptr @.str.217, !576, !"<string literal>", i1 false, i1 false}
!576 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 943, i32 2}
!577 = !{ptr @.str.218, !578, !"<string literal>", i1 false, i1 false}
!578 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 944, i32 2}
!579 = !{ptr @.str.219, !580, !"<string literal>", i1 false, i1 false}
!580 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 945, i32 2}
!581 = !{ptr @top_adj_divs, !582, !"top_adj_divs", i1 false, i1 false}
!582 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 937, i32 37}
!583 = !{ptr @.str.220, !584, !"<string literal>", i1 false, i1 false}
!584 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 980, i32 2}
!585 = !{ptr @.str.221, !586, !"<string literal>", i1 false, i1 false}
!586 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 981, i32 2}
!587 = !{ptr @.str.222, !588, !"<string literal>", i1 false, i1 false}
!588 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 982, i32 2}
!589 = !{ptr @.str.223, !590, !"<string literal>", i1 false, i1 false}
!590 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 983, i32 2}
!591 = !{ptr @.str.224, !592, !"<string literal>", i1 false, i1 false}
!592 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 984, i32 2}
!593 = !{ptr @.str.225, !594, !"<string literal>", i1 false, i1 false}
!594 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 985, i32 2}
!595 = !{ptr @.str.226, !596, !"<string literal>", i1 false, i1 false}
!596 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 986, i32 2}
!597 = !{ptr @.str.227, !598, !"<string literal>", i1 false, i1 false}
!598 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 987, i32 2}
!599 = !{ptr @.str.228, !600, !"<string literal>", i1 false, i1 false}
!600 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 989, i32 2}
!601 = !{ptr @.str.229, !602, !"<string literal>", i1 false, i1 false}
!602 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 990, i32 2}
!603 = !{ptr @.str.230, !604, !"<string literal>", i1 false, i1 false}
!604 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 991, i32 2}
!605 = !{ptr @top_clks, !606, !"top_clks", i1 false, i1 false}
!606 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 978, i32 30}
!607 = !{ptr @top0_cg_regs, !608, !"top0_cg_regs", i1 false, i1 false}
!608 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 948, i32 35}
!609 = !{ptr @top1_cg_regs, !610, !"top1_cg_regs", i1 false, i1 false}
!610 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 954, i32 35}
!611 = !{ptr @.str.231, !612, !"<string literal>", i1 false, i1 false}
!612 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1360, i32 3}
!613 = !{ptr @clk_mt2712_infra_probe._entry, !612, !"_entry", i1 false, i1 false}
!614 = !{ptr @clk_mt2712_infra_probe._entry_ptr, !612, !"_entry_ptr", i1 false, i1 false}
!615 = !{ptr @.str.232, !616, !"<string literal>", i1 false, i1 false}
!616 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1010, i32 2}
!617 = !{ptr @.str.233, !618, !"<string literal>", i1 false, i1 false}
!618 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1011, i32 2}
!619 = !{ptr @.str.234, !620, !"<string literal>", i1 false, i1 false}
!620 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1012, i32 2}
!621 = !{ptr @.str.235, !622, !"<string literal>", i1 false, i1 false}
!622 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1013, i32 2}
!623 = !{ptr @.str.236, !624, !"<string literal>", i1 false, i1 false}
!624 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1014, i32 2}
!625 = !{ptr @.str.237, !626, !"<string literal>", i1 false, i1 false}
!626 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1015, i32 2}
!627 = !{ptr @.str.238, !628, !"<string literal>", i1 false, i1 false}
!628 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1016, i32 2}
!629 = !{ptr @infra_clks, !630, !"infra_clks", i1 false, i1 false}
!630 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1009, i32 30}
!631 = !{ptr @infra_cg_regs, !632, !"infra_cg_regs", i1 false, i1 false}
!632 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 994, i32 35}
!633 = !{ptr @.str.239, !634, !"<string literal>", i1 false, i1 false}
!634 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1382, i32 3}
!635 = !{ptr @clk_mt2712_peri_probe._entry, !634, !"_entry", i1 false, i1 false}
!636 = !{ptr @clk_mt2712_peri_probe._entry_ptr, !634, !"_entry_ptr", i1 false, i1 false}
!637 = !{ptr @.str.240, !638, !"<string literal>", i1 false, i1 false}
!638 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1066, i32 2}
!639 = !{ptr @.str.241, !640, !"<string literal>", i1 false, i1 false}
!640 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1068, i32 2}
!641 = !{ptr @.str.242, !642, !"<string literal>", i1 false, i1 false}
!642 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1070, i32 2}
!643 = !{ptr @.str.243, !644, !"<string literal>", i1 false, i1 false}
!644 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1072, i32 2}
!645 = !{ptr @.str.244, !646, !"<string literal>", i1 false, i1 false}
!646 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1074, i32 2}
!647 = !{ptr @.str.245, !648, !"<string literal>", i1 false, i1 false}
!648 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1076, i32 2}
!649 = !{ptr @.str.246, !650, !"<string literal>", i1 false, i1 false}
!650 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1078, i32 2}
!651 = !{ptr @.str.247, !652, !"<string literal>", i1 false, i1 false}
!652 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1080, i32 2}
!653 = !{ptr @.str.248, !654, !"<string literal>", i1 false, i1 false}
!654 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1082, i32 2}
!655 = !{ptr @.str.249, !656, !"<string literal>", i1 false, i1 false}
!656 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1084, i32 2}
!657 = !{ptr @.str.250, !658, !"<string literal>", i1 false, i1 false}
!658 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1086, i32 2}
!659 = !{ptr @.str.251, !660, !"<string literal>", i1 false, i1 false}
!660 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1088, i32 2}
!661 = !{ptr @.str.252, !662, !"<string literal>", i1 false, i1 false}
!662 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1090, i32 2}
!663 = !{ptr @.str.253, !664, !"<string literal>", i1 false, i1 false}
!664 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1092, i32 2}
!665 = !{ptr @.str.254, !666, !"<string literal>", i1 false, i1 false}
!666 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1094, i32 2}
!667 = !{ptr @.str.255, !668, !"<string literal>", i1 false, i1 false}
!668 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1096, i32 2}
!669 = !{ptr @.str.256, !670, !"<string literal>", i1 false, i1 false}
!670 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1098, i32 2}
!671 = !{ptr @.str.257, !672, !"<string literal>", i1 false, i1 false}
!672 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1100, i32 2}
!673 = !{ptr @.str.258, !674, !"<string literal>", i1 false, i1 false}
!674 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1102, i32 2}
!675 = !{ptr @.str.259, !676, !"<string literal>", i1 false, i1 false}
!676 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1104, i32 2}
!677 = !{ptr @.str.260, !678, !"<string literal>", i1 false, i1 false}
!678 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1106, i32 2}
!679 = !{ptr @.str.261, !680, !"<string literal>", i1 false, i1 false}
!680 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1108, i32 2}
!681 = !{ptr @.str.262, !682, !"<string literal>", i1 false, i1 false}
!682 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1110, i32 2}
!683 = !{ptr @.str.263, !684, !"<string literal>", i1 false, i1 false}
!684 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1112, i32 2}
!685 = !{ptr @.str.264, !686, !"<string literal>", i1 false, i1 false}
!686 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1114, i32 2}
!687 = !{ptr @.str.265, !688, !"<string literal>", i1 false, i1 false}
!688 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1116, i32 2}
!689 = !{ptr @.str.266, !690, !"<string literal>", i1 false, i1 false}
!690 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1118, i32 2}
!691 = !{ptr @.str.267, !692, !"<string literal>", i1 false, i1 false}
!692 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1121, i32 2}
!693 = !{ptr @.str.268, !694, !"<string literal>", i1 false, i1 false}
!694 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1123, i32 2}
!695 = !{ptr @.str.269, !696, !"<string literal>", i1 false, i1 false}
!696 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1125, i32 2}
!697 = !{ptr @.str.270, !698, !"<string literal>", i1 false, i1 false}
!698 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1127, i32 2}
!699 = !{ptr @.str.271, !700, !"<string literal>", i1 false, i1 false}
!700 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1129, i32 2}
!701 = !{ptr @.str.272, !702, !"<string literal>", i1 false, i1 false}
!702 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1131, i32 2}
!703 = !{ptr @.str.273, !704, !"<string literal>", i1 false, i1 false}
!704 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1133, i32 2}
!705 = !{ptr @.str.274, !706, !"<string literal>", i1 false, i1 false}
!706 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1135, i32 2}
!707 = !{ptr @.str.275, !708, !"<string literal>", i1 false, i1 false}
!708 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1137, i32 2}
!709 = !{ptr @.str.276, !710, !"<string literal>", i1 false, i1 false}
!710 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1139, i32 2}
!711 = !{ptr @.str.277, !712, !"<string literal>", i1 false, i1 false}
!712 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1141, i32 2}
!713 = !{ptr @.str.278, !714, !"<string literal>", i1 false, i1 false}
!714 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1144, i32 2}
!715 = !{ptr @.str.279, !716, !"<string literal>", i1 false, i1 false}
!716 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1146, i32 2}
!717 = !{ptr @.str.280, !718, !"<string literal>", i1 false, i1 false}
!718 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1148, i32 2}
!719 = !{ptr @.str.281, !720, !"<string literal>", i1 false, i1 false}
!720 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1150, i32 2}
!721 = !{ptr @.str.282, !722, !"<string literal>", i1 false, i1 false}
!722 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1152, i32 2}
!723 = !{ptr @.str.283, !724, !"<string literal>", i1 false, i1 false}
!724 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1154, i32 2}
!725 = !{ptr @.str.284, !726, !"<string literal>", i1 false, i1 false}
!726 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1156, i32 2}
!727 = !{ptr @.str.285, !728, !"<string literal>", i1 false, i1 false}
!728 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1158, i32 2}
!729 = !{ptr @peri_clks, !730, !"peri_clks", i1 false, i1 false}
!730 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1064, i32 30}
!731 = !{ptr @peri0_cg_regs, !732, !"peri0_cg_regs", i1 false, i1 false}
!732 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1019, i32 35}
!733 = !{ptr @peri1_cg_regs, !734, !"peri1_cg_regs", i1 false, i1 false}
!734 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1025, i32 35}
!735 = !{ptr @peri2_cg_regs, !736, !"peri2_cg_regs", i1 false, i1 false}
!736 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1031, i32 35}
!737 = !{ptr @.str.286, !738, !"<string literal>", i1 false, i1 false}
!738 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1399, i32 3}
!739 = !{ptr @clk_mt2712_mcu_probe._entry, !738, !"_entry", i1 false, i1 false}
!740 = !{ptr @clk_mt2712_mcu_probe._entry_ptr, !738, !"_entry_ptr", i1 false, i1 false}
!741 = !{ptr @clk_mt2712_mcu_probe._entry.287, !742, !"_entry", i1 false, i1 false}
!742 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 1411, i32 3}
!743 = !{ptr @clk_mt2712_mcu_probe._entry_ptr.288, !742, !"_entry_ptr", i1 false, i1 false}
!744 = !{ptr @.str.289, !745, !"<string literal>", i1 false, i1 false}
!745 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 927, i32 2}
!746 = !{ptr @.str.290, !747, !"<string literal>", i1 false, i1 false}
!747 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 930, i32 2}
!748 = !{ptr @.str.291, !749, !"<string literal>", i1 false, i1 false}
!749 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 933, i32 2}
!750 = !{ptr @mcu_muxes, !751, !"mcu_muxes", i1 false, i1 false}
!751 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 925, i32 29}
!752 = !{ptr @mcu_mp0_parents, !753, !"mcu_mp0_parents", i1 false, i1 false}
!753 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 904, i32 27}
!754 = !{ptr @mcu_mp2_parents, !755, !"mcu_mp2_parents", i1 false, i1 false}
!755 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 911, i32 27}
!756 = !{ptr @mcu_bus_parents, !757, !"mcu_bus_parents", i1 false, i1 false}
!757 = !{!"../drivers/clk/mediatek/clk-mt2712.c", i32 918, i32 27}
!758 = !{i32 1, !"wchar_size", i32 2}
!759 = !{i32 1, !"min_enum_size", i32 4}
!760 = !{i32 8, !"branch-target-enforcement", i32 0}
!761 = !{i32 8, !"sign-return-address", i32 0}
!762 = !{i32 8, !"sign-return-address-all", i32 0}
!763 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!764 = !{i32 7, !"uwtable", i32 1}
!765 = !{i32 7, !"frame-pointer", i32 2}
!766 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
