; ModuleID = '/llk/IR_all_yes/drivers/clk/mediatek/clk-mt2701.c_pt.bc'
source_filename = "../drivers/clk/mediatek/clk-mt2701.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.mtk_fixed_factor = type { i32, ptr, ptr, i32, i32 }
%struct.mtk_composite = type { i32, ptr, ptr, ptr, i32, i32, i32, i32, i8, i8, i8, i8, i8, i8, i8 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mtk_fixed_clk = type { i32, ptr, ptr, i32 }
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

@__of_table_mtk_infra = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2701-infracfg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_infra_of_clk_init_driver }, section "__clk_of_table", align 4
@__initcall__kmod_clk_mt2701__170_1035_clk_mt2701_init3 = internal global ptr @clk_mt2701_init, section ".initcall3.init", align 4
@infra_clk_data = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@infra_fixed_divs = internal constant { [1 x %struct.mtk_fixed_factor], [44 x i8] } { [1 x %struct.mtk_fixed_factor] [%struct.mtk_fixed_factor { i32 19, ptr @.str.3, ptr @.str.4, i32 1, i32 2 }], [44 x i8] zeroinitializer }, align 32
@cpu_muxes = internal constant [1 x %struct.mtk_composite] [%struct.mtk_composite { i32 20, ptr @.str.5, ptr @cpu_parents, ptr null, i32 4, i32 0, i32 0, i32 0, i8 2, i8 2, i8 -1, i8 -1, i8 0, i8 0, i8 4 }], section ".init.rodata", align 4
@mtk_infrasys_init_early._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 759, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013%s(): could not register clock provider: %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"mtk_infrasys_init_early\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/clk/mediatek/clk-mt2701.c\00", [62 x i8] zeroinitializer }, align 32
@mtk_infrasys_init_early._entry_ptr = internal global ptr @mtk_infrasys_init_early._entry, section ".printk_index", align 4
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"clk13m\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"clk26m\00", [25 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"infra_cpu_sel\00", [18 x i8] zeroinitializer }, align 32
@cpu_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8], [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"armpll\00", [25 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mainpll\00", [24 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"mmpll\00", [26 x i8] zeroinitializer }, align 32
@clk_mt2701_drv = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @clk_mt2701_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.9, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_match_clk_mt2701, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clk-mt2701\00", [21 x i8] zeroinitializer }, align 32
@of_match_clk_mt2701 = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2701-topckgen\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_topckgen_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2701-infracfg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_infrasys_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2701-pericfg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_pericfg_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt2701-apmixedsys\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mtk_apmixedsys_init }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@clk_mt2701_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.2, i32 1017, ptr @.str.12, ptr @.str.13 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"could not register clock provider: %s: %d\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clk_mt2701_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@clk_mt2701_probe._entry_ptr = internal global ptr @clk_mt2701_probe._entry, section ".printk_index", align 4
@top_fixed_clks = internal constant { [13 x %struct.mtk_fixed_clk], [48 x i8] } { [13 x %struct.mtk_fixed_clk] [%struct.mtk_fixed_clk { i32 153, ptr @.str.14, ptr @.str.4, i32 108000000 }, %struct.mtk_fixed_clk { i32 43, ptr @.str.15, ptr @.str.4, i32 400000000 }, %struct.mtk_fixed_clk { i32 73, ptr @.str.16, ptr @.str.4, i32 295750000 }, %struct.mtk_fixed_clk { i32 61, ptr @.str.17, ptr @.str.4, i32 340000000 }, %struct.mtk_fixed_clk { i32 62, ptr @.str.18, ptr @.str.4, i32 340000000 }, %struct.mtk_fixed_clk { i32 63, ptr @.str.19, ptr @.str.4, i32 340000000 }, %struct.mtk_fixed_clk { i32 54, ptr @.str.20, ptr @.str.4, i32 27000000 }, %struct.mtk_fixed_clk { i32 152, ptr @.str.21, ptr @.str.4, i32 416000000 }, %struct.mtk_fixed_clk { i32 154, ptr @.str.22, ptr @.str.4, i32 143000000 }, %struct.mtk_fixed_clk { i32 60, ptr @.str.23, ptr @.str.4, i32 27000000 }, %struct.mtk_fixed_clk { i32 155, ptr @.str.24, ptr @.str.4, i32 0 }, %struct.mtk_fixed_clk { i32 156, ptr @.str.25, ptr @.str.4, i32 0 }, %struct.mtk_fixed_clk { i32 157, ptr @.str.26, ptr @.str.4, i32 0 }], [48 x i8] zeroinitializer }, align 32
@top_fixed_divs = internal constant { [73 x %struct.mtk_fixed_factor], [364 x i8] } { [73 x %struct.mtk_fixed_factor] [%struct.mtk_fixed_factor { i32 1, ptr @.str.27, ptr @.str.7, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 2, ptr @.str.28, ptr @.str.7, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 3, ptr @.str.29, ptr @.str.7, i32 1, i32 3 }, %struct.mtk_fixed_factor { i32 4, ptr @.str.30, ptr @.str.7, i32 1, i32 5 }, %struct.mtk_fixed_factor { i32 5, ptr @.str.31, ptr @.str.7, i32 1, i32 7 }, %struct.mtk_fixed_factor { i32 6, ptr @.str.32, ptr @.str.28, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 7, ptr @.str.33, ptr @.str.28, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 8, ptr @.str.34, ptr @.str.28, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 9, ptr @.str.35, ptr @.str.28, i32 1, i32 16 }, %struct.mtk_fixed_factor { i32 10, ptr @.str.36, ptr @.str.29, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 11, ptr @.str.37, ptr @.str.29, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 12, ptr @.str.38, ptr @.str.29, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 13, ptr @.str.39, ptr @.str.30, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 14, ptr @.str.40, ptr @.str.30, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 15, ptr @.str.41, ptr @.str.31, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 16, ptr @.str.42, ptr @.str.31, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 17, ptr @.str.43, ptr @.str.44, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 18, ptr @.str.45, ptr @.str.44, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 19, ptr @.str.46, ptr @.str.44, i32 1, i32 3 }, %struct.mtk_fixed_factor { i32 20, ptr @.str.47, ptr @.str.44, i32 1, i32 5 }, %struct.mtk_fixed_factor { i32 21, ptr @.str.48, ptr @.str.44, i32 1, i32 7 }, %struct.mtk_fixed_factor { i32 22, ptr @.str.49, ptr @.str.44, i32 1, i32 26 }, %struct.mtk_fixed_factor { i32 23, ptr @.str.50, ptr @.str.44, i32 1, i32 52 }, %struct.mtk_fixed_factor { i32 24, ptr @.str.51, ptr @.str.44, i32 1, i32 108 }, %struct.mtk_fixed_factor { i32 25, ptr @.str.52, ptr @.str.44, i32 1, i32 26 }, %struct.mtk_fixed_factor { i32 26, ptr @.str.53, ptr @.str.45, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 27, ptr @.str.54, ptr @.str.45, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 28, ptr @.str.55, ptr @.str.45, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 151, ptr @.str.56, ptr @.str.45, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 29, ptr @.str.57, ptr @.str.46, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 30, ptr @.str.58, ptr @.str.46, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 31, ptr @.str.59, ptr @.str.46, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 32, ptr @.str.60, ptr @.str.46, i32 1, i32 16 }, %struct.mtk_fixed_factor { i32 33, ptr @.str.61, ptr @.str.46, i32 1, i32 32 }, %struct.mtk_fixed_factor { i32 34, ptr @.str.62, ptr @.str.47, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 35, ptr @.str.63, ptr @.str.47, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 36, ptr @.str.64, ptr @.str.47, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 37, ptr @.str.65, ptr @.str.66, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 38, ptr @.str.67, ptr @.str.66, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 39, ptr @.str.68, ptr @.str.66, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 40, ptr @.str.69, ptr @.str.66, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 41, ptr @.str.70, ptr @.str.8, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 42, ptr @.str.71, ptr @.str.8, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 44, ptr @.str.72, ptr @.str.15, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 45, ptr @.str.73, ptr @.str.15, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 46, ptr @.str.74, ptr @.str.15, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 47, ptr @.str.75, ptr @.str.76, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 48, ptr @.str.77, ptr @.str.76, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 49, ptr @.str.78, ptr @.str.76, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 72, ptr @.str.79, ptr @.str.80, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 50, ptr @.str.81, ptr @.str.82, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 51, ptr @.str.83, ptr @.str.82, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 74, ptr @.str.84, ptr @.str.14, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 55, ptr @.str.85, ptr @.str.14, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 56, ptr @.str.86, ptr @.str.14, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 57, ptr @.str.87, ptr @.str.88, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 58, ptr @.str.89, ptr @.str.88, i32 1, i32 2 }, %struct.mtk_fixed_factor { i32 59, ptr @.str.90, ptr @.str.88, i32 1, i32 3 }, %struct.mtk_fixed_factor { i32 75, ptr @.str.91, ptr @.str.6, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 66, ptr @.str.92, ptr @.str.93, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 67, ptr @.str.94, ptr @.str.93, i32 1, i32 4 }, %struct.mtk_fixed_factor { i32 68, ptr @.str.95, ptr @.str.93, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 69, ptr @.str.96, ptr @.str.93, i32 1, i32 16 }, %struct.mtk_fixed_factor { i32 70, ptr @.str.97, ptr @.str.93, i32 1, i32 24 }, %struct.mtk_fixed_factor { i32 64, ptr @.str.98, ptr @.str.99, i32 1, i32 3 }, %struct.mtk_fixed_factor { i32 65, ptr @.str.100, ptr @.str.101, i32 1, i32 3 }, %struct.mtk_fixed_factor { i32 52, ptr @.str.102, ptr @.str.103, i32 1, i32 3 }, %struct.mtk_fixed_factor { i32 53, ptr @.str.104, ptr @.str.103, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 71, ptr @.str.105, ptr @.str.106, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 150, ptr @.str.107, ptr @.str.4, i32 1, i32 8 }, %struct.mtk_fixed_factor { i32 148, ptr @.str.108, ptr @.str.4, i32 1, i32 793 }, %struct.mtk_fixed_factor { i32 149, ptr @.str.109, ptr @.str.110, i32 1, i32 1 }, %struct.mtk_fixed_factor { i32 158, ptr @.str.111, ptr @.str.112, i32 1, i32 4 }], [364 x i8] zeroinitializer }, align 32
@top_muxes = internal constant { [54 x %struct.mtk_composite], [528 x i8] } { [54 x %struct.mtk_composite] [%struct.mtk_composite { i32 79, ptr @.str.112, ptr @axi_parents, ptr null, i32 2048, i32 64, i32 0, i32 64, i8 0, i8 3, i8 7, i8 -1, i8 0, i8 0, i8 8 }, %struct.mtk_composite { i32 78, ptr @.str.113, ptr @mem_parents, ptr null, i32 2048, i32 64, i32 0, i32 64, i8 8, i8 1, i8 15, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 77, ptr @.str.114, ptr @ddrphycfg_parents, ptr null, i32 2048, i32 64, i32 0, i32 64, i8 16, i8 1, i8 23, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 76, ptr @.str.115, ptr @mm_parents, ptr null, i32 4, i32 64, i32 0, i32 64, i8 24, i8 3, i8 31, i8 -1, i8 0, i8 0, i8 8 }, %struct.mtk_composite { i32 83, ptr @.str.116, ptr @pwm_parents, ptr null, i32 4, i32 80, i32 0, i32 80, i8 0, i8 2, i8 7, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 82, ptr @.str.117, ptr @vdec_parents, ptr null, i32 4, i32 80, i32 0, i32 80, i8 8, i8 4, i8 15, i8 -1, i8 0, i8 0, i8 9 }, %struct.mtk_composite { i32 81, ptr @.str.118, ptr @mfg_parents, ptr null, i32 4, i32 80, i32 0, i32 80, i8 16, i8 3, i8 23, i8 -1, i8 0, i8 0, i8 8 }, %struct.mtk_composite { i32 80, ptr @.str.119, ptr @camtg_parents, ptr null, i32 4, i32 80, i32 0, i32 80, i8 24, i8 3, i8 31, i8 -1, i8 0, i8 0, i8 7 }, %struct.mtk_composite { i32 87, ptr @.str.120, ptr @uart_parents, ptr null, i32 4, i32 96, i32 0, i32 96, i8 0, i8 1, i8 7, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 86, ptr @.str.121, ptr @spi_parents, ptr null, i32 4, i32 96, i32 0, i32 96, i8 8, i8 3, i8 15, i8 -1, i8 0, i8 0, i8 5 }, %struct.mtk_composite { i32 85, ptr @.str.122, ptr @usb20_parents, ptr null, i32 4, i32 96, i32 0, i32 96, i8 16, i8 2, i8 23, i8 -1, i8 0, i8 0, i8 3 }, %struct.mtk_composite { i32 84, ptr @.str.123, ptr @msdc30_parents, ptr null, i32 4, i32 96, i32 0, i32 96, i8 24, i8 3, i8 31, i8 -1, i8 0, i8 0, i8 6 }, %struct.mtk_composite { i32 91, ptr @.str.124, ptr @msdc30_parents, ptr null, i32 4, i32 112, i32 0, i32 112, i8 0, i8 3, i8 7, i8 -1, i8 0, i8 0, i8 6 }, %struct.mtk_composite { i32 90, ptr @.str.125, ptr @msdc30_parents, ptr null, i32 4, i32 112, i32 0, i32 112, i8 8, i8 3, i8 15, i8 -1, i8 0, i8 0, i8 6 }, %struct.mtk_composite { i32 89, ptr @.str.126, ptr @msdc30_parents, ptr null, i32 4, i32 112, i32 0, i32 112, i8 16, i8 1, i8 23, i8 -1, i8 0, i8 0, i8 6 }, %struct.mtk_composite { i32 88, ptr @.str.127, ptr @aud_intbus_parents, ptr null, i32 4, i32 112, i32 0, i32 112, i8 24, i8 3, i8 31, i8 -1, i8 0, i8 0, i8 6 }, %struct.mtk_composite { i32 95, ptr @.str.128, ptr @pmicspi_parents, ptr null, i32 4, i32 128, i32 0, i32 128, i8 0, i8 4, i8 7, i8 -1, i8 0, i8 0, i8 11 }, %struct.mtk_composite { i32 94, ptr @.str.129, ptr @scp_parents, ptr null, i32 4, i32 128, i32 0, i32 128, i8 8, i8 2, i8 15, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 93, ptr @.str.130, ptr @dpi0_parents, ptr null, i32 4, i32 128, i32 0, i32 128, i8 16, i8 3, i8 23, i8 -1, i8 0, i8 0, i8 8 }, %struct.mtk_composite { i32 92, ptr @.str.131, ptr @dpi1_parents, ptr null, i32 0, i32 128, i32 0, i32 128, i8 24, i8 2, i8 31, i8 -1, i8 0, i8 16, i8 4 }, %struct.mtk_composite { i32 98, ptr @.str.132, ptr @tve_parents, ptr null, i32 4, i32 144, i32 0, i32 144, i8 0, i8 3, i8 7, i8 -1, i8 0, i8 0, i8 8 }, %struct.mtk_composite { i32 97, ptr @.str.133, ptr @hdmi_parents, ptr null, i32 4, i32 144, i32 0, i32 144, i8 8, i8 2, i8 15, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 96, ptr @.str.134, ptr @apll_parents, ptr null, i32 4, i32 144, i32 0, i32 144, i8 16, i8 3, i8 23, i8 -1, i8 0, i8 0, i8 8 }, %struct.mtk_composite { i32 101, ptr @.str.135, ptr @rtc_parents, ptr null, i32 2048, i32 160, i32 0, i32 160, i8 0, i8 2, i8 7, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 100, ptr @.str.136, ptr @nfi2x_parents, ptr null, i32 4, i32 160, i32 0, i32 160, i8 8, i8 3, i8 15, i8 -1, i8 0, i8 0, i8 8 }, %struct.mtk_composite { i32 99, ptr @.str.137, ptr @emmc_hclk_parents, ptr null, i32 4, i32 160, i32 0, i32 160, i8 24, i8 2, i8 31, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 105, ptr @.str.138, ptr @flash_parents, ptr null, i32 4, i32 176, i32 0, i32 176, i8 0, i8 3, i8 7, i8 -1, i8 0, i8 0, i8 8 }, %struct.mtk_composite { i32 104, ptr @.str.139, ptr @di_parents, ptr null, i32 4, i32 176, i32 0, i32 176, i8 8, i8 2, i8 15, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 103, ptr @.str.140, ptr @nr_osd_parents, ptr null, i32 4, i32 176, i32 0, i32 176, i8 16, i8 3, i8 23, i8 -1, i8 0, i8 0, i8 8 }, %struct.mtk_composite { i32 102, ptr @.str.141, ptr @nr_osd_parents, ptr null, i32 4, i32 176, i32 0, i32 176, i8 24, i8 3, i8 31, i8 -1, i8 0, i8 0, i8 8 }, %struct.mtk_composite { i32 109, ptr @.str.142, ptr @hdmirx_bist_parents, ptr null, i32 4, i32 192, i32 0, i32 192, i8 0, i8 3, i8 7, i8 -1, i8 0, i8 0, i8 8 }, %struct.mtk_composite { i32 108, ptr @.str.143, ptr @intdir_parents, ptr null, i32 4, i32 192, i32 0, i32 192, i8 8, i8 2, i8 15, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 107, ptr @.str.144, ptr @asm_parents, ptr null, i32 4, i32 192, i32 0, i32 192, i8 16, i8 2, i8 23, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 106, ptr @.str.145, ptr @asm_parents, ptr null, i32 4, i32 192, i32 0, i32 192, i8 24, i8 3, i8 31, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 112, ptr @.str.146, ptr @asm_parents, ptr null, i32 4, i32 208, i32 0, i32 208, i8 0, i8 2, i8 7, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 111, ptr @.str.147, ptr @ms_card_parents, ptr null, i32 4, i32 208, i32 0, i32 208, i8 16, i8 2, i8 23, i8 -1, i8 0, i8 0, i8 3 }, %struct.mtk_composite { i32 110, ptr @.str.148, ptr @ethif_parents, ptr null, i32 4, i32 208, i32 0, i32 208, i8 24, i8 3, i8 31, i8 -1, i8 0, i8 0, i8 8 }, %struct.mtk_composite { i32 116, ptr @.str.149, ptr @hdmirx_parents, ptr null, i32 4, i32 224, i32 0, i32 224, i8 0, i8 1, i8 7, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 115, ptr @.str.150, ptr @msdc30_parents, ptr null, i32 4, i32 224, i32 0, i32 224, i8 8, i8 3, i8 15, i8 -1, i8 0, i8 0, i8 6 }, %struct.mtk_composite { i32 114, ptr @.str.151, ptr @cmsys_parents, ptr null, i32 4, i32 224, i32 0, i32 224, i8 16, i8 4, i8 23, i8 -1, i8 0, i8 0, i8 15 }, %struct.mtk_composite { i32 113, ptr @.str.152, ptr @spi_parents, ptr null, i32 4, i32 224, i32 0, i32 224, i8 24, i8 3, i8 31, i8 -1, i8 0, i8 0, i8 5 }, %struct.mtk_composite { i32 119, ptr @.str.153, ptr @spi_parents, ptr null, i32 4, i32 240, i32 0, i32 240, i8 0, i8 3, i8 7, i8 -1, i8 0, i8 0, i8 5 }, %struct.mtk_composite { i32 118, ptr @.str.154, ptr @clk_8bdac_parents, ptr null, i32 4, i32 240, i32 0, i32 240, i8 8, i8 2, i8 15, i8 -1, i8 0, i8 0, i8 4 }, %struct.mtk_composite { i32 117, ptr @.str.155, ptr @aud2dvd_parents, ptr null, i32 4, i32 240, i32 0, i32 240, i8 16, i8 1, i8 23, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 129, ptr @.str.156, ptr @padmclk_parents, ptr null, i32 4, i32 256, i32 0, i32 0, i8 0, i8 3, i8 -1, i8 -1, i8 0, i8 0, i8 7 }, %struct.mtk_composite { i32 120, ptr @.str.157, ptr @aud_mux_parents, ptr null, i32 4, i32 300, i32 0, i32 0, i8 0, i8 3, i8 -1, i8 -1, i8 0, i8 0, i8 6 }, %struct.mtk_composite { i32 121, ptr @.str.158, ptr @aud_mux_parents, ptr null, i32 4, i32 300, i32 0, i32 0, i8 3, i8 3, i8 -1, i8 -1, i8 0, i8 0, i8 6 }, %struct.mtk_composite { i32 122, ptr @.str.93, ptr @aud_mux_parents, ptr null, i32 4, i32 300, i32 0, i32 0, i8 6, i8 3, i8 -1, i8 -1, i8 0, i8 0, i8 6 }, %struct.mtk_composite { i32 123, ptr @.str.159, ptr @aud_src_parents, ptr null, i32 4, i32 300, i32 0, i32 300, i8 15, i8 1, i8 23, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 124, ptr @.str.160, ptr @aud_src_parents, ptr null, i32 4, i32 300, i32 0, i32 300, i8 16, i8 1, i8 24, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 125, ptr @.str.161, ptr @aud_src_parents, ptr null, i32 4, i32 300, i32 0, i32 300, i8 17, i8 1, i8 25, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 126, ptr @.str.162, ptr @aud_src_parents, ptr null, i32 4, i32 300, i32 0, i32 300, i8 18, i8 1, i8 26, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 127, ptr @.str.163, ptr @aud_src_parents, ptr null, i32 4, i32 300, i32 0, i32 300, i8 19, i8 1, i8 27, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 128, ptr @.str.164, ptr @aud_src_parents, ptr null, i32 4, i32 300, i32 0, i32 300, i8 20, i8 1, i8 28, i8 -1, i8 0, i8 0, i8 2 }], [528 x i8] zeroinitializer }, align 32
@mt2701_clk_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.170, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@top_adj_divs = internal constant { [10 x %struct.mtk_clk_divider], [72 x i8] } { [10 x %struct.mtk_clk_divider] [%struct.mtk_clk_divider { i32 130, ptr @.str.168, ptr @.str.24, i32 0, i32 288, i8 0, i8 8, i8 0, ptr null }, %struct.mtk_clk_divider { i32 131, ptr @.str.169, ptr @.str.25, i32 0, i32 288, i8 8, i8 8, i8 0, ptr null }, %struct.mtk_clk_divider { i32 132, ptr @.str.171, ptr @.str.157, i32 0, i32 288, i8 16, i8 8, i8 0, ptr null }, %struct.mtk_clk_divider { i32 133, ptr @.str.172, ptr @.str.158, i32 0, i32 288, i8 24, i8 8, i8 0, ptr null }, %struct.mtk_clk_divider { i32 134, ptr @.str.173, ptr @.str.159, i32 0, i32 292, i8 0, i8 8, i8 0, ptr null }, %struct.mtk_clk_divider { i32 135, ptr @.str.174, ptr @.str.160, i32 0, i32 292, i8 8, i8 8, i8 0, ptr null }, %struct.mtk_clk_divider { i32 136, ptr @.str.175, ptr @.str.161, i32 0, i32 292, i8 16, i8 8, i8 0, ptr null }, %struct.mtk_clk_divider { i32 137, ptr @.str.176, ptr @.str.162, i32 0, i32 292, i8 24, i8 8, i8 0, ptr null }, %struct.mtk_clk_divider { i32 138, ptr @.str.177, ptr @.str.163, i32 0, i32 296, i8 0, i8 8, i8 0, ptr null }, %struct.mtk_clk_divider { i32 139, ptr @.str.178, ptr @.str.164, i32 0, i32 296, i8 8, i8 8, i8 0, ptr null }], [72 x i8] zeroinitializer }, align 32
@top_clks = internal constant { [8 x %struct.mtk_gate], [32 x i8] } { [8 x %struct.mtk_gate] [%struct.mtk_gate { i32 146, ptr @.str.166, ptr @.str.171, ptr @top_aud_cg_regs, i32 21, ptr @mtk_clk_gate_ops_no_setclr, i32 0 }, %struct.mtk_gate { i32 147, ptr @.str.167, ptr @.str.172, ptr @top_aud_cg_regs, i32 22, ptr @mtk_clk_gate_ops_no_setclr, i32 0 }, %struct.mtk_gate { i32 140, ptr @.str.179, ptr @.str.173, ptr @top_aud_cg_regs, i32 23, ptr @mtk_clk_gate_ops_no_setclr, i32 0 }, %struct.mtk_gate { i32 141, ptr @.str.180, ptr @.str.174, ptr @top_aud_cg_regs, i32 24, ptr @mtk_clk_gate_ops_no_setclr, i32 0 }, %struct.mtk_gate { i32 142, ptr @.str.181, ptr @.str.175, ptr @top_aud_cg_regs, i32 25, ptr @mtk_clk_gate_ops_no_setclr, i32 0 }, %struct.mtk_gate { i32 143, ptr @.str.182, ptr @.str.176, ptr @top_aud_cg_regs, i32 26, ptr @mtk_clk_gate_ops_no_setclr, i32 0 }, %struct.mtk_gate { i32 144, ptr @.str.183, ptr @.str.177, ptr @top_aud_cg_regs, i32 27, ptr @mtk_clk_gate_ops_no_setclr, i32 0 }, %struct.mtk_gate { i32 145, ptr @.str.184, ptr @.str.178, ptr @top_aud_cg_regs, i32 28, ptr @mtk_clk_gate_ops_no_setclr, i32 0 }], [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dpi_ck\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dmpll_ck\00", [23 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vencpll_ck\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hdmi_0_pix340m\00", [17 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hdmi_0_deep340m\00", [16 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hdmi_0_pll340m\00", [17 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hadds2_fbclk\00", [19 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"wbg_dig_ck_416m\00", [16 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dsi0_lntc_dsi\00", [18 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"hdmi_scl_rx\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"aud_ext1\00", [23 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"aud_ext2\00", [23 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nfi1x_pad\00", [22 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"syspll_ck\00", [22 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"syspll_d2\00", [22 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"syspll_d3\00", [22 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"syspll_d5\00", [22 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"syspll_d7\00", [22 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"syspll1_d2\00", [21 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"syspll1_d4\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"syspll1_d8\00", [21 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"syspll1_d16\00", [20 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"syspll2_d2\00", [21 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"syspll2_d4\00", [21 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"syspll2_d8\00", [21 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"syspll3_d2\00", [21 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"syspll3_d4\00", [21 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"syspll4_d2\00", [21 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"syspll4_d4\00", [21 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"univpll_ck\00", [21 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"univpll\00", [24 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"univpll_d2\00", [21 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"univpll_d3\00", [21 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"univpll_d5\00", [21 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"univpll_d7\00", [21 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univpll_d26\00", [20 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univpll_d52\00", [20 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"univpll_d108\00", [19 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"usb_phy48m_ck\00", [18 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univpll1_d2\00", [20 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univpll1_d4\00", [20 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univpll1_d8\00", [20 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"8bdac_ck\00", [23 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univpll2_d2\00", [20 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univpll2_d4\00", [20 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univpll2_d8\00", [20 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"univpll2_d16\00", [19 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"univpll2_d32\00", [19 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univpll3_d2\00", [20 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univpll3_d4\00", [20 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"univpll3_d8\00", [20 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"msdcpll_ck\00", [21 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"msdcpll\00", [24 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"msdcpll_d2\00", [21 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"msdcpll_d4\00", [21 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"msdcpll_d8\00", [21 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmpll_ck\00", [23 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmpll_d2\00", [23 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dmpll_d2\00", [23 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dmpll_d4\00", [23 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dmpll_x2\00", [23 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tvdpll_ck\00", [22 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"tvdpll\00", [25 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tvdpll_d2\00", [22 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"tvdpll_d4\00", [22 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vdecpll_ck\00", [21 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"vdecpll\00", [24 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tvd2pll_ck\00", [21 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tvd2pll\00", [24 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tvd2pll_d2\00", [21 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mipipll\00", [24 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mipipll_d2\00", [21 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mipipll_d4\00", [21 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hdmipll_ck\00", [21 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hdmitx_dig_cts\00", [17 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hdmipll_d2\00", [21 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hdmipll_d3\00", [21 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"armpll_1p3g_ck\00", [17 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"audpll\00", [25 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"audpll_sel\00", [21 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"audpll_d4\00", [22 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"audpll_d8\00", [22 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"audpll_d16\00", [21 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"audpll_d24\00", [21 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aud1pll_98m_ck\00", [17 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"aud1pll\00", [24 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aud2pll_90m_ck\00", [17 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"aud2pll\00", [24 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"hadds2pll_98m\00", [18 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"hadds2pll\00", [22 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"hadds2pll_294m\00", [17 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ethpll_500m_ck\00", [17 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"ethpll\00", [25 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clk26m_d8\00", [22 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"32k_internal\00", [19 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"32k_external\00", [19 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rtc32k\00", [25 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"axisel_d4\00", [22 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"axi_sel\00", [24 x i8] zeroinitializer }, align 32
@axi_parents = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.32, ptr @.str.30, ptr @.str.33, ptr @.str.47, ptr @.str.57, ptr @.str.71, ptr @.str.72], [32 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mem_sel\00", [24 x i8] zeroinitializer }, align 32
@mem_parents = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.4, ptr @.str.15], [24 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ddrphycfg_sel\00", [18 x i8] zeroinitializer }, align 32
@ddrphycfg_parents = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.4, ptr @.str.34], [24 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mm_sel\00", [25 x i8] zeroinitializer }, align 32
@mm_parents = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.16, ptr @.str.32, ptr @.str.33, ptr @.str.47, ptr @.str.53, ptr @.str.57, ptr @.str.15], [32 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pwm_sel\00", [24 x i8] zeroinitializer }, align 32
@pwm_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.4, ptr @.str.58, ptr @.str.62, ptr @.str.54], [16 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vdec_sel\00", [23 x i8] zeroinitializer }, align 32
@vdec_parents = internal constant { [9 x ptr], [60 x i8] } { [9 x ptr] [ptr @.str.4, ptr @.str.79, ptr @.str.30, ptr @.str.33, ptr @.str.47, ptr @.str.57, ptr @.str.16, ptr @.str.67, ptr @.str.71], [60 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mfg_sel\00", [24 x i8] zeroinitializer }, align 32
@mfg_parents = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.70, ptr @.str.165, ptr @.str.65, ptr @.str.4, ptr @.str.29, ptr @.str.46, ptr @.str.53], [32 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"camtg_sel\00", [22 x i8] zeroinitializer }, align 32
@camtg_parents = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.4, ptr @.str.49, ptr @.str.57, ptr @.str.39, ptr @.str.40, ptr @.str.67, ptr @.str.71], [36 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uart_sel\00", [23 x i8] zeroinitializer }, align 32
@uart_parents = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.4, ptr @.str.59], [24 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spi0_sel\00", [23 x i8] zeroinitializer }, align 32
@spi_parents = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.4, ptr @.str.39, ptr @.str.41, ptr @.str.58, ptr @.str.55], [44 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usb20_sel\00", [22 x i8] zeroinitializer }, align 32
@usb20_parents = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.4, ptr @.str.55, ptr @.str.63], [20 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"msdc30_0_sel\00", [19 x i8] zeroinitializer }, align 32
@msdc30_parents = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.4, ptr @.str.67, ptr @.str.36, ptr @.str.33, ptr @.str.54, ptr @.str.58], [40 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"msdc30_1_sel\00", [19 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"msdc30_2_sel\00", [19 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"audio_sel\00", [22 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aud_intbus_sel\00", [17 x i8] zeroinitializer }, align 32
@aud_intbus_parents = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.4, ptr @.str.33, ptr @.str.39, ptr @.str.41, ptr @.str.62, ptr @.str.58], [40 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pmicspi_sel\00", [20 x i8] zeroinitializer }, align 32
@pmicspi_parents = internal constant { [11 x ptr], [52 x i8] } { [11 x ptr] [ptr @.str.4, ptr @.str.34, ptr @.str.37, ptr @.str.41, ptr @.str.40, ptr @.str.38, ptr @.str.35, ptr @.str.63, ptr @.str.49, ptr @.str.72, ptr @.str.73], [52 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"scp_sel\00", [24 x i8] zeroinitializer }, align 32
@scp_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.4, ptr @.str.34, ptr @.str.72, ptr @.str.73], [16 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dpi0_sel\00", [23 x i8] zeroinitializer }, align 32
@dpi0_parents = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.4, ptr @.str.75, ptr @.str.77, ptr @.str.78], [32 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dpi1_sel\00", [23 x i8] zeroinitializer }, align 32
@dpi1_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.4, ptr @.str.75, ptr @.str.77, ptr @.str.78], [16 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"tve_sel\00", [24 x i8] zeroinitializer }, align 32
@tve_parents = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.4, ptr @.str.75, ptr @.str.77, ptr @.str.78], [32 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hdmi_sel\00", [23 x i8] zeroinitializer }, align 32
@hdmi_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.4, ptr @.str.87, ptr @.str.89, ptr @.str.90], [16 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"apll_sel\00", [23 x i8] zeroinitializer }, align 32
@apll_parents = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.92, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.4, ptr @.str.4], [32 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"rtc_sel\00", [24 x i8] zeroinitializer }, align 32
@rtc_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.108, ptr @.str.109, ptr @.str.4, ptr @.str.64], [16 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"nfi2x_sel\00", [22 x i8] zeroinitializer }, align 32
@nfi2x_parents = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.36, ptr @.str.31, ptr @.str.62, ptr @.str.37, ptr @.str.63, ptr @.str.42, ptr @.str.4], [32 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"emmc_hclk_sel\00", [18 x i8] zeroinitializer }, align 32
@emmc_hclk_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.4, ptr @.str.32, ptr @.str.33, ptr @.str.36], [16 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"flash_sel\00", [22 x i8] zeroinitializer }, align 32
@flash_parents = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.107, ptr @.str.4, ptr @.str.38, ptr @.str.40, ptr @.str.63, ptr @.str.41, ptr @.str.37, ptr @.str.58], [32 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"di_sel\00", [25 x i8] zeroinitializer }, align 32
@di_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.4, ptr @.str.81, ptr @.str.83, ptr @.str.4], [16 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nr_sel\00", [25 x i8] zeroinitializer }, align 32
@nr_osd_parents = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.16, ptr @.str.32, ptr @.str.33, ptr @.str.47, ptr @.str.53, ptr @.str.57, ptr @.str.15], [32 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"osd_sel\00", [24 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hdmirx_bist_sel\00", [16 x i8] zeroinitializer }, align 32
@hdmirx_bist_parents = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.29, ptr @.str.4, ptr @.str.35, ptr @.str.41, ptr @.str.33, ptr @.str.16, ptr @.str.4], [32 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"intdir_sel\00", [21 x i8] zeroinitializer }, align 32
@intdir_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.4, ptr @.str.70, ptr @.str.28, ptr @.str.45], [16 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"asm_i_sel\00", [22 x i8] zeroinitializer }, align 32
@asm_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.4, ptr @.str.58, ptr @.str.57, ptr @.str.30], [16 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"asm_m_sel\00", [22 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"asm_h_sel\00", [22 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ms_card_sel\00", [20 x i8] zeroinitializer }, align 32
@ms_card_parents = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.4, ptr @.str.64, ptr @.str.42], [20 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ethif_sel\00", [22 x i8] zeroinitializer }, align 32
@ethif_parents = internal constant { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.4, ptr @.str.32, ptr @.str.30, ptr @.str.33, ptr @.str.47, ptr @.str.53, ptr @.str.15, ptr @.str.72], [32 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hdmirx26_24_sel\00", [16 x i8] zeroinitializer }, align 32
@hdmirx_parents = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.4, ptr @.str.50], [24 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"msdc30_3_sel\00", [19 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cmsys_sel\00", [22 x i8] zeroinitializer }, align 32
@cmsys_parents = internal constant { [15 x ptr], [36 x i8] } { [15 x ptr] [ptr @.str.4, ptr @.str.32, ptr @.str.53, ptr @.str.47, ptr @.str.30, ptr @.str.36, ptr @.str.33, ptr @.str.39, ptr @.str.37, ptr @.str.34, ptr @.str.4, ptr @.str.4, ptr @.str.4, ptr @.str.4, ptr @.str.4], [36 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spi2_sel\00", [23 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spi1_sel\00", [23 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"8bdac_sel\00", [22 x i8] zeroinitializer }, align 32
@clk_8bdac_parents = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.108, ptr @.str.56, ptr @.str.4, ptr @.str.4], [16 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"aud2dvd_sel\00", [20 x i8] zeroinitializer }, align 32
@aud2dvd_parents = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.166, ptr @.str.167], [24 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"padmclk_sel\00", [20 x i8] zeroinitializer }, align 32
@padmclk_parents = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.4, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.59, ptr @.str.60, ptr @.str.61], [36 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"aud_mux1_sel\00", [19 x i8] zeroinitializer }, align 32
@aud_mux_parents = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.4, ptr @.str.98, ptr @.str.100, ptr @.str.102, ptr @.str.168, ptr @.str.169], [40 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"aud_mux2_sel\00", [19 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aud_k1_src_sel\00", [17 x i8] zeroinitializer }, align 32
@aud_src_parents = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.157, ptr @.str.158], [24 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aud_k2_src_sel\00", [17 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aud_k3_src_sel\00", [17 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aud_k4_src_sel\00", [17 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aud_k5_src_sel\00", [17 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aud_k6_src_sel\00", [17 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dmpll_x2_ck\00", [20 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"a1sys_hp_ck\00", [20 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"a2sys_hp_ck\00", [20 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"audio_ext1_ck\00", [18 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"audio_ext2_ck\00", [18 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mt2701_clk_lock\00", [16 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"aud_mux1_div\00", [19 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"aud_mux2_div\00", [19 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aud_k1_src_div\00", [17 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aud_k2_src_div\00", [17 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aud_k3_src_div\00", [17 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aud_k4_src_div\00", [17 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aud_k5_src_div\00", [17 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aud_k6_src_div\00", [17 x i8] zeroinitializer }, align 32
@top_aud_cg_regs = internal constant { %struct.mtk_gate_regs, [20 x i8] } { %struct.mtk_gate_regs { i32 300, i32 0, i32 0 }, [20 x i8] zeroinitializer }, align 32
@mtk_clk_gate_ops_no_setclr = external dso_local constant %struct.clk_ops, align 4
@.str.179 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"aud_i2s1_mclk\00", [18 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"aud_i2s2_mclk\00", [18 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"aud_i2s3_mclk\00", [18 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"aud_i2s4_mclk\00", [18 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"aud_i2s5_mclk\00", [18 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"aud_i2s6_mclk\00", [18 x i8] zeroinitializer }, align 32
@infra_clks = internal constant { [18 x %struct.mtk_gate], [104 x i8] } { [18 x %struct.mtk_gate] [%struct.mtk_gate { i32 1, ptr @.str.185, ptr @.str.112, ptr @infra_cg_regs, i32 0, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 2, ptr @.str.186, ptr @.str.115, ptr @infra_cg_regs, i32 1, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 3, ptr @.str.187, ptr @.str.112, ptr @infra_cg_regs, i32 2, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 4, ptr @.str.188, ptr @.str.104, ptr @infra_cg_regs, i32 4, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 5, ptr @.str.189, ptr @.str.4, ptr @infra_cg_regs, i32 5, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 6, ptr @.str.190, ptr @.str.4, ptr @infra_cg_regs, i32 6, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 7, ptr @.str.191, ptr @.str.115, ptr @infra_cg_regs, i32 7, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 8, ptr @.str.192, ptr @.str.113, ptr @infra_cg_regs, i32 8, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 9, ptr @.str.193, ptr @.str.21, ptr @infra_cg_regs, i32 12, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 10, ptr @.str.194, ptr @.str.112, ptr @infra_cg_regs, i32 13, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 11, ptr @.str.195, ptr @.str.113, ptr @infra_cg_regs, i32 14, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 12, ptr @.str.196, ptr @.str.113, ptr @infra_cg_regs, i32 15, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 13, ptr @.str.197, ptr @.str.112, ptr @infra_cg_regs, i32 16, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 14, ptr @.str.198, ptr @.str.135, ptr @infra_cg_regs, i32 18, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 15, ptr @.str.199, ptr @.str.112, ptr @infra_cg_regs, i32 19, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 16, ptr @.str.200, ptr @.str.128, ptr @infra_cg_regs, i32 22, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 17, ptr @.str.201, ptr @.str.112, ptr @infra_cg_regs, i32 23, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 18, ptr @.str.202, ptr @.str.112, ptr @infra_cg_regs, i32 24, ptr @mtk_clk_gate_ops_setclr, i32 0 }], [104 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dbgclk\00", [25 x i8] zeroinitializer }, align 32
@infra_cg_regs = internal constant { %struct.mtk_gate_regs, [20 x i8] } { %struct.mtk_gate_regs { i32 72, i32 68, i32 64 }, [20 x i8] zeroinitializer }, align 32
@mtk_clk_gate_ops_setclr = external dso_local constant %struct.clk_ops, align 4
@.str.186 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"smi_ck\00", [25 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cm4_ck\00", [25 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"audio_splin_bck\00", [16 x i8] zeroinitializer }, align 32
@.str.189 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"audio_ck\00", [23 x i8] zeroinitializer }, align 32
@.str.190 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"efuse_ck\00", [23 x i8] zeroinitializer }, align 32
@.str.191 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"l2c_sram_ck\00", [20 x i8] zeroinitializer }, align 32
@.str.192 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"m4u_ck\00", [25 x i8] zeroinitializer }, align 32
@.str.193 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"connsys_bus\00", [20 x i8] zeroinitializer }, align 32
@.str.194 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"trng_ck\00", [24 x i8] zeroinitializer }, align 32
@.str.195 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rambufif_ck\00", [20 x i8] zeroinitializer }, align 32
@.str.196 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cpum_ck\00", [24 x i8] zeroinitializer }, align 32
@.str.197 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"kp_ck\00", [26 x i8] zeroinitializer }, align 32
@.str.198 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cec_ck\00", [25 x i8] zeroinitializer }, align 32
@.str.199 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"irrx_ck\00", [24 x i8] zeroinitializer }, align 32
@.str.200 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pmicspi_ck\00", [21 x i8] zeroinitializer }, align 32
@.str.201 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pmicwrap_ck\00", [20 x i8] zeroinitializer }, align 32
@.str.202 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ddcci_ck\00", [23 x i8] zeroinitializer }, align 32
@peri_clks = internal constant { [44 x %struct.mtk_gate], [304 x i8] } { [44 x %struct.mtk_gate] [%struct.mtk_gate { i32 32, ptr @.str.203, ptr @.str.112, ptr @peri0_cg_regs, i32 31, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 31, ptr @.str.204, ptr @.str.4, ptr @peri0_cg_regs, i32 30, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 30, ptr @.str.205, ptr @.str.121, ptr @peri0_cg_regs, i32 29, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 29, ptr @.str.206, ptr @.str.4, ptr @peri0_cg_regs, i32 28, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 28, ptr @.str.207, ptr @.str.4, ptr @peri0_cg_regs, i32 27, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 27, ptr @.str.208, ptr @.str.112, ptr @peri0_cg_regs, i32 26, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 26, ptr @.str.209, ptr @.str.112, ptr @peri0_cg_regs, i32 25, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 25, ptr @.str.210, ptr @.str.112, ptr @peri0_cg_regs, i32 24, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 24, ptr @.str.211, ptr @.str.112, ptr @peri0_cg_regs, i32 23, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 23, ptr @.str.212, ptr @.str.112, ptr @peri0_cg_regs, i32 22, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 22, ptr @.str.213, ptr @.str.112, ptr @peri0_cg_regs, i32 21, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 21, ptr @.str.214, ptr @.str.112, ptr @peri0_cg_regs, i32 20, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 20, ptr @.str.215, ptr @.str.112, ptr @peri0_cg_regs, i32 19, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 19, ptr @.str.216, ptr @.str.112, ptr @peri0_cg_regs, i32 18, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 18, ptr @.str.217, ptr @.str.137, ptr @peri0_cg_regs, i32 17, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 17, ptr @.str.218, ptr @.str.150, ptr @peri0_cg_regs, i32 16, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 16, ptr @.str.219, ptr @.str.125, ptr @peri0_cg_regs, i32 15, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 15, ptr @.str.220, ptr @.str.124, ptr @peri0_cg_regs, i32 14, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 14, ptr @.str.221, ptr @.str.123, ptr @peri0_cg_regs, i32 13, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 13, ptr @.str.222, ptr @.str.112, ptr @peri0_cg_regs, i32 12, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 12, ptr @.str.223, ptr @.str.122, ptr @peri0_cg_regs, i32 11, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 11, ptr @.str.224, ptr @.str.122, ptr @peri0_cg_regs, i32 10, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 10, ptr @.str.225, ptr @.str.112, ptr @peri0_cg_regs, i32 9, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 9, ptr @.str.226, ptr @.str.111, ptr @peri0_cg_regs, i32 8, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 8, ptr @.str.227, ptr @.str.111, ptr @peri0_cg_regs, i32 7, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 7, ptr @.str.228, ptr @.str.111, ptr @peri0_cg_regs, i32 6, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 6, ptr @.str.229, ptr @.str.111, ptr @peri0_cg_regs, i32 5, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 5, ptr @.str.230, ptr @.str.111, ptr @peri0_cg_regs, i32 4, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 4, ptr @.str.231, ptr @.str.111, ptr @peri0_cg_regs, i32 3, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 3, ptr @.str.232, ptr @.str.111, ptr @peri0_cg_regs, i32 2, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 2, ptr @.str.233, ptr @.str.112, ptr @peri0_cg_regs, i32 1, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 1, ptr @.str.234, ptr @.str.136, ptr @peri0_cg_regs, i32 0, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 44, ptr @.str.235, ptr @.str.147, ptr @peri1_cg_regs, i32 11, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 43, ptr @.str.236, ptr @.str.152, ptr @peri1_cg_regs, i32 10, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 42, ptr @.str.237, ptr @.str.153, ptr @peri1_cg_regs, i32 9, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 41, ptr @.str.238, ptr @.str.155, ptr @peri1_cg_regs, i32 8, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 40, ptr @.str.239, ptr @.str.121, ptr @peri1_cg_regs, i32 7, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 39, ptr @.str.240, ptr @.str.112, ptr @peri1_cg_regs, i32 6, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 38, ptr @.str.241, ptr @.str.136, ptr @peri1_cg_regs, i32 5, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 37, ptr @.str.242, ptr @.str.26, ptr @peri1_cg_regs, i32 4, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 36, ptr @.str.243, ptr @.str.26, ptr @peri1_cg_regs, i32 3, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 35, ptr @.str.244, ptr @.str.112, ptr @peri1_cg_regs, i32 2, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 34, ptr @.str.245, ptr @.str.112, ptr @peri1_cg_regs, i32 1, ptr @mtk_clk_gate_ops_setclr, i32 0 }, %struct.mtk_gate { i32 33, ptr @.str.246, ptr @.str.112, ptr @peri1_cg_regs, i32 0, ptr @mtk_clk_gate_ops_setclr, i32 0 }], [304 x i8] zeroinitializer }, align 32
@peri_muxs = internal constant { [4 x %struct.mtk_composite], [32 x i8] } { [4 x %struct.mtk_composite] [%struct.mtk_composite { i32 45, ptr @.str.247, ptr @uart_ck_sel_parents, ptr null, i32 4, i32 1036, i32 0, i32 0, i8 0, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 46, ptr @.str.248, ptr @uart_ck_sel_parents, ptr null, i32 4, i32 1036, i32 0, i32 0, i8 1, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 47, ptr @.str.249, ptr @uart_ck_sel_parents, ptr null, i32 4, i32 1036, i32 0, i32 0, i8 2, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }, %struct.mtk_composite { i32 48, ptr @.str.250, ptr @uart_ck_sel_parents, ptr null, i32 4, i32 1036, i32 0, i32 0, i8 3, i8 1, i8 -1, i8 -1, i8 0, i8 0, i8 2 }], [32 x i8] zeroinitializer }, align 32
@.str.203 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usb0_mcu_ck\00", [20 x i8] zeroinitializer }, align 32
@peri0_cg_regs = internal constant { %struct.mtk_gate_regs, [20 x i8] } { %struct.mtk_gate_regs { i32 24, i32 16, i32 8 }, [20 x i8] zeroinitializer }, align 32
@.str.204 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"eth_ck\00", [25 x i8] zeroinitializer }, align 32
@.str.205 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"spi0_ck\00", [24 x i8] zeroinitializer }, align 32
@.str.206 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"auxadc_ck\00", [22 x i8] zeroinitializer }, align 32
@.str.207 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i2c3_ck\00", [24 x i8] zeroinitializer }, align 32
@.str.208 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i2c2_ck\00", [24 x i8] zeroinitializer }, align 32
@.str.209 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i2c1_ck\00", [24 x i8] zeroinitializer }, align 32
@.str.210 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"i2c0_ck\00", [24 x i8] zeroinitializer }, align 32
@.str.211 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"bitif_ck\00", [23 x i8] zeroinitializer }, align 32
@.str.212 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uart3_ck\00", [23 x i8] zeroinitializer }, align 32
@.str.213 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uart2_ck\00", [23 x i8] zeroinitializer }, align 32
@.str.214 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uart1_ck\00", [23 x i8] zeroinitializer }, align 32
@.str.215 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uart0_ck\00", [23 x i8] zeroinitializer }, align 32
@.str.216 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nli_ck\00", [25 x i8] zeroinitializer }, align 32
@.str.217 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"msdc50_3_ck\00", [20 x i8] zeroinitializer }, align 32
@.str.218 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"msdc30_3_ck\00", [20 x i8] zeroinitializer }, align 32
@.str.219 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"msdc30_2_ck\00", [20 x i8] zeroinitializer }, align 32
@.str.220 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"msdc30_1_ck\00", [20 x i8] zeroinitializer }, align 32
@.str.221 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"msdc30_0_ck\00", [20 x i8] zeroinitializer }, align 32
@.str.222 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"ap_dma_ck\00", [22 x i8] zeroinitializer }, align 32
@.str.223 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usb1_ck\00", [24 x i8] zeroinitializer }, align 32
@.str.224 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usb0_ck\00", [24 x i8] zeroinitializer }, align 32
@.str.225 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pwm_ck\00", [25 x i8] zeroinitializer }, align 32
@.str.226 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pwm7_ck\00", [24 x i8] zeroinitializer }, align 32
@.str.227 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pwm6_ck\00", [24 x i8] zeroinitializer }, align 32
@.str.228 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pwm5_ck\00", [24 x i8] zeroinitializer }, align 32
@.str.229 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pwm4_ck\00", [24 x i8] zeroinitializer }, align 32
@.str.230 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pwm3_ck\00", [24 x i8] zeroinitializer }, align 32
@.str.231 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pwm2_ck\00", [24 x i8] zeroinitializer }, align 32
@.str.232 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pwm1_ck\00", [24 x i8] zeroinitializer }, align 32
@.str.233 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"therm_ck\00", [23 x i8] zeroinitializer }, align 32
@.str.234 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"nfi_ck\00", [25 x i8] zeroinitializer }, align 32
@.str.235 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"fci_ck\00", [25 x i8] zeroinitializer }, align 32
@peri1_cg_regs = internal constant { %struct.mtk_gate_regs, [20 x i8] } { %struct.mtk_gate_regs { i32 28, i32 20, i32 12 }, [20 x i8] zeroinitializer }, align 32
@.str.236 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"spi2_ck\00", [24 x i8] zeroinitializer }, align 32
@.str.237 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"spi1_ck\00", [24 x i8] zeroinitializer }, align 32
@.str.238 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"host89_dvd_ck\00", [18 x i8] zeroinitializer }, align 32
@.str.239 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"host89_spi_ck\00", [18 x i8] zeroinitializer }, align 32
@.str.240 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"host89_int_ck\00", [18 x i8] zeroinitializer }, align 32
@.str.241 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"flash_ck\00", [23 x i8] zeroinitializer }, align 32
@.str.242 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nfi_pad_ck\00", [21 x i8] zeroinitializer }, align 32
@.str.243 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nfi_ecc_ck\00", [21 x i8] zeroinitializer }, align 32
@.str.244 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"gcpu_ck\00", [24 x i8] zeroinitializer }, align 32
@.str.245 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"usbslv_ck\00", [22 x i8] zeroinitializer }, align 32
@.str.246 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"usb1_mcu_ck\00", [20 x i8] zeroinitializer }, align 32
@.str.247 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"uart0_ck_sel\00", [19 x i8] zeroinitializer }, align 32
@uart_ck_sel_parents = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.4, ptr @.str.120], [24 x i8] zeroinitializer }, align 32
@.str.248 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"uart1_ck_sel\00", [19 x i8] zeroinitializer }, align 32
@.str.249 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"uart2_ck_sel\00", [19 x i8] zeroinitializer }, align 32
@.str.250 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"uart3_ck_sel\00", [19 x i8] zeroinitializer }, align 32
@apmixed_plls = internal constant { [13 x %struct.mtk_pll_data], [288 x i8] } { [13 x %struct.mtk_pll_data] [%struct.mtk_pll_data { i32 1, ptr @.str.6, i32 512, i32 524, i32 -2147483647, i32 516, i32 0, i32 0, i8 0, i32 24, i32 2, ptr null, i32 134217728, i32 0, i32 2000000000, i32 21, i32 0, i32 516, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 2, ptr @.str.7, i32 528, i32 540, i32 -268435455, i32 528, i32 0, i32 0, i8 0, i32 4, i32 1, ptr null, i32 134217728, i32 0, i32 2000000000, i32 21, i32 0, i32 532, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 3, ptr @.str.44, i32 544, i32 556, i32 -218103807, i32 544, i32 0, i32 0, i8 0, i32 4, i32 1, ptr null, i32 134217728, i32 0, i32 2000000000, i32 7, i32 0, i32 548, i32 14, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 4, ptr @.str.8, i32 560, i32 572, i32 1, i32 560, i32 0, i32 0, i8 0, i32 4, i32 0, ptr null, i32 134217728, i32 0, i32 2000000000, i32 21, i32 0, i32 564, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 5, ptr @.str.66, i32 576, i32 588, i32 1, i32 576, i32 0, i32 0, i8 0, i32 4, i32 0, ptr null, i32 134217728, i32 0, i32 2000000000, i32 21, i32 0, i32 580, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 6, ptr @.str.76, i32 592, i32 604, i32 1, i32 592, i32 0, i32 0, i8 0, i32 4, i32 0, ptr null, i32 134217728, i32 0, i32 2000000000, i32 21, i32 0, i32 596, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 7, ptr @.str.99, i32 624, i32 636, i32 1, i32 624, i32 0, i32 0, i8 0, i32 4, i32 0, ptr null, i32 134217728, i32 0, i32 2000000000, i32 31, i32 0, i32 628, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 8, ptr @.str.251, i32 640, i32 652, i32 1, i32 640, i32 0, i32 0, i8 0, i32 4, i32 0, ptr null, i32 134217728, i32 0, i32 2000000000, i32 31, i32 0, i32 644, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 9, ptr @.str.106, i32 656, i32 668, i32 1, i32 656, i32 0, i32 0, i8 0, i32 4, i32 0, ptr null, i32 134217728, i32 0, i32 2000000000, i32 31, i32 0, i32 660, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 10, ptr @.str.80, i32 672, i32 684, i32 1, i32 672, i32 0, i32 0, i8 0, i32 4, i32 0, ptr null, i32 134217728, i32 0, i32 2000000000, i32 31, i32 0, i32 676, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 11, ptr @.str.103, i32 688, i32 700, i32 1, i32 688, i32 0, i32 0, i8 0, i32 4, i32 0, ptr null, i32 134217728, i32 0, i32 2000000000, i32 31, i32 0, i32 692, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 12, ptr @.str.101, i32 704, i32 716, i32 1, i32 704, i32 0, i32 0, i8 0, i32 4, i32 0, ptr null, i32 134217728, i32 0, i32 2000000000, i32 31, i32 0, i32 708, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }, %struct.mtk_pll_data { i32 13, ptr @.str.82, i32 720, i32 732, i32 1, i32 720, i32 0, i32 0, i8 0, i32 4, i32 0, ptr null, i32 134217728, i32 0, i32 2000000000, i32 21, i32 0, i32 724, i32 0, i32 0, ptr null, ptr null, i32 0, i8 0 }], [288 x i8] zeroinitializer }, align 32
@apmixed_fixed_divs = internal constant { [1 x %struct.mtk_fixed_factor], [44 x i8] } { [1 x %struct.mtk_fixed_factor] [%struct.mtk_fixed_factor { i32 14, ptr @.str.252, ptr @.str.76, i32 1, i32 1 }], [44 x i8] zeroinitializer }, align 32
@.str.251 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"trgpll\00", [25 x i8] zeroinitializer }, align 32
@.str.252 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hdmi_ref\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.253 = private unnamed_addr constant [15 x i8] c"infra_clk_data\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 737, i32 33 }
@___asan_gen_.256 = private unnamed_addr constant [17 x i8] c"infra_fixed_divs\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 733, i32 38 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 758, i32 3 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 734, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 484, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant [12 x i8] c"cpu_parents\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 476, i32 27 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 478, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 479, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 480, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant [15 x i8] c"clk_mt2701_drv\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 1022, i32 31 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 1025, i32 11 }
@___asan_gen_.298 = private unnamed_addr constant [20 x i8] c"of_match_clk_mt2701\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 986, i32 34 }
@___asan_gen_.301 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 1015, i32 3 }
@___asan_gen_.316 = private unnamed_addr constant [15 x i8] c"top_fixed_clks\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 28, i32 35 }
@___asan_gen_.319 = private unnamed_addr constant [15 x i8] c"top_fixed_divs\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 57, i32 38 }
@___asan_gen_.322 = private unnamed_addr constant [10 x i8] c"top_muxes\00", align 1
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 487, i32 35 }
@___asan_gen_.325 = private unnamed_addr constant [16 x i8] c"mt2701_clk_lock\00", align 1
@___asan_gen_.328 = private unnamed_addr constant [13 x i8] c"top_adj_divs\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 611, i32 37 }
@___asan_gen_.331 = private unnamed_addr constant [9 x i8] c"top_clks\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 647, i32 30 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 29, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 31, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 33, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 35, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 37, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 39, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 41, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 43, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 45, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 47, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 49, i32 2 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 51, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 53, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 58, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 59, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 60, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 61, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 62, i32 2 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 63, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 64, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 65, i32 2 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 66, i32 2 }
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 67, i32 2 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 68, i32 2 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 69, i32 2 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 70, i32 2 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 71, i32 2 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 72, i32 2 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 73, i32 2 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 75, i32 2 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 76, i32 2 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 77, i32 2 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 78, i32 2 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 79, i32 2 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 80, i32 2 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 81, i32 2 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 82, i32 2 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 83, i32 2 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 84, i32 2 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 85, i32 2 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 86, i32 2 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 87, i32 2 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 88, i32 2 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 89, i32 2 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 90, i32 2 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 91, i32 2 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 92, i32 2 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 93, i32 2 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 94, i32 2 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 95, i32 2 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 97, i32 2 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 98, i32 2 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 99, i32 2 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 100, i32 2 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 102, i32 2 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 103, i32 2 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 105, i32 2 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 106, i32 2 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 107, i32 2 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 109, i32 2 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 110, i32 2 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 111, i32 2 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 113, i32 2 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 114, i32 2 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 115, i32 2 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 117, i32 2 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 118, i32 2 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 119, i32 2 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 121, i32 2 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 122, i32 2 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 123, i32 2 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 125, i32 2 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 127, i32 2 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 128, i32 2 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 129, i32 2 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 130, i32 2 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 131, i32 2 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 133, i32 2 }
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 134, i32 2 }
@___asan_gen_.603 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 135, i32 2 }
@___asan_gen_.606 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 136, i32 2 }
@___asan_gen_.612 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 137, i32 2 }
@___asan_gen_.615 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 138, i32 2 }
@___asan_gen_.618 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 139, i32 2 }
@___asan_gen_.624 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 140, i32 2 }
@___asan_gen_.630 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 141, i32 2 }
@___asan_gen_.631 = private unnamed_addr constant [12 x i8] c"axi_parents\00", align 1
@___asan_gen_.633 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 144, i32 27 }
@___asan_gen_.636 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 490, i32 2 }
@___asan_gen_.637 = private unnamed_addr constant [12 x i8] c"mem_parents\00", align 1
@___asan_gen_.639 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 155, i32 27 }
@___asan_gen_.642 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 492, i32 2 }
@___asan_gen_.643 = private unnamed_addr constant [18 x i8] c"ddrphycfg_parents\00", align 1
@___asan_gen_.645 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 160, i32 27 }
@___asan_gen_.648 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 494, i32 2 }
@___asan_gen_.649 = private unnamed_addr constant [11 x i8] c"mm_parents\00", align 1
@___asan_gen_.651 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 165, i32 27 }
@___asan_gen_.654 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 497, i32 2 }
@___asan_gen_.655 = private unnamed_addr constant [12 x i8] c"pwm_parents\00", align 1
@___asan_gen_.657 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 176, i32 27 }
@___asan_gen_.660 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 499, i32 2 }
@___asan_gen_.661 = private unnamed_addr constant [13 x i8] c"vdec_parents\00", align 1
@___asan_gen_.663 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 183, i32 27 }
@___asan_gen_.666 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 501, i32 2 }
@___asan_gen_.667 = private unnamed_addr constant [12 x i8] c"mfg_parents\00", align 1
@___asan_gen_.669 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 195, i32 27 }
@___asan_gen_.672 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 503, i32 2 }
@___asan_gen_.673 = private unnamed_addr constant [14 x i8] c"camtg_parents\00", align 1
@___asan_gen_.675 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 206, i32 27 }
@___asan_gen_.678 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 505, i32 2 }
@___asan_gen_.679 = private unnamed_addr constant [13 x i8] c"uart_parents\00", align 1
@___asan_gen_.681 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 216, i32 27 }
@___asan_gen_.684 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 508, i32 2 }
@___asan_gen_.685 = private unnamed_addr constant [12 x i8] c"spi_parents\00", align 1
@___asan_gen_.687 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 221, i32 27 }
@___asan_gen_.690 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 510, i32 2 }
@___asan_gen_.691 = private unnamed_addr constant [14 x i8] c"usb20_parents\00", align 1
@___asan_gen_.693 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 229, i32 27 }
@___asan_gen_.696 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 512, i32 2 }
@___asan_gen_.697 = private unnamed_addr constant [15 x i8] c"msdc30_parents\00", align 1
@___asan_gen_.699 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 235, i32 27 }
@___asan_gen_.702 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 515, i32 2 }
@___asan_gen_.705 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 517, i32 2 }
@___asan_gen_.708 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 519, i32 2 }
@___asan_gen_.711 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 521, i32 2 }
@___asan_gen_.712 = private unnamed_addr constant [19 x i8] c"aud_intbus_parents\00", align 1
@___asan_gen_.714 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 244, i32 27 }
@___asan_gen_.717 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 524, i32 2 }
@___asan_gen_.718 = private unnamed_addr constant [16 x i8] c"pmicspi_parents\00", align 1
@___asan_gen_.720 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 253, i32 27 }
@___asan_gen_.723 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 526, i32 2 }
@___asan_gen_.724 = private unnamed_addr constant [12 x i8] c"scp_parents\00", align 1
@___asan_gen_.726 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 267, i32 27 }
@___asan_gen_.729 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 528, i32 2 }
@___asan_gen_.730 = private unnamed_addr constant [13 x i8] c"dpi0_parents\00", align 1
@___asan_gen_.732 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 274, i32 27 }
@___asan_gen_.735 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 530, i32 2 }
@___asan_gen_.736 = private unnamed_addr constant [13 x i8] c"dpi1_parents\00", align 1
@___asan_gen_.738 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 285, i32 27 }
@___asan_gen_.741 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 533, i32 2 }
@___asan_gen_.742 = private unnamed_addr constant [12 x i8] c"tve_parents\00", align 1
@___asan_gen_.744 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 292, i32 27 }
@___asan_gen_.747 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 535, i32 2 }
@___asan_gen_.748 = private unnamed_addr constant [13 x i8] c"hdmi_parents\00", align 1
@___asan_gen_.750 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 303, i32 27 }
@___asan_gen_.753 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 537, i32 2 }
@___asan_gen_.754 = private unnamed_addr constant [13 x i8] c"apll_parents\00", align 1
@___asan_gen_.756 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 310, i32 27 }
@___asan_gen_.759 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 540, i32 2 }
@___asan_gen_.760 = private unnamed_addr constant [12 x i8] c"rtc_parents\00", align 1
@___asan_gen_.762 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 321, i32 27 }
@___asan_gen_.765 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 542, i32 2 }
@___asan_gen_.766 = private unnamed_addr constant [14 x i8] c"nfi2x_parents\00", align 1
@___asan_gen_.768 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 328, i32 27 }
@___asan_gen_.771 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 544, i32 2 }
@___asan_gen_.772 = private unnamed_addr constant [18 x i8] c"emmc_hclk_parents\00", align 1
@___asan_gen_.774 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 339, i32 27 }
@___asan_gen_.777 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 547, i32 2 }
@___asan_gen_.778 = private unnamed_addr constant [14 x i8] c"flash_parents\00", align 1
@___asan_gen_.780 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 346, i32 27 }
@___asan_gen_.783 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 549, i32 2 }
@___asan_gen_.784 = private unnamed_addr constant [11 x i8] c"di_parents\00", align 1
@___asan_gen_.786 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 357, i32 27 }
@___asan_gen_.789 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 551, i32 2 }
@___asan_gen_.790 = private unnamed_addr constant [15 x i8] c"nr_osd_parents\00", align 1
@___asan_gen_.792 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 364, i32 27 }
@___asan_gen_.795 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 553, i32 2 }
@___asan_gen_.798 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 556, i32 2 }
@___asan_gen_.799 = private unnamed_addr constant [20 x i8] c"hdmirx_bist_parents\00", align 1
@___asan_gen_.801 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 375, i32 27 }
@___asan_gen_.804 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 558, i32 2 }
@___asan_gen_.805 = private unnamed_addr constant [15 x i8] c"intdir_parents\00", align 1
@___asan_gen_.807 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 386, i32 27 }
@___asan_gen_.810 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 560, i32 2 }
@___asan_gen_.811 = private unnamed_addr constant [12 x i8] c"asm_parents\00", align 1
@___asan_gen_.813 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 393, i32 27 }
@___asan_gen_.816 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 562, i32 2 }
@___asan_gen_.819 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 565, i32 2 }
@___asan_gen_.822 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 567, i32 2 }
@___asan_gen_.823 = private unnamed_addr constant [16 x i8] c"ms_card_parents\00", align 1
@___asan_gen_.825 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 400, i32 27 }
@___asan_gen_.828 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 569, i32 2 }
@___asan_gen_.829 = private unnamed_addr constant [14 x i8] c"ethif_parents\00", align 1
@___asan_gen_.831 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 406, i32 27 }
@___asan_gen_.834 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 572, i32 2 }
@___asan_gen_.835 = private unnamed_addr constant [15 x i8] c"hdmirx_parents\00", align 1
@___asan_gen_.837 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 417, i32 27 }
@___asan_gen_.840 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 574, i32 2 }
@___asan_gen_.843 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 576, i32 2 }
@___asan_gen_.844 = private unnamed_addr constant [14 x i8] c"cmsys_parents\00", align 1
@___asan_gen_.846 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 422, i32 27 }
@___asan_gen_.849 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 579, i32 2 }
@___asan_gen_.852 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 581, i32 2 }
@___asan_gen_.855 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 583, i32 2 }
@___asan_gen_.856 = private unnamed_addr constant [18 x i8] c"clk_8bdac_parents\00", align 1
@___asan_gen_.858 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 440, i32 27 }
@___asan_gen_.861 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 585, i32 2 }
@___asan_gen_.862 = private unnamed_addr constant [16 x i8] c"aud2dvd_parents\00", align 1
@___asan_gen_.864 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 447, i32 27 }
@___asan_gen_.867 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 588, i32 2 }
@___asan_gen_.868 = private unnamed_addr constant [16 x i8] c"padmclk_parents\00", align 1
@___asan_gen_.870 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 452, i32 27 }
@___asan_gen_.873 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 591, i32 2 }
@___asan_gen_.874 = private unnamed_addr constant [16 x i8] c"aud_mux_parents\00", align 1
@___asan_gen_.876 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 462, i32 27 }
@___asan_gen_.879 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 593, i32 2 }
@___asan_gen_.882 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 597, i32 2 }
@___asan_gen_.883 = private unnamed_addr constant [16 x i8] c"aud_src_parents\00", align 1
@___asan_gen_.885 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 471, i32 27 }
@___asan_gen_.888 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 599, i32 2 }
@___asan_gen_.891 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 601, i32 2 }
@___asan_gen_.894 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 603, i32 2 }
@___asan_gen_.897 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 605, i32 2 }
@___asan_gen_.900 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 607, i32 2 }
@___asan_gen_.903 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 198, i32 2 }
@___asan_gen_.906 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 448, i32 2 }
@___asan_gen_.909 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 449, i32 2 }
@___asan_gen_.912 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 467, i32 2 }
@___asan_gen_.915 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 468, i32 2 }
@___asan_gen_.918 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 26, i32 8 }
@___asan_gen_.921 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 616, i32 2 }
@___asan_gen_.924 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 618, i32 2 }
@___asan_gen_.927 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 620, i32 2 }
@___asan_gen_.930 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 622, i32 2 }
@___asan_gen_.933 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 624, i32 2 }
@___asan_gen_.936 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 626, i32 2 }
@___asan_gen_.939 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 628, i32 2 }
@___asan_gen_.942 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 630, i32 2 }
@___asan_gen_.943 = private unnamed_addr constant [16 x i8] c"top_aud_cg_regs\00", align 1
@___asan_gen_.945 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 634, i32 35 }
@___asan_gen_.948 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 652, i32 2 }
@___asan_gen_.951 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 654, i32 2 }
@___asan_gen_.954 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 656, i32 2 }
@___asan_gen_.957 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 658, i32 2 }
@___asan_gen_.960 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 660, i32 2 }
@___asan_gen_.963 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 662, i32 2 }
@___asan_gen_.964 = private unnamed_addr constant [11 x i8] c"infra_clks\00", align 1
@___asan_gen_.966 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 712, i32 30 }
@___asan_gen_.969 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 713, i32 2 }
@___asan_gen_.970 = private unnamed_addr constant [14 x i8] c"infra_cg_regs\00", align 1
@___asan_gen_.972 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 697, i32 35 }
@___asan_gen_.975 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 714, i32 2 }
@___asan_gen_.978 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 715, i32 2 }
@___asan_gen_.981 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 716, i32 2 }
@___asan_gen_.984 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 717, i32 2 }
@___asan_gen_.987 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 718, i32 2 }
@___asan_gen_.990 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 719, i32 2 }
@___asan_gen_.993 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 720, i32 2 }
@___asan_gen_.996 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 721, i32 2 }
@___asan_gen_.999 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 722, i32 2 }
@___asan_gen_.1002 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 723, i32 2 }
@___asan_gen_.1005 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 724, i32 2 }
@___asan_gen_.1008 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 725, i32 2 }
@___asan_gen_.1011 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 726, i32 2 }
@___asan_gen_.1014 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 727, i32 2 }
@___asan_gen_.1017 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 728, i32 2 }
@___asan_gen_.1020 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 729, i32 2 }
@___asan_gen_.1023 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 730, i32 2 }
@___asan_gen_.1024 = private unnamed_addr constant [10 x i8] c"peri_clks\00", align 1
@___asan_gen_.1026 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 822, i32 30 }
@___asan_gen_.1027 = private unnamed_addr constant [10 x i8] c"peri_muxs\00", align 1
@___asan_gen_.1029 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 875, i32 35 }
@___asan_gen_.1032 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 823, i32 2 }
@___asan_gen_.1033 = private unnamed_addr constant [14 x i8] c"peri0_cg_regs\00", align 1
@___asan_gen_.1035 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 792, i32 35 }
@___asan_gen_.1038 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 824, i32 2 }
@___asan_gen_.1041 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 825, i32 2 }
@___asan_gen_.1044 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 826, i32 2 }
@___asan_gen_.1047 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 827, i32 2 }
@___asan_gen_.1050 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 828, i32 2 }
@___asan_gen_.1053 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 829, i32 2 }
@___asan_gen_.1056 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 830, i32 2 }
@___asan_gen_.1059 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 831, i32 2 }
@___asan_gen_.1062 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 832, i32 2 }
@___asan_gen_.1065 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 833, i32 2 }
@___asan_gen_.1068 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 834, i32 2 }
@___asan_gen_.1071 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 835, i32 2 }
@___asan_gen_.1074 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 836, i32 2 }
@___asan_gen_.1077 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 837, i32 2 }
@___asan_gen_.1080 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 838, i32 2 }
@___asan_gen_.1083 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 839, i32 2 }
@___asan_gen_.1086 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 840, i32 2 }
@___asan_gen_.1089 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 841, i32 2 }
@___asan_gen_.1092 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 842, i32 2 }
@___asan_gen_.1095 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 843, i32 2 }
@___asan_gen_.1098 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 844, i32 2 }
@___asan_gen_.1101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 845, i32 2 }
@___asan_gen_.1104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 846, i32 2 }
@___asan_gen_.1107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 847, i32 2 }
@___asan_gen_.1110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 848, i32 2 }
@___asan_gen_.1113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 849, i32 2 }
@___asan_gen_.1116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 850, i32 2 }
@___asan_gen_.1119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 851, i32 2 }
@___asan_gen_.1122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 852, i32 2 }
@___asan_gen_.1125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 853, i32 2 }
@___asan_gen_.1128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 854, i32 2 }
@___asan_gen_.1131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 856, i32 2 }
@___asan_gen_.1132 = private unnamed_addr constant [14 x i8] c"peri1_cg_regs\00", align 1
@___asan_gen_.1134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 798, i32 35 }
@___asan_gen_.1137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 857, i32 2 }
@___asan_gen_.1140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 858, i32 2 }
@___asan_gen_.1143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 859, i32 2 }
@___asan_gen_.1146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 860, i32 2 }
@___asan_gen_.1149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 861, i32 2 }
@___asan_gen_.1152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 862, i32 2 }
@___asan_gen_.1155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 863, i32 2 }
@___asan_gen_.1158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 864, i32 2 }
@___asan_gen_.1161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 865, i32 2 }
@___asan_gen_.1164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 866, i32 2 }
@___asan_gen_.1167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 867, i32 2 }
@___asan_gen_.1170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 876, i32 2 }
@___asan_gen_.1171 = private unnamed_addr constant [20 x i8] c"uart_ck_sel_parents\00", align 1
@___asan_gen_.1173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 870, i32 27 }
@___asan_gen_.1176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 878, i32 2 }
@___asan_gen_.1179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 880, i32 2 }
@___asan_gen_.1182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 882, i32 2 }
@___asan_gen_.1183 = private unnamed_addr constant [13 x i8] c"apmixed_plls\00", align 1
@___asan_gen_.1185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 936, i32 34 }
@___asan_gen_.1186 = private unnamed_addr constant [19 x i8] c"apmixed_fixed_divs\00", align 1
@___asan_gen_.1188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 965, i32 38 }
@___asan_gen_.1191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 951, i32 2 }
@___asan_gen_.1192 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.1193 = private constant [37 x i8] c"../drivers/clk/mediatek/clk-mt2701.c\00", align 1
@___asan_gen_.1194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.1193, i32 966, i32 2 }
@llvm.compiler.used = appending global [318 x ptr] [ptr @__initcall__kmod_clk_mt2701__170_1035_clk_mt2701_init3, ptr @__of_table_mtk_infra, ptr @clk_mt2701_probe._entry, ptr @clk_mt2701_probe._entry_ptr, ptr @mtk_infrasys_init_early._entry, ptr @mtk_infrasys_init_early._entry_ptr, ptr @infra_clk_data, ptr @infra_fixed_divs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @cpu_parents, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @clk_mt2701_drv, ptr @.str.9, ptr @of_match_clk_mt2701, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @top_fixed_clks, ptr @top_fixed_divs, ptr @top_muxes, ptr @mt2701_clk_lock, ptr @top_adj_divs, ptr @top_clks, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @axi_parents, ptr @.str.113, ptr @mem_parents, ptr @.str.114, ptr @ddrphycfg_parents, ptr @.str.115, ptr @mm_parents, ptr @.str.116, ptr @pwm_parents, ptr @.str.117, ptr @vdec_parents, ptr @.str.118, ptr @mfg_parents, ptr @.str.119, ptr @camtg_parents, ptr @.str.120, ptr @uart_parents, ptr @.str.121, ptr @spi_parents, ptr @.str.122, ptr @usb20_parents, ptr @.str.123, ptr @msdc30_parents, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @aud_intbus_parents, ptr @.str.128, ptr @pmicspi_parents, ptr @.str.129, ptr @scp_parents, ptr @.str.130, ptr @dpi0_parents, ptr @.str.131, ptr @dpi1_parents, ptr @.str.132, ptr @tve_parents, ptr @.str.133, ptr @hdmi_parents, ptr @.str.134, ptr @apll_parents, ptr @.str.135, ptr @rtc_parents, ptr @.str.136, ptr @nfi2x_parents, ptr @.str.137, ptr @emmc_hclk_parents, ptr @.str.138, ptr @flash_parents, ptr @.str.139, ptr @di_parents, ptr @.str.140, ptr @nr_osd_parents, ptr @.str.141, ptr @.str.142, ptr @hdmirx_bist_parents, ptr @.str.143, ptr @intdir_parents, ptr @.str.144, ptr @asm_parents, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @ms_card_parents, ptr @.str.148, ptr @ethif_parents, ptr @.str.149, ptr @hdmirx_parents, ptr @.str.150, ptr @.str.151, ptr @cmsys_parents, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @clk_8bdac_parents, ptr @.str.155, ptr @aud2dvd_parents, ptr @.str.156, ptr @padmclk_parents, ptr @.str.157, ptr @aud_mux_parents, ptr @.str.158, ptr @.str.159, ptr @aud_src_parents, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @.str.169, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @top_aud_cg_regs, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @infra_clks, ptr @.str.185, ptr @infra_cg_regs, ptr @.str.186, ptr @.str.187, ptr @.str.188, ptr @.str.189, ptr @.str.190, ptr @.str.191, ptr @.str.192, ptr @.str.193, ptr @.str.194, ptr @.str.195, ptr @.str.196, ptr @.str.197, ptr @.str.198, ptr @.str.199, ptr @.str.200, ptr @.str.201, ptr @.str.202, ptr @peri_clks, ptr @peri_muxs, ptr @.str.203, ptr @peri0_cg_regs, ptr @.str.204, ptr @.str.205, ptr @.str.206, ptr @.str.207, ptr @.str.208, ptr @.str.209, ptr @.str.210, ptr @.str.211, ptr @.str.212, ptr @.str.213, ptr @.str.214, ptr @.str.215, ptr @.str.216, ptr @.str.217, ptr @.str.218, ptr @.str.219, ptr @.str.220, ptr @.str.221, ptr @.str.222, ptr @.str.223, ptr @.str.224, ptr @.str.225, ptr @.str.226, ptr @.str.227, ptr @.str.228, ptr @.str.229, ptr @.str.230, ptr @.str.231, ptr @.str.232, ptr @.str.233, ptr @.str.234, ptr @.str.235, ptr @peri1_cg_regs, ptr @.str.236, ptr @.str.237, ptr @.str.238, ptr @.str.239, ptr @.str.240, ptr @.str.241, ptr @.str.242, ptr @.str.243, ptr @.str.244, ptr @.str.245, ptr @.str.246, ptr @.str.247, ptr @uart_ck_sel_parents, ptr @.str.248, ptr @.str.249, ptr @.str.250, ptr @apmixed_plls, ptr @apmixed_fixed_divs, ptr @.str.251, ptr @.str.252], section "llvm.metadata"
@0 = internal global [314 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @infra_clk_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @infra_fixed_divs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_infrasys_init_early._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpu_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mt2701_drv to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_match_clk_mt2701 to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mt2701_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @top_fixed_clks to i32), i32 208, i32 256, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @top_fixed_divs to i32), i32 1460, i32 1824, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @top_muxes to i32), i32 2160, i32 2688, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt2701_clk_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @top_adj_divs to i32), i32 280, i32 352, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @top_clks to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.612 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.615 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.618 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.624 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.630 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @axi_parents to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.631 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.633 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mem_parents to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.637 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.639 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ddrphycfg_parents to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.643 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mm_parents to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.655 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_parents to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.661 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mfg_parents to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.667 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @camtg_parents to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.673 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart_parents to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.679 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.684 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spi_parents to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.685 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.690 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @usb20_parents to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.691 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.693 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.696 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msdc30_parents to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.697 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.699 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.702 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.705 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.708 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.711 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aud_intbus_parents to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.712 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.714 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.717 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmicspi_parents to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.718 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.720 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.723 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @scp_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.724 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.726 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.729 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpi0_parents to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.730 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.732 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.735 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpi1_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.736 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.738 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.741 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tve_parents to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.742 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.744 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.747 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmi_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.748 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.750 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.753 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apll_parents to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.754 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.756 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.759 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rtc_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.760 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.762 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.765 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nfi2x_parents to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.766 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.768 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.771 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emmc_hclk_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.772 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.777 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @flash_parents to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.778 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @di_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.784 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nr_osd_parents to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.790 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.795 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.798 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmirx_bist_parents to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.799 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.801 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.804 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intdir_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.805 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.807 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.810 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asm_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.811 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.813 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.816 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.819 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.822 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ms_card_parents to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.823 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.825 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.828 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ethif_parents to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.829 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.831 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.834 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hdmirx_parents to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.835 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.837 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.840 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.843 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cmsys_parents to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.844 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.846 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_8bdac_parents to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.856 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.861 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aud2dvd_parents to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.862 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.864 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.867 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @padmclk_parents to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.868 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.870 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.873 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aud_mux_parents to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.874 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.876 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.879 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.882 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aud_src_parents to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.883 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.885 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.888 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.891 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.894 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.897 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.900 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.903 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.906 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.909 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.912 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.915 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.918 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.921 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.924 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.927 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.930 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.933 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.936 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.939 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.942 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @top_aud_cg_regs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.943 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.945 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.948 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.951 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.954 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.957 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.960 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.963 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @infra_clks to i32), i32 504, i32 608, i32 ptrtoint (ptr @___asan_gen_.964 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.966 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.969 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @infra_cg_regs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.970 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.972 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.975 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.978 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.981 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.189 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.984 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.190 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.987 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.191 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.990 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.192 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.993 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.193 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.996 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.194 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.999 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.195 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1002 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.196 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1005 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.197 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1008 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.198 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1011 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.199 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1014 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.200 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1017 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.201 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1020 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.202 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1023 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @peri_clks to i32), i32 1232, i32 1536, i32 ptrtoint (ptr @___asan_gen_.1024 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1026 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @peri_muxs to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.1027 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1029 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.203 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1032 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @peri0_cg_regs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1033 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1035 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.204 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1038 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.205 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1041 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.206 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1044 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.207 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1047 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.208 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1050 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.209 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1053 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.210 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1056 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.211 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1059 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.212 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1062 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.213 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1065 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.214 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1068 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.215 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1071 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.216 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1074 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.217 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1077 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.218 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1080 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.219 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1083 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.220 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1086 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.221 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1089 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.222 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1092 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.223 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1095 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.224 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1098 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.225 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.226 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.227 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.228 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.229 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.230 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.231 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.232 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.233 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.234 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.235 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @peri1_cg_regs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1132 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.236 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.237 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.238 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.239 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.240 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.241 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.242 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.243 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.244 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.245 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.246 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.247 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart_ck_sel_parents to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.1171 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.248 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.249 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.250 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apmixed_plls to i32), i32 1248, i32 1536, i32 ptrtoint (ptr @___asan_gen_.1183 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @apmixed_fixed_divs to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.1186 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.251 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.252 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.1192 to i32), i32 ptrtoint (ptr @___asan_gen_.1193 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.1194 to i32), i32 -1 }]
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
  tail call fastcc void @mtk_infrasys_init_early(ptr noundef %np) #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_mt2701_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @clk_mt2701_drv, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtk_infrasys_init_early(ptr noundef %node) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @infra_clk_data, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  %call = tail call ptr @mtk_alloc_clk_data(i32 noundef 21) #4
  store ptr %call, ptr @infra_clk_data, align 4
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then
  %i.012 = phi i32 [ 0, %if.then ], [ %inc, %for.body.for.body_crit_edge ]
  %1 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call, align 4
  %arrayidx = getelementptr ptr, ptr %2, i32 %i.012
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -517 to ptr), ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %i.012, 1
  %exitcond.not = icmp eq i32 %inc, 21
  br i1 %exitcond.not, label %for.body.if.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end:                                           ; preds = %for.body.if.end_crit_edge, %entry.if.end_crit_edge
  %4 = load ptr, ptr @infra_clk_data, align 4
  tail call void @mtk_clk_register_factors(ptr noundef nonnull @infra_fixed_divs, i32 noundef 1, ptr noundef %4) #4
  %5 = load ptr, ptr @infra_clk_data, align 4
  %call2 = tail call i32 @mtk_clk_register_cpumuxes(ptr noundef %node, ptr noundef nonnull @cpu_muxes, i32 noundef 1, ptr noundef %5) #4
  %6 = load ptr, ptr @infra_clk_data, align 4
  %call3 = tail call i32 @of_clk_add_provider(ptr noundef %node, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %6) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %do.end

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef %call3) #8
  br label %if.end7

