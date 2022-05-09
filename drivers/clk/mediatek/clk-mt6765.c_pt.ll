; ModuleID = '/llk/IR_all_yes/drivers/clk/mediatek/clk-mt6765.c_pt.bc'
source_filename = "../drivers/clk/mediatek/clk-mt6765.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.mtk_pll_data = type { i32, ptr, i32, i32, i32, i32, i32, i32, i8, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i8 }
%struct.mtk_gate = type { i32, ptr, ptr, ptr, i32, ptr, i32 }
%struct.mtk_gate_regs = type { i32, i32, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mtk_fixed_clk = type { i32, ptr, ptr, i32 }
%struct.mtk_fixed_factor = type { i32, ptr, ptr, i32, i32 }
%struct.mtk_mux = type { i32, ptr, ptr, i32, i32, i32, i32, i32, i8, i8, i8, i8, ptr, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.list_head = type { ptr, ptr }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@__initcall__kmod_clk_mt6765__183_921_clk_mt6765_init3 = internal global ptr @clk_mt6765_init, section ".initcall3.init", align 4
@clk_mt6765_drv = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @clk_mt6765_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_match_clk_mt6765, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clk-mt6765\00", [21 x i8] zeroinitializer }, align 32
@of_match_clk_mt6765 = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt6765-apmixedsys\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clk_mt6765_apmixed_probe }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt6765-topckgen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clk_mt6765_top_probe }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt6765-infracfg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clk_mt6765_ifr_probe }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@clk_mt6765_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 903, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"could not register clock provider: %s: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clk_mt6765_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/clk/mediatek/clk-mt6765.c\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@clk_mt6765_probe._entry_ptr = internal global ptr @clk_mt6765_probe._entry, section ".printk_index", align 4
@clk_mt6765_apmixed_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.3, i32 783, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\013%s(): ioremap failed\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"clk_mt6765_apmixed_probe\00", [39 x i8] zeroinitializer }, align 32
@clk_mt6765_apmixed_probe._entry_ptr = internal global ptr @clk_mt6765_apmixed_probe._entry, section ".printk_index", align 4
@plls = internal constant { [10 x %struct.mtk_pll_data], [224 x i8] } { [10 x %struct.mtk_pll_data] [%struct.mtk_pll_data { i32 0, ptr @.str.11, i32 540, i32 552, i32 1, i32 544, i32 0, i32 0, i8 0, i32 24, i32 2, ptr null, i32 8388608, i32 1500000000, i32 -494967296, i32 22, i32 8, i32 544, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 1, ptr @.str.12, i32 524, i32 536, i32 1, i32 528, i32 0, i32 0, i8 0, i32 24, i32 2, ptr null, i32 8388608, i32 1500000000, i32 -494967296, i32 22, i32 8, i32 528, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 2, ptr @.str.13, i32 556, i32 568, i32 1, i32 560, i32 0, i32 0, i8 0, i32 24, i32 2, ptr null, i32 8388608, i32 1500000000, i32 -494967296, i32 22, i32 8, i32 560, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 3, ptr @.str.14, i32 572, i32 584, i32 1, i32 576, i32 0, i32 0, i8 0, i32 24, i32 3, ptr null, i32 8388608, i32 1500000000, i32 -494967296, i32 22, i32 8, i32 576, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 4, ptr @.str.15, i32 588, i32 600, i32 1, i32 592, i32 0, i32 0, i8 0, i32 24, i32 0, ptr null, i32 8388608, i32 1500000000, i32 -494967296, i32 22, i32 8, i32 592, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 5, ptr @.str.16, i32 604, i32 616, i32 1, i32 608, i32 0, i32 0, i8 0, i32 24, i32 0, ptr null, i32 8388608, i32 1500000000, i32 -494967296, i32 22, i32 8, i32 608, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 6, ptr @.str.17, i32 620, i32 632, i32 1, i32 624, i32 0, i32 0, i8 0, i32 24, i32 1, ptr null, i32 8388608, i32 1500000000, i32 -494967296, i32 22, i32 8, i32 624, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 7, ptr @.str.18, i32 636, i32 648, i32 1, i32 640, i32 0, i32 0, i8 0, i32 24, i32 0, ptr null, i32 8388608, i32 1500000000, i32 -494967296, i32 22, i32 8, i32 640, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 8, ptr @.str.19, i32 652, i32 668, i32 1, i32 656, i32 64, i32 12, i8 0, i32 24, i32 0, ptr null, i32 8388608, i32 1500000000, i32 -494967296, i32 32, i32 8, i32 660, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 9, ptr @.str.20, i32 672, i32 684, i32 1, i32 676, i32 0, i32 0, i8 0, i32 24, i32 2, ptr null, i32 8388608, i32 1500000000, i32 -494967296, i32 22, i32 8, i32 676, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }], [224 x i8] zeroinitializer }, align 32
@apmixed_clks = internal constant { [10 x %struct.mtk_gate], [72 x i8] } { [10 x %struct.mtk_gate] [%struct.mtk_gate { i32 12, ptr @.str.21, ptr @.str.22, ptr @apmixed_cg_regs, i32 4, ptr @mtk_clk_gate_ops_no_setclr_inv, i32 0 }, %struct.mtk_gate { i32 13, ptr @.str.23, ptr @.str.22, ptr @apmixed_cg_regs, i32 5, ptr @mtk_clk_gate_ops_no_setclr_inv, i32 0 }, %struct.mtk_gate { i32 14, ptr @.str.24, ptr @.str.22, ptr @apmixed_cg_regs, i32 6, ptr @mtk_clk_gate_ops_no_setclr_inv, i32 0 }, %struct.mtk_gate { i32 15, ptr @.str.25, ptr @.str.22, ptr @apmixed_cg_regs, i32 7, ptr @mtk_clk_gate_ops_no_setclr_inv, i32 0 }, %struct.mtk_gate { i32 16, ptr @.str.26, ptr @.str.22, ptr @apmixed_cg_regs, i32 8, ptr @mtk_clk_gate_ops_no_setclr_inv, i32 0 }, %struct.mtk_gate { i32 17, ptr @.str.27, ptr @.str.22, ptr @apmixed_cg_regs, i32 9, ptr @mtk_clk_gate_ops_no_setclr_inv, i32 0 }, %struct.mtk_gate { i32 18, ptr @.str.28, ptr @.str.22, ptr @apmixed_cg_regs, i32 11, ptr @mtk_clk_gate_ops_no_setclr_inv, i32 0 }, %struct.mtk_gate { i32 19, ptr @.str.29, ptr @.str.22, ptr @apmixed_cg_regs, i32 13, ptr @mtk_clk_gate_ops_no_setclr_inv, i32 0 }, %struct.mtk_gate { i32 20, ptr @.str.30, ptr @.str.22, ptr @apmixed_cg_regs, i32 14, ptr @mtk_clk_gate_ops_no_setclr_inv, i32 0 }, %struct.mtk_gate { i32 21, ptr @.str.31, ptr @.str.22, ptr @apmixed_cg_regs, i32 16, ptr @mtk_clk_gate_ops_no_setclr_inv, i32 0 }], [72 x i8] zeroinitializer }, align 32
@clk_mt6765_apmixed_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.7, ptr @.str.3, i32 797, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s(): could not register clock provider: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@clk_mt6765_apmixed_probe._entry_ptr.10 = internal global ptr @clk_mt6765_apmixed_probe._entry.8, section ".printk_index", align 4
@apmixed_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"armpll_l\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"armpll\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ccipll\00", [25 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mainpll\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfgpll\00", [25 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mmpll\00", [26 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"univ2pll\00", [23 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"msdcpll\00", [24 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"apll1\00", [26 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mpll\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"apmixed_ssusb26m\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"f_f26m_ck\00", [22 x i8] zeroinitializer }, align 32
@apmixed_cg_regs = internal constant { %struct.mtk_gate_regs, [20 x i8] } { %struct.mtk_gate_regs { i32 20, i32 20, i32 20 }, [20 x i8] zeroinitializer }, align 32
@mtk_clk_gate_ops_no_setclr_inv = external dso_local constant %struct.clk_ops, align 4
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"apmixed_appll26m\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"apmixed_mipic026m\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"apmixed_mdpll26m\00", [47 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"apmixed_mmsys26m\00", [47 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"apmixed_ufs26m\00", [17 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"apmixed_mipic126m\00", [46 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"apmixed_mempll26m\00", [46 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"apmixed_lvpll26m\00", [47 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"apmixed_mipid026m\00", [46 x i8] zeroinitializer }, align 32
@clk_mt6765_top_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.32, ptr @.str.3, i32 818, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"clk_mt6765_top_probe\00", [43 x i8] zeroinitializer }, align 32
@clk_mt6765_top_probe._entry_ptr = internal global ptr @clk_mt6765_top_probe._entry, section ".printk_index", align 4
@fixed_clks = internal constant { [3 x %struct.mtk_fixed_clk], [48 x i8] } { [3 x %struct.mtk_fixed_clk] [%struct.mtk_fixed_clk { i32 52, ptr @.str.35, ptr @.str.36, i32 32768 }, %struct.mtk_fixed_clk { i32 0, ptr @.str.37, ptr @.str.38, i32 26000000 }, %struct.mtk_fixed_clk { i32 51, ptr @.str.39, ptr null, i32 466000000 }], [48 x i8] zeroinitializer }, align 32
@top_divs = internal constant { [76 x %struct.mtk_fixed_factor], [368 x i8] } { [76 x %struct.mtk_fixed_factor] [%struct.mtk_fixed_factor { i32 0, ptr @.str.40, ptr @.str.14, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 1, ptr @.str.41, ptr @.str.14, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 2, ptr @.str.42, ptr @.str.41, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 3, ptr @.str.43, ptr @.str.41, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 4, ptr @.str.44, ptr @.str.41, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 5, ptr @.str.45, ptr @.str.41, i32 1, i32 16 }, %struct.mtk_fixed_factor { i32 6, ptr @.str.46, ptr @.str.14, i32 1, i32 3 }, %struct.mtk_fixed_factor { i32 7, ptr @.str.47, ptr @.str.46, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 8, ptr @.str.48, ptr @.str.46, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 9, ptr @.str.49, ptr @.str.46, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 10, ptr @.str.50, ptr @.str.14, i32 1, i32 5 }, %struct.mtk_fixed_factor { i32 11, ptr @.str.51, ptr @.str.50, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 12, ptr @.str.52, ptr @.str.50, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 13, ptr @.str.53, ptr @.str.14, i32 1, i32 7 }, %struct.mtk_fixed_factor { i32 14, ptr @.str.54, ptr @.str.53, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 15, ptr @.str.55, ptr @.str.53, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 21, ptr @.str.56, ptr @.str.17, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 16, ptr @.str.57, ptr @.str.56, i32 2, i32 13 }, %struct.mtk_fixed_factor { i32 17, ptr @.str.58, ptr @.str.57, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 18, ptr @.str.59, ptr @.str.57, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 19, ptr @.str.60, ptr @.str.57, i32 1, i32 16 }, %struct.mtk_fixed_factor { i32 20, ptr @.str.61, ptr @.str.57, i32 1, i32 32 }, %struct.mtk_fixed_factor { i32 22, ptr @.str.62, ptr @.str.56, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 23, ptr @.str.63, ptr @.str.62, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 24, ptr @.str.64, ptr @.str.62, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 25, ptr @.str.65, ptr @.str.56, i32 1, i32 3 }, %struct.mtk_fixed_factor { i32 26, ptr @.str.66, ptr @.str.65, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 27, ptr @.str.67, ptr @.str.65, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 28, ptr @.str.68, ptr @.str.65, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 29, ptr @.str.69, ptr @.str.65, i32 1, i32 32 }, %struct.mtk_fixed_factor { i32 30, ptr @.str.70, ptr @.str.56, i32 1, i32 5 }, %struct.mtk_fixed_factor { i32 31, ptr @.str.71, ptr @.str.70, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 32, ptr @.str.72, ptr @.str.70, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 33, ptr @.str.73, ptr @.str.16, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 34, ptr @.str.74, ptr @.str.73, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 35, ptr @.str.75, ptr @.str.20, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 36, ptr @.str.76, ptr @.str.75, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 37, ptr @.str.77, ptr @.str.75, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 38, ptr @.str.78, ptr @.str.15, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 39, ptr @.str.79, ptr @.str.18, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 40, ptr @.str.80, ptr @.str.79, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 41, ptr @.str.81, ptr @.str.19, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 42, ptr @.str.82, ptr @.str.81, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 43, ptr @.str.83, ptr @.str.81, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 44, ptr @.str.84, ptr @.str.81, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 45, ptr @.str.85, ptr @.str.86, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 46, ptr @.str.87, ptr @.str.85, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 47, ptr @.str.88, ptr @.str.85, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 48, ptr @.str.89, ptr @.str.85, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 49, ptr @.str.90, ptr @.str.85, i32 1, i32 16 }, %struct.mtk_fixed_factor { i32 50, ptr @.str.91, ptr @.str.85, i32 1, i32 32 }, %struct.mtk_fixed_factor { i32 53, ptr @.str.22, ptr @.str.37, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 54, ptr @.str.92, ptr @.str.93, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 55, ptr @.str.94, ptr @.str.95, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 56, ptr @.str.96, ptr @.str.97, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 57, ptr @.str.98, ptr @.str.99, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 58, ptr @.str.100, ptr @.str.101, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 59, ptr @.str.102, ptr @.str.103, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 60, ptr @.str.104, ptr @.str.105, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 61, ptr @.str.106, ptr @.str.107, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 62, ptr @.str.108, ptr @.str.109, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 63, ptr @.str.110, ptr @.str.111, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 64, ptr @.str.112, ptr @.str.113, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 65, ptr @.str.114, ptr @.str.115, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 66, ptr @.str.116, ptr @.str.117, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 67, ptr @.str.118, ptr @.str.119, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 68, ptr @.str.120, ptr @.str.121, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 69, ptr @.str.122, ptr @.str.123, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 70, ptr @.str.124, ptr @.str.125, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 71, ptr @.str.126, ptr @.str.127, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 72, ptr @.str.128, ptr @.str.66, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 73, ptr @.str.129, ptr @.str.41, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 74, ptr @.str.130, ptr @.str.40, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 75, ptr @.str.131, ptr @.str.62, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 76, ptr @.str.132, ptr @.str.58, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 77, ptr @.str.133, ptr @.str.58, i32 1, i32 1 }], [368 x i8] zeroinitializer }, align 32
@top_muxes = internal constant { [30 x %struct.mtk_mux], [344 x i8] } { [30 x %struct.mtk_mux] [%struct.mtk_mux { i32 96, ptr @.str.93, ptr @axi_parents, i32 2048, i32 64, i32 68, i32 72, i32 4, i8 0, i8 2, i8 7, i8 0, ptr @mtk_mux_gate_clr_set_upd_ops, i8 4 }, %struct.mtk_mux { i32 97, ptr @.str.134, ptr @mem_parents, i32 2048, i32 64, i32 68, i32 72, i32 4, i8 8, i8 2, i8 15, i8 1, ptr @mtk_mux_gate_clr_set_upd_ops, i8 3 }, %struct.mtk_mux { i32 98, ptr @.str.95, ptr @mm_parents, i32 4, i32 64, i32 68, i32 72, i32 4, i8 16, i8 3, i8 23, i8 2, ptr @mtk_mux_gate_clr_set_upd_ops, i8 8 }, %struct.mtk_mux { i32 99, ptr @.str.97, ptr @scp_parents, i32 4, i32 64, i32 68, i32 72, i32 4, i8 24, i8 3, i8 31, i8 3, ptr @mtk_mux_gate_clr_set_upd_ops, i8 7 }, %struct.mtk_mux { i32 100, ptr @.str.99, ptr @mfg_parents, i32 4, i32 80, i32 84, i32 88, i32 4, i8 0, i8 2, i8 7, i8 4, ptr @mtk_mux_gate_clr_set_upd_ops, i8 4 }, %struct.mtk_mux { i32 101, ptr @.str.135, ptr @atb_parents, i32 4, i32 80, i32 84, i32 88, i32 4, i8 8, i8 2, i8 15, i8 5, ptr @mtk_mux_gate_clr_set_upd_ops, i8 3 }, %struct.mtk_mux { i32 102, ptr @.str.136, ptr @camtg_parents, i32 4, i32 80, i32 84, i32 88, i32 4, i8 16, i8 3, i8 23, i8 6, ptr @mtk_mux_gate_clr_set_upd_ops, i8 7 }, %struct.mtk_mux { i32 103, ptr @.str.137, ptr @camtg_parents, i32 4, i32 80, i32 84, i32 88, i32 4, i8 24, i8 3, i8 31, i8 7, ptr @mtk_mux_gate_clr_set_upd_ops, i8 7 }, %struct.mtk_mux { i32 104, ptr @.str.138, ptr @camtg_parents, i32 4, i32 96, i32 100, i32 104, i32 4, i8 0, i8 3, i8 7, i8 8, ptr @mtk_mux_gate_clr_set_upd_ops, i8 7 }, %struct.mtk_mux { i32 105, ptr @.str.139, ptr @camtg_parents, i32 4, i32 96, i32 100, i32 104, i32 4, i8 8, i8 3, i8 15, i8 9, ptr @mtk_mux_gate_clr_set_upd_ops, i8 7 }, %struct.mtk_mux { i32 106, ptr @.str.101, ptr @uart_parents, i32 4, i32 96, i32 100, i32 104, i32 4, i8 16, i8 1, i8 23, i8 10, ptr @mtk_mux_gate_clr_set_upd_ops, i8 2 }, %struct.mtk_mux { i32 107, ptr @.str.103, ptr @spi_parents, i32 4, i32 96, i32 100, i32 104, i32 4, i8 24, i8 2, i8 31, i8 11, ptr @mtk_mux_gate_clr_set_upd_ops, i8 4 }, %struct.mtk_mux { i32 108, ptr @.str.140, ptr @msdc5hclk_parents, i32 4, i32 112, i32 116, i32 120, i32 4, i8 0, i8 2, i8 7, i8 12, ptr @mtk_mux_gate_clr_set_upd_ops, i8 4 }, %struct.mtk_mux { i32 109, ptr @.str.105, ptr @msdc50_0_parents, i32 4, i32 112, i32 116, i32 120, i32 4, i8 8, i8 3, i8 15, i8 13, ptr @mtk_mux_gate_clr_set_upd_ops, i8 8 }, %struct.mtk_mux { i32 110, ptr @.str.107, ptr @msdc30_1_parents, i32 4, i32 112, i32 116, i32 120, i32 4, i8 16, i8 3, i8 23, i8 14, ptr @mtk_mux_gate_clr_set_upd_ops, i8 8 }, %struct.mtk_mux { i32 111, ptr @.str.109, ptr @audio_parents, i32 4, i32 112, i32 116, i32 120, i32 4, i8 24, i8 2, i8 31, i8 15, ptr @mtk_mux_gate_clr_set_upd_ops, i8 4 }, %struct.mtk_mux { i32 112, ptr @.str.141, ptr @aud_intbus_parents, i32 4, i32 128, i32 132, i32 136, i32 4, i8 0, i8 2, i8 7, i8 16, ptr @mtk_mux_gate_clr_set_upd_ops, i8 3 }, %struct.mtk_mux { i32 113, ptr @.str.111, ptr @aud_1_parents, i32 4, i32 128, i32 132, i32 136, i32 4, i8 8, i8 1, i8 15, i8 17, ptr @mtk_mux_gate_clr_set_upd_ops, i8 2 }, %struct.mtk_mux { i32 114, ptr @.str.113, ptr @aud_engen1_parents, i32 4, i32 128, i32 132, i32 136, i32 4, i8 16, i8 2, i8 23, i8 18, ptr @mtk_mux_gate_clr_set_upd_ops, i8 4 }, %struct.mtk_mux { i32 115, ptr @.str.115, ptr @disp_pwm_parents, i32 4, i32 128, i32 132, i32 136, i32 4, i8 24, i8 2, i8 31, i8 19, ptr @mtk_mux_gate_clr_set_upd_ops, i8 4 }, %struct.mtk_mux { i32 116, ptr @.str.117, ptr @sspm_parents, i32 4, i32 144, i32 148, i32 152, i32 4, i8 0, i8 2, i8 7, i8 20, ptr @mtk_mux_gate_clr_set_upd_ops, i8 3 }, %struct.mtk_mux { i32 117, ptr @.str.119, ptr @dxcc_parents, i32 4, i32 144, i32 148, i32 152, i32 4, i8 8, i8 2, i8 15, i8 21, ptr @mtk_mux_gate_clr_set_upd_ops, i8 4 }, %struct.mtk_mux { i32 118, ptr @.str.142, ptr @usb_top_parents, i32 4, i32 144, i32 148, i32 152, i32 4, i8 16, i8 1, i8 23, i8 22, ptr @mtk_mux_gate_clr_set_upd_ops, i8 2 }, %struct.mtk_mux { i32 119, ptr @.str.143, ptr @spm_parents, i32 4, i32 144, i32 148, i32 152, i32 4, i8 24, i8 1, i8 31, i8 23, ptr @mtk_mux_gate_clr_set_upd_ops, i8 2 }, %struct.mtk_mux { i32 120, ptr @.str.121, ptr @i2c_parents, i32 4, i32 160, i32 164, i32 168, i32 4, i8 0, i8 3, i8 7, i8 24, ptr @mtk_mux_gate_clr_set_upd_ops, i8 5 }, %struct.mtk_mux { i32 121, ptr @.str.123, ptr @pwm_parents, i32 4, i32 160, i32 164, i32 168, i32 4, i8 8, i8 2, i8 15, i8 25, ptr @mtk_mux_gate_clr_set_upd_ops, i8 3 }, %struct.mtk_mux { i32 122, ptr @.str.125, ptr @seninf_parents, i32 4, i32 160, i32 164, i32 168, i32 4, i8 16, i8 2, i8 23, i8 26, ptr @mtk_mux_gate_clr_set_upd_ops, i8 4 }, %struct.mtk_mux { i32 123, ptr @.str.127, ptr @aes_fde_parents, i32 4, i32 160, i32 164, i32 168, i32 4, i8 24, i8 3, i8 31, i8 27, ptr @mtk_mux_gate_clr_set_upd_ops, i8 6 }, %struct.mtk_mux { i32 124, ptr @.str.144, ptr @ulposc_parents, i32 2048, i32 176, i32 180, i32 184, i32 4, i8 0, i8 3, i8 7, i8 28, ptr @mtk_mux_gate_clr_set_upd_ops, i8 5 }, %struct.mtk_mux { i32 125, ptr @.str.145, ptr @camtm_parents, i32 4, i32 176, i32 180, i32 184, i32 4, i8 8, i8 2, i8 15, i8 29, ptr @mtk_mux_gate_clr_set_upd_ops, i8 4 }], [344 x i8] zeroinitializer }, align 32
@mt6765_clk_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.146, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@top_clks = internal constant { [16 x %struct.mtk_gate], [96 x i8] } { [16 x %struct.mtk_gate] [%struct.mtk_gate { i32 92, ptr @.str.147, ptr @.str.35, ptr @top0_cg_regs, i32 8, ptr @mtk_clk_gate_ops_no_setclr, i32 0 }, %struct.mtk_gate { i32 93, ptr @.str.148, ptr @.str.22, ptr @top0_cg_regs, i32 9, ptr @mtk_clk_gate_ops_no_setclr, i32 0 }, %struct.mtk_gate { i32 94, ptr @.str.149, ptr @.str.35, ptr @top0_cg_regs, i32 10, ptr @mtk_clk_gate_ops_no_setclr, i32 0 }, %struct.mtk_gate { i32 95, ptr @.str.150, ptr @.str.22, ptr @top0_cg_regs, i32 11, ptr @mtk_clk_gate_ops_no_setclr, i32 0 }, %struct.mtk_gate { i32 82, ptr @.str.151, ptr @.str.129, ptr @top1_cg_regs, i32 3, ptr @mtk_clk_gate_ops_no_setclr_inv, i32 0 }, %struct.mtk_gate { i32 83, ptr @.str.152, ptr @.str.130, ptr @top1_cg_regs, i32 4, ptr @mtk_clk_gate_ops_no_setclr_inv, i32 0 }, %struct.mtk_gate { i32 84, ptr @.str.153, ptr @.str.131, ptr @top1_cg_regs, i32 5, ptr @mtk_clk_gate_ops_no_setclr_inv, i32 0 }, %struct.mtk_gate { i32 85, ptr @.str.154, ptr @.str.66, ptr @top1_cg_regs, i32 6, ptr @mtk_clk_gate_ops_no_setclr_inv, i32 0 }, %struct.mtk_gate { i32 86, ptr @.str.155, ptr @.str.132, ptr @top1_cg_regs, i32 8, ptr @mtk_clk_gate_ops_no_setclr_inv, i32 0 }, %struct.mtk_gate { i32 87, ptr @.str.156, ptr @.str.133, ptr @top1_cg_regs, i32 9, ptr @mtk_clk_gate_ops_no_setclr_inv, i32 0 }, %struct.mtk_gate { i32 90, ptr @.str.157, ptr @.str.22, ptr @top1_cg_regs, i32 12, ptr @mtk_clk_gate_ops_no_setclr_inv, i32 0 }, %struct.mtk_gate { i32 91, ptr @.str.158, ptr @.str.128, ptr @top1_cg_regs, i32 16, ptr @mtk_clk_gate_ops_no_setclr_inv, i32 0 }, %struct.mtk_gate { i32 78, ptr @.str.159, ptr @.str.110, ptr @top2_cg_regs, i32 2, ptr @mtk_clk_gate_ops_no_setclr, i32 0 }, %struct.mtk_gate { i32 79, ptr @.str.160, ptr @.str.110, ptr @top2_cg_regs, i32 3, ptr @mtk_clk_gate_ops_no_setclr, i32 0 }, %struct.mtk_gate { i32 80, ptr @.str.161, ptr @.str.110, ptr @top2_cg_regs, i32 4, ptr @mtk_clk_gate_ops_no_setclr, i32 0 }, %struct.mtk_gate { i32 81, ptr @.str.162, ptr @.str.110, ptr @top2_cg_regs, i32 5, ptr @mtk_clk_gate_ops_no_setclr, i32 0 }], [96 x i8] zeroinitializer }, align 32
@clk_mt6765_top_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.32, ptr @.str.3, i32 837, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@clk_mt6765_top_probe._entry_ptr.34 = internal global ptr @clk_mt6765_top_probe._entry.33, section ".printk_index", align 4
@cksys_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"f_frtc_ck\00", [22 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"clk32k\00", [25 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clk_26m_ck\00", [21 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"clk26m\00", [25 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dmpll_ck\00", [23 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"syspll_ck\00", [22 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"syspll_d2\00", [22 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"syspll1_d2\00", [21 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"syspll1_d4\00", [21 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"syspll1_d8\00", [21 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"syspll1_d16\00", [20 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"syspll_d3\00", [22 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"syspll2_d2\00", [21 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"syspll2_d4\00", [21 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"syspll2_d8\00", [21 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"syspll_d5\00", [22 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"syspll3_d2\00", [21 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"syspll3_d4\00", [21 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"syspll_d7\00", [22 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"syspll4_d2\00", [21 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"syspll4_d4\00", [21 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"univpll\00", [24 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"usb20_192m_ck\00", [18 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"usb20_192m_d4\00", [18 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"usb20_192m_d8\00", [18 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"usb20_192m_d16\00", [17 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"usb20_192m_d32\00", [17 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"univpll_d2\00", [21 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univpll1_d2\00", [20 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univpll1_d4\00", [20 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"univpll_d3\00", [21 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univpll2_d2\00", [20 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univpll2_d4\00", [20 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univpll2_d8\00", [20 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"univpll2_d32\00", [19 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"univpll_d5\00", [21 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univpll3_d2\00", [20 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univpll3_d4\00", [20 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmpll_ck\00", [23 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmpll_d2\00", [23 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mpll_ck\00", [24 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mpll_104m_div\00", [18 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"mpll_52m_div\00", [19 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mfgpll_ck\00", [22 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"msdcpll_ck\00", [21 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"msdcpll_d2\00", [21 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apll1_ck\00", [23 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apll1_d2\00", [23 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apll1_d4\00", [23 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apll1_d8\00", [23 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ulposc1_ck\00", [21 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ulposc1\00", [24 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ulposc1_d2\00", [21 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ulposc1_d4\00", [21 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ulposc1_d8\00", [21 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ulposc1_d16\00", [20 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ulposc1_d32\00", [20 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"axi_ck\00", [25 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"axi_sel\00", [24 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mm_ck\00", [26 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mm_sel\00", [25 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"scp_ck\00", [25 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"scp_sel\00", [24 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfg_ck\00", [25 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mfg_sel\00", [24 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"f_fuart_ck\00", [21 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uart_sel\00", [23 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"spi_ck\00", [25 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"spi_sel\00", [24 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"msdc50_0_ck\00", [20 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"msdc50_0_sel\00", [19 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"msdc30_1_ck\00", [20 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"msdc30_1_sel\00", [19 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"audio_ck\00", [23 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"audio_sel\00", [22 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"aud_1_ck\00", [23 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"aud_1_sel\00", [22 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"aud_engen1_ck\00", [18 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aud_engen1_sel\00", [17 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"f_fdisp_pwm_ck\00", [17 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"disp_pwm_sel\00", [19 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sspm_ck\00", [24 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sspm_sel\00", [23 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dxcc_ck\00", [24 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dxcc_sel\00", [23 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"i2c_ck\00", [25 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i2c_sel\00", [24 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"f_fpwm_ck\00", [22 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pwm_sel\00", [24 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"f_fseninf_ck\00", [19 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"seninf_sel\00", [21 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"aes_fde_ck\00", [21 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"aes_fde_sel\00", [20 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"f_bist2fpc_ck\00", [18 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"arm_div_pll0\00", [19 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"arm_div_pll1\00", [19 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"arm_div_pll2\00", [19 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"usb20_48m_div\00", [18 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"univ_48m_div\00", [19 x i8] zeroinitializer }, align 32
@axi_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.38, ptr @.str.53, ptr @.str.43, ptr @.str.51], [16 x i8] zeroinitializer }, align 32
@mtk_mux_gate_clr_set_upd_ops = external dso_local constant %struct.clk_ops, align 4
@.str.134 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mem_sel\00", [24 x i8] zeroinitializer }, align 32
@mem_parents = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.38, ptr @.str.39, ptr @.str.81], [20 x i8] zeroinitializer }, align 32
@mm_parents = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.38, ptr @.str.73, ptr @.str.42, ptr @.str.50, ptr @.str.43, ptr @.str.70, ptr @.str.63, ptr @.str.74], [32 x i8] zeroinitializer }, align 32
@scp_parents = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.38, ptr @.str.54, ptr @.str.66, ptr @.str.42, ptr @.str.63, ptr @.str.46, ptr @.str.65], [36 x i8] zeroinitializer }, align 32
@mfg_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.38, ptr @.str.78, ptr @.str.46, ptr @.str.65], [16 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"atb_sel\00", [24 x i8] zeroinitializer }, align 32
@atb_parents = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.38, ptr @.str.43, ptr @.str.42], [20 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"camtg_sel\00", [22 x i8] zeroinitializer }, align 32
@camtg_parents = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.38, ptr @.str.59, ptr @.str.68, ptr @.str.58, ptr @.str.69, ptr @.str.60, ptr @.str.61], [36 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"camtg1_sel\00", [21 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"camtg2_sel\00", [21 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"camtg3_sel\00", [21 x i8] zeroinitializer }, align 32
@uart_parents = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.38, ptr @.str.68], [24 x i8] zeroinitializer }, align 32
@spi_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.38, ptr @.str.51, ptr @.str.54, ptr @.str.48], [16 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"msdc5hclk\00", [22 x i8] zeroinitializer }, align 32
@msdc5hclk_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.38, ptr @.str.42, ptr @.str.64, ptr @.str.47], [16 x i8] zeroinitializer }, align 32
@msdc50_0_parents = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.38, ptr @.str.79, ptr @.str.47, ptr @.str.54, ptr @.str.63, ptr @.str.42, ptr @.str.70, ptr @.str.64], [32 x i8] zeroinitializer }, align 32
@msdc30_1_parents = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.38, ptr @.str.80, ptr @.str.66, ptr @.str.47, ptr @.str.43, ptr @.str.64, ptr @.str.58, ptr @.str.48], [32 x i8] zeroinitializer }, align 32
@audio_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.38, ptr @.str.52, ptr @.str.55, ptr @.str.45], [16 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aud_intbus_sel\00", [17 x i8] zeroinitializer }, align 32
@aud_intbus_parents = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.38, ptr @.str.43, ptr @.str.54], [20 x i8] zeroinitializer }, align 32
@aud_1_parents = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.38, ptr @.str.81], [24 x i8] zeroinitializer }, align 32
@aud_engen1_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.38, ptr @.str.82, ptr @.str.83, ptr @.str.84], [16 x i8] zeroinitializer }, align 32
@disp_pwm_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.38, ptr @.str.67, ptr @.str.87, ptr @.str.89], [16 x i8] zeroinitializer }, align 32
@sspm_parents = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.38, ptr @.str.42, ptr @.str.46], [20 x i8] zeroinitializer }, align 32
@dxcc_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.38, ptr @.str.42, ptr @.str.43, ptr @.str.44], [16 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usb_top_sel\00", [20 x i8] zeroinitializer }, align 32
@usb_top_parents = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.38, ptr @.str.72], [24 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"spm_sel\00", [24 x i8] zeroinitializer }, align 32
@spm_parents = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.38, ptr @.str.44], [24 x i8] zeroinitializer }, align 32
@i2c_parents = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.38, ptr @.str.72, ptr @.str.71, ptr @.str.44, ptr @.str.49], [44 x i8] zeroinitializer }, align 32
@pwm_parents = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.38, ptr @.str.72, ptr @.str.44], [20 x i8] zeroinitializer }, align 32
@seninf_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.38, ptr @.str.64, ptr @.str.63, ptr @.str.66], [16 x i8] zeroinitializer }, align 32
@aes_fde_parents = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.38, ptr @.str.79, ptr @.str.65, ptr @.str.66, ptr @.str.63, ptr @.str.42], [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ulposc_sel\00", [21 x i8] zeroinitializer }, align 32
@ulposc_parents = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.38, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91], [44 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"camtm_sel\00", [22 x i8] zeroinitializer }, align 32
@camtm_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.38, ptr @.str.64, ptr @.str.63, ptr @.str.66], [16 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mt6765_clk_lock\00", [16 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"md_32k\00", [25 x i8] zeroinitializer }, align 32
@top0_cg_regs = internal constant { %struct.mtk_gate_regs, [20 x i8] } zeroinitializer, align 32
@mtk_clk_gate_ops_no_setclr = external dso_local constant %struct.clk_ops, align 4
@.str.148 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"md_26m\00", [25 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"md2_32k\00", [24 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"md2_26m\00", [24 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"arm_div_pll0_en\00", [16 x i8] zeroinitializer }, align 32
@top1_cg_regs = internal constant { %struct.mtk_gate_regs, [20 x i8] } { %struct.mtk_gate_regs { i32 260, i32 260, i32 260 }, [20 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"arm_div_pll1_en\00", [16 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"arm_div_pll2_en\00", [16 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"drc_en\00", [25 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"usb20_48m_en\00", [19 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"univpll_48m_en\00", [17 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ufs_sap\00", [24 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bist2fpc\00", [23 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"apll12_div0\00", [20 x i8] zeroinitializer }, align 32
@top2_cg_regs = internal constant { %struct.mtk_gate_regs, [20 x i8] } { %struct.mtk_gate_regs { i32 800, i32 800, i32 800 }, [20 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"apll12_div1\00", [20 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"apll12_div2\00", [20 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"apll12_div3\00", [20 x i8] zeroinitializer }, align 32
@clk_mt6765_ifr_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.163, ptr @.str.3, i32 858, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"clk_mt6765_ifr_probe\00", [43 x i8] zeroinitializer }, align 32
@clk_mt6765_ifr_probe._entry_ptr = internal global ptr @clk_mt6765_ifr_probe._entry, section ".printk_index", align 4
@ifr_clks = internal constant { [63 x %struct.mtk_gate], [444 x i8] } { [63 x %struct.mtk_gate] [%struct.mtk_gate { i32 0, ptr @.str.166, ptr @.str.92, ptr @ifr2_cg_regs, i32 8, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 1, ptr @.str.167, ptr @.str.92, ptr @ifr2_cg_regs, i32 9, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 2, ptr @.str.168, ptr @.str.92, ptr @ifr2_cg_regs, i32 10, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 3, ptr @.str.169, ptr @.str.120, ptr @ifr2_cg_regs, i32 11, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 4, ptr @.str.170, ptr @.str.120, ptr @ifr2_cg_regs, i32 12, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 5, ptr @.str.171, ptr @.str.120, ptr @ifr2_cg_regs, i32 13, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 6, ptr @.str.172, ptr @.str.120, ptr @ifr2_cg_regs, i32 14, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 7, ptr @.str.173, ptr @.str.92, ptr @ifr2_cg_regs, i32 15, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 8, ptr @.str.174, ptr @.str.122, ptr @ifr2_cg_regs, i32 16, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 9, ptr @.str.175, ptr @.str.122, ptr @ifr2_cg_regs, i32 17, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 10, ptr @.str.176, ptr @.str.122, ptr @ifr2_cg_regs, i32 18, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 11, ptr @.str.177, ptr @.str.122, ptr @ifr2_cg_regs, i32 19, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 12, ptr @.str.178, ptr @.str.122, ptr @ifr2_cg_regs, i32 20, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 13, ptr @.str.179, ptr @.str.122, ptr @ifr2_cg_regs, i32 21, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 14, ptr @.str.180, ptr @.str.100, ptr @ifr2_cg_regs, i32 22, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 15, ptr @.str.181, ptr @.str.100, ptr @ifr2_cg_regs, i32 23, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 16, ptr @.str.182, ptr @.str.22, ptr @ifr2_cg_regs, i32 27, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 17, ptr @.str.183, ptr @.str.92, ptr @ifr2_cg_regs, i32 28, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 18, ptr @.str.184, ptr @.str.92, ptr @ifr2_cg_regs, i32 31, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 19, ptr @.str.185, ptr @.str.102, ptr @ifr3_cg_regs, i32 1, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 20, ptr @.str.186, ptr @.str.140, ptr @ifr3_cg_regs, i32 2, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 21, ptr @.str.187, ptr @.str.92, ptr @ifr3_cg_regs, i32 4, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 22, ptr @.str.188, ptr @.str.92, ptr @ifr3_cg_regs, i32 9, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 23, ptr @.str.189, ptr @.str.22, ptr @ifr3_cg_regs, i32 10, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 24, ptr @.str.190, ptr @.str.92, ptr @ifr3_cg_regs, i32 12, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 25, ptr @.str.191, ptr @.str.92, ptr @ifr3_cg_regs, i32 13, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 26, ptr @.str.192, ptr @.str.22, ptr @ifr3_cg_regs, i32 14, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 27, ptr @.str.193, ptr @.str.92, ptr @ifr3_cg_regs, i32 18, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 28, ptr @.str.194, ptr @.str.92, ptr @ifr3_cg_regs, i32 20, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 29, ptr @.str.195, ptr @.str.92, ptr @ifr3_cg_regs, i32 23, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 30, ptr @.str.196, ptr @.str.92, ptr @ifr3_cg_regs, i32 25, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 31, ptr @.str.197, ptr @.str.92, ptr @ifr3_cg_regs, i32 26, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 32, ptr @.str.198, ptr @.str.22, ptr @ifr4_cg_regs, i32 0, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 33, ptr @.str.199, ptr @.str.114, ptr @ifr4_cg_regs, i32 2, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 34, ptr @.str.200, ptr @.str.92, ptr @ifr4_cg_regs, i32 3, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 35, ptr @.str.201, ptr @.str.22, ptr @ifr4_cg_regs, i32 4, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 36, ptr @.str.202, ptr @.str.102, ptr @ifr4_cg_regs, i32 6, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 37, ptr @.str.203, ptr @.str.120, ptr @ifr4_cg_regs, i32 7, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 38, ptr @.str.204, ptr @.str.102, ptr @ifr4_cg_regs, i32 9, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 39, ptr @.str.205, ptr @.str.102, ptr @ifr4_cg_regs, i32 10, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 40, ptr @.str.206, ptr @.str.120, ptr @ifr4_cg_regs, i32 18, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 41, ptr @.str.207, ptr @.str.120, ptr @ifr4_cg_regs, i32 19, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 42, ptr @.str.208, ptr @.str.120, ptr @ifr4_cg_regs, i32 20, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 43, ptr @.str.209, ptr @.str.120, ptr @ifr4_cg_regs, i32 21, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 44, ptr @.str.210, ptr @.str.120, ptr @ifr4_cg_regs, i32 22, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 45, ptr @.str.211, ptr @.str.120, ptr @ifr4_cg_regs, i32 23, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 46, ptr @.str.212, ptr @.str.120, ptr @ifr4_cg_regs, i32 24, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 47, ptr @.str.213, ptr @.str.102, ptr @ifr4_cg_regs, i32 25, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 48, ptr @.str.214, ptr @.str.102, ptr @ifr4_cg_regs, i32 26, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 49, ptr @.str.215, ptr @.str.92, ptr @ifr4_cg_regs, i32 27, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 50, ptr @.str.216, ptr @.str.126, ptr @ifr4_cg_regs, i32 29, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 51, ptr @.str.217, ptr @.str.104, ptr @ifr5_cg_regs, i32 0, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 52, ptr @.str.218, ptr @.str.104, ptr @ifr5_cg_regs, i32 1, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 53, ptr @.str.219, ptr @.str.120, ptr @ifr5_cg_regs, i32 6, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 54, ptr @.str.220, ptr @.str.104, ptr @ifr5_cg_regs, i32 7, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 55, ptr @.str.221, ptr @.str.104, ptr @ifr5_cg_regs, i32 8, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 56, ptr @.str.222, ptr @.str.104, ptr @ifr5_cg_regs, i32 9, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 57, ptr @.str.223, ptr @.str.106, ptr @ifr5_cg_regs, i32 10, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 59, ptr @.str.224, ptr @.str.92, ptr @ifr5_cg_regs, i32 17, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 60, ptr @.str.225, ptr @.str.92, ptr @ifr5_cg_regs, i32 18, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 61, ptr @.str.226, ptr @.str.92, ptr @ifr5_cg_regs, i32 19, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 62, ptr @.str.227, ptr @.str.92, ptr @ifr5_cg_regs, i32 20, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 63, ptr @.str.228, ptr @.str.92, ptr @ifr5_cg_regs, i32 21, ptr @mtk_clk_gate_ops_setclr, i32 0 }], [444 x i8] zeroinitializer }, align 32
@clk_mt6765_ifr_probe._entry.164 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.163, ptr @.str.3, i32 870, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@clk_mt6765_ifr_probe._entry_ptr.165 = internal global ptr @clk_mt6765_ifr_probe._entry.164, section ".printk_index", align 4
@.str.166 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ifr_icusb\00", [22 x i8] zeroinitializer }, align 32
@ifr2_cg_regs = internal constant { %struct.mtk_gate_regs, [20 x i8] } { %struct.mtk_gate_regs { i32 144, i32 132, i32 128 }, [20 x i8] zeroinitializer }, align 32
@mtk_clk_gate_ops_setclr = external dso_local constant %struct.clk_ops, align 4
@.str.167 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ifr_gce\00", [24 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ifr_therm\00", [22 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ifr_i2c_ap\00", [21 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ifr_i2c_ccu\00", [20 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ifr_i2c_sspm\00", [19 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ifr_i2c_rsv\00", [20 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ifr_pwm_hclk\00", [19 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ifr_pwm1\00", [23 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ifr_pwm2\00", [23 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ifr_pwm3\00", [23 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ifr_pwm4\00", [23 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ifr_pwm5\00", [23 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ifr_pwm\00", [24 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ifr_uart0\00", [22 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ifr_uart1\00", [22 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ifr_gce_26m\00", [20 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ifr_dma\00", [24 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ifr_btif\00", [23 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ifr_spi0\00", [23 x i8] zeroinitializer }, align 32
@ifr3_cg_regs = internal constant { %struct.mtk_gate_regs, [20 x i8] } { %struct.mtk_gate_regs { i32 148, i32 140, i32 136 }, [20 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ifr_msdc0\00", [22 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ifr_msdc1\00", [22 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ifr_trng\00", [23 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ifr_auxadc\00", [21 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ifr_ccif1_ap\00", [19 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ifr_ccif1_md\00", [19 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ifr_auxadc_md\00", [18 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ifr_ap_dma\00", [21 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ifr_dapc\00", [23 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ifr_ccif_ap\00", [20 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ifr_audio\00", [22 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ifr_ccif_md\00", [20 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ifr_pwmfb\00", [22 x i8] zeroinitializer }, align 32
@ifr4_cg_regs = internal constant { %struct.mtk_gate_regs, [20 x i8] } { %struct.mtk_gate_regs { i32 172, i32 168, i32 164 }, [20 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ifr_disp_pwm\00", [19 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ifr_cldmabclk\00", [18 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ifr_audio26m\00", [19 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ifr_spi1\00", [23 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ifr_i2c4\00", [23 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ifr_spi2\00", [23 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ifr_spi3\00", [23 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ifr_i2c5\00", [23 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ifr_i2c5a\00", [22 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ifr_i2c5_imm\00", [19 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ifr_i2c1a\00", [22 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ifr_i2c1_imm\00", [19 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ifr_i2c2a\00", [22 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ifr_i2c2_imm\00", [19 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ifr_spi4\00", [23 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ifr_spi5\00", [23 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ifr_cq_dma\00", [21 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ifr_faes_fde_ck\00", [16 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ifr_msdc0sf\00", [20 x i8] zeroinitializer }, align 32
@ifr5_cg_regs = internal constant { %struct.mtk_gate_regs, [20 x i8] } { %struct.mtk_gate_regs { i32 200, i32 196, i32 192 }, [20 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ifr_msdc1sf\00", [20 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ifr_i2c6\00", [23 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ifr_ap_msdc0\00", [19 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ifr_md_msdc0\00", [19 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ifr_msdc0_clk\00", [18 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ifr_msdc1_clk\00", [18 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ifr_mcu_pm_bclk\00", [16 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ifr_ccif2_ap\00", [19 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ifr_ccif2_md\00", [19 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ifr_ccif3_ap\00", [19 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ifr_ccif3_md\00", [19 x i8] zeroinitializer }, align 32
@___asan_gen_.229 = private unnamed_addr constant [15 x i8] c"clk_mt6765_drv\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 908, i32 31 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 911, i32 11 }
@___asan_gen_.235 = private unnamed_addr constant [20 x i8] c"of_match_clk_mt6765\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 875, i32 34 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 901, i32 3 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 783, i32 3 }
@___asan_gen_.265 = private unnamed_addr constant [5 x i8] c"plls\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 749, i32 34 }
@___asan_gen_.268 = private unnamed_addr constant [13 x i8] c"apmixed_clks\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 685, i32 30 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 796, i32 3 }
@___asan_gen_.277 = private unnamed_addr constant [13 x i8] c"apmixed_base\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 28, i32 22 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 750, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 752, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 754, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 756, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 759, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 761, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 763, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 765, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 767, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 769, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 687, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant [16 x i8] c"apmixed_cg_regs\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 670, i32 35 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 689, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 691, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 693, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 695, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 697, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 699, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 701, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 703, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 705, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 818, i32 3 }
@___asan_gen_.352 = private unnamed_addr constant [11 x i8] c"fixed_clks\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 75, i32 35 }
@___asan_gen_.355 = private unnamed_addr constant [9 x i8] c"top_divs\00", align 1
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 81, i32 38 }
@___asan_gen_.358 = private unnamed_addr constant [10 x i8] c"top_muxes\00", align 1
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 365, i32 29 }
@___asan_gen_.361 = private unnamed_addr constant [16 x i8] c"mt6765_clk_lock\00", align 1
@___asan_gen_.364 = private unnamed_addr constant [9 x i8] c"top_clks\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 512, i32 30 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 836, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant [11 x i8] c"cksys_base\00", align 1
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 27, i32 22 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 76, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 77, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 78, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 82, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 83, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 84, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 85, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 86, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 87, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 88, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 89, i32 2 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 90, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 91, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 92, i32 2 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 93, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 94, i32 2 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 95, i32 2 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 96, i32 2 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 97, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 98, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 99, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 100, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 101, i32 2 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 102, i32 2 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 104, i32 2 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 106, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 107, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 108, i32 2 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 109, i32 2 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 110, i32 2 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 111, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 112, i32 2 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 113, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 114, i32 2 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 115, i32 2 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 116, i32 2 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 117, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 118, i32 2 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 119, i32 2 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 120, i32 2 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 121, i32 2 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 122, i32 2 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 123, i32 2 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 124, i32 2 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 125, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 126, i32 2 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 127, i32 2 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 128, i32 2 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 129, i32 2 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 130, i32 2 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 131, i32 2 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 132, i32 2 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 133, i32 2 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 134, i32 2 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 136, i32 2 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 137, i32 2 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 138, i32 2 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 139, i32 2 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 140, i32 2 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 141, i32 2 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 142, i32 2 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 143, i32 2 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 144, i32 2 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 145, i32 2 }
@___asan_gen_.609 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 146, i32 2 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 147, i32 2 }
@___asan_gen_.621 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 148, i32 2 }
@___asan_gen_.627 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 149, i32 2 }
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 150, i32 2 }
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 151, i32 2 }
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 152, i32 2 }
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 153, i32 2 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 154, i32 2 }
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 155, i32 2 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 156, i32 2 }
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 157, i32 2 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 158, i32 2 }
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 160, i32 2 }
@___asan_gen_.670 = private unnamed_addr constant [12 x i8] c"axi_parents\00", align 1
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 163, i32 27 }
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 370, i32 2 }
@___asan_gen_.676 = private unnamed_addr constant [12 x i8] c"mem_parents\00", align 1
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 170, i32 27 }
@___asan_gen_.679 = private unnamed_addr constant [11 x i8] c"mm_parents\00", align 1
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 176, i32 27 }
@___asan_gen_.682 = private unnamed_addr constant [12 x i8] c"scp_parents\00", align 1
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 187, i32 27 }
@___asan_gen_.685 = private unnamed_addr constant [12 x i8] c"mfg_parents\00", align 1
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 197, i32 27 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 383, i32 2 }
@___asan_gen_.691 = private unnamed_addr constant [12 x i8] c"atb_parents\00", align 1
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 204, i32 27 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 386, i32 2 }
@___asan_gen_.697 = private unnamed_addr constant [14 x i8] c"camtg_parents\00", align 1
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 210, i32 27 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 389, i32 2 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 393, i32 2 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 396, i32 2 }
@___asan_gen_.709 = private unnamed_addr constant [13 x i8] c"uart_parents\00", align 1
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 220, i32 27 }
@___asan_gen_.712 = private unnamed_addr constant [12 x i8] c"spi_parents\00", align 1
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 225, i32 27 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 406, i32 2 }
@___asan_gen_.718 = private unnamed_addr constant [18 x i8] c"msdc5hclk_parents\00", align 1
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 232, i32 27 }
@___asan_gen_.721 = private unnamed_addr constant [17 x i8] c"msdc50_0_parents\00", align 1
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 239, i32 27 }
@___asan_gen_.724 = private unnamed_addr constant [17 x i8] c"msdc30_1_parents\00", align 1
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 250, i32 27 }
@___asan_gen_.727 = private unnamed_addr constant [14 x i8] c"audio_parents\00", align 1
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 261, i32 27 }
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 419, i32 2 }
@___asan_gen_.733 = private unnamed_addr constant [19 x i8] c"aud_intbus_parents\00", align 1
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 268, i32 27 }
@___asan_gen_.736 = private unnamed_addr constant [14 x i8] c"aud_1_parents\00", align 1
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 274, i32 27 }
@___asan_gen_.739 = private unnamed_addr constant [19 x i8] c"aud_engen1_parents\00", align 1
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 279, i32 27 }
@___asan_gen_.742 = private unnamed_addr constant [17 x i8] c"disp_pwm_parents\00", align 1
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 286, i32 27 }
@___asan_gen_.745 = private unnamed_addr constant [13 x i8] c"sspm_parents\00", align 1
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 293, i32 27 }
@___asan_gen_.748 = private unnamed_addr constant [13 x i8] c"dxcc_parents\00", align 1
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 299, i32 27 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 438, i32 2 }
@___asan_gen_.754 = private unnamed_addr constant [16 x i8] c"usb_top_parents\00", align 1
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 306, i32 27 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 441, i32 2 }
@___asan_gen_.760 = private unnamed_addr constant [12 x i8] c"spm_parents\00", align 1
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 311, i32 27 }
@___asan_gen_.763 = private unnamed_addr constant [12 x i8] c"i2c_parents\00", align 1
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 316, i32 27 }
@___asan_gen_.766 = private unnamed_addr constant [12 x i8] c"pwm_parents\00", align 1
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 324, i32 27 }
@___asan_gen_.769 = private unnamed_addr constant [15 x i8] c"seninf_parents\00", align 1
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 330, i32 27 }
@___asan_gen_.772 = private unnamed_addr constant [16 x i8] c"aes_fde_parents\00", align 1
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 337, i32 27 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 458, i32 2 }
@___asan_gen_.778 = private unnamed_addr constant [15 x i8] c"ulposc_parents\00", align 1
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 346, i32 27 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 462, i32 2 }
@___asan_gen_.784 = private unnamed_addr constant [14 x i8] c"camtm_parents\00", align 1
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 354, i32 27 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 24, i32 8 }
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 514, i32 2 }
@___asan_gen_.793 = private unnamed_addr constant [13 x i8] c"top0_cg_regs\00", align 1
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 467, i32 35 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 515, i32 2 }
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 516, i32 2 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 517, i32 2 }
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 519, i32 2 }
@___asan_gen_.808 = private unnamed_addr constant [13 x i8] c"top1_cg_regs\00", align 1
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 473, i32 35 }
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 521, i32 2 }
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 523, i32 2 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 525, i32 2 }
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 526, i32 2 }
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 527, i32 2 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 528, i32 2 }
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 529, i32 2 }
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 531, i32 2 }
@___asan_gen_.835 = private unnamed_addr constant [13 x i8] c"top2_cg_regs\00", align 1
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 479, i32 35 }
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 532, i32 2 }
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 533, i32 2 }
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 534, i32 2 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 858, i32 3 }
@___asan_gen_.853 = private unnamed_addr constant [9 x i8] c"ifr_clks\00", align 1
@___asan_gen_.855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 597, i32 30 }
@___asan_gen_.856 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 869, i32 3 }
@___asan_gen_.861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 601, i32 2 }
@___asan_gen_.862 = private unnamed_addr constant [13 x i8] c"ifr2_cg_regs\00", align 1
@___asan_gen_.864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 537, i32 35 }
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 602, i32 2 }
@___asan_gen_.870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 603, i32 2 }
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 604, i32 2 }
@___asan_gen_.876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 605, i32 2 }
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 606, i32 2 }
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 607, i32 2 }
@___asan_gen_.885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 608, i32 2 }
@___asan_gen_.888 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 609, i32 2 }
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 610, i32 2 }
@___asan_gen_.894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 611, i32 2 }
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 612, i32 2 }
@___asan_gen_.900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 613, i32 2 }
@___asan_gen_.903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 614, i32 2 }
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 615, i32 2 }
@___asan_gen_.909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 616, i32 2 }
@___asan_gen_.912 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 617, i32 2 }
@___asan_gen_.915 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 618, i32 2 }
@___asan_gen_.918 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 619, i32 2 }
@___asan_gen_.921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 621, i32 2 }
@___asan_gen_.922 = private unnamed_addr constant [13 x i8] c"ifr3_cg_regs\00", align 1
@___asan_gen_.924 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 543, i32 35 }
@___asan_gen_.927 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 622, i32 2 }
@___asan_gen_.930 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 623, i32 2 }
@___asan_gen_.933 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 624, i32 2 }
@___asan_gen_.936 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 625, i32 2 }
@___asan_gen_.939 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 626, i32 2 }
@___asan_gen_.942 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 627, i32 2 }
@___asan_gen_.945 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 628, i32 2 }
@___asan_gen_.948 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 629, i32 2 }
@___asan_gen_.951 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 630, i32 2 }
@___asan_gen_.954 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 631, i32 2 }
@___asan_gen_.957 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 632, i32 2 }
@___asan_gen_.960 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 633, i32 2 }
@___asan_gen_.963 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 635, i32 2 }
@___asan_gen_.964 = private unnamed_addr constant [13 x i8] c"ifr4_cg_regs\00", align 1
@___asan_gen_.966 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 549, i32 35 }
@___asan_gen_.969 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 636, i32 2 }
@___asan_gen_.972 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 637, i32 2 }
@___asan_gen_.975 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 638, i32 2 }
@___asan_gen_.978 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 639, i32 2 }
@___asan_gen_.981 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 640, i32 2 }
@___asan_gen_.984 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 641, i32 2 }
@___asan_gen_.987 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 642, i32 2 }
@___asan_gen_.990 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 643, i32 2 }
@___asan_gen_.993 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 644, i32 2 }
@___asan_gen_.996 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 645, i32 2 }
@___asan_gen_.999 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 646, i32 2 }
@___asan_gen_.1002 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 647, i32 2 }
@___asan_gen_.1005 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 648, i32 2 }
@___asan_gen_.1008 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 649, i32 2 }
@___asan_gen_.1011 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 650, i32 2 }
@___asan_gen_.1014 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 651, i32 2 }
@___asan_gen_.1017 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 652, i32 2 }
@___asan_gen_.1020 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 653, i32 2 }
@___asan_gen_.1023 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 655, i32 2 }
@___asan_gen_.1024 = private unnamed_addr constant [13 x i8] c"ifr5_cg_regs\00", align 1
@___asan_gen_.1026 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 555, i32 35 }
@___asan_gen_.1029 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 656, i32 2 }
@___asan_gen_.1032 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 657, i32 2 }
@___asan_gen_.1035 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 658, i32 2 }
@___asan_gen_.1038 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 659, i32 2 }
@___asan_gen_.1041 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 660, i32 2 }
@___asan_gen_.1044 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 661, i32 2 }
@___asan_gen_.1047 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 662, i32 2 }
@___asan_gen_.1050 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 663, i32 2 }
@___asan_gen_.1053 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 664, i32 2 }
@___asan_gen_.1056 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 665, i32 2 }
@___asan_gen_.1057 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1058 = private constant [37 x i8] c"../drivers/clk/mediatek/clk-mt6765.c\00", align 1
@___asan_gen_.1059 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1058, i32 666, i32 2 }
@llvm.compiler.used = appending global [285 x ptr] [ptr @__initcall__kmod_clk_mt6765__183_921_clk_mt6765_init3, ptr @clk_mt6765_apmixed_probe._entry, ptr @clk_mt6765_apmixed_probe._entry.8, ptr @clk_mt6765_apmixed_probe._entry_ptr, ptr @clk_mt6765_apmixed_probe._entry_ptr.10, ptr @clk_mt6765_ifr_probe._entry, ptr @clk_mt6765_ifr_probe._entry.164, ptr @clk_mt6765_ifr_probe._entry_ptr, ptr @clk_mt6765_ifr_probe._entry_ptr.165, ptr @clk_mt6765_probe._entry, ptr @clk_mt6765_probe._entry_ptr, ptr @clk_mt6765_top_probe._entry, ptr @clk_mt6765_top_probe._entry.33, ptr @clk_mt6765_top_probe._entry_ptr, ptr @clk_mt6765_top_probe._entry_ptr.34, ptr @clk_mt6765_drv, ptr @.str, ptr @of_match_clk_mt6765, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @plls, ptr @apmixed_clks, ptr @.str.9, ptr @apmixed_base, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @apmixed_cg_regs, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @fixed_clks, ptr @top_divs, ptr @top_muxes, ptr @mt6765_clk_lock, ptr @top_clks, ptr @cksys_base, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @axi_parents, ptr @.str.134, ptr @mem_parents, ptr @mm_parents, ptr @scp_parents, ptr @mfg_parents, ptr @.str.135, ptr @atb_parents, ptr @.str.136, ptr @camtg_parents, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @uart_parents, ptr @spi_parents, ptr @.str.140, ptr @msdc5hclk_parents, ptr @msdc50_0_parents, ptr @msdc30_1_parents, ptr @audio_parents, ptr @.str.141, ptr @aud_intbus_parents, ptr @aud_1_parents, ptr @aud_engen1_parents, ptr @disp_pwm_parents, ptr @sspm_parents, ptr @dxcc_parents, ptr @.str.142, ptr @usb_top_parents, ptr @.str.143, ptr @spm_parents, ptr @i2c_parents, ptr @pwm_parents, ptr @seninf_parents, ptr @aes_fde_parents, ptr @.str.144, ptr @ulposc_parents, ptr @.str.145, ptr @camtm_parents, ptr @.str.146, ptr @.str.147, ptr @top0_cg_regs, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @top1_cg_regs, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @top2_cg_regs, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @ifr_clks, ptr @.str.166, ptr @ifr2_cg_regs, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @ifr3_cg_regs, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @ifr4_cg_regs, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @.str.203, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @ifr5_cg_regs, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228], section "llvm.metadata"
@0 = internal global [277 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mt6765_drv to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_match_clk_mt6765 to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mt6765_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mt6765_apmixed_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plls to i32), i32 960, i32 1184, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apmixed_clks to i32), i32 280, i32 352, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mt6765_apmixed_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apmixed_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apmixed_cg_regs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mt6765_top_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fixed_clks to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @top_divs to i32), i32 1520, i32 1888, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @top_muxes to i32), i32 1320, i32 1664, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6765_clk_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @top_clks to i32), i32 448, i32 544, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mt6765_top_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cksys_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axi_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.670 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mem_parents to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.676 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mm_parents to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scp_parents to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.682 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mfg_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atb_parents to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @camtg_parents to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart_parents to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.709 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msdc5hclk_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msdc50_0_parents to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.721 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msdc30_1_parents to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.727 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aud_intbus_parents to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.733 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aud_1_parents to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aud_engen1_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.739 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @disp_pwm_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sspm_parents to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.745 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dxcc_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb_top_parents to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spm_parents to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @i2c_parents to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.763 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_parents to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @seninf_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.769 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aes_fde_parents to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ulposc_parents to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @camtm_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @top0_cg_regs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.793 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @top1_cg_regs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.808 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @top2_cg_regs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mt6765_ifr_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ifr_clks to i32), i32 1764, i32 2208, i32 ptrtoint (ptr @___asan_gen_.853 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mt6765_ifr_probe._entry.164 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ifr2_cg_regs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ifr3_cg_regs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.922 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ifr4_cg_regs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ifr5_cg_regs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1035 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1057 to i32), i32 ptrtoint (ptr @___asan_gen_.1058 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_mt6765_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @clk_mt6765_drv, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_mt6765_probe(ptr noundef %pdev) #2 align 64 {
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef %1, i32 noundef %call1) #7
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
define internal i32 @clk_mt6765_apmixed_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #4
  %call2 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call) #4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7) #7
  %2 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call6 = tail call ptr @mtk_alloc_clk_data(i32 noundef 22) #4
  tail call void @mtk_clk_register_plls(ptr noundef %1, ptr noundef nonnull @plls, i32 noundef 10, ptr noundef %call6) #4
  %call7 = tail call i32 @mtk_clk_register_gates(ptr noundef %1, ptr noundef nonnull @apmixed_clks, i32 noundef 10, ptr noundef %call6) #4
  %call8 = tail call i32 @of_clk_add_provider(ptr noundef %1, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %call6) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end.if.end15_crit_edge, label %do.end12

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.7, i32 noundef %call8) #7
  br label %if.end15

