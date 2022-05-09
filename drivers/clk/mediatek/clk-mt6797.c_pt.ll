; ModuleID = '/llk/IR_all_yes/drivers/clk/mediatek/clk-mt6797.c_pt.bc'
source_filename = "../drivers/clk/mediatek/clk-mt6797.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.mtk_fixed_factor = type { i32, ptr, ptr, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mtk_composite = type { i32, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mtk_gate = type { i32, ptr, ptr, ptr, i32, ptr, i32 }
%struct.mtk_gate_regs = type { i32, i32, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mtk_pll_data = type { i32, ptr, i32, i32, i32, i32, i32, i32, i8, i32, i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, i32, i8 }
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

@__of_table_mtk_infra = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt6797-infracfg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_infra_of_clk_init_driver }, section "__clk_of_table", align 4
@__initcall__kmod_clk_mt6797__170_719_clk_mt6797_init3 = internal global ptr @clk_mt6797_init, section ".initcall3.init", align 4
@infra_clk_data = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@infra_fixed_divs = internal constant { [1 x %struct.mtk_fixed_factor], [44 x i8] } { [1 x %struct.mtk_fixed_factor] [%struct.mtk_fixed_factor { i32 84, ptr @.str.3, ptr @.str.4, i32 1, i32 2 }], [44 x i8] zeroinitializer }, align 32
@mtk_infrasys_init_early._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 577, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s(): could not register clock provider: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mtk_infrasys_init_early\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/clk/mediatek/clk-mt6797.c\00", [62 x i8] zeroinitializer }, align 32
@mtk_infrasys_init_early._entry_ptr = internal global ptr @mtk_infrasys_init_early._entry, section ".printk_index", align 4
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"clk13m\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"clk26m\00", [25 x i8] zeroinitializer }, align 32
@clk_mt6797_drv = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @clk_mt6797_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.5, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_match_clk_mt6797, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clk-mt6797\00", [21 x i8] zeroinitializer }, align 32
@of_match_clk_mt6797 = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt6797-topckgen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_topckgen_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt6797-infracfg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_infrasys_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt6797-apmixedsys\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_apmixedsys_init }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@clk_mt6797_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.7, ptr @.str.2, i32 701, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"could not register clock provider: %s: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clk_mt6797_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@clk_mt6797_probe._entry_ptr = internal global ptr @clk_mt6797_probe._entry, section ".printk_index", align 4
@top_fixed_divs = internal constant { [60 x %struct.mtk_fixed_factor], [304 x i8] } { [60 x %struct.mtk_fixed_factor] [%struct.mtk_fixed_factor { i32 35, ptr @.str.10, ptr @.str.11, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 36, ptr @.str.12, ptr @.str.11, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 37, ptr @.str.13, ptr @.str.12, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 38, ptr @.str.14, ptr @.str.12, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 39, ptr @.str.15, ptr @.str.12, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 40, ptr @.str.16, ptr @.str.12, i32 1, i32 16 }, %struct.mtk_fixed_factor { i32 41, ptr @.str.17, ptr @.str.11, i32 1, i32 3 }, %struct.mtk_fixed_factor { i32 42, ptr @.str.18, ptr @.str.17, i32 1, i32 3 }, %struct.mtk_fixed_factor { i32 43, ptr @.str.19, ptr @.str.17, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 44, ptr @.str.20, ptr @.str.17, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 45, ptr @.str.21, ptr @.str.17, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 46, ptr @.str.22, ptr @.str.11, i32 1, i32 5 }, %struct.mtk_fixed_factor { i32 47, ptr @.str.23, ptr @.str.22, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 48, ptr @.str.24, ptr @.str.22, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 49, ptr @.str.25, ptr @.str.11, i32 1, i32 7 }, %struct.mtk_fixed_factor { i32 50, ptr @.str.26, ptr @.str.25, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 51, ptr @.str.27, ptr @.str.25, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 52, ptr @.str.28, ptr @.str.29, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 53, ptr @.str.30, ptr @.str.29, i32 1, i32 7 }, %struct.mtk_fixed_factor { i32 54, ptr @.str.31, ptr @.str.29, i32 1, i32 26 }, %struct.mtk_fixed_factor { i32 55, ptr @.str.32, ptr @.str.29, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 56, ptr @.str.33, ptr @.str.29, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 57, ptr @.str.34, ptr @.str.29, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 58, ptr @.str.35, ptr @.str.34, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 59, ptr @.str.36, ptr @.str.34, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 60, ptr @.str.37, ptr @.str.34, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 61, ptr @.str.38, ptr @.str.29, i32 1, i32 3 }, %struct.mtk_fixed_factor { i32 62, ptr @.str.39, ptr @.str.29, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 63, ptr @.str.40, ptr @.str.29, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 64, ptr @.str.41, ptr @.str.29, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 65, ptr @.str.42, ptr @.str.29, i32 1, i32 5 }, %struct.mtk_fixed_factor { i32 66, ptr @.str.43, ptr @.str.42, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 67, ptr @.str.44, ptr @.str.42, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 68, ptr @.str.45, ptr @.str.42, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 69, ptr @.str.46, ptr @.str.47, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 70, ptr @.str.48, ptr @.str.46, i32 1, i32 3 }, %struct.mtk_fixed_factor { i32 71, ptr @.str.49, ptr @.str.48, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 72, ptr @.str.50, ptr @.str.48, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 73, ptr @.str.51, ptr @.str.48, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 74, ptr @.str.52, ptr @.str.48, i32 1, i32 10 }, %struct.mtk_fixed_factor { i32 75, ptr @.str.53, ptr @.str.46, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 76, ptr @.str.54, ptr @.str.55, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 77, ptr @.str.56, ptr @.str.57, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 78, ptr @.str.58, ptr @.str.59, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 79, ptr @.str.60, ptr @.str.58, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 80, ptr @.str.61, ptr @.str.62, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 81, ptr @.str.63, ptr @.str.61, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 82, ptr @.str.64, ptr @.str.61, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 83, ptr @.str.65, ptr @.str.66, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 84, ptr @.str.67, ptr @.str.65, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 85, ptr @.str.68, ptr @.str.69, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 86, ptr @.str.70, ptr @.str.71, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 87, ptr @.str.72, ptr @.str.70, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 88, ptr @.str.73, ptr @.str.70, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 89, ptr @.str.74, ptr @.str.70, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 90, ptr @.str.75, ptr @.str.70, i32 1, i32 16 }, %struct.mtk_fixed_factor { i32 91, ptr @.str.76, ptr @.str.77, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 92, ptr @.str.78, ptr @.str.76, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 93, ptr @.str.79, ptr @.str.76, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 94, ptr @.str.80, ptr @.str.76, i32 1, i32 8 }], [304 x i8] zeroinitializer }, align 32
@top_muxes = internal constant { [33 x %struct.mtk_composite], [344 x i8] } { [33 x %struct.mtk_composite] [%struct.mtk_composite { i32 1, ptr @.str.81, ptr @ulposc_axi_ck_mux_pre_parents, ptr null, i32 4, i32 64, i32 0, i32 0, i8 3, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 2, ptr @.str.82, ptr @ulposc_axi_ck_mux_parents, ptr null, i32 4, i32 64, i32 0, i32 0, i8 2, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 3, ptr @.str.83, ptr @axi_parents, ptr null, i32 4, i32 64, i32 0, i32 0, i8 0, i8 2, i8 -1, i8 -1, i8 0, i8 0, i8 3 }, %struct.mtk_composite { i32 5, ptr @.str.84, ptr @ddrphycfg_parents, ptr null, i32 2052, i32 64, i32 0, i32 0, i8 16, i8 2, i8 -1, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 6, ptr @.str.85, ptr @mm_parents, ptr null, i32 4, i32 64, i32 0, i32 0, i8 24, i8 2, i8 -1, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 7, ptr @.str.86, ptr @pwm_parents, ptr null, i32 4, i32 80, i32 0, i32 80, i8 0, i8 3, i8 7, i8 -1, i8 0, i8 0, i8 7 }, %struct.mtk_composite { i32 8, ptr @.str.87, ptr @vdec_parents, ptr null, i32 4, i32 80, i32 0, i32 80, i8 8, i8 3, i8 15, i8 -1, i8 0, i8 0, i8 7 }, %struct.mtk_composite { i32 9, ptr @.str.88, ptr @venc_parents, ptr null, i32 4, i32 80, i32 0, i32 80, i8 16, i8 2, i8 23, i8 -1, i8 0, i8 0, i8 3 }, %struct.mtk_composite { i32 10, ptr @.str.89, ptr @mfg_parents, ptr null, i32 4, i32 80, i32 0, i32 80, i8 24, i8 2, i8 31, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 11, ptr @.str.90, ptr @camtg, ptr null, i32 4, i32 96, i32 0, i32 96, i8 0, i8 2, i8 7, i8 -1, i8 0, i8 0, i8 3 }, %struct.mtk_composite { i32 12, ptr @.str.91, ptr @uart_parents, ptr null, i32 4, i32 96, i32 0, i32 96, i8 8, i8 1, i8 15, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 13, ptr @.str.92, ptr @spi_parents, ptr null, i32 4, i32 96, i32 0, i32 96, i8 16, i8 2, i8 23, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 14, ptr @.str.93, ptr @ulposc_spi_ck_mux_parents, ptr null, i32 4, i32 96, i32 0, i32 0, i8 18, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 15, ptr @.str.94, ptr @usb20_parents, ptr null, i32 4, i32 96, i32 0, i32 96, i8 24, i8 2, i8 31, i8 -1, i8 0, i8 0, i8 3 }, %struct.mtk_composite { i32 16, ptr @.str.95, ptr @msdc50_0_hclk_parents, ptr null, i32 4, i32 112, i32 0, i32 0, i8 8, i8 2, i8 -1, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 17, ptr @.str.96, ptr @msdc50_0_parents, ptr null, i32 4, i32 112, i32 0, i32 112, i8 16, i8 4, i8 23, i8 -1, i8 0, i8 0, i8 9 }, %struct.mtk_composite { i32 18, ptr @.str.97, ptr @msdc30_1_parents, ptr null, i32 4, i32 112, i32 0, i32 112, i8 24, i8 3, i8 31, i8 -1, i8 0, i8 0, i8 7 }, %struct.mtk_composite { i32 19, ptr @.str.98, ptr @msdc30_2_parents, ptr null, i32 4, i32 128, i32 0, i32 128, i8 0, i8 3, i8 7, i8 -1, i8 0, i8 0, i8 7 }, %struct.mtk_composite { i32 20, ptr @.str.99, ptr @audio_parents, ptr null, i32 4, i32 128, i32 0, i32 128, i8 16, i8 2, i8 23, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 21, ptr @.str.100, ptr @aud_intbus_parents, ptr null, i32 4, i32 128, i32 0, i32 0, i8 24, i8 2, i8 -1, i8 -1, i8 0, i8 0, i8 3 }, %struct.mtk_composite { i32 22, ptr @.str.101, ptr @pmicspi_parents, ptr null, i32 4, i32 144, i32 0, i32 0, i8 0, i8 3, i8 -1, i8 -1, i8 0, i8 0, i8 7 }, %struct.mtk_composite { i32 23, ptr @.str.102, ptr @scp_parents, ptr null, i32 4, i32 144, i32 0, i32 0, i8 8, i8 2, i8 -1, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 24, ptr @.str.103, ptr @atb_parents, ptr null, i32 4, i32 144, i32 0, i32 0, i8 16, i8 2, i8 -1, i8 -1, i8 0, i8 0, i8 3 }, %struct.mtk_composite { i32 25, ptr @.str.104, ptr @mjc_parents, ptr null, i32 4, i32 144, i32 0, i32 144, i8 24, i8 2, i8 31, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 26, ptr @.str.105, ptr @dpi0_parents, ptr null, i32 4, i32 160, i32 0, i32 160, i8 0, i8 3, i8 7, i8 -1, i8 0, i8 0, i8 7 }, %struct.mtk_composite { i32 27, ptr @.str.106, ptr @aud_1_parents, ptr null, i32 4, i32 160, i32 0, i32 160, i8 16, i8 1, i8 23, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 28, ptr @.str.107, ptr @aud_2_parents, ptr null, i32 4, i32 160, i32 0, i32 160, i8 24, i8 1, i8 31, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 29, ptr @.str.108, ptr @ssusb_top_sys_parents, ptr null, i32 4, i32 176, i32 0, i32 0, i8 8, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 30, ptr @.str.109, ptr @spm_parents, ptr null, i32 4, i32 192, i32 0, i32 0, i8 0, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 31, ptr @.str.110, ptr @bsi_spi_parents, ptr null, i32 4, i32 192, i32 0, i32 0, i8 8, i8 2, i8 -1, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 32, ptr @.str.111, ptr @audio_h_parents, ptr null, i32 4, i32 192, i32 0, i32 192, i8 16, i8 2, i8 23, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 33, ptr @.str.112, ptr @anc_md32_parents, ptr null, i32 4, i32 192, i32 0, i32 192, i8 24, i8 2, i8 31, i8 -1, i8 0, i8 0, i8 3 }, %struct.mtk_composite { i32 34, ptr @.str.113, ptr @mfg_52m_parents, ptr null, i32 4, i32 260, i32 0, i32 0, i8 1, i8 2, i8 -1, i8 -1, i8 0, i8 0, i8 4 }], [344 x i8] zeroinitializer }, align 32
@mt6797_clk_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.114, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"syspll_ck\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mainpll\00", [24 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"syspll_d2\00", [22 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"syspll1_d2\00", [21 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"syspll1_d4\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"syspll1_d8\00", [21 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"syspll1_d16\00", [20 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"syspll_d3\00", [22 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"syspll_d3_d3\00", [19 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"syspll2_d2\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"syspll2_d4\00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"syspll2_d8\00", [21 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"syspll_d5\00", [22 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"syspll3_d2\00", [21 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"syspll3_d4\00", [21 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"syspll_d7\00", [22 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"syspll4_d2\00", [21 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"syspll4_d4\00", [21 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"univpll_ck\00", [21 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"univpll\00", [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"univpll_d7\00", [21 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univpll_d26\00", [20 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ssusb_phy_48m_ck\00", [47 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"usb_phy48m_ck\00", [18 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"univpll_d2\00", [21 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univpll1_d2\00", [20 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univpll1_d4\00", [20 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univpll1_d8\00", [20 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"univpll_d3\00", [21 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univpll2_d2\00", [20 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univpll2_d4\00", [20 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univpll2_d8\00", [20 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"univpll_d5\00", [21 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univpll3_d2\00", [20 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univpll3_d4\00", [20 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univpll3_d8\00", [20 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ulposc_ck_org\00", [18 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ulposc\00", [25 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ulposc_ck\00", [22 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ulposc_d2\00", [22 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ulposc_d3\00", [22 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ulposc_d4\00", [22 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ulposc_d8\00", [22 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ulposc_d10\00", [21 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apll1_ck\00", [23 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"apll1\00", [26 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apll2_ck\00", [23 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"apll2\00", [26 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mfgpll_ck\00", [22 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mfgpll\00", [25 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mfgpll_d2\00", [22 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"imgpll_ck\00", [22 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"imgpll\00", [25 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"imgpll_d2\00", [22 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"imgpll_d4\00", [22 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"codecpll_ck\00", [20 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"codecpll\00", [23 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"codecpll_d2\00", [20 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vdecpll_ck\00", [21 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vdecpll\00", [24 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tvdpll_ck\00", [22 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tvdpll\00", [25 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tvdpll_d2\00", [22 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tvdpll_d4\00", [22 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tvdpll_d8\00", [22 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tvdpll_d16\00", [21 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"msdcpll_ck\00", [21 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"msdcpll\00", [24 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"msdcpll_d2\00", [21 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"msdcpll_d4\00", [21 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"msdcpll_d8\00", [21 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"ulposc_axi_ck_mux_pre\00", [42 x i8] zeroinitializer }, align 32
@ulposc_axi_ck_mux_pre_parents = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.49, ptr @.str.50], [24 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ulposc_axi_ck_mux\00", [46 x i8] zeroinitializer }, align 32
@ulposc_axi_ck_mux_parents = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.14, ptr @.str.81], [24 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"axi_sel\00", [24 x i8] zeroinitializer }, align 32
@axi_parents = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.4, ptr @.str.25, ptr @.str.82], [20 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ddrphycfg_sel\00", [18 x i8] zeroinitializer }, align 32
@ddrphycfg_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.4, ptr @.str.23, ptr @.str.20, ptr @.str.15], [16 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mm_sel\00", [25 x i8] zeroinitializer }, align 32
@mm_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.4, ptr @.str.61, ptr @.str.35, ptr @.str.13], [16 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pwm_sel\00", [24 x i8] zeroinitializer }, align 32
@pwm_parents = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.4, ptr @.str.40, ptr @.str.49, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.51], [36 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vdec_sel\00", [23 x i8] zeroinitializer }, align 32
@vdec_parents = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.4, ptr @.str.68, ptr @.str.61, ptr @.str.17, ptr @.str.42, ptr @.str.4, ptr @.str.4], [36 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"venc_sel\00", [23 x i8] zeroinitializer }, align 32
@venc_parents = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.4, ptr @.str.65, ptr @.str.17], [20 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mfg_sel\00", [24 x i8] zeroinitializer }, align 32
@mfg_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.4, ptr @.str.58, ptr @.str.17, ptr @.str.38], [16 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"camtg_sel\00", [22 x i8] zeroinitializer }, align 32
@camtg = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.4, ptr @.str.31, ptr @.str.39], [20 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uart_sel\00", [23 x i8] zeroinitializer }, align 32
@uart_parents = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.4, ptr @.str.41], [24 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"spi_sel\00", [24 x i8] zeroinitializer }, align 32
@spi_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.4, ptr @.str.23, ptr @.str.20, ptr @.str.93], [16 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ulposc_spi_ck_mux\00", [46 x i8] zeroinitializer }, align 32
@ulposc_spi_ck_mux_parents = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.49, ptr @.str.50], [24 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb20_sel\00", [22 x i8] zeroinitializer }, align 32
@usb20_parents = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.4, ptr @.str.37, ptr @.str.26], [20 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"msdc50_0_hclk_sel\00", [46 x i8] zeroinitializer }, align 32
@msdc50_0_hclk_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.4, ptr @.str.13, ptr @.str.19, ptr @.str.26], [16 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"msdc50_0_sel\00", [19 x i8] zeroinitializer }, align 32
@msdc50_0_parents = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.str.4, ptr @.str.77, ptr @.str.17, ptr @.str.36, ptr @.str.19, ptr @.str.25, ptr @.str.78, ptr @.str.35, ptr @.str.38], [60 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"msdc30_1_sel\00", [19 x i8] zeroinitializer }, align 32
@msdc30_1_parents = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.4, ptr @.str.39, ptr @.str.78, ptr @.str.36, ptr @.str.19, ptr @.str.25, ptr @.str.30], [36 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"msdc30_2_sel\00", [19 x i8] zeroinitializer }, align 32
@msdc30_2_parents = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.4, ptr @.str.41, ptr @.str.21, ptr @.str.15, ptr @.str.80, ptr @.str.24, ptr @.str.31], [36 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"audio_sel\00", [22 x i8] zeroinitializer }, align 32
@audio_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.4, ptr @.str.24, ptr @.str.27, ptr @.str.16], [16 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aud_intbus_sel\00", [17 x i8] zeroinitializer }, align 32
@aud_intbus_parents = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.4, ptr @.str.14, ptr @.str.26], [20 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pmicspi_sel\00", [20 x i8] zeroinitializer }, align 32
@pmicspi_parents = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.4, ptr @.str.31, ptr @.str.24, ptr @.str.15, ptr @.str.51, ptr @.str.52, ptr @.str.21], [36 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"scp_sel\00", [24 x i8] zeroinitializer }, align 32
@scp_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.4, ptr @.str.17, ptr @.str.48, ptr @.str.42], [16 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"atb_sel\00", [24 x i8] zeroinitializer }, align 32
@atb_parents = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.4, ptr @.str.13, ptr @.str.22], [20 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mjc_sel\00", [24 x i8] zeroinitializer }, align 32
@mjc_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.4, ptr @.str.61, ptr @.str.42, ptr @.str.13], [16 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dpi0_sel\00", [23 x i8] zeroinitializer }, align 32
@dpi0_parents = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.4, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.4, ptr @.str.4], [36 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"aud_1_sel\00", [22 x i8] zeroinitializer }, align 32
@aud_1_parents = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.4, ptr @.str.54], [24 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"aud_2_sel\00", [22 x i8] zeroinitializer }, align 32
@aud_2_parents = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.4, ptr @.str.56], [24 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ssusb_top_sys_sel\00", [46 x i8] zeroinitializer }, align 32
@ssusb_top_sys_parents = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.4, ptr @.str.43], [24 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"spm_sel\00", [24 x i8] zeroinitializer }, align 32
@spm_parents = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.4, ptr @.str.15], [24 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"bsi_spi_sel\00", [20 x i8] zeroinitializer }, align 32
@bsi_spi_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.4, ptr @.str.18, ptr @.str.14, ptr @.str.25], [16 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"audio_h_sel\00", [20 x i8] zeroinitializer }, align 32
@audio_h_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.4, ptr @.str.56, ptr @.str.54, ptr @.str.30], [16 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"anc_md32_sel\00", [19 x i8] zeroinitializer }, align 32
@anc_md32_parents = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.4, ptr @.str.13, ptr @.str.42], [20 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"mfg_52m_sel\00", [20 x i8] zeroinitializer }, align 32
@mfg_52m_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.4, ptr @.str.41, ptr @.str.40, ptr @.str.40], [16 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mt6797_clk_lock\00", [16 x i8] zeroinitializer }, align 32
@infra_clks = internal constant { [83 x %struct.mtk_gate], [588 x i8] } { [83 x %struct.mtk_gate] [%struct.mtk_gate { i32 1, ptr @.str.115, ptr @.str.47, ptr @infra0_cg_regs, i32 0, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 2, ptr @.str.116, ptr @.str.101, ptr @infra0_cg_regs, i32 1, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 3, ptr @.str.117, ptr @.str.101, ptr @infra0_cg_regs, i32 2, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 4, ptr @.str.118, ptr @.str.101, ptr @infra0_cg_regs, i32 3, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 5, ptr @.str.119, ptr @.str.102, ptr @infra0_cg_regs, i32 4, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 6, ptr @.str.120, ptr @.str.83, ptr @infra0_cg_regs, i32 5, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 7, ptr @.str.121, ptr @.str.83, ptr @infra0_cg_regs, i32 6, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 8, ptr @.str.122, ptr @.str.4, ptr @infra0_cg_regs, i32 7, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 9, ptr @.str.123, ptr @.str.94, ptr @infra0_cg_regs, i32 8, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 10, ptr @.str.124, ptr @.str.83, ptr @infra0_cg_regs, i32 9, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 11, ptr @.str.125, ptr @.str.83, ptr @infra0_cg_regs, i32 10, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 12, ptr @.str.126, ptr @.str.83, ptr @infra0_cg_regs, i32 11, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 13, ptr @.str.127, ptr @.str.83, ptr @infra0_cg_regs, i32 12, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 14, ptr @.str.128, ptr @.str.83, ptr @infra0_cg_regs, i32 13, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 15, ptr @.str.129, ptr @.str.83, ptr @infra0_cg_regs, i32 14, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 16, ptr @.str.130, ptr @.str.83, ptr @infra0_cg_regs, i32 15, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 17, ptr @.str.131, ptr @.str.83, ptr @infra0_cg_regs, i32 16, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 18, ptr @.str.132, ptr @.str.83, ptr @infra0_cg_regs, i32 17, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 19, ptr @.str.133, ptr @.str.83, ptr @infra0_cg_regs, i32 18, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 20, ptr @.str.134, ptr @.str.83, ptr @infra0_cg_regs, i32 19, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 21, ptr @.str.135, ptr @.str.83, ptr @infra0_cg_regs, i32 21, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 22, ptr @.str.136, ptr @.str.91, ptr @infra0_cg_regs, i32 22, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 23, ptr @.str.137, ptr @.str.91, ptr @infra0_cg_regs, i32 23, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 24, ptr @.str.138, ptr @.str.91, ptr @infra0_cg_regs, i32 24, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 25, ptr @.str.139, ptr @.str.91, ptr @infra0_cg_regs, i32 25, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 26, ptr @.str.140, ptr @.str.83, ptr @infra0_cg_regs, i32 27, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 27, ptr @.str.141, ptr @.str.83, ptr @infra0_cg_regs, i32 28, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 28, ptr @.str.142, ptr @.str.83, ptr @infra0_cg_regs, i32 29, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 29, ptr @.str.143, ptr @.str.4, ptr @infra0_cg_regs, i32 30, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 30, ptr @.str.144, ptr @.str.83, ptr @infra0_cg_regs, i32 31, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 31, ptr @.str.145, ptr @.str.83, ptr @infra1_cg_regs, i32 0, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 32, ptr @.str.146, ptr @.str.92, ptr @infra1_cg_regs, i32 1, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 33, ptr @.str.147, ptr @.str.96, ptr @infra1_cg_regs, i32 2, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 34, ptr @.str.148, ptr @.str.83, ptr @infra1_cg_regs, i32 3, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 35, ptr @.str.149, ptr @.str.97, ptr @infra1_cg_regs, i32 4, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 36, ptr @.str.150, ptr @.str.98, ptr @infra1_cg_regs, i32 5, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 37, ptr @.str.151, ptr @.str.83, ptr @infra1_cg_regs, i32 7, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 38, ptr @.str.152, ptr @.str.83, ptr @infra1_cg_regs, i32 8, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 39, ptr @.str.153, ptr @.str.83, ptr @infra1_cg_regs, i32 9, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 40, ptr @.str.154, ptr @.str.4, ptr @infra1_cg_regs, i32 10, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 41, ptr @.str.155, ptr @.str.83, ptr @infra1_cg_regs, i32 11, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 42, ptr @.str.156, ptr @.str.83, ptr @infra1_cg_regs, i32 12, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 43, ptr @.str.157, ptr @.str.83, ptr @infra1_cg_regs, i32 13, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 44, ptr @.str.158, ptr @.str.83, ptr @infra1_cg_regs, i32 16, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 45, ptr @.str.159, ptr @.str.86, ptr @infra1_cg_regs, i32 17, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 46, ptr @.str.160, ptr @.str.83, ptr @infra1_cg_regs, i32 18, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 47, ptr @.str.161, ptr @.str.83, ptr @infra1_cg_regs, i32 20, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 48, ptr @.str.162, ptr @.str.85, ptr @infra1_cg_regs, i32 22, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 49, ptr @.str.163, ptr @.str.83, ptr @infra1_cg_regs, i32 23, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 50, ptr @.str.164, ptr @.str.83, ptr @infra1_cg_regs, i32 25, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 51, ptr @.str.165, ptr @.str.83, ptr @infra1_cg_regs, i32 26, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 52, ptr @.str.166, ptr @.str.4, ptr @infra1_cg_regs, i32 31, ptr @mtk_clk_gate_ops_setclr, i32 2048 }, %struct.mtk_gate { i32 53, ptr @.str.167, ptr @.str.83, ptr @infra2_cg_regs, i32 0, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 54, ptr @.str.168, ptr @.str.83, ptr @infra2_cg_regs, i32 1, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 55, ptr @.str.169, ptr @.str.83, ptr @infra2_cg_regs, i32 2, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 56, ptr @.str.170, ptr @.str.83, ptr @infra2_cg_regs, i32 3, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 57, ptr @.str.171, ptr @.str.83, ptr @infra2_cg_regs, i32 4, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 58, ptr @.str.172, ptr @.str.83, ptr @infra2_cg_regs, i32 5, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 59, ptr @.str.173, ptr @.str.83, ptr @infra2_cg_regs, i32 6, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 60, ptr @.str.174, ptr @.str.83, ptr @infra2_cg_regs, i32 7, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 61, ptr @.str.175, ptr @.str.83, ptr @infra2_cg_regs, i32 8, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 62, ptr @.str.176, ptr @.str.92, ptr @infra2_cg_regs, i32 10, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 63, ptr @.str.177, ptr @.str.4, ptr @infra2_cg_regs, i32 11, ptr @mtk_clk_gate_ops_setclr, i32 2048 }, %struct.mtk_gate { i32 64, ptr @.str.178, ptr @.str.112, ptr @infra2_cg_regs, i32 12, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 65, ptr @.str.179, ptr @.str.4, ptr @infra2_cg_regs, i32 13, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 66, ptr @.str.180, ptr @.str.83, ptr @infra2_cg_regs, i32 15, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 67, ptr @.str.181, ptr @.str.83, ptr @infra2_cg_regs, i32 16, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 68, ptr @.str.182, ptr @.str.83, ptr @infra2_cg_regs, i32 17, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 69, ptr @.str.183, ptr @.str.83, ptr @infra2_cg_regs, i32 18, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 70, ptr @.str.184, ptr @.str.92, ptr @infra2_cg_regs, i32 19, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 71, ptr @.str.185, ptr @.str.92, ptr @infra2_cg_regs, i32 20, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 72, ptr @.str.186, ptr @.str.92, ptr @infra2_cg_regs, i32 21, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 73, ptr @.str.187, ptr @.str.92, ptr @infra2_cg_regs, i32 22, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 74, ptr @.str.188, ptr @.str.92, ptr @infra2_cg_regs, i32 23, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 75, ptr @.str.189, ptr @.str.108, ptr @infra2_cg_regs, i32 24, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 76, ptr @.str.190, ptr @.str.4, ptr @infra2_cg_regs, i32 9, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 77, ptr @.str.191, ptr @.str.4, ptr @infra2_cg_regs, i32 26, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 78, ptr @.str.192, ptr @.str.4, ptr @infra2_cg_regs, i32 27, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 79, ptr @.str.193, ptr @.str.83, ptr @infra2_cg_regs, i32 28, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 80, ptr @.str.194, ptr @.str.83, ptr @infra2_cg_regs, i32 29, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 81, ptr @.str.195, ptr @.str.83, ptr @infra2_cg_regs, i32 30, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 82, ptr @.str.196, ptr @.str.83, ptr @infra2_cg_regs, i32 31, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 83, ptr @.str.197, ptr @.str.113, ptr @infra1_cg_regs, i32 14, ptr @mtk_clk_gate_ops_setclr, i32 0 }], [588 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"infra_pmic_tmr\00", [17 x i8] zeroinitializer }, align 32
@infra0_cg_regs = internal constant { %struct.mtk_gate_regs, [20 x i8] } { %struct.mtk_gate_regs { i32 144, i32 132, i32 128 }, [20 x i8] zeroinitializer }, align 32
@mtk_clk_gate_ops_setclr = external dso_local constant %struct.clk_ops, align 4
@.str.116 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"infra_pmic_ap\00", [18 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"infra_pmic_md\00", [18 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"infra_pmic_conn\00", [16 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"infra_scp\00", [22 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"infra_sej\00", [22 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"infra_apxgpt\00", [19 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"infra_sej_13m\00", [18 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"infra_icusb\00", [20 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"infra_gce\00", [22 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"infra_therm\00", [20 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"infra_i2c0\00", [21 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"infra_i2c1\00", [21 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"infra_i2c2\00", [21 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"infra_i2c3\00", [21 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"infra_pwm_hclk\00", [17 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"infra_pwm1\00", [21 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"infra_pwm2\00", [21 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"infra_pwm3\00", [21 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"infra_pwm4\00", [21 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"infra_pwm\00", [22 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"infra_uart0\00", [20 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"infra_uart1\00", [20 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"infra_uart2\00", [20 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"infra_uart3\00", [20 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"infra_md2md_ccif_0\00", [45 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"infra_md2md_ccif_1\00", [45 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"infra_md2md_ccif_2\00", [45 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"infra_fhctl\00", [20 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"infra_btif\00", [21 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"infra_md2md_ccif_3\00", [45 x i8] zeroinitializer }, align 32
@infra1_cg_regs = internal constant { %struct.mtk_gate_regs, [20 x i8] } { %struct.mtk_gate_regs { i32 148, i32 140, i32 136 }, [20 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"infra_spi\00", [22 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"infra_msdc0\00", [20 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"infra_md2md_ccif_4\00", [45 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"infra_msdc1\00", [20 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"infra_msdc2\00", [20 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"infra_md2md_ccif_5\00", [45 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"infra_gcpu\00", [21 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"infra_trng\00", [21 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"infra_auxadc\00", [19 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"infra_cpum\00", [21 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"infra_ap_c2k_ccif_0\00", [44 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"infra_ap_c2k_ccif_1\00", [44 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"infra_cldma\00", [20 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"infra_disp_pwm\00", [17 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"infra_ap_dma\00", [19 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"infra_device_apc\00", [47 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"infra_l2c_sram\00", [17 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"infra_ccif_ap\00", [18 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"infra_audio\00", [20 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"infra_ccif_md\00", [18 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"infra_dramc_f26m\00", [47 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"infra_i2c4\00", [21 x i8] zeroinitializer }, align 32
@infra2_cg_regs = internal constant { %struct.mtk_gate_regs, [20 x i8] } { %struct.mtk_gate_regs { i32 176, i32 172, i32 168 }, [20 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"infra_i2c_appm\00", [17 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"infra_i2c_gpupm\00", [16 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"infra_i2c2_imm\00", [17 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"infra_i2c2_arb\00", [17 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"infra_i2c3_imm\00", [17 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"infra_i2c3_arb\00", [17 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"infra_i2c5\00", [21 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"infra_sys_cirq\00", [17 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"infra_spi1\00", [21 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"infra_dramc_b_f26m\00", [45 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"infra_anc_md32\00", [17 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"infra_anc_md32_32k\00", [45 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"infra_dvfs_spm1\00", [16 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"infra_aes_top0\00", [17 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"infra_aes_top1\00", [17 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"infra_ssusb_bus\00", [16 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"infra_spi2\00", [21 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"infra_spi3\00", [21 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"infra_spi4\00", [21 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"infra_spi5\00", [21 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"infra_irtx\00", [21 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"infra_ssusb_sys\00", [16 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"infra_ssusb_ref\00", [16 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"infra_audio_26m\00", [16 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"infra_audio_26m_pad_top\00", [40 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"infra_modem_temp_share\00", [41 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"infra_vad_wrap_soc\00", [45 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"infra_dramc_conf\00", [47 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"infra_dramc_b_conf\00", [45 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"infra_mfg_vcg\00", [18 x i8] zeroinitializer }, align 32
@plls = internal constant { [10 x %struct.mtk_pll_data], [224 x i8] } { [10 x %struct.mtk_pll_data] [%struct.mtk_pll_data { i32 1, ptr @.str.11, i32 544, i32 556, i32 -268435199, i32 544, i32 0, i32 0, i8 0, i32 4, i32 2, ptr null, i32 16777216, i32 0, i32 -1294967296, i32 21, i32 0, i32 548, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 2, ptr @.str.29, i32 560, i32 572, i32 -33554415, i32 560, i32 0, i32 0, i8 0, i32 4, i32 0, ptr null, i32 16777216, i32 0, i32 -1294967296, i32 7, i32 0, i32 564, i32 14, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 3, ptr @.str.59, i32 576, i32 588, i32 257, i32 580, i32 0, i32 0, i8 0, i32 24, i32 0, ptr null, i32 16777216, i32 0, i32 -1294967296, i32 21, i32 0, i32 580, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 4, ptr @.str.77, i32 592, i32 604, i32 289, i32 592, i32 0, i32 0, i8 0, i32 4, i32 0, ptr null, i32 16777216, i32 0, i32 -1294967296, i32 21, i32 0, i32 596, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 5, ptr @.str.62, i32 608, i32 620, i32 289, i32 608, i32 0, i32 0, i8 0, i32 4, i32 0, ptr null, i32 16777216, i32 0, i32 -1294967296, i32 21, i32 0, i32 612, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 6, ptr @.str.71, i32 624, i32 636, i32 -1073741535, i32 624, i32 0, i32 0, i8 0, i32 4, i32 0, ptr null, i32 16777216, i32 0, i32 -1294967296, i32 21, i32 0, i32 628, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 7, ptr @.str.66, i32 656, i32 668, i32 289, i32 656, i32 0, i32 0, i8 0, i32 4, i32 0, ptr null, i32 16777216, i32 0, i32 -1294967296, i32 21, i32 0, i32 660, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 8, ptr @.str.69, i32 740, i32 752, i32 289, i32 740, i32 0, i32 0, i8 0, i32 4, i32 0, ptr null, i32 16777216, i32 0, i32 -1294967296, i32 21, i32 0, i32 744, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 9, ptr @.str.55, i32 672, i32 688, i32 305, i32 672, i32 680, i32 0, i8 0, i32 4, i32 0, ptr null, i32 16777216, i32 0, i32 -1294967296, i32 31, i32 0, i32 676, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 10, ptr @.str.57, i32 692, i32 708, i32 305, i32 692, i32 700, i32 0, i8 0, i32 4, i32 0, ptr null, i32 16777216, i32 0, i32 -1294967296, i32 31, i32 0, i32 696, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }], [224 x i8] zeroinitializer }, align 32
@___asan_gen_.198 = private unnamed_addr constant [15 x i8] c"infra_clk_data\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 558, i32 33 }
@___asan_gen_.201 = private unnamed_addr constant [17 x i8] c"infra_fixed_divs\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 554, i32 38 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 576, i32 3 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 555, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant [15 x i8] c"clk_mt6797_drv\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 706, i32 31 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 709, i32 11 }
@___asan_gen_.228 = private unnamed_addr constant [20 x i8] c"of_match_clk_mt6797\00", align 1
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 673, i32 34 }
@___asan_gen_.231 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 699, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant [15 x i8] c"top_fixed_divs\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 25, i32 38 }
@___asan_gen_.249 = private unnamed_addr constant [10 x i8] c"top_muxes\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 323, i32 35 }
@___asan_gen_.252 = private unnamed_addr constant [16 x i8] c"mt6797_clk_lock\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 26, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 27, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 28, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 29, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 30, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 31, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 32, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 33, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 34, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 35, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 36, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 37, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 38, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 39, i32 2 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 40, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 41, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 42, i32 2 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 43, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 44, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 45, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 46, i32 2 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 47, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 48, i32 2 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 49, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 50, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 51, i32 2 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 52, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 53, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 54, i32 2 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 55, i32 2 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 56, i32 2 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 57, i32 2 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 58, i32 2 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 59, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 60, i32 2 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 61, i32 2 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 62, i32 2 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 63, i32 2 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 64, i32 2 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 65, i32 2 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 66, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 67, i32 2 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 68, i32 2 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 69, i32 2 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 70, i32 2 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 71, i32 2 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 72, i32 2 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 73, i32 2 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 74, i32 2 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 75, i32 2 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 76, i32 2 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 77, i32 2 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 78, i32 2 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 79, i32 2 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 80, i32 2 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 81, i32 2 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 82, i32 2 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 83, i32 2 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 84, i32 2 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 85, i32 2 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 324, i32 2 }
@___asan_gen_.471 = private unnamed_addr constant [30 x i8] c"ulposc_axi_ck_mux_pre_parents\00", align 1
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 99, i32 27 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 326, i32 2 }
@___asan_gen_.477 = private unnamed_addr constant [26 x i8] c"ulposc_axi_ck_mux_parents\00", align 1
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 94, i32 27 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 328, i32 2 }
@___asan_gen_.483 = private unnamed_addr constant [12 x i8] c"axi_parents\00", align 1
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 88, i32 27 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 330, i32 2 }
@___asan_gen_.489 = private unnamed_addr constant [18 x i8] c"ddrphycfg_parents\00", align 1
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 104, i32 27 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 332, i32 2 }
@___asan_gen_.495 = private unnamed_addr constant [11 x i8] c"mm_parents\00", align 1
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 111, i32 27 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 334, i32 2 }
@___asan_gen_.501 = private unnamed_addr constant [12 x i8] c"pwm_parents\00", align 1
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 118, i32 27 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 335, i32 2 }
@___asan_gen_.507 = private unnamed_addr constant [13 x i8] c"vdec_parents\00", align 1
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 128, i32 27 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 336, i32 2 }
@___asan_gen_.513 = private unnamed_addr constant [13 x i8] c"venc_parents\00", align 1
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 138, i32 27 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 337, i32 2 }
@___asan_gen_.519 = private unnamed_addr constant [12 x i8] c"mfg_parents\00", align 1
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 144, i32 27 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 338, i32 2 }
@___asan_gen_.525 = private unnamed_addr constant [6 x i8] c"camtg\00", align 1
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 151, i32 27 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 339, i32 2 }
@___asan_gen_.531 = private unnamed_addr constant [13 x i8] c"uart_parents\00", align 1
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 157, i32 27 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 340, i32 2 }
@___asan_gen_.537 = private unnamed_addr constant [12 x i8] c"spi_parents\00", align 1
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 162, i32 27 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 341, i32 2 }
@___asan_gen_.543 = private unnamed_addr constant [26 x i8] c"ulposc_spi_ck_mux_parents\00", align 1
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 169, i32 27 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 343, i32 2 }
@___asan_gen_.549 = private unnamed_addr constant [14 x i8] c"usb20_parents\00", align 1
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 174, i32 27 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 345, i32 2 }
@___asan_gen_.555 = private unnamed_addr constant [22 x i8] c"msdc50_0_hclk_parents\00", align 1
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 180, i32 27 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 347, i32 2 }
@___asan_gen_.561 = private unnamed_addr constant [17 x i8] c"msdc50_0_parents\00", align 1
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 187, i32 27 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 349, i32 2 }
@___asan_gen_.567 = private unnamed_addr constant [17 x i8] c"msdc30_1_parents\00", align 1
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 199, i32 27 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 351, i32 2 }
@___asan_gen_.573 = private unnamed_addr constant [17 x i8] c"msdc30_2_parents\00", align 1
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 209, i32 27 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 353, i32 2 }
@___asan_gen_.579 = private unnamed_addr constant [14 x i8] c"audio_parents\00", align 1
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 219, i32 27 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 355, i32 2 }
@___asan_gen_.585 = private unnamed_addr constant [19 x i8] c"aud_intbus_parents\00", align 1
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 226, i32 27 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 357, i32 2 }
@___asan_gen_.591 = private unnamed_addr constant [16 x i8] c"pmicspi_parents\00", align 1
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 232, i32 27 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 359, i32 2 }
@___asan_gen_.597 = private unnamed_addr constant [12 x i8] c"scp_parents\00", align 1
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 242, i32 27 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 361, i32 2 }
@___asan_gen_.603 = private unnamed_addr constant [12 x i8] c"atb_parents\00", align 1
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 249, i32 27 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 363, i32 2 }
@___asan_gen_.609 = private unnamed_addr constant [12 x i8] c"mjc_parents\00", align 1
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 255, i32 27 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 364, i32 2 }
@___asan_gen_.615 = private unnamed_addr constant [13 x i8] c"dpi0_parents\00", align 1
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 262, i32 27 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 365, i32 2 }
@___asan_gen_.621 = private unnamed_addr constant [14 x i8] c"aud_1_parents\00", align 1
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 272, i32 27 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 367, i32 2 }
@___asan_gen_.627 = private unnamed_addr constant [14 x i8] c"aud_2_parents\00", align 1
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 277, i32 27 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 369, i32 2 }
@___asan_gen_.633 = private unnamed_addr constant [22 x i8] c"ssusb_top_sys_parents\00", align 1
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 282, i32 27 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 371, i32 2 }
@___asan_gen_.639 = private unnamed_addr constant [12 x i8] c"spm_parents\00", align 1
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 287, i32 27 }
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 373, i32 2 }
@___asan_gen_.645 = private unnamed_addr constant [16 x i8] c"bsi_spi_parents\00", align 1
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 292, i32 27 }
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 375, i32 2 }
@___asan_gen_.651 = private unnamed_addr constant [16 x i8] c"audio_h_parents\00", align 1
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 299, i32 27 }
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 377, i32 2 }
@___asan_gen_.657 = private unnamed_addr constant [17 x i8] c"anc_md32_parents\00", align 1
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 313, i32 27 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 379, i32 2 }
@___asan_gen_.663 = private unnamed_addr constant [16 x i8] c"mfg_52m_parents\00", align 1
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 306, i32 27 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 23, i32 8 }
@___asan_gen_.669 = private unnamed_addr constant [11 x i8] c"infra_clks\00", align 1
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 461, i32 30 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 462, i32 2 }
@___asan_gen_.675 = private unnamed_addr constant [15 x i8] c"infra0_cg_regs\00", align 1
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 404, i32 35 }
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 463, i32 2 }
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 464, i32 2 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 465, i32 2 }
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 466, i32 2 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 467, i32 2 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 468, i32 2 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 469, i32 2 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 470, i32 2 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 471, i32 2 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 472, i32 2 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 473, i32 2 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 474, i32 2 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 475, i32 2 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 476, i32 2 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 477, i32 2 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 478, i32 2 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 479, i32 2 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 480, i32 2 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 481, i32 2 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 482, i32 2 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 483, i32 2 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 484, i32 2 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 485, i32 2 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 486, i32 2 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 487, i32 2 }
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 488, i32 2 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 489, i32 2 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 490, i32 2 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 491, i32 2 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 492, i32 2 }
@___asan_gen_.768 = private unnamed_addr constant [15 x i8] c"infra1_cg_regs\00", align 1
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 410, i32 35 }
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 493, i32 2 }
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 494, i32 2 }
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 495, i32 2 }
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 496, i32 2 }
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 497, i32 2 }
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 498, i32 2 }
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 499, i32 2 }
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 500, i32 2 }
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 501, i32 2 }
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 502, i32 2 }
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 503, i32 2 }
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 505, i32 2 }
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 507, i32 2 }
@___asan_gen_.812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 508, i32 2 }
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 509, i32 2 }
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 510, i32 2 }
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 511, i32 2 }
@___asan_gen_.824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 512, i32 2 }
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 513, i32 2 }
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 514, i32 2 }
@___asan_gen_.833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 515, i32 2 }
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 517, i32 2 }
@___asan_gen_.837 = private unnamed_addr constant [15 x i8] c"infra2_cg_regs\00", align 1
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 416, i32 35 }
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 518, i32 2 }
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 519, i32 2 }
@___asan_gen_.848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 520, i32 2 }
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 521, i32 2 }
@___asan_gen_.854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 522, i32 2 }
@___asan_gen_.857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 523, i32 2 }
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 524, i32 2 }
@___asan_gen_.863 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 525, i32 2 }
@___asan_gen_.866 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 526, i32 2 }
@___asan_gen_.869 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 527, i32 2 }
@___asan_gen_.872 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 529, i32 2 }
@___asan_gen_.875 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 530, i32 2 }
@___asan_gen_.878 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 531, i32 2 }
@___asan_gen_.881 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 532, i32 2 }
@___asan_gen_.884 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 533, i32 2 }
@___asan_gen_.887 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 534, i32 2 }
@___asan_gen_.890 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 535, i32 2 }
@___asan_gen_.893 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 536, i32 2 }
@___asan_gen_.896 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 537, i32 2 }
@___asan_gen_.899 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 538, i32 2 }
@___asan_gen_.902 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 539, i32 2 }
@___asan_gen_.905 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 540, i32 2 }
@___asan_gen_.908 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 542, i32 2 }
@___asan_gen_.911 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 543, i32 2 }
@___asan_gen_.914 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 544, i32 2 }
@___asan_gen_.917 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 546, i32 2 }
@___asan_gen_.920 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 548, i32 2 }
@___asan_gen_.923 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 549, i32 2 }
@___asan_gen_.926 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 550, i32 2 }
@___asan_gen_.927 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.929 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 551, i32 2 }
@___asan_gen_.930 = private unnamed_addr constant [5 x i8] c"plls\00", align 1
@___asan_gen_.931 = private constant [37 x i8] c"../drivers/clk/mediatek/clk-mt6797.c\00", align 1
@___asan_gen_.932 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.931, i32 636, i32 34 }
@llvm.compiler.used = appending global [249 x ptr] [ptr @__initcall__kmod_clk_mt6797__170_719_clk_mt6797_init3, ptr @__of_table_mtk_infra, ptr @clk_mt6797_probe._entry, ptr @clk_mt6797_probe._entry_ptr, ptr @mtk_infrasys_init_early._entry, ptr @mtk_infrasys_init_early._entry_ptr, ptr @infra_clk_data, ptr @infra_fixed_divs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @clk_mt6797_drv, ptr @.str.5, ptr @of_match_clk_mt6797, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @top_fixed_divs, ptr @top_muxes, ptr @mt6797_clk_lock, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @ulposc_axi_ck_mux_pre_parents, ptr @.str.82, ptr @ulposc_axi_ck_mux_parents, ptr @.str.83, ptr @axi_parents, ptr @.str.84, ptr @ddrphycfg_parents, ptr @.str.85, ptr @mm_parents, ptr @.str.86, ptr @pwm_parents, ptr @.str.87, ptr @vdec_parents, ptr @.str.88, ptr @venc_parents, ptr @.str.89, ptr @mfg_parents, ptr @.str.90, ptr @camtg, ptr @.str.91, ptr @uart_parents, ptr @.str.92, ptr @spi_parents, ptr @.str.93, ptr @ulposc_spi_ck_mux_parents, ptr @.str.94, ptr @usb20_parents, ptr @.str.95, ptr @msdc50_0_hclk_parents, ptr @.str.96, ptr @msdc50_0_parents, ptr @.str.97, ptr @msdc30_1_parents, ptr @.str.98, ptr @msdc30_2_parents, ptr @.str.99, ptr @audio_parents, ptr @.str.100, ptr @aud_intbus_parents, ptr @.str.101, ptr @pmicspi_parents, ptr @.str.102, ptr @scp_parents, ptr @.str.103, ptr @atb_parents, ptr @.str.104, ptr @mjc_parents, ptr @.str.105, ptr @dpi0_parents, ptr @.str.106, ptr @aud_1_parents, ptr @.str.107, ptr @aud_2_parents, ptr @.str.108, ptr @ssusb_top_sys_parents, ptr @.str.109, ptr @spm_parents, ptr @.str.110, ptr @bsi_spi_parents, ptr @.str.111, ptr @audio_h_parents, ptr @.str.112, ptr @anc_md32_parents, ptr @.str.113, ptr @mfg_52m_parents, ptr @.str.114, ptr @infra_clks, ptr @.str.115, ptr @infra0_cg_regs, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @infra1_cg_regs, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @infra2_cg_regs, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @plls], section "llvm.metadata"
@0 = internal global [245 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @infra_clk_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @infra_fixed_divs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_infrasys_init_early._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mt6797_drv to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_match_clk_mt6797 to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mt6797_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @top_fixed_divs to i32), i32 1200, i32 1504, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @top_muxes to i32), i32 1320, i32 1664, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt6797_clk_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ulposc_axi_ck_mux_pre_parents to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ulposc_axi_ck_mux_parents to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axi_parents to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddrphycfg_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mm_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_parents to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_parents to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @venc_parents to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mfg_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @camtg to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart_parents to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ulposc_spi_ck_mux_parents to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb20_parents to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msdc50_0_hclk_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msdc50_0_parents to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msdc30_1_parents to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msdc30_2_parents to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aud_intbus_parents to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmicspi_parents to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scp_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atb_parents to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mjc_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.609 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpi0_parents to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aud_1_parents to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.621 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aud_2_parents to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.627 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ssusb_top_sys_parents to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spm_parents to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bsi_spi_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audio_h_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @anc_md32_parents to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mfg_52m_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @infra_clks to i32), i32 2324, i32 2912, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @infra0_cg_regs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @infra1_cg_regs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @infra2_cg_regs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.863 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.866 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.869 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.872 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.875 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.878 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.881 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.884 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.887 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.890 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.893 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.896 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.899 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.902 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.905 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.908 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.911 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.914 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.917 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.920 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.923 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.926 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.929 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plls to i32), i32 960, i32 1184, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 ptrtoint (ptr @___asan_gen_.931 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.932 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mtk_infra_of_clk_init_driver(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %_flags.i = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %_flags.i) #4
  %0 = load ptr, ptr @infra_clk_data, align 4
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %if.then.i, label %entry.if.end.i_crit_edge

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  %call.i = tail call ptr @mtk_alloc_clk_data(i32 noundef 85) #4
  store ptr %call.i, ptr @infra_clk_data, align 4
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
  %exitcond.not.i = icmp eq i32 %inc.i, 85
  br i1 %exitcond.not.i, label %for.body.i.if.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.end.i:                                         ; preds = %for.body.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %4 = load ptr, ptr @infra_clk_data, align 4
  tail call void @mtk_clk_register_factors(ptr noundef nonnull @infra_fixed_divs, i32 noundef 1, ptr noundef %4) #4
  %5 = load ptr, ptr @infra_clk_data, align 4
  %call2.i = tail call i32 @of_clk_add_provider(ptr noundef %np, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %if.end.i.mtk_infrasys_init_early.exit_crit_edge, label %do.end.i

if.end.i.mtk_infrasys_init_early.exit_crit_edge:  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mtk_infrasys_init_early.exit

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  %call5.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call2.i) #7
  br label %mtk_infrasys_init_early.exit

mtk_infrasys_init_early.exit:                     ; preds = %do.end.i, %if.end.i.mtk_infrasys_init_early.exit_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_mt6797_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @clk_mt6797_drv, ptr noundef null) #4
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
define internal i32 @clk_mt6797_probe(ptr noundef %pdev) #3 align 64 {
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.6, ptr noundef %1, i32 noundef %call1) #7
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
define internal i32 @mtk_topckgen_init(ptr noundef %pdev) #3 align 64 {
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
  %call3 = tail call ptr @mtk_alloc_clk_data(i32 noundef 95) #4
  tail call void @mtk_clk_register_factors(ptr noundef nonnull @top_fixed_divs, i32 noundef 60, ptr noundef %call3) #4
  tail call void @mtk_clk_register_composites(ptr noundef nonnull @top_muxes, i32 noundef 33, ptr noundef %call, ptr noundef nonnull @mt6797_clk_lock, ptr noundef %call3) #4
  %call4 = tail call i32 @of_clk_add_provider(ptr noundef %1, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %call3) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %call4, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_infrasys_init(ptr nocapture noundef readonly %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %2 = load ptr, ptr @infra_clk_data, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.then, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call ptr @mtk_alloc_clk_data(i32 noundef 85) #4
  store ptr %call, ptr @infra_clk_data, align 4
  br label %if.end7

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.014 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %arrayidx = getelementptr ptr, ptr %4, i32 %i.014
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %cmp2 = icmp eq ptr %6, inttoptr (i32 -517 to ptr)
  br i1 %cmp2, label %if.then3, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then3:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then3, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.014, 1
  %exitcond.not = icmp eq i32 %inc, 85
  br i1 %exitcond.not, label %for.inc.if.end7_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.if.end7_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.end7:                                          ; preds = %for.inc.if.end7_crit_edge, %if.then
  %8 = load ptr, ptr @infra_clk_data, align 4
  %call8 = tail call i32 @mtk_clk_register_gates(ptr noundef %1, ptr noundef nonnull @infra_clks, i32 noundef 83, ptr noundef %8) #4
  %9 = load ptr, ptr @infra_clk_data, align 4
  tail call void @mtk_clk_register_factors(ptr noundef nonnull @infra_fixed_divs, i32 noundef 1, ptr noundef %9) #4
  %10 = load ptr, ptr @infra_clk_data, align 4
  %call9 = tail call i32 @of_clk_add_provider(ptr noundef %1, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %10) #4
  ret i32 %call9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_apmixedsys_init(ptr nocapture noundef readonly %pdev) #3 align 64 {
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
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mtk_clk_register_plls(ptr noundef %1, ptr noundef nonnull @plls, i32 noundef 10, ptr noundef nonnull %call) #4
  %call1 = tail call i32 @of_clk_add_provider(ptr noundef %1, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull %call) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_clk_register_composites(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_clk_register_gates(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_clk_register_plls(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 245)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 245)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !14, !15, !17, !19, !21, !23, !24, !25, !26, !27, !28, !30, !32, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !103, !105, !107, !109, !111, !113, !115, !117, !118, !120, !121, !123, !124, !126, !128, !129, !131, !133, !135, !136, !138, !140, !141, !143, !144, !146, !148, !150, !152, !154, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448, !450, !452, !454, !456, !458, !460, !462, !464, !466, !468, !470, !472, !474}
!llvm.module.flags = !{!476, !477, !478, !479, !480, !481, !482, !483}
!llvm.ident = !{!484}

!0 = !{ptr @__of_table_mtk_infra, !1, !"__of_table_mtk_infra", i1 false, i1 false}
!1 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 580, i32 1}
!2 = !{ptr @__initcall__kmod_clk_mt6797__170_719_clk_mt6797_init3, !3, !"__initcall__kmod_clk_mt6797__170_719_clk_mt6797_init3", i1 false, i1 false}
!3 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 719, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 576, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @mtk_infrasys_init_early._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @mtk_infrasys_init_early._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @infra_clk_data, !11, !"infra_clk_data", i1 false, i1 false}
!11 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 558, i32 33}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 555, i32 2}
!14 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @infra_fixed_divs, !16, !"infra_fixed_divs", i1 false, i1 false}
!16 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 554, i32 38}
!17 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 709, i32 11}
!19 = !{ptr @clk_mt6797_drv, !20, !"clk_mt6797_drv", i1 false, i1 false}
!20 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 706, i32 31}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 699, i32 3}
!23 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @clk_mt6797_probe._entry, !22, !"_entry", i1 false, i1 false}
!27 = !{ptr @clk_mt6797_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @of_match_clk_mt6797, !29, !"of_match_clk_mt6797", i1 false, i1 false}
!29 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 673, i32 34}
!30 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 26, i32 2}
!32 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 27, i32 2}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 28, i32 2}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 29, i32 2}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 30, i32 2}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 31, i32 2}
!43 = !{ptr @.str.17, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 32, i32 2}
!45 = !{ptr @.str.18, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 33, i32 2}
!47 = !{ptr @.str.19, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 34, i32 2}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 35, i32 2}
!51 = !{ptr @.str.21, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 36, i32 2}
!53 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 37, i32 2}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 38, i32 2}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 39, i32 2}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 40, i32 2}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 41, i32 2}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 42, i32 2}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 43, i32 2}
!67 = !{ptr @.str.29, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.30, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 44, i32 2}
!70 = !{ptr @.str.31, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 45, i32 2}
!72 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 46, i32 2}
!74 = !{ptr @.str.33, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 47, i32 2}
!76 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 48, i32 2}
!78 = !{ptr @.str.35, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 49, i32 2}
!80 = !{ptr @.str.36, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 50, i32 2}
!82 = !{ptr @.str.37, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 51, i32 2}
!84 = !{ptr @.str.38, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 52, i32 2}
!86 = !{ptr @.str.39, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 53, i32 2}
!88 = !{ptr @.str.40, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 54, i32 2}
!90 = !{ptr @.str.41, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 55, i32 2}
!92 = !{ptr @.str.42, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 56, i32 2}
!94 = !{ptr @.str.43, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 57, i32 2}
!96 = !{ptr @.str.44, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 58, i32 2}
!98 = !{ptr @.str.45, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 59, i32 2}
!100 = !{ptr @.str.46, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 60, i32 2}
!102 = !{ptr @.str.47, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.48, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 61, i32 2}
!105 = !{ptr @.str.49, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 62, i32 2}
!107 = !{ptr @.str.50, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 63, i32 2}
!109 = !{ptr @.str.51, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 64, i32 2}
!111 = !{ptr @.str.52, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 65, i32 2}
!113 = !{ptr @.str.53, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 66, i32 2}
!115 = !{ptr @.str.54, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 67, i32 2}
!117 = !{ptr @.str.55, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @.str.56, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 68, i32 2}
!120 = !{ptr @.str.57, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @.str.58, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 69, i32 2}
!123 = !{ptr @.str.59, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @.str.60, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 70, i32 2}
!126 = !{ptr @.str.61, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 71, i32 2}
!128 = !{ptr @.str.62, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @.str.63, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 72, i32 2}
!131 = !{ptr @.str.64, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 73, i32 2}
!133 = !{ptr @.str.65, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 74, i32 2}
!135 = !{ptr @.str.66, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @.str.67, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 75, i32 2}
!138 = !{ptr @.str.68, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 76, i32 2}
!140 = !{ptr @.str.69, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @.str.70, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 77, i32 2}
!143 = !{ptr @.str.71, !142, !"<string literal>", i1 false, i1 false}
!144 = !{ptr @.str.72, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 78, i32 2}
!146 = !{ptr @.str.73, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 79, i32 2}
!148 = !{ptr @.str.74, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 80, i32 2}
!150 = !{ptr @.str.75, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 81, i32 2}
!152 = !{ptr @.str.76, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 82, i32 2}
!154 = !{ptr @.str.77, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @.str.78, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 83, i32 2}
!157 = !{ptr @.str.79, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 84, i32 2}
!159 = !{ptr @.str.80, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 85, i32 2}
!161 = !{ptr @top_fixed_divs, !162, !"top_fixed_divs", i1 false, i1 false}
!162 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 25, i32 38}
!163 = !{ptr @.str.81, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 324, i32 2}
!165 = !{ptr @.str.82, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 326, i32 2}
!167 = !{ptr @.str.83, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 328, i32 2}
!169 = !{ptr @.str.84, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 330, i32 2}
!171 = !{ptr @.str.85, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 332, i32 2}
!173 = !{ptr @.str.86, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 334, i32 2}
!175 = !{ptr @.str.87, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 335, i32 2}
!177 = !{ptr @.str.88, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 336, i32 2}
!179 = !{ptr @.str.89, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 337, i32 2}
!181 = !{ptr @.str.90, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 338, i32 2}
!183 = !{ptr @.str.91, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 339, i32 2}
!185 = !{ptr @.str.92, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 340, i32 2}
!187 = !{ptr @.str.93, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 341, i32 2}
!189 = !{ptr @.str.94, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 343, i32 2}
!191 = !{ptr @.str.95, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 345, i32 2}
!193 = !{ptr @.str.96, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 347, i32 2}
!195 = !{ptr @.str.97, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 349, i32 2}
!197 = !{ptr @.str.98, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 351, i32 2}
!199 = !{ptr @.str.99, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 353, i32 2}
!201 = !{ptr @.str.100, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 355, i32 2}
!203 = !{ptr @.str.101, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 357, i32 2}
!205 = !{ptr @.str.102, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 359, i32 2}
!207 = !{ptr @.str.103, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 361, i32 2}
!209 = !{ptr @.str.104, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 363, i32 2}
!211 = !{ptr @.str.105, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 364, i32 2}
!213 = !{ptr @.str.106, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 365, i32 2}
!215 = !{ptr @.str.107, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 367, i32 2}
!217 = !{ptr @.str.108, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 369, i32 2}
!219 = !{ptr @.str.109, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 371, i32 2}
!221 = !{ptr @.str.110, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 373, i32 2}
!223 = !{ptr @.str.111, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 375, i32 2}
!225 = !{ptr @.str.112, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 377, i32 2}
!227 = !{ptr @.str.113, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 379, i32 2}
!229 = !{ptr @top_muxes, !230, !"top_muxes", i1 false, i1 false}
!230 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 323, i32 35}
!231 = !{ptr @ulposc_axi_ck_mux_pre_parents, !232, !"ulposc_axi_ck_mux_pre_parents", i1 false, i1 false}
!232 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 99, i32 27}
!233 = !{ptr @ulposc_axi_ck_mux_parents, !234, !"ulposc_axi_ck_mux_parents", i1 false, i1 false}
!234 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 94, i32 27}
!235 = !{ptr @axi_parents, !236, !"axi_parents", i1 false, i1 false}
!236 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 88, i32 27}
!237 = !{ptr @ddrphycfg_parents, !238, !"ddrphycfg_parents", i1 false, i1 false}
!238 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 104, i32 27}
!239 = !{ptr @mm_parents, !240, !"mm_parents", i1 false, i1 false}
!240 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 111, i32 27}
!241 = !{ptr @pwm_parents, !242, !"pwm_parents", i1 false, i1 false}
!242 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 118, i32 27}
!243 = !{ptr @vdec_parents, !244, !"vdec_parents", i1 false, i1 false}
!244 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 128, i32 27}
!245 = !{ptr @venc_parents, !246, !"venc_parents", i1 false, i1 false}
!246 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 138, i32 27}
!247 = !{ptr @mfg_parents, !248, !"mfg_parents", i1 false, i1 false}
!248 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 144, i32 27}
!249 = !{ptr @camtg, !250, !"camtg", i1 false, i1 false}
!250 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 151, i32 27}
!251 = !{ptr @uart_parents, !252, !"uart_parents", i1 false, i1 false}
!252 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 157, i32 27}
!253 = !{ptr @spi_parents, !254, !"spi_parents", i1 false, i1 false}
!254 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 162, i32 27}
!255 = !{ptr @ulposc_spi_ck_mux_parents, !256, !"ulposc_spi_ck_mux_parents", i1 false, i1 false}
!256 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 169, i32 27}
!257 = !{ptr @usb20_parents, !258, !"usb20_parents", i1 false, i1 false}
!258 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 174, i32 27}
!259 = !{ptr @msdc50_0_hclk_parents, !260, !"msdc50_0_hclk_parents", i1 false, i1 false}
!260 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 180, i32 27}
!261 = !{ptr @msdc50_0_parents, !262, !"msdc50_0_parents", i1 false, i1 false}
!262 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 187, i32 27}
!263 = !{ptr @msdc30_1_parents, !264, !"msdc30_1_parents", i1 false, i1 false}
!264 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 199, i32 27}
!265 = !{ptr @msdc30_2_parents, !266, !"msdc30_2_parents", i1 false, i1 false}
!266 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 209, i32 27}
!267 = !{ptr @audio_parents, !268, !"audio_parents", i1 false, i1 false}
!268 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 219, i32 27}
!269 = !{ptr @aud_intbus_parents, !270, !"aud_intbus_parents", i1 false, i1 false}
!270 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 226, i32 27}
!271 = !{ptr @pmicspi_parents, !272, !"pmicspi_parents", i1 false, i1 false}
!272 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 232, i32 27}
!273 = !{ptr @scp_parents, !274, !"scp_parents", i1 false, i1 false}
!274 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 242, i32 27}
!275 = !{ptr @atb_parents, !276, !"atb_parents", i1 false, i1 false}
!276 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 249, i32 27}
!277 = !{ptr @mjc_parents, !278, !"mjc_parents", i1 false, i1 false}
!278 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 255, i32 27}
!279 = !{ptr @dpi0_parents, !280, !"dpi0_parents", i1 false, i1 false}
!280 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 262, i32 27}
!281 = !{ptr @aud_1_parents, !282, !"aud_1_parents", i1 false, i1 false}
!282 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 272, i32 27}
!283 = !{ptr @aud_2_parents, !284, !"aud_2_parents", i1 false, i1 false}
!284 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 277, i32 27}
!285 = !{ptr @ssusb_top_sys_parents, !286, !"ssusb_top_sys_parents", i1 false, i1 false}
!286 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 282, i32 27}
!287 = !{ptr @spm_parents, !288, !"spm_parents", i1 false, i1 false}
!288 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 287, i32 27}
!289 = !{ptr @bsi_spi_parents, !290, !"bsi_spi_parents", i1 false, i1 false}
!290 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 292, i32 27}
!291 = !{ptr @audio_h_parents, !292, !"audio_h_parents", i1 false, i1 false}
!292 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 299, i32 27}
!293 = !{ptr @anc_md32_parents, !294, !"anc_md32_parents", i1 false, i1 false}
!294 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 313, i32 27}
!295 = !{ptr @mfg_52m_parents, !296, !"mfg_52m_parents", i1 false, i1 false}
!296 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 306, i32 27}
!297 = !{ptr @.str.114, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 23, i32 8}
!299 = !{ptr @mt6797_clk_lock, !298, !"mt6797_clk_lock", i1 false, i1 false}
!300 = !{ptr @.str.115, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 462, i32 2}
!302 = !{ptr @.str.116, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 463, i32 2}
!304 = !{ptr @.str.117, !305, !"<string literal>", i1 false, i1 false}
!305 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 464, i32 2}
!306 = !{ptr @.str.118, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 465, i32 2}
!308 = !{ptr @.str.119, !309, !"<string literal>", i1 false, i1 false}
!309 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 466, i32 2}
!310 = !{ptr @.str.120, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 467, i32 2}
!312 = !{ptr @.str.121, !313, !"<string literal>", i1 false, i1 false}
!313 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 468, i32 2}
!314 = !{ptr @.str.122, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 469, i32 2}
!316 = !{ptr @.str.123, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 470, i32 2}
!318 = !{ptr @.str.124, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 471, i32 2}
!320 = !{ptr @.str.125, !321, !"<string literal>", i1 false, i1 false}
!321 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 472, i32 2}
!322 = !{ptr @.str.126, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 473, i32 2}
!324 = !{ptr @.str.127, !325, !"<string literal>", i1 false, i1 false}
!325 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 474, i32 2}
!326 = !{ptr @.str.128, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 475, i32 2}
!328 = !{ptr @.str.129, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 476, i32 2}
!330 = !{ptr @.str.130, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 477, i32 2}
!332 = !{ptr @.str.131, !333, !"<string literal>", i1 false, i1 false}
!333 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 478, i32 2}
!334 = !{ptr @.str.132, !335, !"<string literal>", i1 false, i1 false}
!335 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 479, i32 2}
!336 = !{ptr @.str.133, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 480, i32 2}
!338 = !{ptr @.str.134, !339, !"<string literal>", i1 false, i1 false}
!339 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 481, i32 2}
!340 = !{ptr @.str.135, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 482, i32 2}
!342 = !{ptr @.str.136, !343, !"<string literal>", i1 false, i1 false}
!343 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 483, i32 2}
!344 = !{ptr @.str.137, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 484, i32 2}
!346 = !{ptr @.str.138, !347, !"<string literal>", i1 false, i1 false}
!347 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 485, i32 2}
!348 = !{ptr @.str.139, !349, !"<string literal>", i1 false, i1 false}
!349 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 486, i32 2}
!350 = !{ptr @.str.140, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 487, i32 2}
!352 = !{ptr @.str.141, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 488, i32 2}
!354 = !{ptr @.str.142, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 489, i32 2}
!356 = !{ptr @.str.143, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 490, i32 2}
!358 = !{ptr @.str.144, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 491, i32 2}
!360 = !{ptr @.str.145, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 492, i32 2}
!362 = !{ptr @.str.146, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 493, i32 2}
!364 = !{ptr @.str.147, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 494, i32 2}
!366 = !{ptr @.str.148, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 495, i32 2}
!368 = !{ptr @.str.149, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 496, i32 2}
!370 = !{ptr @.str.150, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 497, i32 2}
!372 = !{ptr @.str.151, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 498, i32 2}
!374 = !{ptr @.str.152, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 499, i32 2}
!376 = !{ptr @.str.153, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 500, i32 2}
!378 = !{ptr @.str.154, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 501, i32 2}
!380 = !{ptr @.str.155, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 502, i32 2}
!382 = !{ptr @.str.156, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 503, i32 2}
!384 = !{ptr @.str.157, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 505, i32 2}
!386 = !{ptr @.str.158, !387, !"<string literal>", i1 false, i1 false}
!387 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 507, i32 2}
!388 = !{ptr @.str.159, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 508, i32 2}
!390 = !{ptr @.str.160, !391, !"<string literal>", i1 false, i1 false}
!391 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 509, i32 2}
!392 = !{ptr @.str.161, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 510, i32 2}
!394 = !{ptr @.str.162, !395, !"<string literal>", i1 false, i1 false}
!395 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 511, i32 2}
!396 = !{ptr @.str.163, !397, !"<string literal>", i1 false, i1 false}
!397 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 512, i32 2}
!398 = !{ptr @.str.164, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 513, i32 2}
!400 = !{ptr @.str.165, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 514, i32 2}
!402 = !{ptr @.str.166, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 515, i32 2}
!404 = !{ptr @.str.167, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 517, i32 2}
!406 = !{ptr @.str.168, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 518, i32 2}
!408 = !{ptr @.str.169, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 519, i32 2}
!410 = !{ptr @.str.170, !411, !"<string literal>", i1 false, i1 false}
!411 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 520, i32 2}
!412 = !{ptr @.str.171, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 521, i32 2}
!414 = !{ptr @.str.172, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 522, i32 2}
!416 = !{ptr @.str.173, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 523, i32 2}
!418 = !{ptr @.str.174, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 524, i32 2}
!420 = !{ptr @.str.175, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 525, i32 2}
!422 = !{ptr @.str.176, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 526, i32 2}
!424 = !{ptr @.str.177, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 527, i32 2}
!426 = !{ptr @.str.178, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 529, i32 2}
!428 = !{ptr @.str.179, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 530, i32 2}
!430 = !{ptr @.str.180, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 531, i32 2}
!432 = !{ptr @.str.181, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 532, i32 2}
!434 = !{ptr @.str.182, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 533, i32 2}
!436 = !{ptr @.str.183, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 534, i32 2}
!438 = !{ptr @.str.184, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 535, i32 2}
!440 = !{ptr @.str.185, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 536, i32 2}
!442 = !{ptr @.str.186, !443, !"<string literal>", i1 false, i1 false}
!443 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 537, i32 2}
!444 = !{ptr @.str.187, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 538, i32 2}
!446 = !{ptr @.str.188, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 539, i32 2}
!448 = !{ptr @.str.189, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 540, i32 2}
!450 = !{ptr @.str.190, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 542, i32 2}
!452 = !{ptr @.str.191, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 543, i32 2}
!454 = !{ptr @.str.192, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 544, i32 2}
!456 = !{ptr @.str.193, !457, !"<string literal>", i1 false, i1 false}
!457 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 546, i32 2}
!458 = !{ptr @.str.194, !459, !"<string literal>", i1 false, i1 false}
!459 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 548, i32 2}
!460 = !{ptr @.str.195, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 549, i32 2}
!462 = !{ptr @.str.196, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 550, i32 2}
!464 = !{ptr @.str.197, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 551, i32 2}
!466 = !{ptr @infra_clks, !467, !"infra_clks", i1 false, i1 false}
!467 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 461, i32 30}
!468 = !{ptr @infra0_cg_regs, !469, !"infra0_cg_regs", i1 false, i1 false}
!469 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 404, i32 35}
!470 = !{ptr @infra1_cg_regs, !471, !"infra1_cg_regs", i1 false, i1 false}
!471 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 410, i32 35}
!472 = !{ptr @infra2_cg_regs, !473, !"infra2_cg_regs", i1 false, i1 false}
!473 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 416, i32 35}
!474 = !{ptr @plls, !475, !"plls", i1 false, i1 false}
!475 = !{!"../drivers/clk/mediatek/clk-mt6797.c", i32 636, i32 34}
!476 = !{i32 1, !"wchar_size", i32 2}
!477 = !{i32 1, !"min_enum_size", i32 4}
!478 = !{i32 8, !"branch-target-enforcement", i32 0}
!479 = !{i32 8, !"sign-return-address", i32 0}
!480 = !{i32 8, !"sign-return-address-all", i32 0}
!481 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!482 = !{i32 7, !"uwtable", i32 1}
!483 = !{i32 7, !"frame-pointer", i32 2}
!484 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