if.end7:                                          ; preds = %do.end, %if.end.if.end7_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @mtk_alloc_clk_data(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_clk_register_factors(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_clk_register_cpumuxes(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_mt2701_probe(ptr noundef %pdev) #3 align 64 {
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
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10, ptr noundef %1, i32 noundef %call1) #8
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
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #4
  %call2 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call) #4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call5 = tail call ptr @mtk_alloc_clk_data(i32 noundef 159) #4
  tail call void @mtk_clk_register_fixed_clks(ptr noundef nonnull @top_fixed_clks, i32 noundef 13, ptr noundef %call5) #4
  tail call void @mtk_clk_register_factors(ptr noundef nonnull @top_fixed_divs, i32 noundef 73, ptr noundef %call5) #4
  tail call void @mtk_clk_register_composites(ptr noundef nonnull @top_muxes, i32 noundef 54, ptr noundef %call2, ptr noundef nonnull @mt2701_clk_lock, ptr noundef %call5) #4
  tail call void @mtk_clk_register_dividers(ptr noundef nonnull @top_adj_divs, i32 noundef 10, ptr noundef %call2, ptr noundef nonnull @mt2701_clk_lock, ptr noundef %call5) #4
  %call6 = tail call i32 @mtk_clk_register_gates(ptr noundef %1, ptr noundef nonnull @top_clks, i32 noundef 8, ptr noundef %call5) #4
  %call7 = tail call i32 @of_clk_add_provider(ptr noundef %1, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %call5) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ %call7, %if.end ]
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
  br i1 %tobool.not, label %if.then, label %for.body.preheader

