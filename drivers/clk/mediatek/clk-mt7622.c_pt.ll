; ModuleID = '/llk/IR_all_yes/drivers/clk/mediatek/clk-mt7622.c_pt.bc'
source_filename = "../drivers/clk/mediatek/clk-mt7622.c"
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
%struct.mtk_composite = type { i32, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8 }
%struct.mtk_fixed_clk = type { i32, ptr, ptr, i32 }
%struct.mtk_fixed_factor = type { i32, ptr, ptr, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mtk_clk_divider = type { i32, ptr, ptr, i32, i32, i8, i8, i8, ptr }
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

@__initcall__kmod_clk_mt7622__170_770_clk_mt7622_init3 = internal global ptr @clk_mt7622_init, section ".initcall3.init", align 4
@clk_mt7622_drv = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @clk_mt7622_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_match_clk_mt7622, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clk-mt7622\00", [21 x i8] zeroinitializer }, align 32
@of_match_clk_mt7622 = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt7622-apmixedsys\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_apmixedsys_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt7622-infracfg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_infrasys_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt7622-topckgen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_topckgen_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt7622-pericfg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_pericfg_init }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@clk_mt7622_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 752, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"could not register clock provider: %s: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clk_mt7622_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/clk/mediatek/clk-mt7622.c\00", [62 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@clk_mt7622_probe._entry_ptr = internal global ptr @clk_mt7622_probe._entry, section ".printk_index", align 4
@plls = internal constant { [9 x %struct.mtk_pll_data], [192 x i8] } { [9 x %struct.mtk_pll_data] [%struct.mtk_pll_data { i32 0, ptr @.str.6, i32 512, i32 524, i32 1, i32 516, i32 0, i32 0, i8 0, i32 24, i32 2, ptr null, i32 134217728, i32 0, i32 -1794967296, i32 21, i32 0, i32 516, i32 0, i32 0, ptr null, ptr @.str.7, i32 0, i8 0 }, %struct.mtk_pll_data { i32 1, ptr @.str.8, i32 528, i32 540, i32 1, i32 532, i32 0, i32 0, i8 0, i32 24, i32 1, ptr null, i32 134217728, i32 0, i32 -1794967296, i32 21, i32 0, i32 532, i32 0, i32 0, ptr null, ptr @.str.7, i32 0, i8 0 }, %struct.mtk_pll_data { i32 2, ptr @.str.9, i32 544, i32 556, i32 1, i32 548, i32 0, i32 0, i8 0, i32 24, i32 1, ptr null, i32 134217728, i32 0, i32 -1794967296, i32 7, i32 0, i32 548, i32 14, i32 0, ptr null, ptr @.str.7, i32 0, i8 0 }, %struct.mtk_pll_data { i32 3, ptr @.str.10, i32 768, i32 784, i32 1, i32 768, i32 0, i32 0, i8 0, i32 1, i32 0, ptr null, i32 134217728, i32 0, i32 -1794967296, i32 21, i32 0, i32 772, i32 0, i32 0, ptr null, ptr @.str.7, i32 0, i8 0 }, %struct.mtk_pll_data { i32 4, ptr @.str.11, i32 788, i32 800, i32 1, i32 788, i32 0, i32 0, i8 0, i32 1, i32 0, ptr null, i32 134217728, i32 0, i32 -1794967296, i32 21, i32 0, i32 792, i32 0, i32 0, ptr null, ptr @.str.7, i32 0, i8 0 }, %struct.mtk_pll_data { i32 5, ptr @.str.12, i32 804, i32 816, i32 1, i32 804, i32 0, i32 0, i8 0, i32 1, i32 0, ptr null, i32 134217728, i32 0, i32 -1794967296, i32 31, i32 0, i32 808, i32 0, i32 0, ptr null, ptr @.str.7, i32 0, i8 0 }, %struct.mtk_pll_data { i32 6, ptr @.str.13, i32 820, i32 832, i32 1, i32 820, i32 0, i32 0, i8 0, i32 1, i32 0, ptr null, i32 134217728, i32 0, i32 -1794967296, i32 31, i32 0, i32 824, i32 0, i32 0, ptr null, ptr @.str.7, i32 0, i8 0 }, %struct.mtk_pll_data { i32 7, ptr @.str.14, i32 836, i32 852, i32 1, i32 836, i32 0, i32 0, i8 0, i32 1, i32 0, ptr null, i32 134217728, i32 0, i32 -1794967296, i32 21, i32 0, i32 840, i32 0, i32 0, ptr null, ptr @.str.7, i32 0, i8 0 }, %struct.mtk_pll_data { i32 8, ptr @.str.15, i32 856, i32 872, i32 1, i32 856, i32 0, i32 0, i8 0, i32 1, i32 0, ptr null, i32 134217728, i32 0, i32 -1794967296, i32 21, i32 0, i32 860, i32 0, i32 0, ptr null, ptr @.str.7, i32 0, i8 0 }], [192 x i8] zeroinitializer }, align 32
@apmixed_clks = internal constant { [1 x %struct.mtk_gate], [36 x i8] } { [1 x %struct.mtk_gate] [%struct.mtk_gate { i32 9, ptr @.str.16, ptr @.str.8, ptr @apmixed_cg_regs, i32 5, ptr @mtk_clk_gate_ops_no_setclr_inv, i32 0 }], [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"armpll\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"clkxtal\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mainpll\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"univ2pll\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"eth1pll\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"eth2pll\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"aud1pll\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"aud2pll\00", [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"trgpll\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sgmipll\00", [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"main_core_en\00", [19 x i8] zeroinitializer }, align 32
@apmixed_cg_regs = internal constant { %struct.mtk_gate_regs, [20 x i8] } { %struct.mtk_gate_regs { i32 8, i32 8, i32 8 }, [20 x i8] zeroinitializer }, align 32
@mtk_clk_gate_ops_no_setclr_inv = external dso_local constant %struct.clk_ops, align 4
@infra_clks = internal constant { [6 x %struct.mtk_gate], [56 x i8] } { [6 x %struct.mtk_gate] [%struct.mtk_gate { i32 1, ptr @.str.17, ptr @.str.18, ptr @infra_cg_regs, i32 0, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 6, ptr @.str.19, ptr @.str.18, ptr @infra_cg_regs, i32 2, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 2, ptr @.str.20, ptr @.str.21, ptr @infra_cg_regs, i32 5, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 3, ptr @.str.22, ptr @.str.23, ptr @infra_cg_regs, i32 16, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 4, ptr @.str.24, ptr @.str.25, ptr @infra_cg_regs, i32 18, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 5, ptr @.str.26, ptr @.str.27, ptr @infra_cg_regs, i32 22, ptr @mtk_clk_gate_ops_setclr, i32 0 }], [56 x i8] zeroinitializer }, align 32
@infra_muxes = internal global { [1 x %struct.mtk_composite], [56 x i8] } { [1 x %struct.mtk_composite] [%struct.mtk_composite { i32 0, ptr @.str.28, ptr @infra_mux1_parents, ptr null, i32 4, i32 0, i32 0, i32 0, i8 2, i8 2, i8 -1, i8 -1, i8 0, i8 0, i8 4 }], [56 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"infra_dbgclk_pd\00", [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"axi_sel\00", [24 x i8] zeroinitializer }, align 32
@infra_cg_regs = internal constant { %struct.mtk_gate_regs, [20 x i8] } { %struct.mtk_gate_regs { i32 72, i32 68, i32 64 }, [20 x i8] zeroinitializer }, align 32
@mtk_clk_gate_ops_setclr = external dso_local constant %struct.clk_ops, align 4
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"trng_ck\00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"infra_audio_pd\00", [17 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aud_intbus_sel\00", [17 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"infra_irrx_pd\00", [18 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"irrx_sel\00", [23 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"infra_apxgpt_pd\00", [16 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"f10m_ref_sel\00", [19 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"infra_pmic_pd\00", [18 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pmicspi_sel\00", [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"infra_mux1_sel\00", [17 x i8] zeroinitializer }, align 32
@infra_mux1_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.7, ptr @.str.6, ptr @.str.16, ptr @.str.6], [16 x i8] zeroinitializer }, align 32
@top_fixed_clks = internal constant { [10 x %struct.mtk_fixed_clk], [32 x i8] } { [10 x %struct.mtk_fixed_clk] [%struct.mtk_fixed_clk { i32 0, ptr @.str.29, ptr @.str.7, i32 31250000 }, %struct.mtk_fixed_clk { i32 1, ptr @.str.30, ptr @.str.7, i32 31250000 }, %struct.mtk_fixed_clk { i32 2, ptr @.str.31, ptr @.str.7, i32 125000000 }, %struct.mtk_fixed_clk { i32 3, ptr @.str.32, ptr @.str.7, i32 125000000 }, %struct.mtk_fixed_clk { i32 4, ptr @.str.33, ptr @.str.7, i32 250000000 }, %struct.mtk_fixed_clk { i32 5, ptr @.str.34, ptr @.str.7, i32 250000000 }, %struct.mtk_fixed_clk { i32 6, ptr @.str.35, ptr @.str.7, i32 33333333 }, %struct.mtk_fixed_clk { i32 7, ptr @.str.36, ptr @.str.7, i32 50000000 }, %struct.mtk_fixed_clk { i32 8, ptr @.str.37, ptr @.str.7, i32 50000000 }, %struct.mtk_fixed_clk { i32 9, ptr @.str.38, ptr @.str.7, i32 50000000 }], [32 x i8] zeroinitializer }, align 32
@top_divs = internal constant { [46 x %struct.mtk_fixed_factor], [232 x i8] } { [46 x %struct.mtk_fixed_factor] [%struct.mtk_fixed_factor { i32 10, ptr @.str.39, ptr @.str.10, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 11, ptr @.str.40, ptr @.str.10, i32 1, i32 500 }, %struct.mtk_fixed_factor { i32 12, ptr @.str.41, ptr @.str.10, i32 1, i32 125 }, %struct.mtk_fixed_factor { i32 13, ptr @.str.42, ptr @.str.10, i32 1, i32 500 }, %struct.mtk_fixed_factor { i32 14, ptr @.str.43, ptr @.str.44, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 15, ptr @.str.45, ptr @.str.7, i32 1, i32 1024 }, %struct.mtk_fixed_factor { i32 16, ptr @.str.46, ptr @.str.7, i32 32, i32 1 }, %struct.mtk_fixed_factor { i32 17, ptr @.str.47, ptr @.str.46, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 18, ptr @.str.48, ptr @.str.8, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 19, ptr @.str.49, ptr @.str.8, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 20, ptr @.str.50, ptr @.str.8, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 21, ptr @.str.51, ptr @.str.8, i32 1, i32 16 }, %struct.mtk_fixed_factor { i32 22, ptr @.str.52, ptr @.str.8, i32 1, i32 12 }, %struct.mtk_fixed_factor { i32 23, ptr @.str.53, ptr @.str.8, i32 1, i32 24 }, %struct.mtk_fixed_factor { i32 24, ptr @.str.54, ptr @.str.8, i32 1, i32 5 }, %struct.mtk_fixed_factor { i32 25, ptr @.str.55, ptr @.str.8, i32 1, i32 10 }, %struct.mtk_fixed_factor { i32 26, ptr @.str.56, ptr @.str.8, i32 1, i32 20 }, %struct.mtk_fixed_factor { i32 27, ptr @.str.57, ptr @.str.8, i32 1, i32 14 }, %struct.mtk_fixed_factor { i32 28, ptr @.str.58, ptr @.str.8, i32 1, i32 28 }, %struct.mtk_fixed_factor { i32 29, ptr @.str.59, ptr @.str.8, i32 1, i32 112 }, %struct.mtk_fixed_factor { i32 30, ptr @.str.60, ptr @.str.9, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 31, ptr @.str.61, ptr @.str.60, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 32, ptr @.str.62, ptr @.str.60, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 33, ptr @.str.63, ptr @.str.60, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 34, ptr @.str.64, ptr @.str.60, i32 1, i32 16 }, %struct.mtk_fixed_factor { i32 35, ptr @.str.65, ptr @.str.60, i32 1, i32 32 }, %struct.mtk_fixed_factor { i32 36, ptr @.str.66, ptr @.str.60, i32 1, i32 6 }, %struct.mtk_fixed_factor { i32 37, ptr @.str.67, ptr @.str.60, i32 1, i32 12 }, %struct.mtk_fixed_factor { i32 38, ptr @.str.68, ptr @.str.60, i32 1, i32 24 }, %struct.mtk_fixed_factor { i32 39, ptr @.str.69, ptr @.str.60, i32 1, i32 48 }, %struct.mtk_fixed_factor { i32 40, ptr @.str.70, ptr @.str.60, i32 1, i32 5 }, %struct.mtk_fixed_factor { i32 41, ptr @.str.71, ptr @.str.60, i32 1, i32 10 }, %struct.mtk_fixed_factor { i32 42, ptr @.str.72, ptr @.str.60, i32 1, i32 20 }, %struct.mtk_fixed_factor { i32 43, ptr @.str.73, ptr @.str.60, i32 1, i32 80 }, %struct.mtk_fixed_factor { i32 44, ptr @.str.74, ptr @.str.60, i32 1, i32 7 }, %struct.mtk_fixed_factor { i32 45, ptr @.str.75, ptr @.str.60, i32 1, i32 320 }, %struct.mtk_fixed_factor { i32 46, ptr @.str.76, ptr @.str.60, i32 1, i32 25 }, %struct.mtk_fixed_factor { i32 47, ptr @.str.77, ptr @.str.15, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 48, ptr @.str.44, ptr @.str.15, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 49, ptr @.str.78, ptr @.str.12, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 50, ptr @.str.79, ptr @.str.13, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 51, ptr @.str.80, ptr @.str.81, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 52, ptr @.str.82, ptr @.str.67, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 53, ptr @.str.83, ptr @.str.63, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 54, ptr @.str.84, ptr @.str.63, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 55, ptr @.str.85, ptr @.str.10, i32 1, i32 1 }], [232 x i8] zeroinitializer }, align 32
@top_muxes = internal global { [37 x %struct.mtk_composite], [376 x i8] } { [37 x %struct.mtk_composite] [%struct.mtk_composite { i32 56, ptr @.str.18, ptr @axi_parents, ptr null, i32 4, i32 64, i32 0, i32 64, i8 0, i8 3, i8 7, i8 -1, i8 0, i8 0, i8 7 }, %struct.mtk_composite { i32 57, ptr @.str.86, ptr @mem_parents, ptr null, i32 4, i32 64, i32 0, i32 64, i8 8, i8 1, i8 15, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 58, ptr @.str.87, ptr @ddrphycfg_parents, ptr null, i32 4, i32 64, i32 0, i32 64, i8 16, i8 1, i8 23, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 59, ptr @.str.88, ptr @eth_parents, ptr null, i32 4, i32 64, i32 0, i32 64, i8 24, i8 3, i8 31, i8 -1, i8 0, i8 0, i8 7 }, %struct.mtk_composite { i32 60, ptr @.str.89, ptr @pwm_parents, ptr null, i32 4, i32 80, i32 0, i32 80, i8 0, i8 2, i8 7, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 61, ptr @.str.25, ptr @f10m_ref_parents, ptr null, i32 4, i32 80, i32 0, i32 80, i8 8, i8 1, i8 15, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 62, ptr @.str.90, ptr @nfi_infra_parents, ptr null, i32 4, i32 80, i32 0, i32 80, i8 16, i8 4, i8 23, i8 -1, i8 0, i8 0, i8 15 }, %struct.mtk_composite { i32 63, ptr @.str.91, ptr @flash_parents, ptr null, i32 4, i32 80, i32 0, i32 80, i8 24, i8 3, i8 31, i8 -1, i8 0, i8 0, i8 8 }, %struct.mtk_composite { i32 64, ptr @.str.92, ptr @uart_parents, ptr null, i32 4, i32 96, i32 0, i32 96, i8 0, i8 1, i8 7, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 65, ptr @.str.93, ptr @spi0_parents, ptr null, i32 4, i32 96, i32 0, i32 96, i8 8, i8 3, i8 15, i8 -1, i8 0, i8 0, i8 8 }, %struct.mtk_composite { i32 66, ptr @.str.94, ptr @spi1_parents, ptr null, i32 4, i32 96, i32 0, i32 96, i8 16, i8 3, i8 23, i8 -1, i8 0, i8 0, i8 8 }, %struct.mtk_composite { i32 67, ptr @.str.95, ptr @uart_parents, ptr null, i32 4, i32 96, i32 0, i32 96, i8 24, i8 3, i8 31, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 68, ptr @.str.96, ptr @msdc30_0_parents, ptr null, i32 4, i32 112, i32 0, i32 112, i8 0, i8 3, i8 7, i8 -1, i8 0, i8 0, i8 3 }, %struct.mtk_composite { i32 69, ptr @.str.97, ptr @msdc30_0_parents, ptr null, i32 4, i32 112, i32 0, i32 112, i8 8, i8 3, i8 15, i8 -1, i8 0, i8 0, i8 3 }, %struct.mtk_composite { i32 70, ptr @.str.98, ptr @a1sys_hp_parents, ptr null, i32 4, i32 112, i32 0, i32 112, i8 16, i8 2, i8 23, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 71, ptr @.str.99, ptr @a1sys_hp_parents, ptr null, i32 4, i32 112, i32 0, i32 112, i8 24, i8 2, i8 31, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 72, ptr @.str.100, ptr @intdir_parents, ptr null, i32 4, i32 128, i32 0, i32 128, i8 0, i8 2, i8 7, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 73, ptr @.str.21, ptr @aud_intbus_parents, ptr null, i32 4, i32 128, i32 0, i32 128, i8 8, i8 2, i8 15, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 74, ptr @.str.27, ptr @pmicspi_parents, ptr null, i32 4, i32 128, i32 0, i32 128, i8 16, i8 3, i8 23, i8 -1, i8 0, i8 0, i8 6 }, %struct.mtk_composite { i32 75, ptr @.str.101, ptr @ddrphycfg_parents, ptr null, i32 4, i32 128, i32 0, i32 128, i8 24, i8 2, i8 31, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 76, ptr @.str.102, ptr @atb_parents, ptr null, i32 4, i32 144, i32 0, i32 144, i8 0, i8 2, i8 7, i8 -1, i8 0, i8 0, i8 3 }, %struct.mtk_composite { i32 77, ptr @.str.103, ptr @eth_parents, ptr null, i32 4, i32 144, i32 0, i32 144, i8 8, i8 3, i8 15, i8 -1, i8 0, i8 0, i8 7 }, %struct.mtk_composite { i32 78, ptr @.str.104, ptr @audio_parents, ptr null, i32 4, i32 144, i32 0, i32 144, i8 16, i8 2, i8 23, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 79, ptr @.str.105, ptr @usb20_parents, ptr null, i32 4, i32 144, i32 0, i32 144, i8 24, i8 2, i8 31, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 80, ptr @.str.106, ptr @aud1_parents, ptr null, i32 4, i32 160, i32 0, i32 160, i8 0, i8 1, i8 7, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 81, ptr @.str.107, ptr @aud2_parents, ptr null, i32 4, i32 160, i32 0, i32 160, i8 8, i8 1, i8 15, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 82, ptr @.str.23, ptr @f10m_ref_parents, ptr null, i32 4, i32 160, i32 0, i32 160, i8 16, i8 1, i8 23, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 83, ptr @.str.108, ptr @f10m_ref_parents, ptr null, i32 4, i32 160, i32 0, i32 160, i8 24, i8 1, i8 31, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 84, ptr @.str.109, ptr @asm_l_parents, ptr null, i32 4, i32 176, i32 0, i32 176, i8 0, i8 2, i8 7, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 85, ptr @.str.110, ptr @asm_l_parents, ptr null, i32 4, i32 176, i32 0, i32 176, i8 8, i8 2, i8 15, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 86, ptr @.str.111, ptr @asm_l_parents, ptr null, i32 4, i32 176, i32 0, i32 176, i8 16, i8 2, i8 23, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 87, ptr @.str.112, ptr @apll1_ck_parents, ptr null, i32 4, i32 288, i32 0, i32 0, i8 6, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 88, ptr @.str.113, ptr @apll1_ck_parents, ptr null, i32 4, i32 288, i32 0, i32 0, i8 7, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 89, ptr @.str.114, ptr @apll1_ck_parents, ptr null, i32 4, i32 288, i32 0, i32 0, i8 8, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 90, ptr @.str.115, ptr @apll1_ck_parents, ptr null, i32 4, i32 288, i32 0, i32 0, i8 9, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 91, ptr @.str.81, ptr @apll1_ck_parents, ptr null, i32 4, i32 288, i32 0, i32 0, i8 10, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 92, ptr @.str.116, ptr @apll1_ck_parents, ptr null, i32 4, i32 288, i32 0, i32 0, i8 11, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }], [376 x i8] zeroinitializer }, align 32
@mt7622_clk_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.118, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@top_adj_divs = internal constant { [8 x %struct.mtk_clk_divider], [32 x i8] } { [8 x %struct.mtk_clk_divider] [%struct.mtk_clk_divider { i32 93, ptr @.str.119, ptr @.str.112, i32 0, i32 288, i8 24, i8 3, i8 0, ptr null }, %struct.mtk_clk_divider { i32 94, ptr @.str.120, ptr @.str.113, i32 0, i32 288, i8 28, i8 3, i8 0, ptr null }, %struct.mtk_clk_divider { i32 95, ptr @.str.121, ptr @.str.114, i32 0, i32 292, i8 0, i8 7, i8 0, ptr null }, %struct.mtk_clk_divider { i32 96, ptr @.str.122, ptr @.str.115, i32 0, i32 292, i8 8, i8 7, i8 0, ptr null }, %struct.mtk_clk_divider { i32 97, ptr @.str.123, ptr @.str.80, i32 0, i32 292, i8 16, i8 7, i8 0, ptr null }, %struct.mtk_clk_divider { i32 98, ptr @.str.124, ptr @.str.116, i32 0, i32 292, i8 24, i8 7, i8 0, ptr null }, %struct.mtk_clk_divider { i32 99, ptr @.str.125, ptr @.str.98, i32 0, i32 296, i8 8, i8 7, i8 0, ptr null }, %struct.mtk_clk_divider { i32 100, ptr @.str.126, ptr @.str.99, i32 0, i32 296, i8 24, i8 7, i8 0, ptr null }], [32 x i8] zeroinitializer }, align 32
@top_clks = internal constant { [8 x %struct.mtk_gate], [32 x i8] } { [8 x %struct.mtk_gate] [%struct.mtk_gate { i32 101, ptr @.str.127, ptr @.str.119, ptr @top0_cg_regs, i32 0, ptr @mtk_clk_gate_ops_no_setclr, i32 0 }, %struct.mtk_gate { i32 102, ptr @.str.128, ptr @.str.120, ptr @top0_cg_regs, i32 1, ptr @mtk_clk_gate_ops_no_setclr, i32 0 }, %struct.mtk_gate { i32 103, ptr @.str.129, ptr @.str.121, ptr @top0_cg_regs, i32 2, ptr @mtk_clk_gate_ops_no_setclr, i32 0 }, %struct.mtk_gate { i32 104, ptr @.str.130, ptr @.str.122, ptr @top0_cg_regs, i32 3, ptr @mtk_clk_gate_ops_no_setclr, i32 0 }, %struct.mtk_gate { i32 105, ptr @.str.131, ptr @.str.123, ptr @top0_cg_regs, i32 4, ptr @mtk_clk_gate_ops_no_setclr, i32 0 }, %struct.mtk_gate { i32 106, ptr @.str.132, ptr @.str.124, ptr @top0_cg_regs, i32 5, ptr @mtk_clk_gate_ops_no_setclr, i32 0 }, %struct.mtk_gate { i32 107, ptr @.str.133, ptr @.str.125, ptr @top1_cg_regs, i32 0, ptr @mtk_clk_gate_ops_no_setclr, i32 0 }, %struct.mtk_gate { i32 108, ptr @.str.134, ptr @.str.126, ptr @top1_cg_regs, i32 16, ptr @mtk_clk_gate_ops_no_setclr, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"to_u2_phy\00", [22 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"to_u2_phy_1p\00", [19 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcie0_pipe_en\00", [18 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pcie1_pipe_en\00", [18 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ssusb_tx250m\00", [19 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ssusb_eq_rx250m\00", [16 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ssusb_cdr_ref\00", [18 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ssusb_cdr_fb\00", [19 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sata_asic\00", [22 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sata_rbc\00", [23 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"to_usb3_sys\00", [20 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"p1_1mhz\00", [24 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"free_run_4mhz\00", [18 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"p0_1mhz\00", [24 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"txclk_src_pre\00", [18 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sgmiipll_d2\00", [20 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"rtc\00", [28 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mempll\00", [25 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dmpll_ck\00", [23 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"syspll_d2\00", [22 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"syspll1_d2\00", [21 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"syspll1_d4\00", [21 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"syspll1_d8\00", [21 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"syspll2_d4\00", [21 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"syspll2_d8\00", [21 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"syspll_d5\00", [22 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"syspll3_d2\00", [21 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"syspll3_d4\00", [21 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"syspll4_d2\00", [21 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"syspll4_d4\00", [21 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"syspll4_d16\00", [20 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"univpll\00", [24 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"univpll_d2\00", [21 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univpll1_d2\00", [20 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univpll1_d4\00", [20 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univpll1_d8\00", [20 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"univpll1_d16\00", [19 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univpll2_d2\00", [20 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univpll2_d4\00", [20 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univpll2_d8\00", [20 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"univpll2_d16\00", [19 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"univpll_d5\00", [21 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univpll3_d2\00", [20 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univpll3_d4\00", [20 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"univpll3_d16\00", [19 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"univpll_d7\00", [21 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"univpll_d80_d4\00", [17 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"univ48m\00", [24 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sgmiipll_ck\00", [20 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"aud1pll_ck\00", [21 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"aud2pll_ck\00", [21 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"aud_i2s2_mck\00", [19 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"i2s2_mck_sel\00", [19 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"to_usb3_ref\00", [20 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pcie1_mac_en\00", [19 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pcie0_mac_en\00", [19 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"eth_500m\00", [23 x i8] zeroinitializer }, align 32
@axi_parents = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.7, ptr @.str.49, ptr @.str.54, ptr @.str.50, ptr @.str.70, ptr @.str.66, ptr @.str.74], [36 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mem_sel\00", [24 x i8] zeroinitializer }, align 32
@mem_parents = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.7, ptr @.str.47], [24 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ddrphycfg_sel\00", [18 x i8] zeroinitializer }, align 32
@ddrphycfg_parents = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.7, ptr @.str.51], [24 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"eth_sel\00", [24 x i8] zeroinitializer }, align 32
@eth_parents = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.7, ptr @.str.49, ptr @.str.62, ptr @.str.50, ptr @.str.70, ptr @.str.117, ptr @.str.74], [36 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pwm_sel\00", [24 x i8] zeroinitializer }, align 32
@pwm_parents = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.7, ptr @.str.67], [24 x i8] zeroinitializer }, align 32
@f10m_ref_parents = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.7, ptr @.str.59], [24 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"nfi_infra_sel\00", [18 x i8] zeroinitializer }, align 32
@nfi_infra_parents = internal constant { [15 x ptr], [36 x i8] } { [15 x ptr] [ptr @.str.7, ptr @.str.7, ptr @.str.7, ptr @.str.7, ptr @.str.7, ptr @.str.7, ptr @.str.7, ptr @.str.7, ptr @.str.68, ptr @.str.51, ptr @.str.64, ptr @.str.57, ptr @.str.67, ptr @.str.71, ptr @.str.50], [36 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"flash_sel\00", [22 x i8] zeroinitializer }, align 32
@flash_parents = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.7, ptr @.str.75, ptr @.str.53, ptr @.str.56, ptr @.str.72, ptr @.str.64, ptr @.str.52, ptr @.str.67], [32 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uart_sel\00", [23 x i8] zeroinitializer }, align 32
@uart_parents = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.7, ptr @.str.68], [24 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spi0_sel\00", [23 x i8] zeroinitializer }, align 32
@spi0_parents = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.7, ptr @.str.55, ptr @.str.7, ptr @.str.52, ptr @.str.57, ptr @.str.67, ptr @.str.64, ptr @.str.7], [32 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spi1_sel\00", [23 x i8] zeroinitializer }, align 32
@spi1_parents = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.7, ptr @.str.55, ptr @.str.7, ptr @.str.58, ptr @.str.57, ptr @.str.67, ptr @.str.64, ptr @.str.7], [32 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"msdc50_0_sel\00", [19 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"msdc30_0_sel\00", [19 x i8] zeroinitializer }, align 32
@msdc30_0_parents = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.7, ptr @.str.69, ptr @.str.76], [20 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"msdc30_1_sel\00", [19 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"a1sys_hp_sel\00", [19 x i8] zeroinitializer }, align 32
@a1sys_hp_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.7, ptr @.str.78, ptr @.str.79, ptr @.str.7], [16 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"a2sys_hp_sel\00", [19 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"intdir_sel\00", [21 x i8] zeroinitializer }, align 32
@intdir_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.7, ptr @.str.48, ptr @.str.61, ptr @.str.77], [16 x i8] zeroinitializer }, align 32
@aud_intbus_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.7, ptr @.str.50, ptr @.str.57, ptr @.str.55], [16 x i8] zeroinitializer }, align 32
@pmicspi_parents = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.7, ptr @.str.117, ptr @.str.117, ptr @.str.117, ptr @.str.117, ptr @.str.69], [40 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"scp_sel\00", [24 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"atb_sel\00", [24 x i8] zeroinitializer }, align 32
@atb_parents = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.7, ptr @.str.49, ptr @.str.54], [20 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"hif_sel\00", [24 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"audio_sel\00", [22 x i8] zeroinitializer }, align 32
@audio_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.7, ptr @.str.56, ptr @.str.58, ptr @.str.65], [16 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb20_sel\00", [22 x i8] zeroinitializer }, align 32
@usb20_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.7, ptr @.str.72, ptr @.str.51, ptr @.str.7], [16 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"aud1_sel\00", [23 x i8] zeroinitializer }, align 32
@aud1_parents = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.7, ptr @.str.78], [24 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"aud2_sel\00", [23 x i8] zeroinitializer }, align 32
@aud2_parents = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.7, ptr @.str.79], [24 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"irtx_sel\00", [23 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"asm_l_sel\00", [22 x i8] zeroinitializer }, align 32
@asm_l_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.7, ptr @.str.54, ptr @.str.66, ptr @.str.67], [16 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"asm_m_sel\00", [22 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"asm_h_sel\00", [22 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"apll1_ck_sel\00", [19 x i8] zeroinitializer }, align 32
@apll1_ck_parents = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.106, ptr @.str.107], [24 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"apll2_ck_sel\00", [19 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"i2s0_mck_sel\00", [19 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"i2s1_mck_sel\00", [19 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"i2s3_mck_sel\00", [19 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_null\00", [23 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mt7622_clk_lock\00", [16 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"apll1_ck_div\00", [19 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"apll2_ck_div\00", [19 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"i2s0_mck_div\00", [19 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"i2s1_mck_div\00", [19 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"i2s2_mck_div\00", [19 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"i2s3_mck_div\00", [19 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"a1sys_div\00", [22 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"a2sys_div\00", [22 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"apll1_ck_div_pd\00", [16 x i8] zeroinitializer }, align 32
@top0_cg_regs = internal constant { %struct.mtk_gate_regs, [20 x i8] } { %struct.mtk_gate_regs { i32 288, i32 288, i32 288 }, [20 x i8] zeroinitializer }, align 32
@mtk_clk_gate_ops_no_setclr = external dso_local constant %struct.clk_ops, align 4
@.str.128 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"apll2_ck_div_pd\00", [16 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"i2s0_mck_div_pd\00", [16 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"i2s1_mck_div_pd\00", [16 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"i2s2_mck_div_pd\00", [16 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"i2s3_mck_div_pd\00", [16 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"a1sys_div_pd\00", [19 x i8] zeroinitializer }, align 32
@top1_cg_regs = internal constant { %struct.mtk_gate_regs, [20 x i8] } { %struct.mtk_gate_regs { i32 296, i32 296, i32 296 }, [20 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"a2sys_div_pd\00", [19 x i8] zeroinitializer }, align 32
@peri_clks = internal constant { [29 x %struct.mtk_gate], [212 x i8] } { [29 x %struct.mtk_gate] [%struct.mtk_gate { i32 1, ptr @.str.135, ptr @.str.18, ptr @peri0_cg_regs, i32 1, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 2, ptr @.str.136, ptr @.str.7, ptr @peri0_cg_regs, i32 2, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 3, ptr @.str.137, ptr @.str.7, ptr @peri0_cg_regs, i32 3, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 4, ptr @.str.138, ptr @.str.7, ptr @peri0_cg_regs, i32 4, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 5, ptr @.str.139, ptr @.str.7, ptr @peri0_cg_regs, i32 5, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 6, ptr @.str.140, ptr @.str.7, ptr @peri0_cg_regs, i32 6, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 7, ptr @.str.141, ptr @.str.7, ptr @peri0_cg_regs, i32 7, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 8, ptr @.str.142, ptr @.str.7, ptr @peri0_cg_regs, i32 8, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 9, ptr @.str.143, ptr @.str.7, ptr @peri0_cg_regs, i32 9, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 10, ptr @.str.144, ptr @.str.18, ptr @peri0_cg_regs, i32 12, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 11, ptr @.str.145, ptr @.str.96, ptr @peri0_cg_regs, i32 13, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 12, ptr @.str.146, ptr @.str.97, ptr @peri0_cg_regs, i32 14, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 13, ptr @.str.147, ptr @.str.18, ptr @peri0_cg_regs, i32 17, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 14, ptr @.str.148, ptr @.str.18, ptr @peri0_cg_regs, i32 18, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 15, ptr @.str.149, ptr @.str.18, ptr @peri0_cg_regs, i32 19, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 16, ptr @.str.150, ptr @.str.18, ptr @peri0_cg_regs, i32 20, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 17, ptr @.str.151, ptr @.str.18, ptr @peri0_cg_regs, i32 21, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 18, ptr @.str.152, ptr @.str.18, ptr @peri0_cg_regs, i32 22, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 19, ptr @.str.153, ptr @.str.18, ptr @peri0_cg_regs, i32 23, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 20, ptr @.str.154, ptr @.str.18, ptr @peri0_cg_regs, i32 24, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 21, ptr @.str.155, ptr @.str.18, ptr @peri0_cg_regs, i32 25, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 22, ptr @.str.156, ptr @.str.94, ptr @peri0_cg_regs, i32 26, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 23, ptr @.str.157, ptr @.str.7, ptr @peri0_cg_regs, i32 27, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 24, ptr @.str.158, ptr @.str.93, ptr @peri0_cg_regs, i32 28, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 25, ptr @.str.159, ptr @.str.90, ptr @peri0_cg_regs, i32 29, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 26, ptr @.str.160, ptr @.str.18, ptr @peri0_cg_regs, i32 30, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 27, ptr @.str.161, ptr @.str.18, ptr @peri0_cg_regs, i32 31, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 28, ptr @.str.162, ptr @.str.91, ptr @peri1_cg_regs, i32 1, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 29, ptr @.str.163, ptr @.str.108, ptr @peri1_cg_regs, i32 2, ptr @mtk_clk_gate_ops_setclr, i32 0 }], [212 x i8] zeroinitializer }, align 32
@peri_muxes = internal global { [1 x %struct.mtk_composite], [56 x i8] } { [1 x %struct.mtk_composite] [%struct.mtk_composite { i32 0, ptr @.str.164, ptr @peribus_ck_parents, ptr null, i32 4, i32 92, i32 0, i32 0, i8 0, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }], [56 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"peri_therm_pd\00", [18 x i8] zeroinitializer }, align 32
@peri0_cg_regs = internal constant { %struct.mtk_gate_regs, [20 x i8] } { %struct.mtk_gate_regs { i32 24, i32 16, i32 8 }, [20 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"peri_pwm1_pd\00", [19 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"peri_pwm2_pd\00", [19 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"peri_pwm3_pd\00", [19 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"peri_pwm4_pd\00", [19 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"peri_pwm5_pd\00", [19 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"peri_pwm6_pd\00", [19 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"peri_pwm7_pd\00", [19 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"peri_pwm_pd\00", [20 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"peri_ap_dma_pd\00", [17 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"peri_msdc30_0\00", [18 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"peri_msdc30_1\00", [18 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"peri_uart0_pd\00", [18 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"peri_uart1_pd\00", [18 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"peri_uart2_pd\00", [18 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"peri_uart3_pd\00", [18 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"peri_uart4_pd\00", [18 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"peri_btif_pd\00", [19 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"peri_i2c0_pd\00", [19 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"peri_i2c1_pd\00", [19 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"peri_i2c2_pd\00", [19 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"peri_spi1_pd\00", [19 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"peri_auxadc_pd\00", [17 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"peri_spi0_pd\00", [19 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"peri_snfi_pd\00", [19 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"peri_nfi_pd\00", [20 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"peri_nfiecc_pd\00", [17 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"peri_flash_pd\00", [18 x i8] zeroinitializer }, align 32
@peri1_cg_regs = internal constant { %struct.mtk_gate_regs, [20 x i8] } { %struct.mtk_gate_regs { i32 28, i32 20, i32 12 }, [20 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"peri_irtx_pd\00", [19 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"peribus_ck_sel\00", [17 x i8] zeroinitializer }, align 32
@peribus_ck_parents = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.51, ptr @.str.50], [24 x i8] zeroinitializer }, align 32
@___asan_gen_.165 = private unnamed_addr constant [15 x i8] c"clk_mt7622_drv\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 757, i32 31 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 760, i32 11 }
@___asan_gen_.171 = private unnamed_addr constant [20 x i8] c"of_match_clk_mt7622\00", align 1
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 721, i32 34 }
@___asan_gen_.174 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 750, i32 3 }
@___asan_gen_.192 = private unnamed_addr constant [5 x i8] c"plls\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 330, i32 34 }
@___asan_gen_.195 = private unnamed_addr constant [13 x i8] c"apmixed_clks\00", align 1
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 351, i32 30 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 331, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 333, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 335, i32 2 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 337, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 339, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 341, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 343, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 345, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 347, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 352, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant [16 x i8] c"apmixed_cg_regs\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 294, i32 35 }
@___asan_gen_.234 = private unnamed_addr constant [11 x i8] c"infra_clks\00", align 1
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 355, i32 30 }
@___asan_gen_.237 = private unnamed_addr constant [12 x i8] c"infra_muxes\00", align 1
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 508, i32 29 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 356, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant [14 x i8] c"infra_cg_regs\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 300, i32 35 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 357, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 358, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 359, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 360, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 361, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 509, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant [19 x i8] c"infra_mux1_parents\00", align 1
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 108, i32 27 }
@___asan_gen_.282 = private unnamed_addr constant [15 x i8] c"top_fixed_clks\00", align 1
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 364, i32 35 }
@___asan_gen_.285 = private unnamed_addr constant [9 x i8] c"top_divs\00", align 1
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 387, i32 38 }
@___asan_gen_.288 = private unnamed_addr constant [10 x i8] c"top_muxes\00", align 1
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 513, i32 29 }
@___asan_gen_.291 = private unnamed_addr constant [16 x i8] c"mt7622_clk_lock\00", align 1
@___asan_gen_.294 = private unnamed_addr constant [13 x i8] c"top_adj_divs\00", align 1
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 454, i32 37 }
@___asan_gen_.297 = private unnamed_addr constant [9 x i8] c"top_clks\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 436, i32 30 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 365, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 367, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 369, i32 2 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 371, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 373, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 375, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 377, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 379, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 381, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 383, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 388, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 389, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 390, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 391, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 392, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 393, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 394, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 395, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 396, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 397, i32 2 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 398, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 399, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 400, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 401, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 402, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 403, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 404, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 405, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 406, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 407, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 408, i32 2 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 409, i32 2 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 410, i32 2 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 411, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 412, i32 2 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 413, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 414, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 415, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 416, i32 2 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 417, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 418, i32 2 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 419, i32 2 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 420, i32 2 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 421, i32 2 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 422, i32 2 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 423, i32 2 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 424, i32 2 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 425, i32 2 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 427, i32 2 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 428, i32 2 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 429, i32 2 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 430, i32 2 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 431, i32 2 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 432, i32 2 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 433, i32 2 }
@___asan_gen_.471 = private unnamed_addr constant [12 x i8] c"axi_parents\00", align 1
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 115, i32 27 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 517, i32 2 }
@___asan_gen_.477 = private unnamed_addr constant [12 x i8] c"mem_parents\00", align 1
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 125, i32 27 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 519, i32 2 }
@___asan_gen_.483 = private unnamed_addr constant [18 x i8] c"ddrphycfg_parents\00", align 1
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 130, i32 27 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 521, i32 2 }
@___asan_gen_.489 = private unnamed_addr constant [12 x i8] c"eth_parents\00", align 1
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 135, i32 27 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 525, i32 2 }
@___asan_gen_.495 = private unnamed_addr constant [12 x i8] c"pwm_parents\00", align 1
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 145, i32 27 }
@___asan_gen_.498 = private unnamed_addr constant [17 x i8] c"f10m_ref_parents\00", align 1
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 150, i32 27 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 529, i32 2 }
@___asan_gen_.504 = private unnamed_addr constant [18 x i8] c"nfi_infra_parents\00", align 1
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 155, i32 27 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 531, i32 2 }
@___asan_gen_.510 = private unnamed_addr constant [14 x i8] c"flash_parents\00", align 1
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 173, i32 27 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 535, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant [13 x i8] c"uart_parents\00", align 1
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 184, i32 27 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 537, i32 2 }
@___asan_gen_.522 = private unnamed_addr constant [13 x i8] c"spi0_parents\00", align 1
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 189, i32 27 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 539, i32 2 }
@___asan_gen_.528 = private unnamed_addr constant [13 x i8] c"spi1_parents\00", align 1
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 200, i32 27 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 541, i32 2 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 545, i32 2 }
@___asan_gen_.537 = private unnamed_addr constant [17 x i8] c"msdc30_0_parents\00", align 1
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 211, i32 27 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 547, i32 2 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 549, i32 2 }
@___asan_gen_.546 = private unnamed_addr constant [17 x i8] c"a1sys_hp_parents\00", align 1
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 217, i32 27 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 551, i32 2 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 555, i32 2 }
@___asan_gen_.555 = private unnamed_addr constant [15 x i8] c"intdir_parents\00", align 1
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 224, i32 27 }
@___asan_gen_.558 = private unnamed_addr constant [19 x i8] c"aud_intbus_parents\00", align 1
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 231, i32 27 }
@___asan_gen_.561 = private unnamed_addr constant [16 x i8] c"pmicspi_parents\00", align 1
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 238, i32 27 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 561, i32 2 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 565, i32 2 }
@___asan_gen_.570 = private unnamed_addr constant [12 x i8] c"atb_parents\00", align 1
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 247, i32 27 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 567, i32 2 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 569, i32 2 }
@___asan_gen_.579 = private unnamed_addr constant [14 x i8] c"audio_parents\00", align 1
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 253, i32 27 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 571, i32 2 }
@___asan_gen_.585 = private unnamed_addr constant [14 x i8] c"usb20_parents\00", align 1
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 260, i32 27 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 575, i32 2 }
@___asan_gen_.591 = private unnamed_addr constant [13 x i8] c"aud1_parents\00", align 1
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 267, i32 27 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 577, i32 2 }
@___asan_gen_.597 = private unnamed_addr constant [13 x i8] c"aud2_parents\00", align 1
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 272, i32 27 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 581, i32 2 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 585, i32 2 }
@___asan_gen_.606 = private unnamed_addr constant [14 x i8] c"asm_l_parents\00", align 1
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 277, i32 27 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 587, i32 2 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 589, i32 2 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 593, i32 2 }
@___asan_gen_.618 = private unnamed_addr constant [17 x i8] c"apll1_ck_parents\00", align 1
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 284, i32 27 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 595, i32 2 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 597, i32 2 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 599, i32 2 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 603, i32 2 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 141, i32 2 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 106, i32 8 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 455, i32 2 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 457, i32 2 }
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 459, i32 2 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 461, i32 2 }
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 463, i32 2 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 465, i32 2 }
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 467, i32 2 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 469, i32 2 }
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 438, i32 2 }
@___asan_gen_.666 = private unnamed_addr constant [13 x i8] c"top0_cg_regs\00", align 1
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 306, i32 35 }
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 439, i32 2 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 440, i32 2 }
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 442, i32 2 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 444, i32 2 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 446, i32 2 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 450, i32 2 }
@___asan_gen_.687 = private unnamed_addr constant [13 x i8] c"top1_cg_regs\00", align 1
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 312, i32 35 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 451, i32 2 }
@___asan_gen_.693 = private unnamed_addr constant [10 x i8] c"peri_clks\00", align 1
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 473, i32 30 }
@___asan_gen_.696 = private unnamed_addr constant [11 x i8] c"peri_muxes\00", align 1
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 607, i32 29 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 475, i32 2 }
@___asan_gen_.702 = private unnamed_addr constant [14 x i8] c"peri0_cg_regs\00", align 1
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 318, i32 35 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 476, i32 2 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 477, i32 2 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 478, i32 2 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 479, i32 2 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 480, i32 2 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 481, i32 2 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 482, i32 2 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 483, i32 2 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 484, i32 2 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 485, i32 2 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 486, i32 2 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 487, i32 2 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 488, i32 2 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 489, i32 2 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 490, i32 2 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 491, i32 2 }
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 492, i32 2 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 493, i32 2 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 494, i32 2 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 495, i32 2 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 496, i32 2 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 497, i32 2 }
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 498, i32 2 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 499, i32 2 }
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 500, i32 2 }
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 501, i32 2 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 504, i32 2 }
@___asan_gen_.786 = private unnamed_addr constant [14 x i8] c"peri1_cg_regs\00", align 1
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 324, i32 35 }
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 505, i32 2 }
@___asan_gen_.792 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 609, i32 2 }
@___asan_gen_.795 = private unnamed_addr constant [19 x i8] c"peribus_ck_parents\00", align 1
@___asan_gen_.796 = private constant [37 x i8] c"../drivers/clk/mediatek/clk-mt7622.c\00", align 1
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.796, i32 289, i32 27 }
@llvm.compiler.used = appending global [213 x ptr] [ptr @__initcall__kmod_clk_mt7622__170_770_clk_mt7622_init3, ptr @clk_mt7622_probe._entry, ptr @clk_mt7622_probe._entry_ptr, ptr @clk_mt7622_drv, ptr @.str, ptr @of_match_clk_mt7622, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @plls, ptr @apmixed_clks, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @apmixed_cg_regs, ptr @infra_clks, ptr @infra_muxes, ptr @.str.17, ptr @.str.18, ptr @infra_cg_regs, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @infra_mux1_parents, ptr @top_fixed_clks, ptr @top_divs, ptr @top_muxes, ptr @mt7622_clk_lock, ptr @top_adj_divs, ptr @top_clks, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @axi_parents, ptr @.str.86, ptr @mem_parents, ptr @.str.87, ptr @ddrphycfg_parents, ptr @.str.88, ptr @eth_parents, ptr @.str.89, ptr @pwm_parents, ptr @f10m_ref_parents, ptr @.str.90, ptr @nfi_infra_parents, ptr @.str.91, ptr @flash_parents, ptr @.str.92, ptr @uart_parents, ptr @.str.93, ptr @spi0_parents, ptr @.str.94, ptr @spi1_parents, ptr @.str.95, ptr @.str.96, ptr @msdc30_0_parents, ptr @.str.97, ptr @.str.98, ptr @a1sys_hp_parents, ptr @.str.99, ptr @.str.100, ptr @intdir_parents, ptr @aud_intbus_parents, ptr @pmicspi_parents, ptr @.str.101, ptr @.str.102, ptr @atb_parents, ptr @.str.103, ptr @.str.104, ptr @audio_parents, ptr @.str.105, ptr @usb20_parents, ptr @.str.106, ptr @aud1_parents, ptr @.str.107, ptr @aud2_parents, ptr @.str.108, ptr @.str.109, ptr @asm_l_parents, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @apll1_ck_parents, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @top0_cg_regs, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @top1_cg_regs, ptr @.str.134, ptr @peri_clks, ptr @peri_muxes, ptr @.str.135, ptr @peri0_cg_regs, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @peri1_cg_regs, ptr @.str.163, ptr @.str.164, ptr @peribus_ck_parents], section "llvm.metadata"
@0 = internal global [211 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mt7622_drv to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_match_clk_mt7622 to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mt7622_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plls to i32), i32 864, i32 1056, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apmixed_clks to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apmixed_cg_regs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @infra_clks to i32), i32 168, i32 224, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @infra_muxes to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @infra_cg_regs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @infra_mux1_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @top_fixed_clks to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @top_divs to i32), i32 920, i32 1152, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @top_muxes to i32), i32 1480, i32 1856, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7622_clk_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @top_adj_divs to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @top_clks to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axi_parents to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mem_parents to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddrphycfg_parents to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @eth_parents to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_parents to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @f10m_ref_parents to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfi_infra_parents to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flash_parents to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart_parents to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi0_parents to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi1_parents to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msdc30_0_parents to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a1sys_hp_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intdir_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aud_intbus_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmicspi_parents to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atb_parents to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb20_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aud1_parents to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aud2_parents to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asm_l_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apll1_ck_parents to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @top0_cg_regs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @top1_cg_regs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @peri_clks to i32), i32 812, i32 1024, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @peri_muxes to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @peri0_cg_regs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @peri1_cg_regs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @peribus_ck_parents to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 ptrtoint (ptr @___asan_gen_.796 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_mt7622_init() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @clk_mt7622_drv, ptr noundef null) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_mt7622_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev) #3
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 %call(ptr noundef %pdev) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %0 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pdev, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef %1, i32 noundef %call1) #6
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
define internal i32 @mtk_apmixedsys_init(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @mtk_alloc_clk_data(i32 noundef 10) #3
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @mtk_clk_register_plls(ptr noundef %1, ptr noundef nonnull @plls, i32 noundef 9, ptr noundef nonnull %call) #3
  %call1 = tail call i32 @mtk_clk_register_gates(ptr noundef %1, ptr noundef nonnull @apmixed_clks, i32 noundef 1, ptr noundef nonnull %call) #3
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %call, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %5) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.clk_prepare_enable.exit_crit_edge

if.end.clk_prepare_enable.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @clk_unprepare(ptr noundef %5) #3
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %if.end.clk_prepare_enable.exit_crit_edge
  %6 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call, align 4
  %arrayidx4 = getelementptr ptr, ptr %7, i32 9
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx4, align 4
  %call.i15 = tail call i32 @clk_prepare(ptr noundef %9) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i15)
  %tobool.not.i16 = icmp eq i32 %call.i15, 0
  br i1 %tobool.not.i16, label %if.end.i19, label %clk_prepare_enable.exit.clk_prepare_enable.exit21_crit_edge

clk_prepare_enable.exit.clk_prepare_enable.exit21_crit_edge: ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %clk_prepare_enable.exit21

if.end.i19:                                       ; preds = %clk_prepare_enable.exit
  %call1.i17 = tail call i32 @clk_enable(ptr noundef %9) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i17)
  %tobool2.not.i18 = icmp eq i32 %call1.i17, 0
  br i1 %tobool2.not.i18, label %if.end.i19.clk_prepare_enable.exit21_crit_edge, label %if.then3.i20

if.end.i19.clk_prepare_enable.exit21_crit_edge:   ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #5
  br label %clk_prepare_enable.exit21

if.then3.i20:                                     ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @clk_unprepare(ptr noundef %9) #3
  br label %clk_prepare_enable.exit21

clk_prepare_enable.exit21:                        ; preds = %if.then3.i20, %if.end.i19.clk_prepare_enable.exit21_crit_edge, %clk_prepare_enable.exit.clk_prepare_enable.exit21_crit_edge
  %call6 = tail call i32 @of_clk_add_provider(ptr noundef %1, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull %call) #3
  br label %cleanup

cleanup:                                          ; preds = %clk_prepare_enable.exit21, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %clk_prepare_enable.exit21 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_infrasys_init(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @mtk_alloc_clk_data(i32 noundef 7) #3
  %call1 = tail call i32 @mtk_clk_register_gates(ptr noundef %1, ptr noundef nonnull @infra_clks, i32 noundef 6, ptr noundef %call) #3
  %call2 = tail call i32 @mtk_clk_register_cpumuxes(ptr noundef %1, ptr noundef nonnull @infra_muxes, i32 noundef 1, ptr noundef %call) #3
  %call3 = tail call i32 @of_clk_add_provider(ptr noundef %1, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %call) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @mtk_register_reset_controller(ptr noundef %1, i32 noundef 1, i32 noundef 48) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_topckgen_init(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #3
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @mtk_alloc_clk_data(i32 noundef 109) #3
  tail call void @mtk_clk_register_fixed_clks(ptr noundef nonnull @top_fixed_clks, i32 noundef 10, ptr noundef %call3) #3
  tail call void @mtk_clk_register_factors(ptr noundef nonnull @top_divs, i32 noundef 46, ptr noundef %call3) #3
  tail call void @mtk_clk_register_composites(ptr noundef nonnull @top_muxes, i32 noundef 37, ptr noundef %call, ptr noundef nonnull @mt7622_clk_lock, ptr noundef %call3) #3
  tail call void @mtk_clk_register_dividers(ptr noundef nonnull @top_adj_divs, i32 noundef 8, ptr noundef %call, ptr noundef nonnull @mt7622_clk_lock, ptr noundef %call3) #3
  %call4 = tail call i32 @mtk_clk_register_gates(ptr noundef %1, ptr noundef nonnull @top_clks, i32 noundef 8, ptr noundef %call3) #3
  %3 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call3, align 4
  %arrayidx = getelementptr ptr, ptr %4, i32 56
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %6) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end.clk_prepare_enable.exit_crit_edge

if.end.clk_prepare_enable.exit_crit_edge:         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end
  %call1.i = tail call i32 @clk_enable(ptr noundef %6) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @clk_unprepare(ptr noundef %6) #3
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %if.end.clk_prepare_enable.exit_crit_edge
  %7 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call3, align 4
  %arrayidx7 = getelementptr ptr, ptr %8, i32 57
  %9 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx7, align 4
  %call.i28 = tail call i32 @clk_prepare(ptr noundef %10) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28)
  %tobool.not.i29 = icmp eq i32 %call.i28, 0
  br i1 %tobool.not.i29, label %if.end.i32, label %clk_prepare_enable.exit.clk_prepare_enable.exit34_crit_edge

clk_prepare_enable.exit.clk_prepare_enable.exit34_crit_edge: ; preds = %clk_prepare_enable.exit
  call void @__sanitizer_cov_trace_pc() #5
  br label %clk_prepare_enable.exit34

if.end.i32:                                       ; preds = %clk_prepare_enable.exit
  %call1.i30 = tail call i32 @clk_enable(ptr noundef %10) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i30)
  %tobool2.not.i31 = icmp eq i32 %call1.i30, 0
  br i1 %tobool2.not.i31, label %if.end.i32.clk_prepare_enable.exit34_crit_edge, label %if.then3.i33

if.end.i32.clk_prepare_enable.exit34_crit_edge:   ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #5
  br label %clk_prepare_enable.exit34

if.then3.i33:                                     ; preds = %if.end.i32
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @clk_unprepare(ptr noundef %10) #3
  br label %clk_prepare_enable.exit34

clk_prepare_enable.exit34:                        ; preds = %if.then3.i33, %if.end.i32.clk_prepare_enable.exit34_crit_edge, %clk_prepare_enable.exit.clk_prepare_enable.exit34_crit_edge
  %11 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %call3, align 4
  %arrayidx10 = getelementptr ptr, ptr %12, i32 58
  %13 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx10, align 4
  %call.i35 = tail call i32 @clk_prepare(ptr noundef %14) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35)
  %tobool.not.i36 = icmp eq i32 %call.i35, 0
  br i1 %tobool.not.i36, label %if.end.i39, label %clk_prepare_enable.exit34.clk_prepare_enable.exit41_crit_edge

clk_prepare_enable.exit34.clk_prepare_enable.exit41_crit_edge: ; preds = %clk_prepare_enable.exit34
  call void @__sanitizer_cov_trace_pc() #5
  br label %clk_prepare_enable.exit41

if.end.i39:                                       ; preds = %clk_prepare_enable.exit34
  %call1.i37 = tail call i32 @clk_enable(ptr noundef %14) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i37)
  %tobool2.not.i38 = icmp eq i32 %call1.i37, 0
  br i1 %tobool2.not.i38, label %if.end.i39.clk_prepare_enable.exit41_crit_edge, label %if.then3.i40

if.end.i39.clk_prepare_enable.exit41_crit_edge:   ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #5
  br label %clk_prepare_enable.exit41

if.then3.i40:                                     ; preds = %if.end.i39
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @clk_unprepare(ptr noundef %14) #3
  br label %clk_prepare_enable.exit41

clk_prepare_enable.exit41:                        ; preds = %if.then3.i40, %if.end.i39.clk_prepare_enable.exit41_crit_edge, %clk_prepare_enable.exit34.clk_prepare_enable.exit41_crit_edge
  %call12 = tail call i32 @of_clk_add_provider(ptr noundef %1, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %call3) #3
  br label %cleanup

cleanup:                                          ; preds = %clk_prepare_enable.exit41, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %call12, %clk_prepare_enable.exit41 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_pericfg_init(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #3
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %2 = ptrtoint ptr %call to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @mtk_alloc_clk_data(i32 noundef 30) #3
  %call4 = tail call i32 @mtk_clk_register_gates(ptr noundef %1, ptr noundef nonnull @peri_clks, i32 noundef 29, ptr noundef %call3) #3
  tail call void @mtk_clk_register_composites(ptr noundef nonnull @peri_muxes, i32 noundef 1, ptr noundef %call, ptr noundef nonnull @mt7622_clk_lock, ptr noundef %call3) #3
  %call5 = tail call i32 @of_clk_add_provider(ptr noundef %1, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %call3) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %3 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call3, align 4
  %arrayidx = getelementptr ptr, ptr %4, i32 13
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %6) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end7.clk_prepare_enable.exit_crit_edge

if.end7.clk_prepare_enable.exit_crit_edge:        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #5
  br label %clk_prepare_enable.exit

if.end.i:                                         ; preds = %if.end7
  %call1.i = tail call i32 @clk_enable(ptr noundef %6) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.clk_prepare_enable.exit_crit_edge, label %if.then3.i

if.end.i.clk_prepare_enable.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %clk_prepare_enable.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @clk_unprepare(ptr noundef %6) #3
  br label %clk_prepare_enable.exit

clk_prepare_enable.exit:                          ; preds = %if.then3.i, %if.end.i.clk_prepare_enable.exit_crit_edge, %if.end7.clk_prepare_enable.exit_crit_edge
  tail call void @mtk_register_reset_controller(ptr noundef %1, i32 noundef 2, i32 noundef 0) #3
  br label %cleanup

cleanup:                                          ; preds = %clk_prepare_enable.exit, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ 0, %clk_prepare_enable.exit ], [ %call5, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

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
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_clk_register_cpumuxes(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_register_reset_controller(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_clk_register_fixed_clks(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_clk_register_factors(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_clk_register_composites(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_clk_register_dividers(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 211)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 211)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !18, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !46, !48, !50, !51, !53, !54, !56, !57, !59, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409}
!llvm.module.flags = !{!411, !412, !413, !414, !415, !416, !417, !418}
!llvm.ident = !{!419}

!0 = !{ptr @__initcall__kmod_clk_mt7622__170_770_clk_mt7622_init3, !1, !"__initcall__kmod_clk_mt7622__170_770_clk_mt7622_init3", i1 false, i1 false}
!1 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 770, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 760, i32 11}
!4 = !{ptr @clk_mt7622_drv, !5, !"clk_mt7622_drv", i1 false, i1 false}
!5 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 757, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 750, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @clk_mt7622_probe._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @clk_mt7622_probe._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @of_match_clk_mt7622, !15, !"of_match_clk_mt7622", i1 false, i1 false}
!15 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 721, i32 34}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 331, i32 2}
!18 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.8, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 333, i32 2}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 335, i32 2}
!23 = !{ptr @.str.10, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 337, i32 2}
!25 = !{ptr @.str.11, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 339, i32 2}
!27 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 341, i32 2}
!29 = !{ptr @.str.13, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 343, i32 2}
!31 = !{ptr @.str.14, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 345, i32 2}
!33 = !{ptr @.str.15, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 347, i32 2}
!35 = !{ptr @plls, !36, !"plls", i1 false, i1 false}
!36 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 330, i32 34}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 352, i32 2}
!39 = !{ptr @apmixed_clks, !40, !"apmixed_clks", i1 false, i1 false}
!40 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 351, i32 30}
!41 = !{ptr @apmixed_cg_regs, !42, !"apmixed_cg_regs", i1 false, i1 false}
!42 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 294, i32 35}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 356, i32 2}
!45 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 357, i32 2}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 358, i32 2}
!50 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @.str.22, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 359, i32 2}
!53 = !{ptr @.str.23, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 360, i32 2}
!56 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 361, i32 2}
!59 = !{ptr @.str.27, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @infra_clks, !61, !"infra_clks", i1 false, i1 false}
!61 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 355, i32 30}
!62 = !{ptr @infra_cg_regs, !63, !"infra_cg_regs", i1 false, i1 false}
!63 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 300, i32 35}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 509, i32 2}
!66 = !{ptr @infra_muxes, !67, !"infra_muxes", i1 false, i1 false}
!67 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 508, i32 29}
!68 = !{ptr @infra_mux1_parents, !69, !"infra_mux1_parents", i1 false, i1 false}
!69 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 108, i32 27}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 365, i32 2}
!72 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 367, i32 2}
!74 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 369, i32 2}
!76 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 371, i32 2}
!78 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 373, i32 2}
!80 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 375, i32 2}
!82 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 377, i32 2}
!84 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 379, i32 2}
!86 = !{ptr @.str.37, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 381, i32 2}
!88 = !{ptr @.str.38, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 383, i32 2}
!90 = !{ptr @top_fixed_clks, !91, !"top_fixed_clks", i1 false, i1 false}
!91 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 364, i32 35}
!92 = !{ptr @.str.39, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 388, i32 2}
!94 = !{ptr @.str.40, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 389, i32 2}
!96 = !{ptr @.str.41, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 390, i32 2}
!98 = !{ptr @.str.42, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 391, i32 2}
!100 = !{ptr @.str.43, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 392, i32 2}
!102 = !{ptr @.str.44, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.45, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 393, i32 2}
!105 = !{ptr @.str.46, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 394, i32 2}
!107 = !{ptr @.str.47, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 395, i32 2}
!109 = !{ptr @.str.48, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 396, i32 2}
!111 = !{ptr @.str.49, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 397, i32 2}
!113 = !{ptr @.str.50, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 398, i32 2}
!115 = !{ptr @.str.51, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 399, i32 2}
!117 = !{ptr @.str.52, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 400, i32 2}
!119 = !{ptr @.str.53, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 401, i32 2}
!121 = !{ptr @.str.54, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 402, i32 2}
!123 = !{ptr @.str.55, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 403, i32 2}
!125 = !{ptr @.str.56, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 404, i32 2}
!127 = !{ptr @.str.57, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 405, i32 2}
!129 = !{ptr @.str.58, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 406, i32 2}
!131 = !{ptr @.str.59, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 407, i32 2}
!133 = !{ptr @.str.60, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 408, i32 2}
!135 = !{ptr @.str.61, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 409, i32 2}
!137 = !{ptr @.str.62, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 410, i32 2}
!139 = !{ptr @.str.63, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 411, i32 2}
!141 = !{ptr @.str.64, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 412, i32 2}
!143 = !{ptr @.str.65, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 413, i32 2}
!145 = !{ptr @.str.66, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 414, i32 2}
!147 = !{ptr @.str.67, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 415, i32 2}
!149 = !{ptr @.str.68, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 416, i32 2}
!151 = !{ptr @.str.69, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 417, i32 2}
!153 = !{ptr @.str.70, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 418, i32 2}
!155 = !{ptr @.str.71, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 419, i32 2}
!157 = !{ptr @.str.72, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 420, i32 2}
!159 = !{ptr @.str.73, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 421, i32 2}
!161 = !{ptr @.str.74, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 422, i32 2}
!163 = !{ptr @.str.75, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 423, i32 2}
!165 = !{ptr @.str.76, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 424, i32 2}
!167 = !{ptr @.str.77, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 425, i32 2}
!169 = !{ptr @.str.78, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 427, i32 2}
!171 = !{ptr @.str.79, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 428, i32 2}
!173 = !{ptr @.str.80, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 429, i32 2}
!175 = !{ptr @.str.81, !174, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @.str.82, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 430, i32 2}
!178 = !{ptr @.str.83, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 431, i32 2}
!180 = !{ptr @.str.84, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 432, i32 2}
!182 = !{ptr @.str.85, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 433, i32 2}
!184 = !{ptr @top_divs, !185, !"top_divs", i1 false, i1 false}
!185 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 387, i32 38}
!186 = !{ptr @.str.86, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 517, i32 2}
!188 = !{ptr @.str.87, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 519, i32 2}
!190 = !{ptr @.str.88, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 521, i32 2}
!192 = !{ptr @.str.89, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 525, i32 2}
!194 = !{ptr @.str.90, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 529, i32 2}
!196 = !{ptr @.str.91, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 531, i32 2}
!198 = !{ptr @.str.92, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 535, i32 2}
!200 = !{ptr @.str.93, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 537, i32 2}
!202 = !{ptr @.str.94, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 539, i32 2}
!204 = !{ptr @.str.95, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 541, i32 2}
!206 = !{ptr @.str.96, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 545, i32 2}
!208 = !{ptr @.str.97, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 547, i32 2}
!210 = !{ptr @.str.98, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 549, i32 2}
!212 = !{ptr @.str.99, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 551, i32 2}
!214 = !{ptr @.str.100, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 555, i32 2}
!216 = !{ptr @.str.101, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 561, i32 2}
!218 = !{ptr @.str.102, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 565, i32 2}
!220 = !{ptr @.str.103, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 567, i32 2}
!222 = !{ptr @.str.104, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 569, i32 2}
!224 = !{ptr @.str.105, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 571, i32 2}
!226 = !{ptr @.str.106, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 575, i32 2}
!228 = !{ptr @.str.107, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 577, i32 2}
!230 = !{ptr @.str.108, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 581, i32 2}
!232 = !{ptr @.str.109, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 585, i32 2}
!234 = !{ptr @.str.110, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 587, i32 2}
!236 = !{ptr @.str.111, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 589, i32 2}
!238 = !{ptr @.str.112, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 593, i32 2}
!240 = !{ptr @.str.113, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 595, i32 2}
!242 = !{ptr @.str.114, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 597, i32 2}
!244 = !{ptr @.str.115, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 599, i32 2}
!246 = !{ptr @.str.116, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 603, i32 2}
!248 = !{ptr @top_muxes, !249, !"top_muxes", i1 false, i1 false}
!249 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 513, i32 29}
!250 = !{ptr @axi_parents, !251, !"axi_parents", i1 false, i1 false}
!251 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 115, i32 27}
!252 = !{ptr @mem_parents, !253, !"mem_parents", i1 false, i1 false}
!253 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 125, i32 27}
!254 = !{ptr @ddrphycfg_parents, !255, !"ddrphycfg_parents", i1 false, i1 false}
!255 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 130, i32 27}
!256 = !{ptr @.str.117, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 141, i32 2}
!258 = !{ptr @eth_parents, !259, !"eth_parents", i1 false, i1 false}
!259 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 135, i32 27}
!260 = !{ptr @pwm_parents, !261, !"pwm_parents", i1 false, i1 false}
!261 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 145, i32 27}
!262 = !{ptr @f10m_ref_parents, !263, !"f10m_ref_parents", i1 false, i1 false}
!263 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 150, i32 27}
!264 = !{ptr @nfi_infra_parents, !265, !"nfi_infra_parents", i1 false, i1 false}
!265 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 155, i32 27}
!266 = !{ptr @flash_parents, !267, !"flash_parents", i1 false, i1 false}
!267 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 173, i32 27}
!268 = !{ptr @uart_parents, !269, !"uart_parents", i1 false, i1 false}
!269 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 184, i32 27}
!270 = !{ptr @spi0_parents, !271, !"spi0_parents", i1 false, i1 false}
!271 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 189, i32 27}
!272 = !{ptr @spi1_parents, !273, !"spi1_parents", i1 false, i1 false}
!273 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 200, i32 27}
!274 = !{ptr @msdc30_0_parents, !275, !"msdc30_0_parents", i1 false, i1 false}
!275 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 211, i32 27}
!276 = !{ptr @a1sys_hp_parents, !277, !"a1sys_hp_parents", i1 false, i1 false}
!277 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 217, i32 27}
!278 = !{ptr @intdir_parents, !279, !"intdir_parents", i1 false, i1 false}
!279 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 224, i32 27}
!280 = !{ptr @aud_intbus_parents, !281, !"aud_intbus_parents", i1 false, i1 false}
!281 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 231, i32 27}
!282 = !{ptr @pmicspi_parents, !283, !"pmicspi_parents", i1 false, i1 false}
!283 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 238, i32 27}
!284 = !{ptr @atb_parents, !285, !"atb_parents", i1 false, i1 false}
!285 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 247, i32 27}
!286 = !{ptr @audio_parents, !287, !"audio_parents", i1 false, i1 false}
!287 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 253, i32 27}
!288 = !{ptr @usb20_parents, !289, !"usb20_parents", i1 false, i1 false}
!289 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 260, i32 27}
!290 = !{ptr @aud1_parents, !291, !"aud1_parents", i1 false, i1 false}
!291 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 267, i32 27}
!292 = !{ptr @aud2_parents, !293, !"aud2_parents", i1 false, i1 false}
!293 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 272, i32 27}
!294 = !{ptr @asm_l_parents, !295, !"asm_l_parents", i1 false, i1 false}
!295 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 277, i32 27}
!296 = !{ptr @apll1_ck_parents, !297, !"apll1_ck_parents", i1 false, i1 false}
!297 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 284, i32 27}
!298 = !{ptr @.str.118, !299, !"<string literal>", i1 false, i1 false}
!299 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 106, i32 8}
!300 = !{ptr @mt7622_clk_lock, !299, !"mt7622_clk_lock", i1 false, i1 false}
!301 = !{ptr @.str.119, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 455, i32 2}
!303 = !{ptr @.str.120, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 457, i32 2}
!305 = !{ptr @.str.121, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 459, i32 2}
!307 = !{ptr @.str.122, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 461, i32 2}
!309 = !{ptr @.str.123, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 463, i32 2}
!311 = !{ptr @.str.124, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 465, i32 2}
!313 = !{ptr @.str.125, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 467, i32 2}
!315 = !{ptr @.str.126, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 469, i32 2}
!317 = !{ptr @top_adj_divs, !318, !"top_adj_divs", i1 false, i1 false}
!318 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 454, i32 37}
!319 = !{ptr @.str.127, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 438, i32 2}
!321 = !{ptr @.str.128, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 439, i32 2}
!323 = !{ptr @.str.129, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 440, i32 2}
!325 = !{ptr @.str.130, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 442, i32 2}
!327 = !{ptr @.str.131, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 444, i32 2}
!329 = !{ptr @.str.132, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 446, i32 2}
!331 = !{ptr @.str.133, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 450, i32 2}
!333 = !{ptr @.str.134, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 451, i32 2}
!335 = !{ptr @top_clks, !336, !"top_clks", i1 false, i1 false}
!336 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 436, i32 30}
!337 = !{ptr @top0_cg_regs, !338, !"top0_cg_regs", i1 false, i1 false}
!338 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 306, i32 35}
!339 = !{ptr @top1_cg_regs, !340, !"top1_cg_regs", i1 false, i1 false}
!340 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 312, i32 35}
!341 = !{ptr @.str.135, !342, !"<string literal>", i1 false, i1 false}
!342 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 475, i32 2}
!343 = !{ptr @.str.136, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 476, i32 2}
!345 = !{ptr @.str.137, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 477, i32 2}
!347 = !{ptr @.str.138, !348, !"<string literal>", i1 false, i1 false}
!348 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 478, i32 2}
!349 = !{ptr @.str.139, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 479, i32 2}
!351 = !{ptr @.str.140, !352, !"<string literal>", i1 false, i1 false}
!352 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 480, i32 2}
!353 = !{ptr @.str.141, !354, !"<string literal>", i1 false, i1 false}
!354 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 481, i32 2}
!355 = !{ptr @.str.142, !356, !"<string literal>", i1 false, i1 false}
!356 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 482, i32 2}
!357 = !{ptr @.str.143, !358, !"<string literal>", i1 false, i1 false}
!358 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 483, i32 2}
!359 = !{ptr @.str.144, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 484, i32 2}
!361 = !{ptr @.str.145, !362, !"<string literal>", i1 false, i1 false}
!362 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 485, i32 2}
!363 = !{ptr @.str.146, !364, !"<string literal>", i1 false, i1 false}
!364 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 486, i32 2}
!365 = !{ptr @.str.147, !366, !"<string literal>", i1 false, i1 false}
!366 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 487, i32 2}
!367 = !{ptr @.str.148, !368, !"<string literal>", i1 false, i1 false}
!368 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 488, i32 2}
!369 = !{ptr @.str.149, !370, !"<string literal>", i1 false, i1 false}
!370 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 489, i32 2}
!371 = !{ptr @.str.150, !372, !"<string literal>", i1 false, i1 false}
!372 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 490, i32 2}
!373 = !{ptr @.str.151, !374, !"<string literal>", i1 false, i1 false}
!374 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 491, i32 2}
!375 = !{ptr @.str.152, !376, !"<string literal>", i1 false, i1 false}
!376 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 492, i32 2}
!377 = !{ptr @.str.153, !378, !"<string literal>", i1 false, i1 false}
!378 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 493, i32 2}
!379 = !{ptr @.str.154, !380, !"<string literal>", i1 false, i1 false}
!380 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 494, i32 2}
!381 = !{ptr @.str.155, !382, !"<string literal>", i1 false, i1 false}
!382 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 495, i32 2}
!383 = !{ptr @.str.156, !384, !"<string literal>", i1 false, i1 false}
!384 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 496, i32 2}
!385 = !{ptr @.str.157, !386, !"<string literal>", i1 false, i1 false}
!386 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 497, i32 2}
!387 = !{ptr @.str.158, !388, !"<string literal>", i1 false, i1 false}
!388 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 498, i32 2}
!389 = !{ptr @.str.159, !390, !"<string literal>", i1 false, i1 false}
!390 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 499, i32 2}
!391 = !{ptr @.str.160, !392, !"<string literal>", i1 false, i1 false}
!392 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 500, i32 2}
!393 = !{ptr @.str.161, !394, !"<string literal>", i1 false, i1 false}
!394 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 501, i32 2}
!395 = !{ptr @.str.162, !396, !"<string literal>", i1 false, i1 false}
!396 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 504, i32 2}
!397 = !{ptr @.str.163, !398, !"<string literal>", i1 false, i1 false}
!398 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 505, i32 2}
!399 = !{ptr @peri_clks, !400, !"peri_clks", i1 false, i1 false}
!400 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 473, i32 30}
!401 = !{ptr @peri0_cg_regs, !402, !"peri0_cg_regs", i1 false, i1 false}
!402 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 318, i32 35}
!403 = !{ptr @peri1_cg_regs, !404, !"peri1_cg_regs", i1 false, i1 false}
!404 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 324, i32 35}
!405 = !{ptr @.str.164, !406, !"<string literal>", i1 false, i1 false}
!406 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 609, i32 2}
!407 = !{ptr @peri_muxes, !408, !"peri_muxes", i1 false, i1 false}
!408 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 607, i32 29}
!409 = !{ptr @peribus_ck_parents, !410, !"peribus_ck_parents", i1 false, i1 false}
!410 = !{!"../drivers/clk/mediatek/clk-mt7622.c", i32 289, i32 27}
!411 = !{i32 1, !"wchar_size", i32 2}
!412 = !{i32 1, !"min_enum_size", i32 4}
!413 = !{i32 8, !"branch-target-enforcement", i32 0}
!414 = !{i32 8, !"sign-return-address", i32 0}
!415 = !{i32 8, !"sign-return-address-all", i32 0}
!416 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!417 = !{i32 7, !"uwtable", i32 1}
!418 = !{i32 7, !"frame-pointer", i32 2}
!419 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