if.end15:                                         ; preds = %do.end12, %if.end.if.end15_crit_edge
  store ptr %call2, ptr @apmixed_base, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !539
  tail call void @arm_heavy_mb() #4
  %3 = load ptr, ptr @apmixed_base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 12
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !540
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !541
  %5 = and i32 %4, -503316481
  %6 = load ptr, ptr @apmixed_base, align 4
  %add.ptr22 = getelementptr i8, ptr %6, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %5) #4, !srcloc !542
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !543
  tail call void @arm_heavy_mb() #4
  %7 = load ptr, ptr @apmixed_base, align 4
  %add.ptr28 = getelementptr i8, ptr %7, i32 68
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr28) #4, !srcloc !540
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !544
  %9 = and i32 %8, 1091568641
  %10 = load ptr, ptr @apmixed_base, align 4
  %add.ptr33 = getelementptr i8, ptr %10, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 %9) #4, !srcloc !542
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !545
  tail call void @arm_heavy_mb() #4
  %11 = load ptr, ptr @apmixed_base, align 4
  %add.ptr39 = getelementptr i8, ptr %11, i32 72
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39) #4, !srcloc !540
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !546
  %13 = and i32 %12, 1091568641
  %14 = load ptr, ptr @apmixed_base, align 4
  %add.ptr44 = getelementptr i8, ptr %14, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr44, i32 %13) #4, !srcloc !542
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %do.end
  %retval.0 = phi i32 [ %2, %do.end ], [ %call8, %if.end15 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_mt6765_top_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #4
  %call2 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call) #4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.32) #7
  %2 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call6 = tail call ptr @mtk_alloc_clk_data(i32 noundef 126) #4
  tail call void @mtk_clk_register_fixed_clks(ptr noundef nonnull @fixed_clks, i32 noundef 3, ptr noundef %call6) #4
  tail call void @mtk_clk_register_factors(ptr noundef nonnull @top_divs, i32 noundef 76, ptr noundef %call6) #4
  %call7 = tail call i32 @mtk_clk_register_muxes(ptr noundef nonnull @top_muxes, i32 noundef 30, ptr noundef %1, ptr noundef nonnull @mt6765_clk_lock, ptr noundef %call6) #4
  %call8 = tail call i32 @mtk_clk_register_gates(ptr noundef %1, ptr noundef nonnull @top_clks, i32 noundef 16, ptr noundef %call6) #4
  %call9 = tail call i32 @of_clk_add_provider(ptr noundef %1, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %call6) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.end.if.end16_crit_edge, label %do.end13

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end16