for.body.preheader:                               ; preds = %entry
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %cmp2 = icmp eq ptr %6, inttoptr (i32 -517 to ptr)
  br i1 %cmp2, label %if.then3, label %for.body.preheader.for.inc_crit_edge

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call ptr @mtk_alloc_clk_data(i32 noundef 21) #4
  store ptr %call, ptr @infra_clk_data, align 4
  br label %if.end7

if.then3:                                         ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -2 to ptr), ptr %4, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then3, %for.body.preheader.for.inc_crit_edge
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %2, align 4
  %arrayidx.1 = getelementptr ptr, ptr %9, i32 1
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.1, align 4
  %cmp2.1 = icmp eq ptr %11, inttoptr (i32 -517 to ptr)
  br i1 %cmp2.1, label %if.then3.1, label %for.inc.for.inc.1_crit_edge

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.1

if.then3.1:                                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.1, align 4
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then3.1, %for.inc.for.inc.1_crit_edge
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %2, align 4
  %arrayidx.2 = getelementptr ptr, ptr %14, i32 2
  %15 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.2, align 4
  %cmp2.2 = icmp eq ptr %16, inttoptr (i32 -517 to ptr)
  br i1 %cmp2.2, label %if.then3.2, label %for.inc.1.for.inc.2_crit_edge

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.2

if.then3.2:                                       ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  %17 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.2, align 4
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then3.2, %for.inc.1.for.inc.2_crit_edge
  %18 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %2, align 4
  %arrayidx.3 = getelementptr ptr, ptr %19, i32 3
  %20 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.3, align 4
  %cmp2.3 = icmp eq ptr %21, inttoptr (i32 -517 to ptr)
  br i1 %cmp2.3, label %if.then3.3, label %for.inc.2.for.inc.3_crit_edge

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.3

if.then3.3:                                       ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  %22 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.3, align 4
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then3.3, %for.inc.2.for.inc.3_crit_edge
  %23 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %2, align 4
  %arrayidx.4 = getelementptr ptr, ptr %24, i32 4
  %25 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.4, align 4
  %cmp2.4 = icmp eq ptr %26, inttoptr (i32 -517 to ptr)
  br i1 %cmp2.4, label %if.then3.4, label %for.inc.3.for.inc.4_crit_edge

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.4

if.then3.4:                                       ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #6
  %27 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.4, align 4
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then3.4, %for.inc.3.for.inc.4_crit_edge
  %28 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %2, align 4
  %arrayidx.5 = getelementptr ptr, ptr %29, i32 5
  %30 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.5, align 4
  %cmp2.5 = icmp eq ptr %31, inttoptr (i32 -517 to ptr)
  br i1 %cmp2.5, label %if.then3.5, label %for.inc.4.for.inc.5_crit_edge

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.5