do.end13:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.32, i32 noundef %call9) #7
  br label %if.end16

if.end16:                                         ; preds = %do.end13, %if.end.if.end16_crit_edge
  store ptr %call2, ptr @cksys_base, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !547
  tail call void @arm_heavy_mb() #4
  %3 = load ptr, ptr @cksys_base, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 512
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !540
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !548
  %5 = or i32 %4, -285016064
  %6 = load ptr, ptr @cksys_base, align 4
  %add.ptr23 = getelementptr i8, ptr %6, i32 512
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 %5) #4, !srcloc !542
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !549
  tail call void @arm_heavy_mb() #4
  %7 = load ptr, ptr @cksys_base, align 4
  %add.ptr29 = getelementptr i8, ptr %7, i32 516
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29) #4, !srcloc !540
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !550
  %9 = or i32 %8, 16777216
  %10 = load ptr, ptr @cksys_base, align 4
  %add.ptr34 = getelementptr i8, ptr %10, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr34, i32 %9) #4, !srcloc !542
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %do.end
  %retval.0 = phi i32 [ %2, %do.end ], [ %call9, %if.end16 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_mt6765_ifr_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #4
  %call2 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call) #4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.163) #7
  %2 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call6 = tail call ptr @mtk_alloc_clk_data(i32 noundef 64) #4
  %call7 = tail call i32 @mtk_clk_register_gates(ptr noundef %1, ptr noundef nonnull @ifr_clks, i32 noundef 63, ptr noundef %call6) #4
  %call8 = tail call i32 @of_clk_add_provider(ptr noundef %1, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %call6) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %do.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.163, i32 noundef %call8) #7
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %2, %do.end ], [ %call8, %do.end12 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mtk_alloc_clk_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_clk_register_plls(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_clk_register_gates(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_clk_register_fixed_clks(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_clk_register_factors(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_clk_register_muxes(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 277)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 277)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !18, !19, !20, !21, !23, !24, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !77, !78, !80, !81, !83, !84, !86, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !184, !186, !188, !190, !192, !194, !196, !197, !199, !200, !202, !203, !205, !206, !208, !209, !211, !212, !214, !215, !217, !218, !220, !221, !223, !224, !226, !227, !229, !230, !232, !233, !235, !236, !238, !239, !241, !242, !244, !245, !247, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !390, !391, !393, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448, !450, !452, !454, !456, !458, !460, !462, !464, !466, !468, !470, !472, !474, !476, !478, !480, !482, !484, !486, !488, !490, !492, !494, !496, !498, !500, !502, !504, !506, !508, !510, !512, !514, !516, !518, !520, !522, !524, !526, !528}
!llvm.module.flags = !{!530, !531, !532, !533, !534, !535, !536, !537}
!llvm.ident = !{!538}

!0 = !{ptr @__initcall__kmod_clk_mt6765__183_921_clk_mt6765_init3, !1, !"__initcall__kmod_clk_mt6765__183_921_clk_mt6765_init3", i1 false, i1 false}
!1 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 921, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 911, i32 11}
!4 = !{ptr @clk_mt6765_drv, !5, !"clk_mt6765_drv", i1 false, i1 false}
!5 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 908, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 901, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @clk_mt6765_probe._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @clk_mt6765_probe._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @of_match_clk_mt6765, !15, !"of_match_clk_mt6765", i1 false, i1 false}
!15 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 875, i32 34}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 783, i32 3}
!18 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @clk_mt6765_apmixed_probe._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @clk_mt6765_apmixed_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 796, i32 3}
!23 = !{ptr @clk_mt6765_apmixed_probe._entry.8, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @clk_mt6765_apmixed_probe._entry_ptr.10, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 750, i32 2}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 752, i32 2}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 754, i32 2}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 756, i32 2}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 759, i32 2}
!35 = !{ptr @.str.16, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 761, i32 2}
!37 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 763, i32 2}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 765, i32 2}
!41 = !{ptr @.str.19, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 767, i32 2}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 769, i32 2}
!45 = !{ptr @plls, !46, !"plls", i1 false, i1 false}
!46 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 749, i32 34}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 687, i32 2}
!49 = !{ptr @.str.22, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 689, i32 2}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 691, i32 2}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 693, i32 2}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 695, i32 2}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 697, i32 2}
!60 = !{ptr @.str.28, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 699, i32 2}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 701, i32 2}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 703, i32 2}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 705, i32 2}
!68 = !{ptr @apmixed_clks, !69, !"apmixed_clks", i1 false, i1 false}
!69 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 685, i32 30}
!70 = !{ptr @apmixed_cg_regs, !71, !"apmixed_cg_regs", i1 false, i1 false}
!71 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 670, i32 35}
!72 = !{ptr @apmixed_base, !73, !"apmixed_base", i1 false, i1 false}
!73 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 28, i32 22}
!74 = !{ptr @.str.32, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 818, i32 3}
!76 = !{ptr @clk_mt6765_top_probe._entry, !75, !"_entry", i1 false, i1 false}
!77 = !{ptr @clk_mt6765_top_probe._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @clk_mt6765_top_probe._entry.33, !79, !"_entry", i1 false, i1 false}
!79 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 836, i32 3}
!80 = !{ptr @clk_mt6765_top_probe._entry_ptr.34, !79, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.35, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 76, i32 2}
!83 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @.str.37, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 77, i32 2}
!86 = !{ptr @.str.38, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 78, i32 2}
!89 = !{ptr @fixed_clks, !90, !"fixed_clks", i1 false, i1 false}
!90 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 75, i32 35}
!91 = !{ptr @.str.40, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 82, i32 2}
!93 = !{ptr @.str.41, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 83, i32 2}
!95 = !{ptr @.str.42, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 84, i32 2}
!97 = !{ptr @.str.43, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 85, i32 2}
!99 = !{ptr @.str.44, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 86, i32 2}
!101 = !{ptr @.str.45, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 87, i32 2}
!103 = !{ptr @.str.46, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 88, i32 2}
!105 = !{ptr @.str.47, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 89, i32 2}
!107 = !{ptr @.str.48, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 90, i32 2}
!109 = !{ptr @.str.49, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 91, i32 2}
!111 = !{ptr @.str.50, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 92, i32 2}
!113 = !{ptr @.str.51, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 93, i32 2}
!115 = !{ptr @.str.52, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 94, i32 2}
!117 = !{ptr @.str.53, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 95, i32 2}
!119 = !{ptr @.str.54, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 96, i32 2}
!121 = !{ptr @.str.55, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 97, i32 2}
!123 = !{ptr @.str.56, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 98, i32 2}
!125 = !{ptr @.str.57, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 99, i32 2}
!127 = !{ptr @.str.58, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 100, i32 2}
!129 = !{ptr @.str.59, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 101, i32 2}
!131 = !{ptr @.str.60, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 102, i32 2}
!133 = !{ptr @.str.61, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 104, i32 2}
!135 = !{ptr @.str.62, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 106, i32 2}
!137 = !{ptr @.str.63, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 107, i32 2}
!139 = !{ptr @.str.64, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 108, i32 2}
!141 = !{ptr @.str.65, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 109, i32 2}
!143 = !{ptr @.str.66, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 110, i32 2}
!145 = !{ptr @.str.67, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 111, i32 2}
!147 = !{ptr @.str.68, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 112, i32 2}
!149 = !{ptr @.str.69, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 113, i32 2}
!151 = !{ptr @.str.70, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 114, i32 2}
!153 = !{ptr @.str.71, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 115, i32 2}
!155 = !{ptr @.str.72, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 116, i32 2}
!157 = !{ptr @.str.73, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 117, i32 2}
!159 = !{ptr @.str.74, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 118, i32 2}
!161 = !{ptr @.str.75, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 119, i32 2}
!163 = !{ptr @.str.76, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 120, i32 2}
!165 = !{ptr @.str.77, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 121, i32 2}
!167 = !{ptr @.str.78, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 122, i32 2}
!169 = !{ptr @.str.79, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 123, i32 2}
!171 = !{ptr @.str.80, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 124, i32 2}
!173 = !{ptr @.str.81, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 125, i32 2}
!175 = !{ptr @.str.82, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 126, i32 2}
!177 = !{ptr @.str.83, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 127, i32 2}
!179 = !{ptr @.str.84, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 128, i32 2}
!181 = !{ptr @.str.85, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 129, i32 2}
!183 = !{ptr @.str.86, !182, !"<string literal>", i1 false, i1 false}
!184 = !{ptr @.str.87, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 130, i32 2}
!186 = !{ptr @.str.88, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 131, i32 2}
!188 = !{ptr @.str.89, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 132, i32 2}
!190 = !{ptr @.str.90, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 133, i32 2}
!192 = !{ptr @.str.91, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 134, i32 2}
!194 = !{ptr @.str.92, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 136, i32 2}
!196 = !{ptr @.str.93, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @.str.94, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 137, i32 2}
!199 = !{ptr @.str.95, !198, !"<string literal>", i1 false, i1 false}
!200 = !{ptr @.str.96, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 138, i32 2}
!202 = !{ptr @.str.97, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @.str.98, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 139, i32 2}
!205 = !{ptr @.str.99, !204, !"<string literal>", i1 false, i1 false}
!206 = !{ptr @.str.100, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 140, i32 2}
!208 = !{ptr @.str.101, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @.str.102, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 141, i32 2}
!211 = !{ptr @.str.103, !210, !"<string literal>", i1 false, i1 false}
!212 = !{ptr @.str.104, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 142, i32 2}
!214 = !{ptr @.str.105, !213, !"<string literal>", i1 false, i1 false}
!215 = !{ptr @.str.106, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 143, i32 2}
!217 = !{ptr @.str.107, !216, !"<string literal>", i1 false, i1 false}
!218 = !{ptr @.str.108, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 144, i32 2}
!220 = !{ptr @.str.109, !219, !"<string literal>", i1 false, i1 false}
!221 = !{ptr @.str.110, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 145, i32 2}
!223 = !{ptr @.str.111, !222, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @.str.112, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 146, i32 2}
!226 = !{ptr @.str.113, !225, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @.str.114, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 147, i32 2}
!229 = !{ptr @.str.115, !228, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @.str.116, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 148, i32 2}
!232 = !{ptr @.str.117, !231, !"<string literal>", i1 false, i1 false}
!233 = !{ptr @.str.118, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 149, i32 2}
!235 = !{ptr @.str.119, !234, !"<string literal>", i1 false, i1 false}
!236 = !{ptr @.str.120, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 150, i32 2}
!238 = !{ptr @.str.121, !237, !"<string literal>", i1 false, i1 false}
!239 = !{ptr @.str.122, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 151, i32 2}
!241 = !{ptr @.str.123, !240, !"<string literal>", i1 false, i1 false}
!242 = !{ptr @.str.124, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 152, i32 2}
!244 = !{ptr @.str.125, !243, !"<string literal>", i1 false, i1 false}
!245 = !{ptr @.str.126, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 153, i32 2}
!247 = !{ptr @.str.127, !246, !"<string literal>", i1 false, i1 false}
!248 = !{ptr @.str.128, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 154, i32 2}
!250 = !{ptr @.str.129, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 155, i32 2}
!252 = !{ptr @.str.130, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 156, i32 2}
!254 = !{ptr @.str.131, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 157, i32 2}
!256 = !{ptr @.str.132, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 158, i32 2}
!258 = !{ptr @.str.133, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 160, i32 2}
!260 = !{ptr @top_divs, !261, !"top_divs", i1 false, i1 false}
!261 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 81, i32 38}
!262 = !{ptr @.str.134, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 370, i32 2}
!264 = !{ptr @.str.135, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 383, i32 2}
!266 = !{ptr @.str.136, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 386, i32 2}
!268 = !{ptr @.str.137, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 389, i32 2}
!270 = !{ptr @.str.138, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 393, i32 2}
!272 = !{ptr @.str.139, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 396, i32 2}
!274 = !{ptr @.str.140, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 406, i32 2}
!276 = !{ptr @.str.141, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 419, i32 2}
!278 = !{ptr @.str.142, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 438, i32 2}
!280 = !{ptr @.str.143, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 441, i32 2}
!282 = !{ptr @.str.144, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 458, i32 2}
!284 = !{ptr @.str.145, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 462, i32 2}
!286 = !{ptr @top_muxes, !287, !"top_muxes", i1 false, i1 false}
!287 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 365, i32 29}
!288 = !{ptr @axi_parents, !289, !"axi_parents", i1 false, i1 false}
!289 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 163, i32 27}
!290 = !{ptr @mem_parents, !291, !"mem_parents", i1 false, i1 false}
!291 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 170, i32 27}
!292 = !{ptr @mm_parents, !293, !"mm_parents", i1 false, i1 false}
!293 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 176, i32 27}
!294 = !{ptr @scp_parents, !295, !"scp_parents", i1 false, i1 false}
!295 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 187, i32 27}
!296 = !{ptr @mfg_parents, !297, !"mfg_parents", i1 false, i1 false}
!297 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 197, i32 27}
!298 = !{ptr @atb_parents, !299, !"atb_parents", i1 false, i1 false}
!299 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 204, i32 27}
!300 = !{ptr @camtg_parents, !301, !"camtg_parents", i1 false, i1 false}
!301 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 210, i32 27}
!302 = !{ptr @uart_parents, !303, !"uart_parents", i1 false, i1 false}
!303 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 220, i32 27}
!304 = !{ptr @spi_parents, !305, !"spi_parents", i1 false, i1 false}
!305 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 225, i32 27}
!306 = !{ptr @msdc5hclk_parents, !307, !"msdc5hclk_parents", i1 false, i1 false}
!307 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 232, i32 27}
!308 = !{ptr @msdc50_0_parents, !309, !"msdc50_0_parents", i1 false, i1 false}
!309 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 239, i32 27}
!310 = !{ptr @msdc30_1_parents, !311, !"msdc30_1_parents", i1 false, i1 false}
!311 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 250, i32 27}
!312 = !{ptr @audio_parents, !313, !"audio_parents", i1 false, i1 false}
!313 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 261, i32 27}
!314 = !{ptr @aud_intbus_parents, !315, !"aud_intbus_parents", i1 false, i1 false}
!315 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 268, i32 27}
!316 = !{ptr @aud_1_parents, !317, !"aud_1_parents", i1 false, i1 false}
!317 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 274, i32 27}
!318 = !{ptr @aud_engen1_parents, !319, !"aud_engen1_parents", i1 false, i1 false}
!319 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 279, i32 27}
!320 = !{ptr @disp_pwm_parents, !321, !"disp_pwm_parents", i1 false, i1 false}
!321 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 286, i32 27}
!322 = !{ptr @sspm_parents, !323, !"sspm_parents", i1 false, i1 false}
!323 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 293, i32 27}
!324 = !{ptr @dxcc_parents, !325, !"dxcc_parents", i1 false, i1 false}
!325 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 299, i32 27}
!326 = !{ptr @usb_top_parents, !327, !"usb_top_parents", i1 false, i1 false}
!327 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 306, i32 27}
!328 = !{ptr @spm_parents, !329, !"spm_parents", i1 false, i1 false}
!329 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 311, i32 27}
!330 = !{ptr @i2c_parents, !331, !"i2c_parents", i1 false, i1 false}
!331 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 316, i32 27}
!332 = !{ptr @pwm_parents, !333, !"pwm_parents", i1 false, i1 false}
!333 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 324, i32 27}
!334 = !{ptr @seninf_parents, !335, !"seninf_parents", i1 false, i1 false}
!335 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 330, i32 27}
!336 = !{ptr @aes_fde_parents, !337, !"aes_fde_parents", i1 false, i1 false}
!337 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 337, i32 27}
!338 = !{ptr @ulposc_parents, !339, !"ulposc_parents", i1 false, i1 false}
!339 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 346, i32 27}
!340 = !{ptr @camtm_parents, !341, !"camtm_parents", i1 false, i1 false}
!341 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 354, i32 27}
!342 = !{ptr @.str.146, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 24, i32 8}
!344 = !{ptr @mt6765_clk_lock, !343, !"mt6765_clk_lock", i1 false, i1 false}
!345 = !{ptr @.str.147, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 514, i32 2}
!347 = !{ptr @.str.148, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 515, i32 2}
!349 = !{ptr @.str.149, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 516, i32 2}
!351 = !{ptr @.str.150, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 517, i32 2}
!353 = !{ptr @.str.151, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 519, i32 2}
!355 = !{ptr @.str.152, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 521, i32 2}
!357 = !{ptr @.str.153, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 523, i32 2}
!359 = !{ptr @.str.154, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 525, i32 2}
!361 = !{ptr @.str.155, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 526, i32 2}
!363 = !{ptr @.str.156, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 527, i32 2}
!365 = !{ptr @.str.157, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 528, i32 2}
!367 = !{ptr @.str.158, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 529, i32 2}
!369 = !{ptr @.str.159, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 531, i32 2}
!371 = !{ptr @.str.160, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 532, i32 2}
!373 = !{ptr @.str.161, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 533, i32 2}
!375 = !{ptr @.str.162, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 534, i32 2}
!377 = !{ptr @top_clks, !378, !"top_clks", i1 false, i1 false}
!378 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 512, i32 30}
!379 = !{ptr @top0_cg_regs, !380, !"top0_cg_regs", i1 false, i1 false}
!380 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 467, i32 35}
!381 = !{ptr @top1_cg_regs, !382, !"top1_cg_regs", i1 false, i1 false}
!382 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 473, i32 35}
!383 = !{ptr @top2_cg_regs, !384, !"top2_cg_regs", i1 false, i1 false}
!384 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 479, i32 35}
!385 = !{ptr @cksys_base, !386, !"cksys_base", i1 false, i1 false}
!386 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 27, i32 22}
!387 = !{ptr @.str.163, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 858, i32 3}
!389 = !{ptr @clk_mt6765_ifr_probe._entry, !388, !"_entry", i1 false, i1 false}
!390 = !{ptr @clk_mt6765_ifr_probe._entry_ptr, !388, !"_entry_ptr", i1 false, i1 false}
!391 = !{ptr @clk_mt6765_ifr_probe._entry.164, !392, !"_entry", i1 false, i1 false}
!392 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 869, i32 3}
!393 = !{ptr @clk_mt6765_ifr_probe._entry_ptr.165, !392, !"_entry_ptr", i1 false, i1 false}
!394 = !{ptr @.str.166, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 601, i32 2}
!396 = !{ptr @.str.167, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 602, i32 2}
!398 = !{ptr @.str.168, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 603, i32 2}
!400 = !{ptr @.str.169, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 604, i32 2}
!402 = !{ptr @.str.170, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 605, i32 2}
!404 = !{ptr @.str.171, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 606, i32 2}
!406 = !{ptr @.str.172, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 607, i32 2}
!408 = !{ptr @.str.173, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 608, i32 2}
!410 = !{ptr @.str.174, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 609, i32 2}
!412 = !{ptr @.str.175, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 610, i32 2}
!414 = !{ptr @.str.176, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 611, i32 2}
!416 = !{ptr @.str.177, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 612, i32 2}
!418 = !{ptr @.str.178, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 613, i32 2}
!420 = !{ptr @.str.179, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 614, i32 2}
!422 = !{ptr @.str.180, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 615, i32 2}
!424 = !{ptr @.str.181, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 616, i32 2}
!426 = !{ptr @.str.182, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 617, i32 2}
!428 = !{ptr @.str.183, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 618, i32 2}
!430 = !{ptr @.str.184, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 619, i32 2}
!432 = !{ptr @.str.185, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 621, i32 2}
!434 = !{ptr @.str.186, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 622, i32 2}
!436 = !{ptr @.str.187, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 623, i32 2}
!438 = !{ptr @.str.188, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 624, i32 2}
!440 = !{ptr @.str.189, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 625, i32 2}
!442 = !{ptr @.str.190, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 626, i32 2}
!444 = !{ptr @.str.191, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 627, i32 2}
!446 = !{ptr @.str.192, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 628, i32 2}
!448 = !{ptr @.str.193, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 629, i32 2}
!450 = !{ptr @.str.194, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 630, i32 2}
!452 = !{ptr @.str.195, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 631, i32 2}
!454 = !{ptr @.str.196, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 632, i32 2}
!456 = !{ptr @.str.197, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 633, i32 2}
!458 = !{ptr @.str.198, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 635, i32 2}
!460 = !{ptr @.str.199, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 636, i32 2}
!462 = !{ptr @.str.200, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 637, i32 2}
!464 = !{ptr @.str.201, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 638, i32 2}
!466 = !{ptr @.str.202, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 639, i32 2}
!468 = !{ptr @.str.203, !469, !"<string literal>", i1 false, i1 false}
!469 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 640, i32 2}
!470 = !{ptr @.str.204, !471, !"<string literal>", i1 false, i1 false}
!471 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 641, i32 2}
!472 = !{ptr @.str.205, !473, !"<string literal>", i1 false, i1 false}
!473 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 642, i32 2}
!474 = !{ptr @.str.206, !475, !"<string literal>", i1 false, i1 false}
!475 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 643, i32 2}
!476 = !{ptr @.str.207, !477, !"<string literal>", i1 false, i1 false}
!477 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 644, i32 2}
!478 = !{ptr @.str.208, !479, !"<string literal>", i1 false, i1 false}
!479 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 645, i32 2}
!480 = !{ptr @.str.209, !481, !"<string literal>", i1 false, i1 false}
!481 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 646, i32 2}
!482 = !{ptr @.str.210, !483, !"<string literal>", i1 false, i1 false}
!483 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 647, i32 2}
!484 = !{ptr @.str.211, !485, !"<string literal>", i1 false, i1 false}
!485 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 648, i32 2}
!486 = !{ptr @.str.212, !487, !"<string literal>", i1 false, i1 false}
!487 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 649, i32 2}
!488 = !{ptr @.str.213, !489, !"<string literal>", i1 false, i1 false}
!489 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 650, i32 2}
!490 = !{ptr @.str.214, !491, !"<string literal>", i1 false, i1 false}
!491 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 651, i32 2}
!492 = !{ptr @.str.215, !493, !"<string literal>", i1 false, i1 false}
!493 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 652, i32 2}
!494 = !{ptr @.str.216, !495, !"<string literal>", i1 false, i1 false}
!495 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 653, i32 2}
!496 = !{ptr @.str.217, !497, !"<string literal>", i1 false, i1 false}
!497 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 655, i32 2}
!498 = !{ptr @.str.218, !499, !"<string literal>", i1 false, i1 false}
!499 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 656, i32 2}
!500 = !{ptr @.str.219, !501, !"<string literal>", i1 false, i1 false}
!501 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 657, i32 2}
!502 = !{ptr @.str.220, !503, !"<string literal>", i1 false, i1 false}
!503 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 658, i32 2}
!504 = !{ptr @.str.221, !505, !"<string literal>", i1 false, i1 false}
!505 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 659, i32 2}
!506 = !{ptr @.str.222, !507, !"<string literal>", i1 false, i1 false}
!507 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 660, i32 2}
!508 = !{ptr @.str.223, !509, !"<string literal>", i1 false, i1 false}
!509 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 661, i32 2}
!510 = !{ptr @.str.224, !511, !"<string literal>", i1 false, i1 false}
!511 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 662, i32 2}
!512 = !{ptr @.str.225, !513, !"<string literal>", i1 false, i1 false}
!513 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 663, i32 2}
!514 = !{ptr @.str.226, !515, !"<string literal>", i1 false, i1 false}
!515 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 664, i32 2}
!516 = !{ptr @.str.227, !517, !"<string literal>", i1 false, i1 false}
!517 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 665, i32 2}
!518 = !{ptr @.str.228, !519, !"<string literal>", i1 false, i1 false}
!519 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 666, i32 2}
!520 = !{ptr @ifr_clks, !521, !"ifr_clks", i1 false, i1 false}
!521 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 597, i32 30}
!522 = !{ptr @ifr2_cg_regs, !523, !"ifr2_cg_regs", i1 false, i1 false}
!523 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 537, i32 35}
!524 = !{ptr @ifr3_cg_regs, !525, !"ifr3_cg_regs", i1 false, i1 false}
!525 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 543, i32 35}
!526 = !{ptr @ifr4_cg_regs, !527, !"ifr4_cg_regs", i1 false, i1 false}
!527 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 549, i32 35}
!528 = !{ptr @ifr5_cg_regs, !529, !"ifr5_cg_regs", i1 false, i1 false}
!529 = !{!"../drivers/clk/mediatek/clk-mt6765.c", i32 555, i32 35}
!530 = !{i32 1, !"wchar_size", i32 2}
!531 = !{i32 1, !"min_enum_size", i32 4}
!532 = !{i32 8, !"branch-target-enforcement", i32 0}
!533 = !{i32 8, !"sign-return-address", i32 0}
!534 = !{i32 8, !"sign-return-address-all", i32 0}
!535 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!536 = !{i32 7, !"uwtable", i32 1}
!537 = !{i32 7, !"frame-pointer", i32 2}
!538 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!539 = !{i64 2153178809}
!540 = !{i64 4078334}
!541 = !{i64 2153179746}
!542 = !{i64 4077916}
!543 = !{i64 2153180796}
!544 = !{i64 2153181733}
!545 = !{i64 2153182783}
!546 = !{i64 2153183720}
!547 = !{i64 2153189454}
!548 = !{i64 2153190377}
!549 = !{i64 2153191407}
!550 = !{i64 2153192326}