if.then3.5:                                       ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #6
  %32 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.5, align 4
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then3.5, %for.inc.4.for.inc.5_crit_edge
  %33 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %2, align 4
  %arrayidx.6 = getelementptr ptr, ptr %34, i32 6
  %35 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx.6, align 4
  %cmp2.6 = icmp eq ptr %36, inttoptr (i32 -517 to ptr)
  br i1 %cmp2.6, label %if.then3.6, label %for.inc.5.for.inc.6_crit_edge

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.6

if.then3.6:                                       ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #6
  %37 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.6, align 4
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then3.6, %for.inc.5.for.inc.6_crit_edge
  %38 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %2, align 4
  %arrayidx.7 = getelementptr ptr, ptr %39, i32 7
  %40 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx.7, align 4
  %cmp2.7 = icmp eq ptr %41, inttoptr (i32 -517 to ptr)
  br i1 %cmp2.7, label %if.then3.7, label %for.inc.6.for.inc.7_crit_edge

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.7

if.then3.7:                                       ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #6
  %42 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.7, align 4
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then3.7, %for.inc.6.for.inc.7_crit_edge
  %43 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %2, align 4
  %arrayidx.8 = getelementptr ptr, ptr %44, i32 8
  %45 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.8, align 4
  %cmp2.8 = icmp eq ptr %46, inttoptr (i32 -517 to ptr)
  br i1 %cmp2.8, label %if.then3.8, label %for.inc.7.for.inc.8_crit_edge

for.inc.7.for.inc.8_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.8

if.then3.8:                                       ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #6
  %47 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.8, align 4
  br label %for.inc.8

for.inc.8:                                        ; preds = %if.then3.8, %for.inc.7.for.inc.8_crit_edge
  %48 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %2, align 4
  %arrayidx.9 = getelementptr ptr, ptr %49, i32 9
  %50 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.9, align 4
  %cmp2.9 = icmp eq ptr %51, inttoptr (i32 -517 to ptr)
  br i1 %cmp2.9, label %if.then3.9, label %for.inc.8.for.inc.9_crit_edge

for.inc.8.for.inc.9_crit_edge:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.9

if.then3.9:                                       ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #6
  %52 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.9, align 4
  br label %for.inc.9

for.inc.9:                                        ; preds = %if.then3.9, %for.inc.8.for.inc.9_crit_edge
  %53 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %2, align 4
  %arrayidx.10 = getelementptr ptr, ptr %54, i32 10
  %55 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx.10, align 4
  %cmp2.10 = icmp eq ptr %56, inttoptr (i32 -517 to ptr)
  br i1 %cmp2.10, label %if.then3.10, label %for.inc.9.for.inc.10_crit_edge

for.inc.9.for.inc.10_crit_edge:                   ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.10

if.then3.10:                                      ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #6
  %57 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.10, align 4
  br label %for.inc.10

for.inc.10:                                       ; preds = %if.then3.10, %for.inc.9.for.inc.10_crit_edge
  %58 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %2, align 4
  %arrayidx.11 = getelementptr ptr, ptr %59, i32 11
  %60 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx.11, align 4
  %cmp2.11 = icmp eq ptr %61, inttoptr (i32 -517 to ptr)
  br i1 %cmp2.11, label %if.then3.11, label %for.inc.10.for.inc.11_crit_edge

for.inc.10.for.inc.11_crit_edge:                  ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.11

if.then3.11:                                      ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #6
  %62 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.11, align 4
  br label %for.inc.11

for.inc.11:                                       ; preds = %if.then3.11, %for.inc.10.for.inc.11_crit_edge
  %63 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %2, align 4
  %arrayidx.12 = getelementptr ptr, ptr %64, i32 12
  %65 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx.12, align 4
  %cmp2.12 = icmp eq ptr %66, inttoptr (i32 -517 to ptr)
  br i1 %cmp2.12, label %if.then3.12, label %for.inc.11.for.inc.12_crit_edge

for.inc.11.for.inc.12_crit_edge:                  ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.12

if.then3.12:                                      ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #6
  %67 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.12, align 4
  br label %for.inc.12

for.inc.12:                                       ; preds = %if.then3.12, %for.inc.11.for.inc.12_crit_edge
  %68 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %2, align 4
  %arrayidx.13 = getelementptr ptr, ptr %69, i32 13
  %70 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx.13, align 4
  %cmp2.13 = icmp eq ptr %71, inttoptr (i32 -517 to ptr)
  br i1 %cmp2.13, label %if.then3.13, label %for.inc.12.for.inc.13_crit_edge

for.inc.12.for.inc.13_crit_edge:                  ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.13

if.then3.13:                                      ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #6
  %72 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.13, align 4
  br label %for.inc.13

for.inc.13:                                       ; preds = %if.then3.13, %for.inc.12.for.inc.13_crit_edge
  %73 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %2, align 4
  %arrayidx.14 = getelementptr ptr, ptr %74, i32 14
  %75 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx.14, align 4
  %cmp2.14 = icmp eq ptr %76, inttoptr (i32 -517 to ptr)
  br i1 %cmp2.14, label %if.then3.14, label %for.inc.13.for.inc.14_crit_edge

for.inc.13.for.inc.14_crit_edge:                  ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.14

if.then3.14:                                      ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #6
  %77 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.14, align 4
  br label %for.inc.14

for.inc.14:                                       ; preds = %if.then3.14, %for.inc.13.for.inc.14_crit_edge
  %78 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %2, align 4
  %arrayidx.15 = getelementptr ptr, ptr %79, i32 15
  %80 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx.15, align 4
  %cmp2.15 = icmp eq ptr %81, inttoptr (i32 -517 to ptr)
  br i1 %cmp2.15, label %if.then3.15, label %for.inc.14.for.inc.15_crit_edge

for.inc.14.for.inc.15_crit_edge:                  ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.15

if.then3.15:                                      ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #6
  %82 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.15, align 4
  br label %for.inc.15

for.inc.15:                                       ; preds = %if.then3.15, %for.inc.14.for.inc.15_crit_edge
  %83 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %2, align 4
  %arrayidx.16 = getelementptr ptr, ptr %84, i32 16
  %85 = ptrtoint ptr %arrayidx.16 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx.16, align 4
  %cmp2.16 = icmp eq ptr %86, inttoptr (i32 -517 to ptr)
  br i1 %cmp2.16, label %if.then3.16, label %for.inc.15.for.inc.16_crit_edge

for.inc.15.for.inc.16_crit_edge:                  ; preds = %for.inc.15
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.16

if.then3.16:                                      ; preds = %for.inc.15
  call void @__sanitizer_cov_trace_pc() #6
  %87 = ptrtoint ptr %arrayidx.16 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.16, align 4
  br label %for.inc.16

for.inc.16:                                       ; preds = %if.then3.16, %for.inc.15.for.inc.16_crit_edge
  %88 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %2, align 4
  %arrayidx.17 = getelementptr ptr, ptr %89, i32 17
  %90 = ptrtoint ptr %arrayidx.17 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx.17, align 4
  %cmp2.17 = icmp eq ptr %91, inttoptr (i32 -517 to ptr)
  br i1 %cmp2.17, label %if.then3.17, label %for.inc.16.for.inc.17_crit_edge

for.inc.16.for.inc.17_crit_edge:                  ; preds = %for.inc.16
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.17

if.then3.17:                                      ; preds = %for.inc.16
  call void @__sanitizer_cov_trace_pc() #6
  %92 = ptrtoint ptr %arrayidx.17 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.17, align 4
  br label %for.inc.17

for.inc.17:                                       ; preds = %if.then3.17, %for.inc.16.for.inc.17_crit_edge
  %93 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %2, align 4
  %arrayidx.18 = getelementptr ptr, ptr %94, i32 18
  %95 = ptrtoint ptr %arrayidx.18 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx.18, align 4
  %cmp2.18 = icmp eq ptr %96, inttoptr (i32 -517 to ptr)
  br i1 %cmp2.18, label %if.then3.18, label %for.inc.17.for.inc.18_crit_edge

for.inc.17.for.inc.18_crit_edge:                  ; preds = %for.inc.17
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.18

if.then3.18:                                      ; preds = %for.inc.17
  call void @__sanitizer_cov_trace_pc() #6
  %97 = ptrtoint ptr %arrayidx.18 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.18, align 4
  br label %for.inc.18

for.inc.18:                                       ; preds = %if.then3.18, %for.inc.17.for.inc.18_crit_edge
  %98 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %2, align 4
  %arrayidx.19 = getelementptr ptr, ptr %99, i32 19
  %100 = ptrtoint ptr %arrayidx.19 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx.19, align 4
  %cmp2.19 = icmp eq ptr %101, inttoptr (i32 -517 to ptr)
  br i1 %cmp2.19, label %if.then3.19, label %for.inc.18.for.inc.19_crit_edge

for.inc.18.for.inc.19_crit_edge:                  ; preds = %for.inc.18
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc.19

if.then3.19:                                      ; preds = %for.inc.18
  call void @__sanitizer_cov_trace_pc() #6
  %102 = ptrtoint ptr %arrayidx.19 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.19, align 4
  br label %for.inc.19

for.inc.19:                                       ; preds = %if.then3.19, %for.inc.18.for.inc.19_crit_edge
  %103 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %2, align 4
  %arrayidx.20 = getelementptr ptr, ptr %104, i32 20
  %105 = ptrtoint ptr %arrayidx.20 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %arrayidx.20, align 4
  %cmp2.20 = icmp eq ptr %106, inttoptr (i32 -517 to ptr)
  br i1 %cmp2.20, label %if.then3.20, label %for.inc.19.if.end7_crit_edge

for.inc.19.if.end7_crit_edge:                     ; preds = %for.inc.19
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then3.20:                                      ; preds = %for.inc.19
  call void @__sanitizer_cov_trace_pc() #6
  %107 = ptrtoint ptr %arrayidx.20 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.20, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then3.20, %for.inc.19.if.end7_crit_edge, %if.then
  %108 = load ptr, ptr @infra_clk_data, align 4
  %call8 = tail call i32 @mtk_clk_register_gates(ptr noundef %1, ptr noundef nonnull @infra_clks, i32 noundef 18, ptr noundef %108) #4
  %109 = load ptr, ptr @infra_clk_data, align 4
  tail call void @mtk_clk_register_factors(ptr noundef nonnull @infra_fixed_divs, i32 noundef 1, ptr noundef %109) #4
  %110 = load ptr, ptr @infra_clk_data, align 4
  %call9 = tail call i32 @of_clk_add_provider(ptr noundef %1, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %110) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end12, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mtk_register_reset_controller(ptr noundef %1, i32 noundef 2, i32 noundef 48) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.end7.cleanup_crit_edge
  ret i32 %call9
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_pericfg_init(ptr noundef %pdev) #3 align 64 {
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
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call ptr @mtk_alloc_clk_data(i32 noundef 49) #4
  %call6 = tail call i32 @mtk_clk_register_gates(ptr noundef %1, ptr noundef nonnull @peri_clks, i32 noundef 44, ptr noundef %call5) #4
  tail call void @mtk_clk_register_composites(ptr noundef nonnull @peri_muxs, i32 noundef 4, ptr noundef %call2, ptr noundef nonnull @mt2701_clk_lock, ptr noundef %call5) #4
  %call7 = tail call i32 @of_clk_add_provider(ptr noundef %1, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef %call5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end9, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mtk_register_reset_controller(ptr noundef %1, i32 noundef 2, i32 noundef 0) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %2, %if.then ], [ 0, %if.end9 ], [ %call7, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
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
  %call = tail call ptr @mtk_alloc_clk_data(i32 noundef 15) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @mtk_clk_register_plls(ptr noundef %1, ptr noundef nonnull @apmixed_plls, i32 noundef 13, ptr noundef nonnull %call) #4
  tail call void @mtk_clk_register_factors(ptr noundef nonnull @apmixed_fixed_divs, i32 noundef 1, ptr noundef nonnull %call) #4
  %call1 = tail call i32 @of_clk_add_provider(ptr noundef %1, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull %call) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 314)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 314)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !14, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !36, !37, !38, !39, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !167, !169, !171, !173, !174, !176, !177, !179, !181, !183, !185, !187, !188, !190, !192, !194, !196, !197, !199, !201, !203, !205, !207, !208, !210, !211, !213, !214, !216, !218, !219, !221, !223, !225, !226, !228, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335, !337, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !363, !365, !367, !369, !371, !373, !375, !377, !379, !381, !383, !385, !387, !389, !391, !393, !395, !397, !399, !401, !403, !405, !407, !409, !411, !413, !415, !417, !419, !421, !423, !425, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448, !450, !452, !454, !456, !458, !460, !462, !464, !466, !468, !470, !472, !474, !476, !478, !480, !482, !484, !486, !488, !490, !492, !494, !496, !498, !500, !502, !504, !506, !508, !510, !512, !514, !516, !518, !520, !522, !524, !526, !528, !530, !532, !534, !536, !538, !540, !542, !544, !546, !548, !550, !552, !554, !556, !558, !560, !562, !564, !566, !568, !570, !572, !574, !576, !578, !580, !582, !584, !586, !588, !590, !592, !594, !596, !598, !600, !602, !604, !606, !608, !610, !612}
!llvm.module.flags = !{!614, !615, !616, !617, !618, !619, !620, !621}
!llvm.ident = !{!622}

!0 = !{ptr @__of_table_mtk_infra, !1, !"__of_table_mtk_infra", i1 false, i1 false}
!1 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 761, i32 1}
!2 = !{ptr @__initcall__kmod_clk_mt2701__170_1035_clk_mt2701_init3, !3, !"__initcall__kmod_clk_mt2701__170_1035_clk_mt2701_init3", i1 false, i1 false}
!3 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 1035, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 758, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @mtk_infrasys_init_early._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @mtk_infrasys_init_early._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @infra_clk_data, !11, !"infra_clk_data", i1 false, i1 false}
!11 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 737, i32 33}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 734, i32 2}
!14 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @infra_fixed_divs, !16, !"infra_fixed_divs", i1 false, i1 false}
!16 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 733, i32 38}
!17 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 484, i32 2}
!19 = !{ptr @cpu_muxes, !20, !"cpu_muxes", i1 false, i1 false}
!20 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 483, i32 35}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 478, i32 2}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 479, i32 2}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 480, i32 2}
!27 = !{ptr @cpu_parents, !28, !"cpu_parents", i1 false, i1 false}
!28 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 476, i32 27}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 1025, i32 11}
!31 = !{ptr @clk_mt2701_drv, !32, !"clk_mt2701_drv", i1 false, i1 false}
!32 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 1022, i32 31}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 1015, i32 3}
!35 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @clk_mt2701_probe._entry, !34, !"_entry", i1 false, i1 false}
!39 = !{ptr @clk_mt2701_probe._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @of_match_clk_mt2701, !41, !"of_match_clk_mt2701", i1 false, i1 false}
!41 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 986, i32 34}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 29, i32 2}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 31, i32 2}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 33, i32 2}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 35, i32 2}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 37, i32 2}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 39, i32 2}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 41, i32 2}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 43, i32 2}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 45, i32 2}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 47, i32 2}
!62 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 49, i32 2}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 51, i32 2}
!66 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 53, i32 2}
!68 = !{ptr @top_fixed_clks, !69, !"top_fixed_clks", i1 false, i1 false}
!69 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 28, i32 35}
!70 = !{ptr @.str.27, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 58, i32 2}
!72 = !{ptr @.str.28, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 59, i32 2}
!74 = !{ptr @.str.29, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 60, i32 2}
!76 = !{ptr @.str.30, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 61, i32 2}
!78 = !{ptr @.str.31, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 62, i32 2}
!80 = !{ptr @.str.32, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 63, i32 2}
!82 = !{ptr @.str.33, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 64, i32 2}
!84 = !{ptr @.str.34, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 65, i32 2}
!86 = !{ptr @.str.35, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 66, i32 2}
!88 = !{ptr @.str.36, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 67, i32 2}
!90 = !{ptr @.str.37, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 68, i32 2}
!92 = !{ptr @.str.38, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 69, i32 2}
!94 = !{ptr @.str.39, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 70, i32 2}
!96 = !{ptr @.str.40, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 71, i32 2}
!98 = !{ptr @.str.41, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 72, i32 2}
!100 = !{ptr @.str.42, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 73, i32 2}
!102 = !{ptr @.str.43, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 75, i32 2}
!104 = !{ptr @.str.44, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.45, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 76, i32 2}
!107 = !{ptr @.str.46, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 77, i32 2}
!109 = !{ptr @.str.47, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 78, i32 2}
!111 = !{ptr @.str.48, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 79, i32 2}
!113 = !{ptr @.str.49, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 80, i32 2}
!115 = !{ptr @.str.50, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 81, i32 2}
!117 = !{ptr @.str.51, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 82, i32 2}
!119 = !{ptr @.str.52, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 83, i32 2}
!121 = !{ptr @.str.53, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 84, i32 2}
!123 = !{ptr @.str.54, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 85, i32 2}
!125 = !{ptr @.str.55, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 86, i32 2}
!127 = !{ptr @.str.56, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 87, i32 2}
!129 = !{ptr @.str.57, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 88, i32 2}
!131 = !{ptr @.str.58, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 89, i32 2}
!133 = !{ptr @.str.59, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 90, i32 2}
!135 = !{ptr @.str.60, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 91, i32 2}
!137 = !{ptr @.str.61, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 92, i32 2}
!139 = !{ptr @.str.62, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 93, i32 2}
!141 = !{ptr @.str.63, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 94, i32 2}
!143 = !{ptr @.str.64, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 95, i32 2}
!145 = !{ptr @.str.65, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 97, i32 2}
!147 = !{ptr @.str.66, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @.str.67, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 98, i32 2}
!150 = !{ptr @.str.68, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 99, i32 2}
!152 = !{ptr @.str.69, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 100, i32 2}
!154 = !{ptr @.str.70, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 102, i32 2}
!156 = !{ptr @.str.71, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 103, i32 2}
!158 = !{ptr @.str.72, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 105, i32 2}
!160 = !{ptr @.str.73, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 106, i32 2}
!162 = !{ptr @.str.74, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 107, i32 2}
!164 = !{ptr @.str.75, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 109, i32 2}
!166 = !{ptr @.str.76, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @.str.77, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 110, i32 2}
!169 = !{ptr @.str.78, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 111, i32 2}
!171 = !{ptr @.str.79, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 113, i32 2}
!173 = !{ptr @.str.80, !172, !"<string literal>", i1 false, i1 false}
!174 = !{ptr @.str.81, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 114, i32 2}
!176 = !{ptr @.str.82, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @.str.83, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 115, i32 2}
!179 = !{ptr @.str.84, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 117, i32 2}
!181 = !{ptr @.str.85, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 118, i32 2}
!183 = !{ptr @.str.86, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 119, i32 2}
!185 = !{ptr @.str.87, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 121, i32 2}
!187 = !{ptr @.str.88, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @.str.89, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 122, i32 2}
!190 = !{ptr @.str.90, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 123, i32 2}
!192 = !{ptr @.str.91, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 125, i32 2}
!194 = !{ptr @.str.92, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 127, i32 2}
!196 = !{ptr @.str.93, !195, !"<string literal>", i1 false, i1 false}
!197 = !{ptr @.str.94, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 128, i32 2}
!199 = !{ptr @.str.95, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 129, i32 2}
!201 = !{ptr @.str.96, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 130, i32 2}
!203 = !{ptr @.str.97, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 131, i32 2}
!205 = !{ptr @.str.98, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 133, i32 2}
!207 = !{ptr @.str.99, !206, !"<string literal>", i1 false, i1 false}
!208 = !{ptr @.str.100, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 134, i32 2}
!210 = !{ptr @.str.101, !209, !"<string literal>", i1 false, i1 false}
!211 = !{ptr @.str.102, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 135, i32 2}
!213 = !{ptr @.str.103, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @.str.104, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 136, i32 2}
!216 = !{ptr @.str.105, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 137, i32 2}
!218 = !{ptr @.str.106, !217, !"<string literal>", i1 false, i1 false}
!219 = !{ptr @.str.107, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 138, i32 2}
!221 = !{ptr @.str.108, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 139, i32 2}
!223 = !{ptr @.str.109, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 140, i32 2}
!225 = !{ptr @.str.110, !224, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @.str.111, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 141, i32 2}
!228 = !{ptr @.str.112, !227, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @top_fixed_divs, !230, !"top_fixed_divs", i1 false, i1 false}
!230 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 57, i32 38}
!231 = !{ptr @.str.113, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 490, i32 2}
!233 = !{ptr @.str.114, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 492, i32 2}
!235 = !{ptr @.str.115, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 494, i32 2}
!237 = !{ptr @.str.116, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 497, i32 2}
!239 = !{ptr @.str.117, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 499, i32 2}
!241 = !{ptr @.str.118, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 501, i32 2}
!243 = !{ptr @.str.119, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 503, i32 2}
!245 = !{ptr @.str.120, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 505, i32 2}
!247 = !{ptr @.str.121, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 508, i32 2}
!249 = !{ptr @.str.122, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 510, i32 2}
!251 = !{ptr @.str.123, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 512, i32 2}
!253 = !{ptr @.str.124, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 515, i32 2}
!255 = !{ptr @.str.125, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 517, i32 2}
!257 = !{ptr @.str.126, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 519, i32 2}
!259 = !{ptr @.str.127, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 521, i32 2}
!261 = !{ptr @.str.128, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 524, i32 2}
!263 = !{ptr @.str.129, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 526, i32 2}
!265 = !{ptr @.str.130, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 528, i32 2}
!267 = !{ptr @.str.131, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 530, i32 2}
!269 = !{ptr @.str.132, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 533, i32 2}
!271 = !{ptr @.str.133, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 535, i32 2}
!273 = !{ptr @.str.134, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 537, i32 2}
!275 = !{ptr @.str.135, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 540, i32 2}
!277 = !{ptr @.str.136, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 542, i32 2}
!279 = !{ptr @.str.137, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 544, i32 2}
!281 = !{ptr @.str.138, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 547, i32 2}
!283 = !{ptr @.str.139, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 549, i32 2}
!285 = !{ptr @.str.140, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 551, i32 2}
!287 = !{ptr @.str.141, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 553, i32 2}
!289 = !{ptr @.str.142, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 556, i32 2}
!291 = !{ptr @.str.143, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 558, i32 2}
!293 = !{ptr @.str.144, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 560, i32 2}
!295 = !{ptr @.str.145, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 562, i32 2}
!297 = !{ptr @.str.146, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 565, i32 2}
!299 = !{ptr @.str.147, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 567, i32 2}
!301 = !{ptr @.str.148, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 569, i32 2}
!303 = !{ptr @.str.149, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 572, i32 2}
!305 = !{ptr @.str.150, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 574, i32 2}
!307 = !{ptr @.str.151, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 576, i32 2}
!309 = !{ptr @.str.152, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 579, i32 2}
!311 = !{ptr @.str.153, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 581, i32 2}
!313 = !{ptr @.str.154, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 583, i32 2}
!315 = !{ptr @.str.155, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 585, i32 2}
!317 = !{ptr @.str.156, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 588, i32 2}
!319 = !{ptr @.str.157, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 591, i32 2}
!321 = !{ptr @.str.158, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 593, i32 2}
!323 = !{ptr @.str.159, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 597, i32 2}
!325 = !{ptr @.str.160, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 599, i32 2}
!327 = !{ptr @.str.161, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 601, i32 2}
!329 = !{ptr @.str.162, !330, !"<string literal>", i1 false, i1 false}
!330 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 603, i32 2}
!331 = !{ptr @.str.163, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 605, i32 2}
!333 = !{ptr @.str.164, !334, !"<string literal>", i1 false, i1 false}
!334 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 607, i32 2}
!335 = !{ptr @top_muxes, !336, !"top_muxes", i1 false, i1 false}
!336 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 487, i32 35}
!337 = !{ptr @axi_parents, !338, !"axi_parents", i1 false, i1 false}
!338 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 144, i32 27}
!339 = !{ptr @mem_parents, !340, !"mem_parents", i1 false, i1 false}
!340 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 155, i32 27}
!341 = !{ptr @ddrphycfg_parents, !342, !"ddrphycfg_parents", i1 false, i1 false}
!342 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 160, i32 27}
!343 = !{ptr @mm_parents, !344, !"mm_parents", i1 false, i1 false}
!344 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 165, i32 27}
!345 = !{ptr @pwm_parents, !346, !"pwm_parents", i1 false, i1 false}
!346 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 176, i32 27}
!347 = !{ptr @vdec_parents, !348, !"vdec_parents", i1 false, i1 false}
!348 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 183, i32 27}
!349 = !{ptr @.str.165, !350, !"<string literal>", i1 false, i1 false}
!350 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 198, i32 2}
!351 = !{ptr @mfg_parents, !352, !"mfg_parents", i1 false, i1 false}
!352 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 195, i32 27}
!353 = !{ptr @camtg_parents, !354, !"camtg_parents", i1 false, i1 false}
!354 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 206, i32 27}
!355 = !{ptr @uart_parents, !356, !"uart_parents", i1 false, i1 false}
!356 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 216, i32 27}
!357 = !{ptr @spi_parents, !358, !"spi_parents", i1 false, i1 false}
!358 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 221, i32 27}
!359 = !{ptr @usb20_parents, !360, !"usb20_parents", i1 false, i1 false}
!360 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 229, i32 27}
!361 = !{ptr @msdc30_parents, !362, !"msdc30_parents", i1 false, i1 false}
!362 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 235, i32 27}
!363 = !{ptr @aud_intbus_parents, !364, !"aud_intbus_parents", i1 false, i1 false}
!364 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 244, i32 27}
!365 = !{ptr @pmicspi_parents, !366, !"pmicspi_parents", i1 false, i1 false}
!366 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 253, i32 27}
!367 = !{ptr @scp_parents, !368, !"scp_parents", i1 false, i1 false}
!368 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 267, i32 27}
!369 = !{ptr @dpi0_parents, !370, !"dpi0_parents", i1 false, i1 false}
!370 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 274, i32 27}
!371 = !{ptr @dpi1_parents, !372, !"dpi1_parents", i1 false, i1 false}
!372 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 285, i32 27}
!373 = !{ptr @tve_parents, !374, !"tve_parents", i1 false, i1 false}
!374 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 292, i32 27}
!375 = !{ptr @hdmi_parents, !376, !"hdmi_parents", i1 false, i1 false}
!376 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 303, i32 27}
!377 = !{ptr @apll_parents, !378, !"apll_parents", i1 false, i1 false}
!378 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 310, i32 27}
!379 = !{ptr @rtc_parents, !380, !"rtc_parents", i1 false, i1 false}
!380 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 321, i32 27}
!381 = !{ptr @nfi2x_parents, !382, !"nfi2x_parents", i1 false, i1 false}
!382 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 328, i32 27}
!383 = !{ptr @emmc_hclk_parents, !384, !"emmc_hclk_parents", i1 false, i1 false}
!384 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 339, i32 27}
!385 = !{ptr @flash_parents, !386, !"flash_parents", i1 false, i1 false}
!386 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 346, i32 27}
!387 = !{ptr @di_parents, !388, !"di_parents", i1 false, i1 false}
!388 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 357, i32 27}
!389 = !{ptr @nr_osd_parents, !390, !"nr_osd_parents", i1 false, i1 false}
!390 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 364, i32 27}
!391 = !{ptr @hdmirx_bist_parents, !392, !"hdmirx_bist_parents", i1 false, i1 false}
!392 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 375, i32 27}
!393 = !{ptr @intdir_parents, !394, !"intdir_parents", i1 false, i1 false}
!394 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 386, i32 27}
!395 = !{ptr @asm_parents, !396, !"asm_parents", i1 false, i1 false}
!396 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 393, i32 27}
!397 = !{ptr @ms_card_parents, !398, !"ms_card_parents", i1 false, i1 false}
!398 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 400, i32 27}
!399 = !{ptr @ethif_parents, !400, !"ethif_parents", i1 false, i1 false}
!400 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 406, i32 27}
!401 = !{ptr @hdmirx_parents, !402, !"hdmirx_parents", i1 false, i1 false}
!402 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 417, i32 27}
!403 = !{ptr @cmsys_parents, !404, !"cmsys_parents", i1 false, i1 false}
!404 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 422, i32 27}
!405 = !{ptr @clk_8bdac_parents, !406, !"clk_8bdac_parents", i1 false, i1 false}
!406 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 440, i32 27}
!407 = !{ptr @.str.166, !408, !"<string literal>", i1 false, i1 false}
!408 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 448, i32 2}
!409 = !{ptr @.str.167, !410, !"<string literal>", i1 false, i1 false}
!410 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 449, i32 2}
!411 = !{ptr @aud2dvd_parents, !412, !"aud2dvd_parents", i1 false, i1 false}
!412 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 447, i32 27}
!413 = !{ptr @padmclk_parents, !414, !"padmclk_parents", i1 false, i1 false}
!414 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 452, i32 27}
!415 = !{ptr @.str.168, !416, !"<string literal>", i1 false, i1 false}
!416 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 467, i32 2}
!417 = !{ptr @.str.169, !418, !"<string literal>", i1 false, i1 false}
!418 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 468, i32 2}
!419 = !{ptr @aud_mux_parents, !420, !"aud_mux_parents", i1 false, i1 false}
!420 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 462, i32 27}
!421 = !{ptr @aud_src_parents, !422, !"aud_src_parents", i1 false, i1 false}
!422 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 471, i32 27}
!423 = !{ptr @.str.170, !424, !"<string literal>", i1 false, i1 false}
!424 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 26, i32 8}
!425 = !{ptr @mt2701_clk_lock, !424, !"mt2701_clk_lock", i1 false, i1 false}
!426 = !{ptr @.str.171, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 616, i32 2}
!428 = !{ptr @.str.172, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 618, i32 2}
!430 = !{ptr @.str.173, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 620, i32 2}
!432 = !{ptr @.str.174, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 622, i32 2}
!434 = !{ptr @.str.175, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 624, i32 2}
!436 = !{ptr @.str.176, !437, !"<string literal>", i1 false, i1 false}
!437 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 626, i32 2}
!438 = !{ptr @.str.177, !439, !"<string literal>", i1 false, i1 false}
!439 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 628, i32 2}
!440 = !{ptr @.str.178, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 630, i32 2}
!442 = !{ptr @top_adj_divs, !443, !"top_adj_divs", i1 false, i1 false}
!443 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 611, i32 37}
!444 = !{ptr @.str.179, !445, !"<string literal>", i1 false, i1 false}
!445 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 652, i32 2}
!446 = !{ptr @.str.180, !447, !"<string literal>", i1 false, i1 false}
!447 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 654, i32 2}
!448 = !{ptr @.str.181, !449, !"<string literal>", i1 false, i1 false}
!449 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 656, i32 2}
!450 = !{ptr @.str.182, !451, !"<string literal>", i1 false, i1 false}
!451 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 658, i32 2}
!452 = !{ptr @.str.183, !453, !"<string literal>", i1 false, i1 false}
!453 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 660, i32 2}
!454 = !{ptr @.str.184, !455, !"<string literal>", i1 false, i1 false}
!455 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 662, i32 2}
!456 = !{ptr @top_clks, !457, !"top_clks", i1 false, i1 false}
!457 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 647, i32 30}
!458 = !{ptr @top_aud_cg_regs, !459, !"top_aud_cg_regs", i1 false, i1 false}
!459 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 634, i32 35}
!460 = !{ptr @.str.185, !461, !"<string literal>", i1 false, i1 false}
!461 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 713, i32 2}
!462 = !{ptr @.str.186, !463, !"<string literal>", i1 false, i1 false}
!463 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 714, i32 2}
!464 = !{ptr @.str.187, !465, !"<string literal>", i1 false, i1 false}
!465 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 715, i32 2}
!466 = !{ptr @.str.188, !467, !"<string literal>", i1 false, i1 false}
!467 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 716, i32 2}
!468 = !{ptr @.str.189, !469, !"<string literal>", i1 false, i1 false}
!469 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 717, i32 2}
!470 = !{ptr @.str.190, !471, !"<string literal>", i1 false, i1 false}
!471 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 718, i32 2}
!472 = !{ptr @.str.191, !473, !"<string literal>", i1 false, i1 false}
!473 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 719, i32 2}
!474 = !{ptr @.str.192, !475, !"<string literal>", i1 false, i1 false}
!475 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 720, i32 2}
!476 = !{ptr @.str.193, !477, !"<string literal>", i1 false, i1 false}
!477 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 721, i32 2}
!478 = !{ptr @.str.194, !479, !"<string literal>", i1 false, i1 false}
!479 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 722, i32 2}
!480 = !{ptr @.str.195, !481, !"<string literal>", i1 false, i1 false}
!481 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 723, i32 2}
!482 = !{ptr @.str.196, !483, !"<string literal>", i1 false, i1 false}
!483 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 724, i32 2}
!484 = !{ptr @.str.197, !485, !"<string literal>", i1 false, i1 false}
!485 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 725, i32 2}
!486 = !{ptr @.str.198, !487, !"<string literal>", i1 false, i1 false}
!487 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 726, i32 2}
!488 = !{ptr @.str.199, !489, !"<string literal>", i1 false, i1 false}
!489 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 727, i32 2}
!490 = !{ptr @.str.200, !491, !"<string literal>", i1 false, i1 false}
!491 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 728, i32 2}
!492 = !{ptr @.str.201, !493, !"<string literal>", i1 false, i1 false}
!493 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 729, i32 2}
!494 = !{ptr @.str.202, !495, !"<string literal>", i1 false, i1 false}
!495 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 730, i32 2}
!496 = !{ptr @infra_clks, !497, !"infra_clks", i1 false, i1 false}
!497 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 712, i32 30}
!498 = !{ptr @infra_cg_regs, !499, !"infra_cg_regs", i1 false, i1 false}
!499 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 697, i32 35}
!500 = !{ptr @.str.203, !501, !"<string literal>", i1 false, i1 false}
!501 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 823, i32 2}
!502 = !{ptr @.str.204, !503, !"<string literal>", i1 false, i1 false}
!503 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 824, i32 2}
!504 = !{ptr @.str.205, !505, !"<string literal>", i1 false, i1 false}
!505 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 825, i32 2}
!506 = !{ptr @.str.206, !507, !"<string literal>", i1 false, i1 false}
!507 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 826, i32 2}
!508 = !{ptr @.str.207, !509, !"<string literal>", i1 false, i1 false}
!509 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 827, i32 2}
!510 = !{ptr @.str.208, !511, !"<string literal>", i1 false, i1 false}
!511 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 828, i32 2}
!512 = !{ptr @.str.209, !513, !"<string literal>", i1 false, i1 false}
!513 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 829, i32 2}
!514 = !{ptr @.str.210, !515, !"<string literal>", i1 false, i1 false}
!515 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 830, i32 2}
!516 = !{ptr @.str.211, !517, !"<string literal>", i1 false, i1 false}
!517 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 831, i32 2}
!518 = !{ptr @.str.212, !519, !"<string literal>", i1 false, i1 false}
!519 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 832, i32 2}
!520 = !{ptr @.str.213, !521, !"<string literal>", i1 false, i1 false}
!521 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 833, i32 2}
!522 = !{ptr @.str.214, !523, !"<string literal>", i1 false, i1 false}
!523 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 834, i32 2}
!524 = !{ptr @.str.215, !525, !"<string literal>", i1 false, i1 false}
!525 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 835, i32 2}
!526 = !{ptr @.str.216, !527, !"<string literal>", i1 false, i1 false}
!527 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 836, i32 2}
!528 = !{ptr @.str.217, !529, !"<string literal>", i1 false, i1 false}
!529 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 837, i32 2}
!530 = !{ptr @.str.218, !531, !"<string literal>", i1 false, i1 false}
!531 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 838, i32 2}
!532 = !{ptr @.str.219, !533, !"<string literal>", i1 false, i1 false}
!533 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 839, i32 2}
!534 = !{ptr @.str.220, !535, !"<string literal>", i1 false, i1 false}
!535 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 840, i32 2}
!536 = !{ptr @.str.221, !537, !"<string literal>", i1 false, i1 false}
!537 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 841, i32 2}
!538 = !{ptr @.str.222, !539, !"<string literal>", i1 false, i1 false}
!539 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 842, i32 2}
!540 = !{ptr @.str.223, !541, !"<string literal>", i1 false, i1 false}
!541 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 843, i32 2}
!542 = !{ptr @.str.224, !543, !"<string literal>", i1 false, i1 false}
!543 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 844, i32 2}
!544 = !{ptr @.str.225, !545, !"<string literal>", i1 false, i1 false}
!545 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 845, i32 2}
!546 = !{ptr @.str.226, !547, !"<string literal>", i1 false, i1 false}
!547 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 846, i32 2}
!548 = !{ptr @.str.227, !549, !"<string literal>", i1 false, i1 false}
!549 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 847, i32 2}
!550 = !{ptr @.str.228, !551, !"<string literal>", i1 false, i1 false}
!551 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 848, i32 2}
!552 = !{ptr @.str.229, !553, !"<string literal>", i1 false, i1 false}
!553 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 849, i32 2}
!554 = !{ptr @.str.230, !555, !"<string literal>", i1 false, i1 false}
!555 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 850, i32 2}
!556 = !{ptr @.str.231, !557, !"<string literal>", i1 false, i1 false}
!557 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 851, i32 2}
!558 = !{ptr @.str.232, !559, !"<string literal>", i1 false, i1 false}
!559 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 852, i32 2}
!560 = !{ptr @.str.233, !561, !"<string literal>", i1 false, i1 false}
!561 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 853, i32 2}
!562 = !{ptr @.str.234, !563, !"<string literal>", i1 false, i1 false}
!563 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 854, i32 2}
!564 = !{ptr @.str.235, !565, !"<string literal>", i1 false, i1 false}
!565 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 856, i32 2}
!566 = !{ptr @.str.236, !567, !"<string literal>", i1 false, i1 false}
!567 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 857, i32 2}
!568 = !{ptr @.str.237, !569, !"<string literal>", i1 false, i1 false}
!569 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 858, i32 2}
!570 = !{ptr @.str.238, !571, !"<string literal>", i1 false, i1 false}
!571 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 859, i32 2}
!572 = !{ptr @.str.239, !573, !"<string literal>", i1 false, i1 false}
!573 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 860, i32 2}
!574 = !{ptr @.str.240, !575, !"<string literal>", i1 false, i1 false}
!575 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 861, i32 2}
!576 = !{ptr @.str.241, !577, !"<string literal>", i1 false, i1 false}
!577 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 862, i32 2}
!578 = !{ptr @.str.242, !579, !"<string literal>", i1 false, i1 false}
!579 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 863, i32 2}
!580 = !{ptr @.str.243, !581, !"<string literal>", i1 false, i1 false}
!581 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 864, i32 2}
!582 = !{ptr @.str.244, !583, !"<string literal>", i1 false, i1 false}
!583 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 865, i32 2}
!584 = !{ptr @.str.245, !585, !"<string literal>", i1 false, i1 false}
!585 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 866, i32 2}
!586 = !{ptr @.str.246, !587, !"<string literal>", i1 false, i1 false}
!587 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 867, i32 2}
!588 = !{ptr @peri_clks, !589, !"peri_clks", i1 false, i1 false}
!589 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 822, i32 30}
!590 = !{ptr @peri0_cg_regs, !591, !"peri0_cg_regs", i1 false, i1 false}
!591 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 792, i32 35}
!592 = !{ptr @peri1_cg_regs, !593, !"peri1_cg_regs", i1 false, i1 false}
!593 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 798, i32 35}
!594 = !{ptr @.str.247, !595, !"<string literal>", i1 false, i1 false}
!595 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 876, i32 2}
!596 = !{ptr @.str.248, !597, !"<string literal>", i1 false, i1 false}
!597 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 878, i32 2}
!598 = !{ptr @.str.249, !599, !"<string literal>", i1 false, i1 false}
!599 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 880, i32 2}
!600 = !{ptr @.str.250, !601, !"<string literal>", i1 false, i1 false}
!601 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 882, i32 2}
!602 = !{ptr @peri_muxs, !603, !"peri_muxs", i1 false, i1 false}
!603 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 875, i32 35}
!604 = !{ptr @uart_ck_sel_parents, !605, !"uart_ck_sel_parents", i1 false, i1 false}
!605 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 870, i32 27}
!606 = !{ptr @.str.251, !607, !"<string literal>", i1 false, i1 false}
!607 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 951, i32 2}
!608 = !{ptr @apmixed_plls, !609, !"apmixed_plls", i1 false, i1 false}
!609 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 936, i32 34}
!610 = !{ptr @.str.252, !611, !"<string literal>", i1 false, i1 false}
!611 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 966, i32 2}
!612 = !{ptr @apmixed_fixed_divs, !613, !"apmixed_fixed_divs", i1 false, i1 false}
!613 = !{!"../drivers/clk/mediatek/clk-mt2701.c", i32 965, i32 38}
!614 = !{i32 1, !"wchar_size", i32 2}
!615 = !{i32 1, !"min_enum_size", i32 4}
!616 = !{i32 8, !"branch-target-enforcement", i32 0}
!617 = !{i32 8, !"sign-return-address", i32 0}
!618 = !{i32 8, !"sign-return-address-all", i32 0}
!619 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!620 = !{i32 7, !"uwtable", i32 1}
!621 = !{i32 7, !"frame-pointer", i32 2}
!622 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
