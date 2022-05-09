; ModuleID = '/llk/IR_all_yes/drivers/clk/clk-bm1880.c_pt.bc'
source_filename = "../drivers/clk/clk-bm1880.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.bm1880_pll_hw_clock = type { %struct.bm1880_pll_clock, ptr, %struct.clk_hw, %struct.clk_init_data }
%struct.bm1880_pll_clock = type { i32, ptr, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.bm1880_div_hw_clock = type { %struct.bm1880_div_clock, ptr, ptr, %struct.clk_hw, %struct.clk_init_data }
%struct.bm1880_div_clock = type { i32, ptr, i32, i8, i8, i32, ptr, i32 }
%struct.bm1880_composite_clock = type { i32, ptr, ptr, ptr, i32, i32, i32, i32, i32, i8, i8, i8, i8, i16, ptr }
%struct.bm1880_gate_clock = type { i32, ptr, ptr, i32, i8, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_parent_data = type { ptr, ptr, ptr, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.clk_div_table = type { i32, i32 }
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
%struct.bm1880_clock_data = type { ptr, ptr, %struct.clk_hw_onecell_data }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }
%struct.clk_mux = type { %struct.clk_hw, ptr, ptr, i32, i8, i8, ptr }
%struct.clk_gate = type { %struct.clk_hw, ptr, i8, i8, ptr }

@__initcall__kmod_clk_bm1880__183_948_bm1880_clk_driver_init6 = internal global ptr @bm1880_clk_driver_init, section ".initcall6.init", align 4
@bm1880_clk_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @bm1880_clk_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @bm1880_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_bm1880_clk_driver_exit = internal global ptr @bm1880_clk_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author184 = internal constant [75 x i8] c"clk_bm1880.author=Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description185 = internal constant [59 x i8] c"clk_bm1880.description=Clock driver for Bitmain BM1880 SoC\00", section ".modinfo", align 1
@__UNIQUE_ID_file186 = internal constant [39 x i8] c"clk_bm1880.file=drivers/clk/clk-bm1880\00", section ".modinfo", align 1
@__UNIQUE_ID_license187 = internal constant [26 x i8] c"clk_bm1880.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bm1880-clk\00", [21 x i8] zeroinitializer }, align 32
@bm1880_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"bitmain,bm1880-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@bm1880_pll_clks = internal global { [4 x %struct.bm1880_pll_hw_clock], [48 x i8] } { [4 x %struct.bm1880_pll_hw_clock] [%struct.bm1880_pll_hw_clock { %struct.bm1880_pll_clock { i32 1, ptr @.str.4, i32 0, i32 0 }, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral }, %struct.clk_init_data zeroinitializer }, %struct.bm1880_pll_hw_clock { %struct.bm1880_pll_clock { i32 2, ptr @.str.5, i32 4, i32 0 }, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.6 }, %struct.clk_init_data zeroinitializer }, %struct.bm1880_pll_hw_clock { %struct.bm1880_pll_clock { i32 3, ptr @.str.7, i32 8, i32 0 }, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.8 }, %struct.clk_init_data zeroinitializer }, %struct.bm1880_pll_hw_clock { %struct.bm1880_pll_clock { i32 4, ptr @.str.9, i32 12, i32 0 }, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.10 }, %struct.clk_init_data zeroinitializer }], [48 x i8] zeroinitializer }, align 32
@bm1880_div_clks = internal global { [8 x %struct.bm1880_div_hw_clock], [128 x i8] } { [8 x %struct.bm1880_div_hw_clock] [%struct.bm1880_div_hw_clock { %struct.bm1880_div_clock { i32 38, ptr @.str.14, i32 112, i8 16, i8 5, i32 1, ptr @bm1880_div_table_0, i32 0 }, ptr null, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.16 }, %struct.clk_init_data zeroinitializer }, %struct.bm1880_div_hw_clock { %struct.bm1880_div_clock { i32 39, ptr @.str.17, i32 116, i8 16, i8 5, i32 1, ptr @bm1880_div_table_0, i32 0 }, ptr null, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.19 }, %struct.clk_init_data zeroinitializer }, %struct.bm1880_div_hw_clock { %struct.bm1880_div_clock { i32 44, ptr @.str.20, i32 124, i8 16, i8 7, i32 3, ptr @bm1880_div_table_1, i32 0 }, ptr null, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.22 }, %struct.clk_init_data zeroinitializer }, %struct.bm1880_div_hw_clock { %struct.bm1880_div_clock { i32 58, ptr @.str.23, i32 148, i8 16, i8 5, i32 2, ptr @bm1880_div_table_0, i32 0 }, ptr null, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.25 }, %struct.clk_init_data zeroinitializer }, %struct.bm1880_div_hw_clock { %struct.bm1880_div_clock { i32 59, ptr @.str.26, i32 152, i8 16, i8 5, i32 3, ptr @bm1880_div_table_0, i32 0 }, ptr null, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.28 }, %struct.clk_init_data zeroinitializer }, %struct.bm1880_div_hw_clock { %struct.bm1880_div_clock { i32 65, ptr @.str.29, i32 172, i8 16, i8 5, i32 15, ptr @bm1880_div_table_0, i32 0 }, ptr null, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.31 }, %struct.clk_init_data zeroinitializer }, %struct.bm1880_div_hw_clock { %struct.bm1880_div_clock { i32 66, ptr @.str.32, i32 176, i8 16, i8 5, i32 11, ptr @bm1880_div_table_0, i32 0 }, ptr null, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.34 }, %struct.clk_init_data zeroinitializer }, %struct.bm1880_div_hw_clock { %struct.bm1880_div_clock { i32 52, ptr @.str.35, i32 136, i8 16, i8 7, i32 125, ptr @bm1880_div_table_1, i32 0 }, ptr null, ptr null, %struct.clk_hw { ptr null, ptr null, ptr @.compoundliteral.37 }, %struct.clk_init_data zeroinitializer }], [128 x i8] zeroinitializer }, align 32
@bm1880_composite_clks = internal constant { [23 x %struct.bm1880_composite_clock], [272 x i8] } { [23 x %struct.bm1880_composite_clock] [%struct.bm1880_composite_clock { i32 5, ptr @.str.42, ptr null, ptr @clk_a53_parents, i32 2, i32 2048, i32 0, i32 32, i32 0, i8 0, i8 0, i8 -1, i8 0, i16 0, ptr null }, %struct.bm1880_composite_clock { i32 6, ptr @.str.43, ptr @.str.7, ptr null, i32 0, i32 2048, i32 0, i32 0, i32 64, i8 1, i8 -1, i8 16, i8 5, i16 30, ptr @bm1880_div_table_0 }, %struct.bm1880_composite_clock { i32 10, ptr @.str.44, ptr @.str.7, ptr null, i32 0, i32 0, i32 0, i32 0, i32 68, i8 5, i8 -1, i8 16, i8 7, i16 60, ptr @bm1880_div_table_1 }, %struct.bm1880_composite_clock { i32 13, ptr @.str.45, ptr @.str.7, ptr null, i32 0, i32 0, i32 0, i32 0, i32 72, i8 8, i8 -1, i8 16, i8 5, i16 15, ptr @bm1880_div_table_0 }, %struct.bm1880_composite_clock { i32 14, ptr @.str.46, ptr @.str.35, ptr null, i32 0, i32 0, i32 0, i32 0, i32 76, i8 9, i8 -1, i8 16, i8 8, i16 120, ptr @bm1880_div_table_2 }, %struct.bm1880_composite_clock { i32 16, ptr @.str.47, ptr @.str.7, ptr null, i32 0, i32 0, i32 0, i32 0, i32 80, i8 11, i8 -1, i8 16, i8 5, i16 15, ptr @bm1880_div_table_0 }, %struct.bm1880_composite_clock { i32 17, ptr @.str.48, ptr @.str.35, ptr null, i32 0, i32 0, i32 0, i32 0, i32 84, i8 12, i8 -1, i8 16, i8 8, i16 120, ptr @bm1880_div_table_2 }, %struct.bm1880_composite_clock { i32 18, ptr @.str.49, ptr @.str.7, ptr null, i32 0, i32 0, i32 0, i32 0, i32 88, i8 13, i8 -1, i8 16, i8 5, i16 3, ptr @bm1880_div_table_0 }, %struct.bm1880_composite_clock { i32 20, ptr @.str.50, ptr @.str.7, ptr null, i32 0, i32 0, i32 0, i32 0, i32 92, i8 15, i8 -1, i8 16, i8 5, i16 3, ptr @bm1880_div_table_0 }, %struct.bm1880_composite_clock { i32 25, ptr @.str.51, ptr @.str.35, ptr null, i32 0, i32 8, i32 0, i32 0, i32 96, i8 20, i8 -1, i8 16, i8 16, i16 120, ptr @bm1880_div_table_4 }, %struct.bm1880_composite_clock { i32 29, ptr @.str.52, ptr @.str.7, ptr null, i32 0, i32 0, i32 0, i32 0, i32 100, i8 24, i8 -1, i8 16, i8 7, i16 61, ptr @bm1880_div_table_1 }, %struct.bm1880_composite_clock { i32 33, ptr @.str.53, ptr @.str.7, ptr null, i32 0, i32 0, i32 0, i32 0, i32 104, i8 28, i8 -1, i8 16, i8 5, i16 4, ptr @bm1880_div_table_0 }, %struct.bm1880_composite_clock { i32 36, ptr @.str.54, ptr @.str.7, ptr null, i32 0, i32 0, i32 0, i32 0, i32 108, i8 31, i8 -1, i8 16, i8 5, i16 30, ptr @bm1880_div_table_0 }, %struct.bm1880_composite_clock { i32 43, ptr @.str.55, ptr @.str.5, ptr null, i32 0, i32 0, i32 4, i32 0, i32 120, i8 3, i8 -1, i8 16, i8 5, i16 1, ptr @bm1880_div_table_0 }, %struct.bm1880_composite_clock { i32 50, ptr @.str.56, ptr @.str.7, ptr null, i32 0, i32 0, i32 4, i32 0, i32 128, i8 9, i8 -1, i8 16, i8 5, i16 12, ptr @bm1880_div_table_0 }, %struct.bm1880_composite_clock { i32 51, ptr @.str.57, ptr @.str.35, ptr null, i32 0, i32 0, i32 4, i32 0, i32 132, i8 10, i8 -1, i8 16, i8 9, i16 363, ptr @bm1880_div_table_3 }, %struct.bm1880_composite_clock { i32 55, ptr @.str.58, ptr @.str.7, ptr null, i32 0, i32 0, i32 4, i32 0, i32 140, i8 13, i8 -1, i8 16, i8 5, i16 4, ptr @bm1880_div_table_0 }, %struct.bm1880_composite_clock { i32 56, ptr @.str.59, ptr @.str.7, ptr null, i32 0, i32 0, i32 4, i32 0, i32 144, i8 14, i8 -1, i8 16, i8 5, i16 4, ptr @bm1880_div_table_0 }, %struct.bm1880_composite_clock { i32 60, ptr @.str.60, ptr null, ptr @clk_axi1_parents, i32 2, i32 0, i32 4, i32 32, i32 0, i8 15, i8 2, i8 -1, i8 0, i16 0, ptr null }, %struct.bm1880_composite_clock { i32 61, ptr @.str.61, ptr @.str.7, ptr null, i32 0, i32 0, i32 4, i32 0, i32 156, i8 17, i8 -1, i8 16, i8 5, i16 3, ptr @bm1880_div_table_0 }, %struct.bm1880_composite_clock { i32 62, ptr @.str.62, ptr @.str.39, ptr null, i32 0, i32 0, i32 4, i32 0, i32 160, i8 18, i8 -1, i8 16, i8 5, i16 2, ptr @bm1880_div_table_0 }, %struct.bm1880_composite_clock { i32 63, ptr @.str.63, ptr @.str.7, ptr null, i32 0, i32 0, i32 4, i32 0, i32 164, i8 19, i8 -1, i8 16, i8 5, i16 6, ptr @bm1880_div_table_0 }, %struct.bm1880_composite_clock { i32 64, ptr @.str.64, ptr @.str.7, ptr null, i32 0, i32 0, i32 4, i32 0, i32 168, i8 20, i8 -1, i8 16, i8 5, i16 15, ptr @bm1880_div_table_0 }], [272 x i8] zeroinitializer }, align 32
@bm1880_gate_clks = internal constant { [31 x %struct.bm1880_gate_clock], [184 x i8] } { [31 x %struct.bm1880_gate_clock] [%struct.bm1880_gate_clock { i32 7, ptr @.str.66, ptr @.str.40, i32 0, i8 2, i32 0 }, %struct.bm1880_gate_clock { i32 8, ptr @.str.67, ptr @.str.60, i32 0, i8 3, i32 0 }, %struct.bm1880_gate_clock { i32 9, ptr @.str.68, ptr @.str.40, i32 0, i8 4, i32 2048 }, %struct.bm1880_gate_clock { i32 11, ptr @.str.69, ptr @.str.40, i32 0, i8 6, i32 0 }, %struct.bm1880_gate_clock { i32 12, ptr @.str.70, ptr @.str.64, i32 0, i8 7, i32 0 }, %struct.bm1880_gate_clock { i32 15, ptr @.str.71, ptr @.str.64, i32 0, i8 10, i32 0 }, %struct.bm1880_gate_clock { i32 19, ptr @.str.72, ptr @.str.63, i32 0, i8 14, i32 0 }, %struct.bm1880_gate_clock { i32 21, ptr @.str.73, ptr @.str.63, i32 0, i8 16, i32 0 }, %struct.bm1880_gate_clock { i32 22, ptr @.str.74, ptr @.str.60, i32 0, i8 17, i32 0 }, %struct.bm1880_gate_clock { i32 23, ptr @.str.75, ptr @.str.40, i32 0, i8 18, i32 8 }, %struct.bm1880_gate_clock { i32 24, ptr @.str.76, ptr @.str.40, i32 0, i8 19, i32 8 }, %struct.bm1880_gate_clock { i32 26, ptr @.str.77, ptr @.str.60, i32 0, i8 21, i32 0 }, %struct.bm1880_gate_clock { i32 27, ptr @.str.78, ptr @.str.40, i32 0, i8 22, i32 0 }, %struct.bm1880_gate_clock { i32 28, ptr @.str.79, ptr @.str.64, i32 0, i8 23, i32 2048 }, %struct.bm1880_gate_clock { i32 30, ptr @.str.80, ptr @.str.40, i32 0, i8 25, i32 0 }, %struct.bm1880_gate_clock { i32 31, ptr @.str.81, ptr @.str.40, i32 0, i8 26, i32 0 }, %struct.bm1880_gate_clock { i32 32, ptr @.str.82, ptr @.str.83, i32 0, i8 27, i32 0 }, %struct.bm1880_gate_clock { i32 34, ptr @.str.84, ptr @.str.64, i32 0, i8 29, i32 0 }, %struct.bm1880_gate_clock { i32 35, ptr @.str.85, ptr @.str.83, i32 0, i8 30, i32 0 }, %struct.bm1880_gate_clock { i32 37, ptr @.str.86, ptr @.str.40, i32 4, i8 0, i32 0 }, %struct.bm1880_gate_clock { i32 41, ptr @.str.87, ptr @.str.39, i32 4, i8 1, i32 0 }, %struct.bm1880_gate_clock { i32 42, ptr @.str.88, ptr @.str.40, i32 4, i8 2, i32 0 }, %struct.bm1880_gate_clock { i32 45, ptr @.str.89, ptr @.str.20, i32 4, i8 4, i32 0 }, %struct.bm1880_gate_clock { i32 46, ptr @.str.90, ptr @.str.83, i32 4, i8 5, i32 0 }, %struct.bm1880_gate_clock { i32 47, ptr @.str.91, ptr @.str.83, i32 4, i8 6, i32 0 }, %struct.bm1880_gate_clock { i32 48, ptr @.str.92, ptr @.str.63, i32 4, i8 7, i32 0 }, %struct.bm1880_gate_clock { i32 49, ptr @.str.93, ptr @.str.83, i32 4, i8 8, i32 0 }, %struct.bm1880_gate_clock { i32 53, ptr @.str.94, ptr @.str.35, i32 4, i8 11, i32 0 }, %struct.bm1880_gate_clock { i32 54, ptr @.str.95, ptr @.str.83, i32 4, i8 12, i32 0 }, %struct.bm1880_gate_clock { i32 57, ptr @.str.96, ptr @.str.83, i32 4, i8 15, i32 0 }, %struct.bm1880_gate_clock { i32 68, ptr @.str.83, ptr @.str.40, i32 4, i8 21, i32 0 }], [184 x i8] zeroinitializer }, align 32
@bm1880_clk_register_plls._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 539, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"\013%s: failed to register clock %s\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bm1880_clk_register_plls\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/clk/clk-bm1880.c\00", [39 x i8] zeroinitializer }, align 32
@bm1880_clk_register_plls._entry_ptr = internal global ptr @bm1880_clk_register_plls._entry, section ".printk_index", align 4
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_mpll\00", [23 x i8] zeroinitializer }, align 32
@bm1880_pll_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bm1880_pll_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@bm1880_pll_parent = internal global { [1 x %struct.clk_parent_data], [16 x i8] } { [1 x %struct.clk_parent_data] [%struct.clk_parent_data { ptr null, ptr @.str.11, ptr @.str.11, i32 0 }], [16 x i8] zeroinitializer }, align 32
@.compoundliteral = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.4, ptr @bm1880_pll_ops, ptr null, ptr @bm1880_pll_parent, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_spll\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.6 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.5, ptr @bm1880_pll_ops, ptr null, ptr @bm1880_pll_parent, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_fpll\00", [23 x i8] zeroinitializer }, align 32
@.compoundliteral.8 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.7, ptr @bm1880_pll_ops, ptr null, ptr @bm1880_pll_parent, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clk_ddrpll\00", [21 x i8] zeroinitializer }, align 32
@.compoundliteral.10 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.9, ptr @bm1880_pll_ops, ptr null, ptr @bm1880_pll_parent, ptr null, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"osc\00", [28 x i8] zeroinitializer }, align 32
@bm1880_clk_register_divs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.12, ptr @.str.3, i32 704, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bm1880_clk_register_divs\00", [39 x i8] zeroinitializer }, align 32
@bm1880_clk_register_divs._entry_ptr = internal global ptr @bm1880_clk_register_divs._entry, section ".printk_index", align 4
@bm1880_clk_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.0 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.13, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"bm1880_clk_lock\00", [16 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk_div_0_rv\00", [19 x i8] zeroinitializer }, align 32
@bm1880_div_table_0 = internal constant { [33 x %struct.clk_div_table], [88 x i8] } { [33 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 1 }, %struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 2, i32 3 }, %struct.clk_div_table { i32 3, i32 4 }, %struct.clk_div_table { i32 4, i32 5 }, %struct.clk_div_table { i32 5, i32 6 }, %struct.clk_div_table { i32 6, i32 7 }, %struct.clk_div_table { i32 7, i32 8 }, %struct.clk_div_table { i32 8, i32 9 }, %struct.clk_div_table { i32 9, i32 10 }, %struct.clk_div_table { i32 10, i32 11 }, %struct.clk_div_table { i32 11, i32 12 }, %struct.clk_div_table { i32 12, i32 13 }, %struct.clk_div_table { i32 13, i32 14 }, %struct.clk_div_table { i32 14, i32 15 }, %struct.clk_div_table { i32 15, i32 16 }, %struct.clk_div_table { i32 16, i32 17 }, %struct.clk_div_table { i32 17, i32 18 }, %struct.clk_div_table { i32 18, i32 19 }, %struct.clk_div_table { i32 19, i32 20 }, %struct.clk_div_table { i32 20, i32 21 }, %struct.clk_div_table { i32 21, i32 22 }, %struct.clk_div_table { i32 22, i32 23 }, %struct.clk_div_table { i32 23, i32 24 }, %struct.clk_div_table { i32 24, i32 25 }, %struct.clk_div_table { i32 25, i32 26 }, %struct.clk_div_table { i32 26, i32 27 }, %struct.clk_div_table { i32 27, i32 28 }, %struct.clk_div_table { i32 28, i32 29 }, %struct.clk_div_table { i32 29, i32 30 }, %struct.clk_div_table { i32 30, i32 31 }, %struct.clk_div_table { i32 31, i32 32 }, %struct.clk_div_table zeroinitializer], [88 x i8] zeroinitializer }, align 32
@bm1880_clk_div_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @bm1880_clk_div_recalc_rate, ptr @bm1880_clk_div_round_rate, ptr null, ptr null, ptr null, ptr @bm1880_clk_div_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@.compoundliteral.15 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @bm1880_pll_clks, i64 80)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.16 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.14, ptr @bm1880_clk_div_ops, ptr null, ptr null, ptr @.compoundliteral.15, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk_div_1_rv\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.18 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @bm1880_pll_clks, i64 140)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.19 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.17, ptr @bm1880_clk_div_ops, ptr null, ptr null, ptr @.compoundliteral.18, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"clk_div_uart_500m\00", [46 x i8] zeroinitializer }, align 32
@bm1880_div_table_1 = internal constant { [34 x %struct.clk_div_table], [80 x i8] } { [34 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 1 }, %struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 2, i32 3 }, %struct.clk_div_table { i32 3, i32 4 }, %struct.clk_div_table { i32 4, i32 5 }, %struct.clk_div_table { i32 5, i32 6 }, %struct.clk_div_table { i32 6, i32 7 }, %struct.clk_div_table { i32 7, i32 8 }, %struct.clk_div_table { i32 8, i32 9 }, %struct.clk_div_table { i32 9, i32 10 }, %struct.clk_div_table { i32 10, i32 11 }, %struct.clk_div_table { i32 11, i32 12 }, %struct.clk_div_table { i32 12, i32 13 }, %struct.clk_div_table { i32 13, i32 14 }, %struct.clk_div_table { i32 14, i32 15 }, %struct.clk_div_table { i32 15, i32 16 }, %struct.clk_div_table { i32 16, i32 17 }, %struct.clk_div_table { i32 17, i32 18 }, %struct.clk_div_table { i32 18, i32 19 }, %struct.clk_div_table { i32 19, i32 20 }, %struct.clk_div_table { i32 20, i32 21 }, %struct.clk_div_table { i32 21, i32 22 }, %struct.clk_div_table { i32 22, i32 23 }, %struct.clk_div_table { i32 23, i32 24 }, %struct.clk_div_table { i32 24, i32 25 }, %struct.clk_div_table { i32 25, i32 26 }, %struct.clk_div_table { i32 26, i32 27 }, %struct.clk_div_table { i32 27, i32 28 }, %struct.clk_div_table { i32 28, i32 29 }, %struct.clk_div_table { i32 29, i32 30 }, %struct.clk_div_table { i32 30, i32 31 }, %struct.clk_div_table { i32 31, i32 32 }, %struct.clk_div_table { i32 127, i32 128 }, %struct.clk_div_table zeroinitializer], [80 x i8] zeroinitializer }, align 32
@.compoundliteral.21 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @bm1880_pll_clks, i64 140)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.22 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.20, ptr @bm1880_clk_div_ops, ptr null, ptr null, ptr @.compoundliteral.21, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_div_0_axi1\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.24 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @bm1880_pll_clks, i64 20)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.25 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.23, ptr @bm1880_clk_div_ops, ptr null, ptr null, ptr @.compoundliteral.24, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_div_1_axi1\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.27 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @bm1880_pll_clks, i64 140)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.28 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.26, ptr @bm1880_clk_div_ops, ptr null, ptr null, ptr @.compoundliteral.27, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_div_0_axi6\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.30 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @bm1880_pll_clks, i64 140)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.31 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.29, ptr @bm1880_clk_div_ops, ptr null, ptr null, ptr @.compoundliteral.30, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_div_1_axi6\00", [17 x i8] zeroinitializer }, align 32
@.compoundliteral.33 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @bm1880_pll_clks, i64 20)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.34 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.32, ptr @bm1880_clk_div_ops, ptr null, ptr null, ptr @.compoundliteral.33, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clk_div_12m_usb\00", [16 x i8] zeroinitializer }, align 32
@.compoundliteral.36 = internal global { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr getelementptr (i8, ptr @bm1880_pll_clks, i64 140)], [28 x i8] zeroinitializer }, align 32
@.compoundliteral.37 = internal global { %struct.clk_init_data, [36 x i8] } { %struct.clk_init_data { ptr @.str.35, ptr @bm1880_clk_div_ops, ptr null, ptr null, ptr @.compoundliteral.36, i8 1, i32 0 }, [36 x i8] zeroinitializer }, align 32
@bm1880_clk_register_mux._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.38, ptr @.str.3, i32 573, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"bm1880_clk_register_mux\00", [40 x i8] zeroinitializer }, align 32
@bm1880_clk_register_mux._entry_ptr = internal global ptr @bm1880_clk_register_mux._entry, section ".printk_index", align 4
@.str.39 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clk_mux_rv\00", [21 x i8] zeroinitializer }, align 32
@clk_rv_parents = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.17, ptr @.str.14], [24 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk_mux_axi6\00", [19 x i8] zeroinitializer }, align 32
@clk_axi6_parents = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.32, ptr @.str.29], [24 x i8] zeroinitializer }, align 32
@bm1880_clk_register_composites._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.41, ptr @.str.3, i32 858, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"bm1880_clk_register_composites\00", [33 x i8] zeroinitializer }, align 32
@bm1880_clk_register_composites._entry_ptr = internal global ptr @bm1880_clk_register_composites._entry, section ".printk_index", align 4
@clk_mux_ops = external dso_local constant %struct.clk_ops, align 4
@clk_gate_ops = external dso_local constant %struct.clk_ops, align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.42 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"clk_a53\00", [24 x i8] zeroinitializer }, align 32
@clk_a53_parents = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.5, ptr @.str.4], [24 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk_50m_a53\00", [20 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clk_efuse\00", [22 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_emmc\00", [23 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_100k_emmc\00", [18 x i8] zeroinitializer }, align 32
@bm1880_div_table_2 = internal constant { [35 x %struct.clk_div_table], [72 x i8] } { [35 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 1 }, %struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 2, i32 3 }, %struct.clk_div_table { i32 3, i32 4 }, %struct.clk_div_table { i32 4, i32 5 }, %struct.clk_div_table { i32 5, i32 6 }, %struct.clk_div_table { i32 6, i32 7 }, %struct.clk_div_table { i32 7, i32 8 }, %struct.clk_div_table { i32 8, i32 9 }, %struct.clk_div_table { i32 9, i32 10 }, %struct.clk_div_table { i32 10, i32 11 }, %struct.clk_div_table { i32 11, i32 12 }, %struct.clk_div_table { i32 12, i32 13 }, %struct.clk_div_table { i32 13, i32 14 }, %struct.clk_div_table { i32 14, i32 15 }, %struct.clk_div_table { i32 15, i32 16 }, %struct.clk_div_table { i32 16, i32 17 }, %struct.clk_div_table { i32 17, i32 18 }, %struct.clk_div_table { i32 18, i32 19 }, %struct.clk_div_table { i32 19, i32 20 }, %struct.clk_div_table { i32 20, i32 21 }, %struct.clk_div_table { i32 21, i32 22 }, %struct.clk_div_table { i32 22, i32 23 }, %struct.clk_div_table { i32 23, i32 24 }, %struct.clk_div_table { i32 24, i32 25 }, %struct.clk_div_table { i32 25, i32 26 }, %struct.clk_div_table { i32 26, i32 27 }, %struct.clk_div_table { i32 27, i32 28 }, %struct.clk_div_table { i32 28, i32 29 }, %struct.clk_div_table { i32 29, i32 30 }, %struct.clk_div_table { i32 30, i32 31 }, %struct.clk_div_table { i32 31, i32 32 }, %struct.clk_div_table { i32 127, i32 128 }, %struct.clk_div_table { i32 255, i32 256 }, %struct.clk_div_table zeroinitializer], [72 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"clk_sd\00", [25 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk_100k_sd\00", [20 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_500m_eth0\00", [18 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_500m_eth1\00", [18 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk_gpio_db\00", [20 x i8] zeroinitializer }, align 32
@bm1880_div_table_4 = internal constant { [37 x %struct.clk_div_table], [88 x i8] } { [37 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 1 }, %struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 2, i32 3 }, %struct.clk_div_table { i32 3, i32 4 }, %struct.clk_div_table { i32 4, i32 5 }, %struct.clk_div_table { i32 5, i32 6 }, %struct.clk_div_table { i32 6, i32 7 }, %struct.clk_div_table { i32 7, i32 8 }, %struct.clk_div_table { i32 8, i32 9 }, %struct.clk_div_table { i32 9, i32 10 }, %struct.clk_div_table { i32 10, i32 11 }, %struct.clk_div_table { i32 11, i32 12 }, %struct.clk_div_table { i32 12, i32 13 }, %struct.clk_div_table { i32 13, i32 14 }, %struct.clk_div_table { i32 14, i32 15 }, %struct.clk_div_table { i32 15, i32 16 }, %struct.clk_div_table { i32 16, i32 17 }, %struct.clk_div_table { i32 17, i32 18 }, %struct.clk_div_table { i32 18, i32 19 }, %struct.clk_div_table { i32 19, i32 20 }, %struct.clk_div_table { i32 20, i32 21 }, %struct.clk_div_table { i32 21, i32 22 }, %struct.clk_div_table { i32 22, i32 23 }, %struct.clk_div_table { i32 23, i32 24 }, %struct.clk_div_table { i32 24, i32 25 }, %struct.clk_div_table { i32 25, i32 26 }, %struct.clk_div_table { i32 26, i32 27 }, %struct.clk_div_table { i32 27, i32 28 }, %struct.clk_div_table { i32 28, i32 29 }, %struct.clk_div_table { i32 29, i32 30 }, %struct.clk_div_table { i32 30, i32 31 }, %struct.clk_div_table { i32 31, i32 32 }, %struct.clk_div_table { i32 127, i32 128 }, %struct.clk_div_table { i32 255, i32 256 }, %struct.clk_div_table { i32 511, i32 512 }, %struct.clk_div_table { i32 65535, i32 65536 }, %struct.clk_div_table zeroinitializer], [88 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk_sdma_aud\00", [19 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk_jpeg_axi\00", [19 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"clk_nf\00", [25 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk_tpu_axi\00", [20 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk_125m_usb\00", [19 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk_33k_usb\00", [20 x i8] zeroinitializer }, align 32
@bm1880_div_table_3 = internal constant { [36 x %struct.clk_div_table], [64 x i8] } { [36 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 1 }, %struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 2, i32 3 }, %struct.clk_div_table { i32 3, i32 4 }, %struct.clk_div_table { i32 4, i32 5 }, %struct.clk_div_table { i32 5, i32 6 }, %struct.clk_div_table { i32 6, i32 7 }, %struct.clk_div_table { i32 7, i32 8 }, %struct.clk_div_table { i32 8, i32 9 }, %struct.clk_div_table { i32 9, i32 10 }, %struct.clk_div_table { i32 10, i32 11 }, %struct.clk_div_table { i32 11, i32 12 }, %struct.clk_div_table { i32 12, i32 13 }, %struct.clk_div_table { i32 13, i32 14 }, %struct.clk_div_table { i32 14, i32 15 }, %struct.clk_div_table { i32 15, i32 16 }, %struct.clk_div_table { i32 16, i32 17 }, %struct.clk_div_table { i32 17, i32 18 }, %struct.clk_div_table { i32 18, i32 19 }, %struct.clk_div_table { i32 19, i32 20 }, %struct.clk_div_table { i32 20, i32 21 }, %struct.clk_div_table { i32 21, i32 22 }, %struct.clk_div_table { i32 22, i32 23 }, %struct.clk_div_table { i32 23, i32 24 }, %struct.clk_div_table { i32 24, i32 25 }, %struct.clk_div_table { i32 25, i32 26 }, %struct.clk_div_table { i32 26, i32 27 }, %struct.clk_div_table { i32 27, i32 28 }, %struct.clk_div_table { i32 28, i32 29 }, %struct.clk_div_table { i32 29, i32 30 }, %struct.clk_div_table { i32 30, i32 31 }, %struct.clk_div_table { i32 31, i32 32 }, %struct.clk_div_table { i32 127, i32 128 }, %struct.clk_div_table { i32 255, i32 256 }, %struct.clk_div_table { i32 511, i32 512 }, %struct.clk_div_table zeroinitializer], [64 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_video_axi\00", [18 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk_vpp_axi\00", [20 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_axi1\00", [23 x i8] zeroinitializer }, align 32
@clk_axi1_parents = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.26, ptr @.str.23], [24 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_axi2\00", [23 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_axi3\00", [23 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_axi4\00", [23 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_axi5\00", [23 x i8] zeroinitializer }, align 32
@bm1880_clk_register_gate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.65, ptr @.str.3, i32 738, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"bm1880_clk_register_gate\00", [39 x i8] zeroinitializer }, align 32
@bm1880_clk_register_gate._entry_ptr = internal global ptr @bm1880_clk_register_gate._entry, section ".printk_index", align 4
@.str.66 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk_ahb_rom\00", [20 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk_axi_sram\00", [19 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk_ddr_axi\00", [20 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_apb_efuse\00", [18 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_axi5_emmc\00", [18 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk_axi5_sd\00", [20 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_axi4_eth0\00", [18 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_axi4_eth1\00", [18 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_axi1_gdma\00", [18 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk_apb_gpio\00", [19 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"clk_apb_gpio_intr\00", [46 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_axi1_miner\00", [17 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clk_ahb_sf\00", [21 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk_sdma_axi\00", [19 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk_apb_i2c\00", [20 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk_apb_wdt\00", [20 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk_apb_jpeg\00", [19 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_axi6\00", [23 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk_axi5_nf\00", [20 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clk_apb_nf\00", [21 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk_apb_pwm\00", [20 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"clk_rv\00", [25 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk_apb_spi\00", [20 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_uart_500m\00", [18 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk_apb_uart\00", [19 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk_apb_i2s\00", [20 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk_axi4_usb\00", [19 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk_apb_usb\00", [20 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk_12m_usb\00", [20 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_apb_video\00", [18 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk_apb_vpp\00", [20 x i8] zeroinitializer }, align 32
@___asan_gen_.97 = private unnamed_addr constant [18 x i8] c"bm1880_clk_driver\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 941, i32 31 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 943, i32 11 }
@___asan_gen_.103 = private unnamed_addr constant [16 x i8] c"bm1880_of_match\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 935, i32 34 }
@___asan_gen_.106 = private unnamed_addr constant [16 x i8] c"bm1880_pll_clks\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 205, i32 35 }
@___asan_gen_.109 = private unnamed_addr constant [16 x i8] c"bm1880_div_clks\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 371, i32 35 }
@___asan_gen_.112 = private unnamed_addr constant [22 x i8] c"bm1880_composite_clks\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 398, i32 38 }
@___asan_gen_.115 = private unnamed_addr constant [17 x i8] c"bm1880_gate_clks\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 220, i32 39 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 538, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 206, i32 2 }
@___asan_gen_.133 = private unnamed_addr constant [15 x i8] c"bm1880_pll_ops\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 505, i32 29 }
@___asan_gen_.136 = private unnamed_addr constant [18 x i8] c"bm1880_pll_parent\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 197, i32 31 }
@___asan_gen_.139 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 208, i32 2 }
@___asan_gen_.143 = private unnamed_addr constant [19 x i8] c".compoundliteral.6\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 210, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant [19 x i8] c".compoundliteral.8\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 212, i32 2 }
@___asan_gen_.151 = private unnamed_addr constant [20 x i8] c".compoundliteral.10\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 198, i32 15 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 703, i32 4 }
@___asan_gen_.161 = private unnamed_addr constant [16 x i8] c"bm1880_clk_lock\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 60, i32 8 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 372, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant [19 x i8] c"bm1880_div_table_0\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 306, i32 35 }
@___asan_gen_.173 = private unnamed_addr constant [19 x i8] c"bm1880_clk_div_ops\00", align 1
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 666, i32 29 }
@___asan_gen_.176 = private unnamed_addr constant [20 x i8] c".compoundliteral.15\00", align 1
@___asan_gen_.177 = private unnamed_addr constant [20 x i8] c".compoundliteral.16\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 374, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant [20 x i8] c".compoundliteral.18\00", align 1
@___asan_gen_.182 = private unnamed_addr constant [20 x i8] c".compoundliteral.19\00", align 1
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 376, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant [19 x i8] c"bm1880_div_table_1\00", align 1
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 318, i32 35 }
@___asan_gen_.189 = private unnamed_addr constant [20 x i8] c".compoundliteral.21\00", align 1
@___asan_gen_.190 = private unnamed_addr constant [20 x i8] c".compoundliteral.22\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 378, i32 2 }
@___asan_gen_.194 = private unnamed_addr constant [20 x i8] c".compoundliteral.24\00", align 1
@___asan_gen_.195 = private unnamed_addr constant [20 x i8] c".compoundliteral.25\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 381, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant [20 x i8] c".compoundliteral.27\00", align 1
@___asan_gen_.200 = private unnamed_addr constant [20 x i8] c".compoundliteral.28\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 384, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant [20 x i8] c".compoundliteral.30\00", align 1
@___asan_gen_.205 = private unnamed_addr constant [20 x i8] c".compoundliteral.31\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 387, i32 2 }
@___asan_gen_.209 = private unnamed_addr constant [20 x i8] c".compoundliteral.33\00", align 1
@___asan_gen_.210 = private unnamed_addr constant [20 x i8] c".compoundliteral.34\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 390, i32 2 }
@___asan_gen_.214 = private unnamed_addr constant [20 x i8] c".compoundliteral.36\00", align 1
@___asan_gen_.215 = private unnamed_addr constant [20 x i8] c".compoundliteral.37\00", align 1
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 572, i32 4 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 300, i32 23 }
@___asan_gen_.225 = private unnamed_addr constant [15 x i8] c"clk_rv_parents\00", align 1
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 295, i32 27 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 302, i32 25 }
@___asan_gen_.231 = private unnamed_addr constant [17 x i8] c"clk_axi6_parents\00", align 1
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 297, i32 27 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 857, i32 4 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 403, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant [16 x i8] c"clk_a53_parents\00", align 1
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 294, i32 27 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 406, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 409, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 412, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 415, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant [19 x i8] c"bm1880_div_table_2\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 330, i32 35 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 418, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 421, i32 2 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 424, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 427, i32 2 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 431, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant [19 x i8] c"bm1880_div_table_4\00", align 1
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 354, i32 35 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 434, i32 2 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 437, i32 2 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 440, i32 2 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 443, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 446, i32 2 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 449, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant [19 x i8] c"bm1880_div_table_3\00", align 1
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 342, i32 35 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 452, i32 2 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 455, i32 2 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 458, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant [17 x i8] c"clk_axi1_parents\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 296, i32 27 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 460, i32 2 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 463, i32 2 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 466, i32 2 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 469, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 737, i32 4 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 221, i32 24 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 223, i32 25 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 229, i32 24 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 231, i32 26 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 233, i32 26 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 235, i32 24 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 237, i32 26 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 239, i32 26 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 241, i32 26 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 244, i32 25 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 246, i32 30 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 248, i32 27 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 250, i32 23 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 256, i32 25 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 258, i32 24 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 260, i32 24 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 262, i32 25 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 262, i32 41 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 264, i32 24 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 266, i32 23 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 268, i32 24 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 270, i32 19 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 272, i32 24 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 274, i32 26 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 276, i32 25 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 278, i32 24 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 280, i32 25 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 282, i32 24 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 284, i32 24 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 286, i32 26 }
@___asan_gen_.420 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.421 = private constant [28 x i8] c"../drivers/clk/clk-bm1880.c\00", align 1
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.421, i32 288, i32 24 }
@llvm.compiler.used = appending global [134 x ptr] [ptr @__UNIQUE_ID_author184, ptr @__UNIQUE_ID_description185, ptr @__UNIQUE_ID_file186, ptr @__UNIQUE_ID_license187, ptr @__exitcall_bm1880_clk_driver_exit, ptr @__initcall__kmod_clk_bm1880__183_948_bm1880_clk_driver_init6, ptr @bm1880_clk_driver_exit, ptr @bm1880_clk_register_composites._entry, ptr @bm1880_clk_register_composites._entry_ptr, ptr @bm1880_clk_register_divs._entry, ptr @bm1880_clk_register_divs._entry_ptr, ptr @bm1880_clk_register_gate._entry, ptr @bm1880_clk_register_gate._entry_ptr, ptr @bm1880_clk_register_mux._entry, ptr @bm1880_clk_register_mux._entry_ptr, ptr @bm1880_clk_register_plls._entry, ptr @bm1880_clk_register_plls._entry_ptr, ptr @bm1880_clk_driver, ptr @.str, ptr @bm1880_of_match, ptr @bm1880_pll_clks, ptr @bm1880_div_clks, ptr @bm1880_composite_clks, ptr @bm1880_gate_clks, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @bm1880_pll_ops, ptr @bm1880_pll_parent, ptr @.compoundliteral, ptr @.str.5, ptr @.compoundliteral.6, ptr @.str.7, ptr @.compoundliteral.8, ptr @.str.9, ptr @.compoundliteral.10, ptr @.str.11, ptr @.str.12, ptr @bm1880_clk_lock, ptr @.str.13, ptr @.str.14, ptr @bm1880_div_table_0, ptr @bm1880_clk_div_ops, ptr @.compoundliteral.15, ptr @.compoundliteral.16, ptr @.str.17, ptr @.compoundliteral.18, ptr @.compoundliteral.19, ptr @.str.20, ptr @bm1880_div_table_1, ptr @.compoundliteral.21, ptr @.compoundliteral.22, ptr @.str.23, ptr @.compoundliteral.24, ptr @.compoundliteral.25, ptr @.str.26, ptr @.compoundliteral.27, ptr @.compoundliteral.28, ptr @.str.29, ptr @.compoundliteral.30, ptr @.compoundliteral.31, ptr @.str.32, ptr @.compoundliteral.33, ptr @.compoundliteral.34, ptr @.str.35, ptr @.compoundliteral.36, ptr @.compoundliteral.37, ptr @.str.38, ptr @.str.39, ptr @clk_rv_parents, ptr @.str.40, ptr @clk_axi6_parents, ptr @.str.41, ptr @.str.42, ptr @clk_a53_parents, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @bm1880_div_table_2, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @bm1880_div_table_4, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @bm1880_div_table_3, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @clk_axi1_parents, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96], section "llvm.metadata"
@0 = internal global [122 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bm1880_clk_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bm1880_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bm1880_pll_clks to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bm1880_div_clks to i32), i32 608, i32 736, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bm1880_composite_clks to i32), i32 1104, i32 1376, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bm1880_gate_clks to i32), i32 744, i32 928, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bm1880_clk_register_plls._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bm1880_pll_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bm1880_pll_parent to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bm1880_clk_register_divs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bm1880_clk_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bm1880_div_table_0 to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bm1880_clk_div_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.15 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.18 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bm1880_div_table_1 to i32), i32 272, i32 352, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.21 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.28 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.34 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bm1880_clk_register_mux._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_rv_parents to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_axi6_parents to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bm1880_clk_register_composites._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_a53_parents to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bm1880_div_table_2 to i32), i32 280, i32 352, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bm1880_div_table_4 to i32), i32 296, i32 384, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bm1880_div_table_3 to i32), i32 288, i32 352, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_axi1_parents to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bm1880_clk_register_gate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bm1880_clk_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @bm1880_clk_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bm1880_clk_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @bm1880_clk_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bm1880_clk_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %parent.i.i = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %call3 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call) #7
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %call6 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 1) #7
  %call8 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call6) #7
  %cmp.i58 = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i58, label %if.then10, label %if.end12

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %1 = ptrtoint ptr %call8 to i32
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 284, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %if.end12.cleanup_crit_edge, label %if.end16

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end12
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %call.i, align 4
  %sys_base18 = getelementptr inbounds %struct.bm1880_clock_data, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %sys_base18 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call8, ptr %sys_base18, align 4
  %hws = getelementptr inbounds %struct.bm1880_clock_data, ptr %call.i, i32 1
  %4 = ptrtoint ptr %hws to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -2 to ptr), ptr %hws, align 4
  %arrayidx.1 = getelementptr %struct.bm1880_clock_data, ptr %call.i, i32 1, i32 1
  %5 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.1, align 4
  %arrayidx.2 = getelementptr %struct.bm1880_clock_data, ptr %call.i, i32 1, i32 2
  %6 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.2, align 4
  %arrayidx.3 = getelementptr %struct.bm1880_clock_data, ptr %call.i, i32 2
  %7 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.3, align 4
  %arrayidx.4 = getelementptr %struct.bm1880_clock_data, ptr %call.i, i32 2, i32 1
  %8 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.4, align 4
  %arrayidx.5 = getelementptr %struct.bm1880_clock_data, ptr %call.i, i32 2, i32 2
  %9 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.5, align 4
  %arrayidx.6 = getelementptr %struct.bm1880_clock_data, ptr %call.i, i32 3
  %10 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.6, align 4
  %arrayidx.7 = getelementptr %struct.bm1880_clock_data, ptr %call.i, i32 3, i32 1
  %11 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.7, align 4
  %arrayidx.8 = getelementptr %struct.bm1880_clock_data, ptr %call.i, i32 3, i32 2
  %12 = ptrtoint ptr %arrayidx.8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.8, align 4
  %arrayidx.9 = getelementptr %struct.bm1880_clock_data, ptr %call.i, i32 4
  %13 = ptrtoint ptr %arrayidx.9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.9, align 4
  %arrayidx.10 = getelementptr %struct.bm1880_clock_data, ptr %call.i, i32 4, i32 1
  %14 = ptrtoint ptr %arrayidx.10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.10, align 4
  %arrayidx.11 = getelementptr %struct.bm1880_clock_data, ptr %call.i, i32 4, i32 2
  %15 = ptrtoint ptr %arrayidx.11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.11, align 4
  %arrayidx.12 = getelementptr %struct.bm1880_clock_data, ptr %call.i, i32 5
  %16 = ptrtoint ptr %arrayidx.12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.12, align 4
  %arrayidx.13 = getelementptr %struct.bm1880_clock_data, ptr %call.i, i32 5, i32 1
  %17 = ptrtoint ptr %arrayidx.13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.13, align 4
  %arrayidx.14 = getelementptr %struct.bm1880_clock_data, ptr %call.i, i32 5, i32 2
  %18 = ptrtoint ptr %arrayidx.14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.14, align 4
  %arrayidx.15 = getelementptr %struct.bm1880_clock_data, ptr %call.i, i32 6
  %19 = ptrtoint ptr %arrayidx.15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.15, align 4
  %arrayidx.16 = getelementptr %struct.bm1880_clock_data, ptr %call.i, i32 6, i32 1
  %20 = ptrtoint ptr %arrayidx.16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.16, align 4
  %arrayidx.17 = getelementptr %struct.bm1880_clock_data, ptr %call.i, i32 6, i32 2
  %21 = ptrtoint ptr %arrayidx.17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.17, align 4
  %arrayidx.18 = getelementptr %struct.bm1880_clock_data, ptr %call.i, i32 7
  %22 = ptrtoint ptr %arrayidx.18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.18, align 4
  %arrayidx.19 = getelementptr %struct.bm1880_clock_data, ptr %call.i, i32 7, i32 1
  %23 = ptrtoint ptr %arrayidx.19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.19, align 4
  %arrayidx.20 = getelementptr %struct.bm1880_clock_data, ptr %call.i, i32 7, i32 2
  %24 = ptrtoint ptr %arrayidx.20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.20, align 4
  %arrayidx.21 = getelementptr %struct.bm1880_clock_data, ptr %call.i, i32 8
  %25 = ptrtoint ptr %arrayidx.21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.21, align 4
  %arrayidx.22 = getelementptr %struct.bm1880_clock_data, ptr %call.i, i32 8, i32 1
  %26 = ptrtoint ptr %arrayidx.22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.22, align 4
  %arrayidx.23 = getelementptr %struct.bm1880_clock_data, ptr %call.i, i32 8, i32 2
  %27 = ptrtoint ptr %arrayidx.23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.23, align 4
  %arrayidx.24 = getelementptr %struct.bm1880_clock_data, ptr %call.i, i32 9
  %28 = ptrtoint ptr %arrayidx.24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.24, align 4
  %arrayidx.25 = getelementptr %struct.bm1880_clock_data, ptr %call.i, i32 9, i32 1
  %29 = ptrtoint ptr %arrayidx.25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.25, align 4
  %arrayidx.26 = getelementptr %struct.bm1880_clock_data, ptr %call.i, i32 9, i32 2
  %30 = ptrtoint ptr %arrayidx.26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.26, align 4
  %arrayidx.27 = getelementptr %struct.bm1880_clock_data, ptr %call.i, i32 10
  %31 = ptrtoint ptr %arrayidx.27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.27, align 4
  %arrayidx.28 = getelementptr %struct.bm1880_clock_data, ptr %call.i, i32 10, i32 1
  %32 = ptrtoint ptr %arrayidx.28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.28, align 4
  %arrayidx.29 = getelementptr %struct.bm1880_clock_data, ptr %call.i, i32 10, i32 2
  %33 = ptrtoint ptr %arrayidx.29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.29, align 4
  %arrayidx.30 = getelementptr %struct.bm1880_clock_data, ptr %call.i, i32 11
  %34 = ptrtoint ptr %arrayidx.30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.30, align 4
  %arrayidx.31 = getelementptr %struct.bm1880_clock_data, ptr %call.i, i32 11, i32 1
  %35 = ptrtoint ptr %arrayidx.31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.31, align 4
  %arrayidx.32 = getelementptr %struct.bm1880_clock_data, ptr %call.i, i32 11, i32 2
  %36 = ptrtoint ptr %arrayidx.32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.32, align 4
  %arrayidx.33 = getelementptr %struct.bm1880_clock_data, ptr %call.i, i32 12
  %37 = ptrtoint ptr %arrayidx.33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.33, align 4
  %arrayidx.34 = getelementptr %struct.bm1880_clock_data, ptr %call.i, i32 12, i32 1
  %38 = ptrtoint ptr %arrayidx.34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.34, align 4
  %arrayidx.35 = getelementptr %struct.bm1880_clock_data, ptr %call.i, i32 12, i32 2
  %39 = ptrtoint ptr %arrayidx.35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.35, align 4
  %arrayidx.36 = getelementptr %struct.bm1880_clock_data, ptr %call.i, i32 13
  %40 = ptrtoint ptr %arrayidx.36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.36, align 4
  %arrayidx.37 = getelementptr %struct.bm1880_clock_data, ptr %call.i, i32 13, i32 1
  %41 = ptrtoint ptr %arrayidx.37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.37, align 4
  %arrayidx.38 = getelementptr %struct.bm1880_clock_data, ptr %call.i, i32 13, i32 2
  %42 = ptrtoint ptr %arrayidx.38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.38, align 4
  %arrayidx.39 = getelementptr %struct.bm1880_clock_data, ptr %call.i, i32 14
  %43 = ptrtoint ptr %arrayidx.39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.39, align 4
  %arrayidx.40 = getelementptr %struct.bm1880_clock_data, ptr %call.i, i32 14, i32 1
  %44 = ptrtoint ptr %arrayidx.40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.40, align 4
  %arrayidx.41 = getelementptr %struct.bm1880_clock_data, ptr %call.i, i32 14, i32 2
  %45 = ptrtoint ptr %arrayidx.41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.41, align 4
  %arrayidx.42 = getelementptr %struct.bm1880_clock_data, ptr %call.i, i32 15
  %46 = ptrtoint ptr %arrayidx.42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.42, align 4
  %arrayidx.43 = getelementptr %struct.bm1880_clock_data, ptr %call.i, i32 15, i32 1
  %47 = ptrtoint ptr %arrayidx.43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.43, align 4
  %arrayidx.44 = getelementptr %struct.bm1880_clock_data, ptr %call.i, i32 15, i32 2
  %48 = ptrtoint ptr %arrayidx.44 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.44, align 4
  %arrayidx.45 = getelementptr %struct.bm1880_clock_data, ptr %call.i, i32 16
  %49 = ptrtoint ptr %arrayidx.45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.45, align 4
  %arrayidx.46 = getelementptr %struct.bm1880_clock_data, ptr %call.i, i32 16, i32 1
  %50 = ptrtoint ptr %arrayidx.46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.46, align 4
  %arrayidx.47 = getelementptr %struct.bm1880_clock_data, ptr %call.i, i32 16, i32 2
  %51 = ptrtoint ptr %arrayidx.47 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.47, align 4
  %arrayidx.48 = getelementptr %struct.bm1880_clock_data, ptr %call.i, i32 17
  %52 = ptrtoint ptr %arrayidx.48 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.48, align 4
  %arrayidx.49 = getelementptr %struct.bm1880_clock_data, ptr %call.i, i32 17, i32 1
  %53 = ptrtoint ptr %arrayidx.49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.49, align 4
  %arrayidx.50 = getelementptr %struct.bm1880_clock_data, ptr %call.i, i32 17, i32 2
  %54 = ptrtoint ptr %arrayidx.50 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.50, align 4
  %arrayidx.51 = getelementptr %struct.bm1880_clock_data, ptr %call.i, i32 18
  %55 = ptrtoint ptr %arrayidx.51 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.51, align 4
  %arrayidx.52 = getelementptr %struct.bm1880_clock_data, ptr %call.i, i32 18, i32 1
  %56 = ptrtoint ptr %arrayidx.52 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.52, align 4
  %arrayidx.53 = getelementptr %struct.bm1880_clock_data, ptr %call.i, i32 18, i32 2
  %57 = ptrtoint ptr %arrayidx.53 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.53, align 4
  %arrayidx.54 = getelementptr %struct.bm1880_clock_data, ptr %call.i, i32 19
  %58 = ptrtoint ptr %arrayidx.54 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.54, align 4
  %arrayidx.55 = getelementptr %struct.bm1880_clock_data, ptr %call.i, i32 19, i32 1
  %59 = ptrtoint ptr %arrayidx.55 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.55, align 4
  %arrayidx.56 = getelementptr %struct.bm1880_clock_data, ptr %call.i, i32 19, i32 2
  %60 = ptrtoint ptr %arrayidx.56 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.56, align 4
  %arrayidx.57 = getelementptr %struct.bm1880_clock_data, ptr %call.i, i32 20
  %61 = ptrtoint ptr %arrayidx.57 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.57, align 4
  %arrayidx.58 = getelementptr %struct.bm1880_clock_data, ptr %call.i, i32 20, i32 1
  %62 = ptrtoint ptr %arrayidx.58 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.58, align 4
  %arrayidx.59 = getelementptr %struct.bm1880_clock_data, ptr %call.i, i32 20, i32 2
  %63 = ptrtoint ptr %arrayidx.59 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.59, align 4
  %arrayidx.60 = getelementptr %struct.bm1880_clock_data, ptr %call.i, i32 21
  %64 = ptrtoint ptr %arrayidx.60 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.60, align 4
  %arrayidx.61 = getelementptr %struct.bm1880_clock_data, ptr %call.i, i32 21, i32 1
  %65 = ptrtoint ptr %arrayidx.61 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.61, align 4
  %arrayidx.62 = getelementptr %struct.bm1880_clock_data, ptr %call.i, i32 21, i32 2
  %66 = ptrtoint ptr %arrayidx.62 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.62, align 4
  %arrayidx.63 = getelementptr %struct.bm1880_clock_data, ptr %call.i, i32 22
  %67 = ptrtoint ptr %arrayidx.63 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.63, align 4
  %arrayidx.64 = getelementptr %struct.bm1880_clock_data, ptr %call.i, i32 22, i32 1
  %68 = ptrtoint ptr %arrayidx.64 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.64, align 4
  %arrayidx.65 = getelementptr %struct.bm1880_clock_data, ptr %call.i, i32 22, i32 2
  %69 = ptrtoint ptr %arrayidx.65 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.65, align 4
  %arrayidx.66 = getelementptr %struct.bm1880_clock_data, ptr %call.i, i32 23
  %70 = ptrtoint ptr %arrayidx.66 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.66, align 4
  %arrayidx.67 = getelementptr %struct.bm1880_clock_data, ptr %call.i, i32 23, i32 1
  %71 = ptrtoint ptr %arrayidx.67 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr inttoptr (i32 -2 to ptr), ptr %arrayidx.67, align 4
  %hw_data20 = getelementptr inbounds %struct.bm1880_clock_data, ptr %call.i, i32 0, i32 2
  %72 = ptrtoint ptr %hw_data20 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 68, ptr %hw_data20, align 4
  %73 = load ptr, ptr %call.i, align 4
  store ptr %73, ptr getelementptr inbounds ([4 x %struct.bm1880_pll_hw_clock], ptr @bm1880_pll_clks, i32 0, i32 0, i32 1), align 4
  %call.i.i = tail call i32 @clk_hw_register(ptr noundef null, ptr noundef getelementptr inbounds ([4 x %struct.bm1880_pll_hw_clock], ptr @bm1880_pll_clks, i32 0, i32 0, i32 2)) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  %74 = inttoptr i32 %call.i.i to ptr
  %spec.select.i.i = select i1 %tobool.not.i.i, ptr getelementptr inbounds ([4 x %struct.bm1880_pll_hw_clock], ptr @bm1880_pll_clks, i32 0, i32 0, i32 2), ptr %74
  %cmp.i.i = icmp ugt ptr %spec.select.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %cleanup.i, label %for.inc.i

cleanup.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %75 = load ptr, ptr getelementptr inbounds ([4 x %struct.bm1880_pll_hw_clock], ptr @bm1880_pll_clks, i32 0, i32 0, i32 0, i32 1), align 4
  %call3.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef %75) #10
  br label %bm1880_clk_register_plls.exit

while.body.lr.ph.i:                               ; preds = %for.inc.2.i.while.body.lr.ph.i_crit_edge, %for.inc.1.i.while.body.lr.ph.i_crit_edge, %for.inc.i.while.body.lr.ph.i_crit_edge
  %i.04.lcssa.ph.i = phi i32 [ 2, %for.inc.2.i.while.body.lr.ph.i_crit_edge ], [ 1, %for.inc.1.i.while.body.lr.ph.i_crit_edge ], [ 0, %for.inc.i.while.body.lr.ph.i_crit_edge ]
  %arrayidx.lcssa.ph.i = phi ptr [ getelementptr inbounds ([4 x %struct.bm1880_pll_hw_clock], ptr @bm1880_pll_clks, i32 0, i32 3), %for.inc.2.i.while.body.lr.ph.i_crit_edge ], [ getelementptr inbounds ([4 x %struct.bm1880_pll_hw_clock], ptr @bm1880_pll_clks, i32 0, i32 2), %for.inc.1.i.while.body.lr.ph.i_crit_edge ], [ getelementptr inbounds ([4 x %struct.bm1880_pll_hw_clock], ptr @bm1880_pll_clks, i32 0, i32 1), %for.inc.i.while.body.lr.ph.i_crit_edge ]
  %name12.i = getelementptr inbounds %struct.bm1880_pll_clock, ptr %arrayidx.lcssa.ph.i, i32 0, i32 1
  %76 = ptrtoint ptr %name12.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %name12.i, align 4
  %call313.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef %77) #10
  %arrayidx9.i = getelementptr %struct.bm1880_pll_hw_clock, ptr @bm1880_pll_clks, i32 %i.04.lcssa.ph.i
  %78 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx9.i, align 4
  %arrayidx12.i = getelementptr [0 x ptr], ptr %hws, i32 0, i32 %79
  %80 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx12.i, align 4
  tail call void @clk_hw_unregister(ptr noundef %81) #7
  br i1 %cmp.i.1.i, label %while.body.lr.ph.i.bm1880_clk_register_plls.exit_crit_edge, label %while.body.i.1

while.body.lr.ph.i.bm1880_clk_register_plls.exit_crit_edge: ; preds = %while.body.lr.ph.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bm1880_clk_register_plls.exit

for.inc.i:                                        ; preds = %if.end16
  %82 = load i32, ptr @bm1880_pll_clks, align 4
  %arrayidx6.i = getelementptr [0 x ptr], ptr %hws, i32 0, i32 %82
  %83 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %spec.select.i.i, ptr %arrayidx6.i, align 4
  store ptr %73, ptr getelementptr inbounds ([4 x %struct.bm1880_pll_hw_clock], ptr @bm1880_pll_clks, i32 0, i32 1, i32 1), align 4
  %call.i.1.i = tail call i32 @clk_hw_register(ptr noundef null, ptr noundef getelementptr inbounds ([4 x %struct.bm1880_pll_hw_clock], ptr @bm1880_pll_clks, i32 0, i32 1, i32 2)) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1.i)
  %tobool.not.i.1.i = icmp eq i32 %call.i.1.i, 0
  %84 = inttoptr i32 %call.i.1.i to ptr
  %spec.select.i.1.i = select i1 %tobool.not.i.1.i, ptr getelementptr inbounds ([4 x %struct.bm1880_pll_hw_clock], ptr @bm1880_pll_clks, i32 0, i32 1, i32 2), ptr %84
  %cmp.i.1.i = icmp ugt ptr %spec.select.i.1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1.i, label %for.inc.i.while.body.lr.ph.i_crit_edge, label %for.inc.1.i

for.inc.i.while.body.lr.ph.i_crit_edge:           ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.lr.ph.i

for.inc.1.i:                                      ; preds = %for.inc.i
  %85 = load i32, ptr getelementptr inbounds ([4 x %struct.bm1880_pll_hw_clock], ptr @bm1880_pll_clks, i32 0, i32 1), align 4
  %arrayidx6.1.i = getelementptr [0 x ptr], ptr %hws, i32 0, i32 %85
  %86 = ptrtoint ptr %arrayidx6.1.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %spec.select.i.1.i, ptr %arrayidx6.1.i, align 4
  store ptr %73, ptr getelementptr inbounds ([4 x %struct.bm1880_pll_hw_clock], ptr @bm1880_pll_clks, i32 0, i32 2, i32 1), align 4
  %call.i.2.i = tail call i32 @clk_hw_register(ptr noundef null, ptr noundef getelementptr inbounds ([4 x %struct.bm1880_pll_hw_clock], ptr @bm1880_pll_clks, i32 0, i32 2, i32 2)) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2.i)
  %tobool.not.i.2.i = icmp eq i32 %call.i.2.i, 0
  %87 = inttoptr i32 %call.i.2.i to ptr
  %spec.select.i.2.i = select i1 %tobool.not.i.2.i, ptr getelementptr inbounds ([4 x %struct.bm1880_pll_hw_clock], ptr @bm1880_pll_clks, i32 0, i32 2, i32 2), ptr %87
  %cmp.i.2.i = icmp ugt ptr %spec.select.i.2.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.2.i, label %for.inc.1.i.while.body.lr.ph.i_crit_edge, label %for.inc.2.i

for.inc.1.i.while.body.lr.ph.i_crit_edge:         ; preds = %for.inc.1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.lr.ph.i

for.inc.2.i:                                      ; preds = %for.inc.1.i
  %88 = load i32, ptr getelementptr inbounds ([4 x %struct.bm1880_pll_hw_clock], ptr @bm1880_pll_clks, i32 0, i32 2), align 4
  %arrayidx6.2.i = getelementptr [0 x ptr], ptr %hws, i32 0, i32 %88
  %89 = ptrtoint ptr %arrayidx6.2.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr %spec.select.i.2.i, ptr %arrayidx6.2.i, align 4
  store ptr %73, ptr getelementptr inbounds ([4 x %struct.bm1880_pll_hw_clock], ptr @bm1880_pll_clks, i32 0, i32 3, i32 1), align 4
  %call.i.3.i = tail call i32 @clk_hw_register(ptr noundef null, ptr noundef getelementptr inbounds ([4 x %struct.bm1880_pll_hw_clock], ptr @bm1880_pll_clks, i32 0, i32 3, i32 2)) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.3.i)
  %tobool.not.i.3.i = icmp eq i32 %call.i.3.i, 0
  %90 = inttoptr i32 %call.i.3.i to ptr
  %spec.select.i.3.i = select i1 %tobool.not.i.3.i, ptr getelementptr inbounds ([4 x %struct.bm1880_pll_hw_clock], ptr @bm1880_pll_clks, i32 0, i32 3, i32 2), ptr %90
  %cmp.i.3.i = icmp ugt ptr %spec.select.i.3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.3.i, label %for.inc.2.i.while.body.lr.ph.i_crit_edge, label %for.inc.3.i

for.inc.2.i.while.body.lr.ph.i_crit_edge:         ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.lr.ph.i

for.inc.3.i:                                      ; preds = %for.inc.2.i
  call void @__sanitizer_cov_trace_pc() #9
  %91 = load i32, ptr getelementptr inbounds ([4 x %struct.bm1880_pll_hw_clock], ptr @bm1880_pll_clks, i32 0, i32 3), align 4
  %arrayidx6.3.i = getelementptr [0 x ptr], ptr %hws, i32 0, i32 %91
  %92 = ptrtoint ptr %arrayidx6.3.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %spec.select.i.3.i, ptr %arrayidx6.3.i, align 4
  br label %bm1880_clk_register_plls.exit

while.body.i.1:                                   ; preds = %while.body.lr.ph.i
  %dec.i.1 = add nsw i32 %i.04.lcssa.ph.i, -1
  %arrayidx9.i.1 = getelementptr %struct.bm1880_pll_hw_clock, ptr @bm1880_pll_clks, i32 %dec.i.1
  %93 = ptrtoint ptr %arrayidx9.i.1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %arrayidx9.i.1, align 4
  %arrayidx12.i.1 = getelementptr [0 x ptr], ptr %hws, i32 0, i32 %94
  %95 = ptrtoint ptr %arrayidx12.i.1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx12.i.1, align 4
  tail call void @clk_hw_unregister(ptr noundef %96) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.1)
  %tobool.not.i.1 = icmp eq i32 %dec.i.1, 0
  br i1 %tobool.not.i.1, label %while.body.i.1.bm1880_clk_register_plls.exit_crit_edge, label %while.body.i.2

while.body.i.1.bm1880_clk_register_plls.exit_crit_edge: ; preds = %while.body.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %bm1880_clk_register_plls.exit

while.body.i.2:                                   ; preds = %while.body.i.1
  call void @__sanitizer_cov_trace_pc() #9
  %dec.i.2 = add nsw i32 %i.04.lcssa.ph.i, -2
  %arrayidx9.i.2 = getelementptr %struct.bm1880_pll_hw_clock, ptr @bm1880_pll_clks, i32 %dec.i.2
  %97 = ptrtoint ptr %arrayidx9.i.2 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx9.i.2, align 4
  %arrayidx12.i.2 = getelementptr [0 x ptr], ptr %hws, i32 0, i32 %98
  %99 = ptrtoint ptr %arrayidx12.i.2 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx12.i.2, align 4
  tail call void @clk_hw_unregister(ptr noundef %100) #7
  br label %bm1880_clk_register_plls.exit

bm1880_clk_register_plls.exit:                    ; preds = %while.body.i.2, %while.body.i.1.bm1880_clk_register_plls.exit_crit_edge, %for.inc.3.i, %while.body.lr.ph.i.bm1880_clk_register_plls.exit_crit_edge, %cleanup.i
  %101 = ptrtoint ptr %sys_base18 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %sys_base18, align 4
  store i32 5, ptr getelementptr inbounds ([8 x %struct.bm1880_div_hw_clock], ptr @bm1880_div_clks, i32 0, i32 0, i32 0, i32 7), align 4
  store ptr %102, ptr getelementptr inbounds ([8 x %struct.bm1880_div_hw_clock], ptr @bm1880_div_clks, i32 0, i32 0, i32 1), align 4
  store ptr @bm1880_clk_lock, ptr getelementptr inbounds ([8 x %struct.bm1880_div_hw_clock], ptr @bm1880_div_clks, i32 0, i32 0, i32 2), align 4
  %call.i.i60 = tail call i32 @clk_hw_register(ptr noundef null, ptr noundef getelementptr inbounds ([8 x %struct.bm1880_div_hw_clock], ptr @bm1880_div_clks, i32 0, i32 0, i32 3)) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i60)
  %tobool.not.i.i61 = icmp eq i32 %call.i.i60, 0
  %103 = inttoptr i32 %call.i.i60 to ptr
  %spec.select.i.i62 = select i1 %tobool.not.i.i61, ptr getelementptr inbounds ([8 x %struct.bm1880_div_hw_clock], ptr @bm1880_div_clks, i32 0, i32 0, i32 3), ptr %103
  %cmp.i.i63 = icmp ugt ptr %spec.select.i.i62, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i63, label %cleanup.i65, label %for.inc.i75

cleanup.i65:                                      ; preds = %bm1880_clk_register_plls.exit
  call void @__sanitizer_cov_trace_pc() #9
  %104 = load ptr, ptr getelementptr inbounds ([8 x %struct.bm1880_div_hw_clock], ptr @bm1880_div_clks, i32 0, i32 0, i32 0, i32 1), align 4
  %call3.i64 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.12, ptr noundef %104) #10
  br label %bm1880_clk_register_divs.exit

while.body.lr.ph.i70:                             ; preds = %for.inc.6.i.while.body.lr.ph.i70_crit_edge, %for.inc.5.i.while.body.lr.ph.i70_crit_edge, %for.inc.4.i.while.body.lr.ph.i70_crit_edge, %for.inc.3.i86.while.body.lr.ph.i70_crit_edge, %for.inc.2.i85.while.body.lr.ph.i70_crit_edge, %for.inc.1.i80.while.body.lr.ph.i70_crit_edge, %for.inc.i75.while.body.lr.ph.i70_crit_edge
  %i.04.lcssa.ph.i66 = phi i32 [ 6, %for.inc.6.i.while.body.lr.ph.i70_crit_edge ], [ 5, %for.inc.5.i.while.body.lr.ph.i70_crit_edge ], [ 4, %for.inc.4.i.while.body.lr.ph.i70_crit_edge ], [ 3, %for.inc.3.i86.while.body.lr.ph.i70_crit_edge ], [ 2, %for.inc.2.i85.while.body.lr.ph.i70_crit_edge ], [ 1, %for.inc.1.i80.while.body.lr.ph.i70_crit_edge ], [ 0, %for.inc.i75.while.body.lr.ph.i70_crit_edge ]
  %arrayidx.lcssa.ph.i67 = phi ptr [ getelementptr inbounds ([8 x %struct.bm1880_div_hw_clock], ptr @bm1880_div_clks, i32 0, i32 7), %for.inc.6.i.while.body.lr.ph.i70_crit_edge ], [ getelementptr inbounds ([8 x %struct.bm1880_div_hw_clock], ptr @bm1880_div_clks, i32 0, i32 6), %for.inc.5.i.while.body.lr.ph.i70_crit_edge ], [ getelementptr inbounds ([8 x %struct.bm1880_div_hw_clock], ptr @bm1880_div_clks, i32 0, i32 5), %for.inc.4.i.while.body.lr.ph.i70_crit_edge ], [ getelementptr inbounds ([8 x %struct.bm1880_div_hw_clock], ptr @bm1880_div_clks, i32 0, i32 4), %for.inc.3.i86.while.body.lr.ph.i70_crit_edge ], [ getelementptr inbounds ([8 x %struct.bm1880_div_hw_clock], ptr @bm1880_div_clks, i32 0, i32 3), %for.inc.2.i85.while.body.lr.ph.i70_crit_edge ], [ getelementptr inbounds ([8 x %struct.bm1880_div_hw_clock], ptr @bm1880_div_clks, i32 0, i32 2), %for.inc.1.i80.while.body.lr.ph.i70_crit_edge ], [ getelementptr inbounds ([8 x %struct.bm1880_div_hw_clock], ptr @bm1880_div_clks, i32 0, i32 1), %for.inc.i75.while.body.lr.ph.i70_crit_edge ]
  %name12.i68 = getelementptr inbounds %struct.bm1880_div_clock, ptr %arrayidx.lcssa.ph.i67, i32 0, i32 1
  %105 = ptrtoint ptr %name12.i68 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %name12.i68, align 4
  %call313.i69 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.12, ptr noundef %106) #10
  %arrayidx10.i = getelementptr %struct.bm1880_div_hw_clock, ptr @bm1880_div_clks, i32 %i.04.lcssa.ph.i66
  %107 = ptrtoint ptr %arrayidx10.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx10.i, align 4
  %arrayidx13.i = getelementptr [0 x ptr], ptr %hws, i32 0, i32 %108
  %109 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %arrayidx13.i, align 4
  tail call void @clk_hw_unregister(ptr noundef %110) #7
  br i1 %cmp.i.1.i74, label %while.body.lr.ph.i70.bm1880_clk_register_divs.exit_crit_edge, label %while.body.i90.1

while.body.lr.ph.i70.bm1880_clk_register_divs.exit_crit_edge: ; preds = %while.body.lr.ph.i70
  call void @__sanitizer_cov_trace_pc() #9
  br label %bm1880_clk_register_divs.exit

for.inc.i75:                                      ; preds = %bm1880_clk_register_plls.exit
  %111 = load i32, ptr @bm1880_div_clks, align 4
  %arrayidx7.i = getelementptr [0 x ptr], ptr %hws, i32 0, i32 %111
  %112 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %spec.select.i.i62, ptr %arrayidx7.i, align 4
  store i32 5, ptr getelementptr inbounds ([8 x %struct.bm1880_div_hw_clock], ptr @bm1880_div_clks, i32 0, i32 1, i32 0, i32 7), align 4
  store ptr %102, ptr getelementptr inbounds ([8 x %struct.bm1880_div_hw_clock], ptr @bm1880_div_clks, i32 0, i32 1, i32 1), align 4
  store ptr @bm1880_clk_lock, ptr getelementptr inbounds ([8 x %struct.bm1880_div_hw_clock], ptr @bm1880_div_clks, i32 0, i32 1, i32 2), align 4
  %call.i.1.i71 = tail call i32 @clk_hw_register(ptr noundef null, ptr noundef getelementptr inbounds ([8 x %struct.bm1880_div_hw_clock], ptr @bm1880_div_clks, i32 0, i32 1, i32 3)) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.1.i71)
  %tobool.not.i.1.i72 = icmp eq i32 %call.i.1.i71, 0
  %113 = inttoptr i32 %call.i.1.i71 to ptr
  %spec.select.i.1.i73 = select i1 %tobool.not.i.1.i72, ptr getelementptr inbounds ([8 x %struct.bm1880_div_hw_clock], ptr @bm1880_div_clks, i32 0, i32 1, i32 3), ptr %113
  %cmp.i.1.i74 = icmp ugt ptr %spec.select.i.1.i73, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1.i74, label %for.inc.i75.while.body.lr.ph.i70_crit_edge, label %for.inc.1.i80

for.inc.i75.while.body.lr.ph.i70_crit_edge:       ; preds = %for.inc.i75
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.lr.ph.i70

for.inc.1.i80:                                    ; preds = %for.inc.i75
  %114 = load i32, ptr getelementptr inbounds ([8 x %struct.bm1880_div_hw_clock], ptr @bm1880_div_clks, i32 0, i32 1), align 4
  %arrayidx7.1.i = getelementptr [0 x ptr], ptr %hws, i32 0, i32 %114
  %115 = ptrtoint ptr %arrayidx7.1.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %spec.select.i.1.i73, ptr %arrayidx7.1.i, align 4
  store i32 5, ptr getelementptr inbounds ([8 x %struct.bm1880_div_hw_clock], ptr @bm1880_div_clks, i32 0, i32 2, i32 0, i32 7), align 4
  store ptr %102, ptr getelementptr inbounds ([8 x %struct.bm1880_div_hw_clock], ptr @bm1880_div_clks, i32 0, i32 2, i32 1), align 4
  store ptr @bm1880_clk_lock, ptr getelementptr inbounds ([8 x %struct.bm1880_div_hw_clock], ptr @bm1880_div_clks, i32 0, i32 2, i32 2), align 4
  %call.i.2.i76 = tail call i32 @clk_hw_register(ptr noundef null, ptr noundef getelementptr inbounds ([8 x %struct.bm1880_div_hw_clock], ptr @bm1880_div_clks, i32 0, i32 2, i32 3)) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.2.i76)
  %tobool.not.i.2.i77 = icmp eq i32 %call.i.2.i76, 0
  %116 = inttoptr i32 %call.i.2.i76 to ptr
  %spec.select.i.2.i78 = select i1 %tobool.not.i.2.i77, ptr getelementptr inbounds ([8 x %struct.bm1880_div_hw_clock], ptr @bm1880_div_clks, i32 0, i32 2, i32 3), ptr %116
  %cmp.i.2.i79 = icmp ugt ptr %spec.select.i.2.i78, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.2.i79, label %for.inc.1.i80.while.body.lr.ph.i70_crit_edge, label %for.inc.2.i85

for.inc.1.i80.while.body.lr.ph.i70_crit_edge:     ; preds = %for.inc.1.i80
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.lr.ph.i70

for.inc.2.i85:                                    ; preds = %for.inc.1.i80
  %117 = load i32, ptr getelementptr inbounds ([8 x %struct.bm1880_div_hw_clock], ptr @bm1880_div_clks, i32 0, i32 2), align 4
  %arrayidx7.2.i = getelementptr [0 x ptr], ptr %hws, i32 0, i32 %117
  %118 = ptrtoint ptr %arrayidx7.2.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %spec.select.i.2.i78, ptr %arrayidx7.2.i, align 4
  store i32 5, ptr getelementptr inbounds ([8 x %struct.bm1880_div_hw_clock], ptr @bm1880_div_clks, i32 0, i32 3, i32 0, i32 7), align 4
  store ptr %102, ptr getelementptr inbounds ([8 x %struct.bm1880_div_hw_clock], ptr @bm1880_div_clks, i32 0, i32 3, i32 1), align 4
  store ptr @bm1880_clk_lock, ptr getelementptr inbounds ([8 x %struct.bm1880_div_hw_clock], ptr @bm1880_div_clks, i32 0, i32 3, i32 2), align 4
  %call.i.3.i81 = tail call i32 @clk_hw_register(ptr noundef null, ptr noundef getelementptr inbounds ([8 x %struct.bm1880_div_hw_clock], ptr @bm1880_div_clks, i32 0, i32 3, i32 3)) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.3.i81)
  %tobool.not.i.3.i82 = icmp eq i32 %call.i.3.i81, 0
  %119 = inttoptr i32 %call.i.3.i81 to ptr
  %spec.select.i.3.i83 = select i1 %tobool.not.i.3.i82, ptr getelementptr inbounds ([8 x %struct.bm1880_div_hw_clock], ptr @bm1880_div_clks, i32 0, i32 3, i32 3), ptr %119
  %cmp.i.3.i84 = icmp ugt ptr %spec.select.i.3.i83, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.3.i84, label %for.inc.2.i85.while.body.lr.ph.i70_crit_edge, label %for.inc.3.i86

for.inc.2.i85.while.body.lr.ph.i70_crit_edge:     ; preds = %for.inc.2.i85
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.lr.ph.i70

for.inc.3.i86:                                    ; preds = %for.inc.2.i85
  %120 = load i32, ptr getelementptr inbounds ([8 x %struct.bm1880_div_hw_clock], ptr @bm1880_div_clks, i32 0, i32 3), align 4
  %arrayidx7.3.i = getelementptr [0 x ptr], ptr %hws, i32 0, i32 %120
  %121 = ptrtoint ptr %arrayidx7.3.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %spec.select.i.3.i83, ptr %arrayidx7.3.i, align 4
  store i32 5, ptr getelementptr inbounds ([8 x %struct.bm1880_div_hw_clock], ptr @bm1880_div_clks, i32 0, i32 4, i32 0, i32 7), align 4
  store ptr %102, ptr getelementptr inbounds ([8 x %struct.bm1880_div_hw_clock], ptr @bm1880_div_clks, i32 0, i32 4, i32 1), align 4
  store ptr @bm1880_clk_lock, ptr getelementptr inbounds ([8 x %struct.bm1880_div_hw_clock], ptr @bm1880_div_clks, i32 0, i32 4, i32 2), align 4
  %call.i.4.i = tail call i32 @clk_hw_register(ptr noundef null, ptr noundef getelementptr inbounds ([8 x %struct.bm1880_div_hw_clock], ptr @bm1880_div_clks, i32 0, i32 4, i32 3)) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.4.i)
  %tobool.not.i.4.i = icmp eq i32 %call.i.4.i, 0
  %122 = inttoptr i32 %call.i.4.i to ptr
  %spec.select.i.4.i = select i1 %tobool.not.i.4.i, ptr getelementptr inbounds ([8 x %struct.bm1880_div_hw_clock], ptr @bm1880_div_clks, i32 0, i32 4, i32 3), ptr %122
  %cmp.i.4.i = icmp ugt ptr %spec.select.i.4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.4.i, label %for.inc.3.i86.while.body.lr.ph.i70_crit_edge, label %for.inc.4.i

for.inc.3.i86.while.body.lr.ph.i70_crit_edge:     ; preds = %for.inc.3.i86
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.lr.ph.i70

for.inc.4.i:                                      ; preds = %for.inc.3.i86
  %123 = load i32, ptr getelementptr inbounds ([8 x %struct.bm1880_div_hw_clock], ptr @bm1880_div_clks, i32 0, i32 4), align 4
  %arrayidx7.4.i = getelementptr [0 x ptr], ptr %hws, i32 0, i32 %123
  %124 = ptrtoint ptr %arrayidx7.4.i to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr %spec.select.i.4.i, ptr %arrayidx7.4.i, align 4
  store i32 5, ptr getelementptr inbounds ([8 x %struct.bm1880_div_hw_clock], ptr @bm1880_div_clks, i32 0, i32 5, i32 0, i32 7), align 4
  store ptr %102, ptr getelementptr inbounds ([8 x %struct.bm1880_div_hw_clock], ptr @bm1880_div_clks, i32 0, i32 5, i32 1), align 4
  store ptr @bm1880_clk_lock, ptr getelementptr inbounds ([8 x %struct.bm1880_div_hw_clock], ptr @bm1880_div_clks, i32 0, i32 5, i32 2), align 4
  %call.i.5.i = tail call i32 @clk_hw_register(ptr noundef null, ptr noundef getelementptr inbounds ([8 x %struct.bm1880_div_hw_clock], ptr @bm1880_div_clks, i32 0, i32 5, i32 3)) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.5.i)
  %tobool.not.i.5.i = icmp eq i32 %call.i.5.i, 0
  %125 = inttoptr i32 %call.i.5.i to ptr
  %spec.select.i.5.i = select i1 %tobool.not.i.5.i, ptr getelementptr inbounds ([8 x %struct.bm1880_div_hw_clock], ptr @bm1880_div_clks, i32 0, i32 5, i32 3), ptr %125
  %cmp.i.5.i = icmp ugt ptr %spec.select.i.5.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.5.i, label %for.inc.4.i.while.body.lr.ph.i70_crit_edge, label %for.inc.5.i

for.inc.4.i.while.body.lr.ph.i70_crit_edge:       ; preds = %for.inc.4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.lr.ph.i70

for.inc.5.i:                                      ; preds = %for.inc.4.i
  %126 = load i32, ptr getelementptr inbounds ([8 x %struct.bm1880_div_hw_clock], ptr @bm1880_div_clks, i32 0, i32 5), align 4
  %arrayidx7.5.i = getelementptr [0 x ptr], ptr %hws, i32 0, i32 %126
  %127 = ptrtoint ptr %arrayidx7.5.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr %spec.select.i.5.i, ptr %arrayidx7.5.i, align 4
  store i32 5, ptr getelementptr inbounds ([8 x %struct.bm1880_div_hw_clock], ptr @bm1880_div_clks, i32 0, i32 6, i32 0, i32 7), align 4
  store ptr %102, ptr getelementptr inbounds ([8 x %struct.bm1880_div_hw_clock], ptr @bm1880_div_clks, i32 0, i32 6, i32 1), align 4
  store ptr @bm1880_clk_lock, ptr getelementptr inbounds ([8 x %struct.bm1880_div_hw_clock], ptr @bm1880_div_clks, i32 0, i32 6, i32 2), align 4
  %call.i.6.i = tail call i32 @clk_hw_register(ptr noundef null, ptr noundef getelementptr inbounds ([8 x %struct.bm1880_div_hw_clock], ptr @bm1880_div_clks, i32 0, i32 6, i32 3)) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.6.i)
  %tobool.not.i.6.i = icmp eq i32 %call.i.6.i, 0
  %128 = inttoptr i32 %call.i.6.i to ptr
  %spec.select.i.6.i = select i1 %tobool.not.i.6.i, ptr getelementptr inbounds ([8 x %struct.bm1880_div_hw_clock], ptr @bm1880_div_clks, i32 0, i32 6, i32 3), ptr %128
  %cmp.i.6.i = icmp ugt ptr %spec.select.i.6.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.6.i, label %for.inc.5.i.while.body.lr.ph.i70_crit_edge, label %for.inc.6.i

for.inc.5.i.while.body.lr.ph.i70_crit_edge:       ; preds = %for.inc.5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.lr.ph.i70

for.inc.6.i:                                      ; preds = %for.inc.5.i
  %129 = load i32, ptr getelementptr inbounds ([8 x %struct.bm1880_div_hw_clock], ptr @bm1880_div_clks, i32 0, i32 6), align 4
  %arrayidx7.6.i = getelementptr [0 x ptr], ptr %hws, i32 0, i32 %129
  %130 = ptrtoint ptr %arrayidx7.6.i to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %spec.select.i.6.i, ptr %arrayidx7.6.i, align 4
  store i32 5, ptr getelementptr inbounds ([8 x %struct.bm1880_div_hw_clock], ptr @bm1880_div_clks, i32 0, i32 7, i32 0, i32 7), align 4
  store ptr %102, ptr getelementptr inbounds ([8 x %struct.bm1880_div_hw_clock], ptr @bm1880_div_clks, i32 0, i32 7, i32 1), align 4
  store ptr @bm1880_clk_lock, ptr getelementptr inbounds ([8 x %struct.bm1880_div_hw_clock], ptr @bm1880_div_clks, i32 0, i32 7, i32 2), align 4
  %call.i.7.i = tail call i32 @clk_hw_register(ptr noundef null, ptr noundef getelementptr inbounds ([8 x %struct.bm1880_div_hw_clock], ptr @bm1880_div_clks, i32 0, i32 7, i32 3)) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.7.i)
  %tobool.not.i.7.i = icmp eq i32 %call.i.7.i, 0
  %131 = inttoptr i32 %call.i.7.i to ptr
  %spec.select.i.7.i = select i1 %tobool.not.i.7.i, ptr getelementptr inbounds ([8 x %struct.bm1880_div_hw_clock], ptr @bm1880_div_clks, i32 0, i32 7, i32 3), ptr %131
  %cmp.i.7.i = icmp ugt ptr %spec.select.i.7.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.7.i, label %for.inc.6.i.while.body.lr.ph.i70_crit_edge, label %for.inc.7.i

for.inc.6.i.while.body.lr.ph.i70_crit_edge:       ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.lr.ph.i70

for.inc.7.i:                                      ; preds = %for.inc.6.i
  call void @__sanitizer_cov_trace_pc() #9
  %132 = load i32, ptr getelementptr inbounds ([8 x %struct.bm1880_div_hw_clock], ptr @bm1880_div_clks, i32 0, i32 7), align 4
  %arrayidx7.7.i = getelementptr [0 x ptr], ptr %hws, i32 0, i32 %132
  %133 = ptrtoint ptr %arrayidx7.7.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %spec.select.i.7.i, ptr %arrayidx7.7.i, align 4
  br label %bm1880_clk_register_divs.exit

while.body.i90.1:                                 ; preds = %while.body.lr.ph.i70
  %dec.i88.1 = add nsw i32 %i.04.lcssa.ph.i66, -1
  %arrayidx10.i.1 = getelementptr %struct.bm1880_div_hw_clock, ptr @bm1880_div_clks, i32 %dec.i88.1
  %134 = ptrtoint ptr %arrayidx10.i.1 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx10.i.1, align 4
  %arrayidx13.i.1 = getelementptr [0 x ptr], ptr %hws, i32 0, i32 %135
  %136 = ptrtoint ptr %arrayidx13.i.1 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %arrayidx13.i.1, align 4
  tail call void @clk_hw_unregister(ptr noundef %137) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i88.1)
  %tobool.not.i89.1 = icmp eq i32 %dec.i88.1, 0
  br i1 %tobool.not.i89.1, label %while.body.i90.1.bm1880_clk_register_divs.exit_crit_edge, label %while.body.i90.2

while.body.i90.1.bm1880_clk_register_divs.exit_crit_edge: ; preds = %while.body.i90.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %bm1880_clk_register_divs.exit

while.body.i90.2:                                 ; preds = %while.body.i90.1
  %dec.i88.2 = add nsw i32 %i.04.lcssa.ph.i66, -2
  %arrayidx10.i.2 = getelementptr %struct.bm1880_div_hw_clock, ptr @bm1880_div_clks, i32 %dec.i88.2
  %138 = ptrtoint ptr %arrayidx10.i.2 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %arrayidx10.i.2, align 4
  %arrayidx13.i.2 = getelementptr [0 x ptr], ptr %hws, i32 0, i32 %139
  %140 = ptrtoint ptr %arrayidx13.i.2 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %arrayidx13.i.2, align 4
  tail call void @clk_hw_unregister(ptr noundef %141) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i88.2)
  %tobool.not.i89.2 = icmp eq i32 %dec.i88.2, 0
  br i1 %tobool.not.i89.2, label %while.body.i90.2.bm1880_clk_register_divs.exit_crit_edge, label %while.body.i90.3

while.body.i90.2.bm1880_clk_register_divs.exit_crit_edge: ; preds = %while.body.i90.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %bm1880_clk_register_divs.exit

while.body.i90.3:                                 ; preds = %while.body.i90.2
  %dec.i88.3 = add nsw i32 %i.04.lcssa.ph.i66, -3
  %arrayidx10.i.3 = getelementptr %struct.bm1880_div_hw_clock, ptr @bm1880_div_clks, i32 %dec.i88.3
  %142 = ptrtoint ptr %arrayidx10.i.3 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %arrayidx10.i.3, align 4
  %arrayidx13.i.3 = getelementptr [0 x ptr], ptr %hws, i32 0, i32 %143
  %144 = ptrtoint ptr %arrayidx13.i.3 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %arrayidx13.i.3, align 4
  tail call void @clk_hw_unregister(ptr noundef %145) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i88.3)
  %tobool.not.i89.3 = icmp eq i32 %dec.i88.3, 0
  br i1 %tobool.not.i89.3, label %while.body.i90.3.bm1880_clk_register_divs.exit_crit_edge, label %while.body.i90.4

while.body.i90.3.bm1880_clk_register_divs.exit_crit_edge: ; preds = %while.body.i90.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %bm1880_clk_register_divs.exit

while.body.i90.4:                                 ; preds = %while.body.i90.3
  %dec.i88.4 = add nsw i32 %i.04.lcssa.ph.i66, -4
  %arrayidx10.i.4 = getelementptr %struct.bm1880_div_hw_clock, ptr @bm1880_div_clks, i32 %dec.i88.4
  %146 = ptrtoint ptr %arrayidx10.i.4 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arrayidx10.i.4, align 4
  %arrayidx13.i.4 = getelementptr [0 x ptr], ptr %hws, i32 0, i32 %147
  %148 = ptrtoint ptr %arrayidx13.i.4 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %arrayidx13.i.4, align 4
  tail call void @clk_hw_unregister(ptr noundef %149) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i88.4)
  %tobool.not.i89.4 = icmp eq i32 %dec.i88.4, 0
  br i1 %tobool.not.i89.4, label %while.body.i90.4.bm1880_clk_register_divs.exit_crit_edge, label %while.body.i90.5

while.body.i90.4.bm1880_clk_register_divs.exit_crit_edge: ; preds = %while.body.i90.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %bm1880_clk_register_divs.exit

while.body.i90.5:                                 ; preds = %while.body.i90.4
  %dec.i88.5 = add nsw i32 %i.04.lcssa.ph.i66, -5
  %arrayidx10.i.5 = getelementptr %struct.bm1880_div_hw_clock, ptr @bm1880_div_clks, i32 %dec.i88.5
  %150 = ptrtoint ptr %arrayidx10.i.5 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %arrayidx10.i.5, align 4
  %arrayidx13.i.5 = getelementptr [0 x ptr], ptr %hws, i32 0, i32 %151
  %152 = ptrtoint ptr %arrayidx13.i.5 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %arrayidx13.i.5, align 4
  tail call void @clk_hw_unregister(ptr noundef %153) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i88.5)
  %tobool.not.i89.5 = icmp eq i32 %dec.i88.5, 0
  br i1 %tobool.not.i89.5, label %while.body.i90.5.bm1880_clk_register_divs.exit_crit_edge, label %while.body.i90.6

while.body.i90.5.bm1880_clk_register_divs.exit_crit_edge: ; preds = %while.body.i90.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %bm1880_clk_register_divs.exit

while.body.i90.6:                                 ; preds = %while.body.i90.5
  call void @__sanitizer_cov_trace_pc() #9
  %dec.i88.6 = add nsw i32 %i.04.lcssa.ph.i66, -6
  %arrayidx10.i.6 = getelementptr %struct.bm1880_div_hw_clock, ptr @bm1880_div_clks, i32 %dec.i88.6
  %154 = ptrtoint ptr %arrayidx10.i.6 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %arrayidx10.i.6, align 4
  %arrayidx13.i.6 = getelementptr [0 x ptr], ptr %hws, i32 0, i32 %155
  %156 = ptrtoint ptr %arrayidx13.i.6 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %arrayidx13.i.6, align 4
  tail call void @clk_hw_unregister(ptr noundef %157) #7
  br label %bm1880_clk_register_divs.exit

bm1880_clk_register_divs.exit:                    ; preds = %while.body.i90.6, %while.body.i90.5.bm1880_clk_register_divs.exit_crit_edge, %while.body.i90.4.bm1880_clk_register_divs.exit_crit_edge, %while.body.i90.3.bm1880_clk_register_divs.exit_crit_edge, %while.body.i90.2.bm1880_clk_register_divs.exit_crit_edge, %while.body.i90.1.bm1880_clk_register_divs.exit_crit_edge, %for.inc.7.i, %while.body.lr.ph.i70.bm1880_clk_register_divs.exit_crit_edge, %cleanup.i65
  %158 = ptrtoint ptr %sys_base18 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %sys_base18, align 4
  %add.ptr.i = getelementptr i8, ptr %159, i32 32
  %call.i92 = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.39, i8 noundef zeroext 2, ptr noundef nonnull @clk_rv_parents, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %add.ptr.i, i8 noundef zeroext 1, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @bm1880_clk_lock) #7
  %cmp.i.i93 = icmp ugt ptr %call.i92, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i93, label %do.end.thread.i, label %if.end.i

do.end.thread.i:                                  ; preds = %bm1880_clk_register_divs.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call1011.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39) #10
  br label %bm1880_clk_register_mux.exit

while.body.lr.ph.i94:                             ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %call10.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.40) #10
  %160 = ptrtoint ptr %arrayidx12.i95 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %arrayidx12.i95, align 4
  tail call void @clk_hw_unregister_mux(ptr noundef %161) #7
  br label %bm1880_clk_register_mux.exit

if.end.i:                                         ; preds = %bm1880_clk_register_divs.exit
  %arrayidx12.i95 = getelementptr %struct.bm1880_clock_data, ptr %call.i, i32 14, i32 1
  %162 = ptrtoint ptr %arrayidx12.i95 to i32
  call void @__asan_store4_noabort(i32 %162)
  store ptr %call.i92, ptr %arrayidx12.i95, align 4
  %call.1.i = tail call ptr @__clk_hw_register_mux(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.40, i8 noundef zeroext 2, ptr noundef nonnull @clk_axi6_parents, ptr noundef null, ptr noundef null, i32 noundef 0, ptr noundef %add.ptr.i, i8 noundef zeroext 3, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @bm1880_clk_lock) #7
  %cmp.i.1.i96 = icmp ugt ptr %call.1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1.i96, label %while.body.lr.ph.i94, label %if.end.1.i

if.end.1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx12.1.i = getelementptr %struct.bm1880_clock_data, ptr %call.i, i32 23, i32 1
  %163 = ptrtoint ptr %arrayidx12.1.i to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %call.1.i, ptr %arrayidx12.1.i, align 4
  br label %bm1880_clk_register_mux.exit

bm1880_clk_register_mux.exit:                     ; preds = %if.end.1.i, %while.body.lr.ph.i94, %do.end.thread.i
  %164 = ptrtoint ptr %sys_base18 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %sys_base18, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i104.for.body.i_crit_edge, %bm1880_clk_register_mux.exit
  %i.09.i = phi i32 [ 0, %bm1880_clk_register_mux.exit ], [ %inc.i, %for.inc.i104.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.bm1880_composite_clock, ptr @bm1880_composite_clks, i32 %i.09.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent.i.i) #7
  %166 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr inttoptr (i32 -1 to ptr), ptr %parent.i.i, align 4, !annotation !222
  %mux_shift.i.i = getelementptr %struct.bm1880_composite_clock, ptr @bm1880_composite_clks, i32 %i.09.i, i32 10
  %167 = ptrtoint ptr %mux_shift.i.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %mux_shift.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %168)
  %cmp.i.i100 = icmp sgt i8 %168, -1
  br i1 %cmp.i.i100, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %169 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %169, i32 noundef 3520, i32 noundef 32) #11
  %tobool.not.i.i101 = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i.i101, label %bm1880_clk_register_composite.exit.thread.i, label %if.end.i.i

bm1880_clk_register_composite.exit.thread.i:      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent.i.i) #7
  br label %cleanup.i103

if.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %mux_reg.i.i = getelementptr %struct.bm1880_composite_clock, ptr @bm1880_composite_clks, i32 %i.09.i, i32 7
  %170 = ptrtoint ptr %mux_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %mux_reg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %165, i32 %171
  %reg.i.i = getelementptr inbounds %struct.clk_mux, ptr %call7.i.i.i.i, i32 0, i32 1
  %172 = ptrtoint ptr %reg.i.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr %add.ptr.i.i, ptr %reg.i.i, align 4
  %mask.i.i = getelementptr inbounds %struct.clk_mux, ptr %call7.i.i.i.i, i32 0, i32 3
  %173 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_store4_noabort(i32 %173)
  store i32 1, ptr %mask.i.i, align 4
  %174 = ptrtoint ptr %mux_shift.i.i to i32
  call void @__asan_load1_noabort(i32 %174)
  %175 = load i8, ptr %mux_shift.i.i, align 1
  %shift.i.i = getelementptr inbounds %struct.clk_mux, ptr %call7.i.i.i.i, i32 0, i32 4
  %176 = ptrtoint ptr %shift.i.i to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 %175, ptr %shift.i.i, align 8
  %lock.i.i = getelementptr inbounds %struct.clk_mux, ptr %call7.i.i.i.i, i32 0, i32 6
  %177 = ptrtoint ptr %lock.i.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store ptr @bm1880_clk_lock, ptr %lock.i.i, align 4
  %parents.i.i = getelementptr %struct.bm1880_composite_clock, ptr @bm1880_composite_clks, i32 %i.09.i, i32 3
  %178 = ptrtoint ptr %parents.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %parents.i.i, align 4
  %num_parents6.i.i = getelementptr %struct.bm1880_composite_clock, ptr @bm1880_composite_clks, i32 %i.09.i, i32 4
  %180 = ptrtoint ptr %num_parents6.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %num_parents6.i.i, align 4
  br label %if.end8.i.i

if.else.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %parent7.i.i = getelementptr %struct.bm1880_composite_clock, ptr @bm1880_composite_clks, i32 %i.09.i, i32 2
  %182 = ptrtoint ptr %parent7.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %parent7.i.i, align 4
  %184 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_store4_noabort(i32 %184)
  store ptr %183, ptr %parent.i.i, align 4
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.else.i.i, %if.end.i.i
  %mux_hw.0.i.i = phi ptr [ %call7.i.i.i.i, %if.end.i.i ], [ null, %if.else.i.i ]
  %mux_ops.0.i.i = phi ptr [ @clk_mux_ops, %if.end.i.i ], [ null, %if.else.i.i ]
  %parent_names.0.i.i = phi ptr [ %179, %if.end.i.i ], [ %parent.i.i, %if.else.i.i ]
  %num_parents.0.i.i = phi i32 [ %181, %if.end.i.i ], [ 1, %if.else.i.i ]
  %gate_shift.i.i = getelementptr %struct.bm1880_composite_clock, ptr @bm1880_composite_clks, i32 %i.09.i, i32 9
  %185 = ptrtoint ptr %gate_shift.i.i to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %gate_shift.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %186)
  %cmp10.i.i = icmp sgt i8 %186, -1
  br i1 %cmp10.i.i, label %if.then12.i.i, label %if.end8.i.i.if.end22.i.i_crit_edge

if.end8.i.i.if.end22.i.i_crit_edge:               ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i.i

if.then12.i.i:                                    ; preds = %if.end8.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %187 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i105.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %187, i32 noundef 3520, i32 noundef 24) #11
  %tobool14.not.i.i = icmp eq ptr %call7.i.i105.i.i, null
  br i1 %tobool14.not.i.i, label %if.then12.i.i.err_out.i.i_crit_edge, label %if.end16.i.i

if.then12.i.i.err_out.i.i_crit_edge:              ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out.i.i

if.end16.i.i:                                     ; preds = %if.then12.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %gate_reg.i.i = getelementptr %struct.bm1880_composite_clock, ptr @bm1880_composite_clks, i32 %i.09.i, i32 6
  %188 = ptrtoint ptr %gate_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %gate_reg.i.i, align 4
  %add.ptr17.i.i = getelementptr i8, ptr %165, i32 %189
  %reg18.i.i = getelementptr inbounds %struct.clk_gate, ptr %call7.i.i105.i.i, i32 0, i32 1
  %190 = ptrtoint ptr %reg18.i.i to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr %add.ptr17.i.i, ptr %reg18.i.i, align 4
  %191 = ptrtoint ptr %gate_shift.i.i to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %gate_shift.i.i, align 4
  %bit_idx.i.i = getelementptr inbounds %struct.clk_gate, ptr %call7.i.i105.i.i, i32 0, i32 2
  %193 = ptrtoint ptr %bit_idx.i.i to i32
  call void @__asan_store1_noabort(i32 %193)
  store i8 %192, ptr %bit_idx.i.i, align 8
  %lock20.i.i = getelementptr inbounds %struct.clk_gate, ptr %call7.i.i105.i.i, i32 0, i32 4
  %194 = ptrtoint ptr %lock20.i.i to i32
  call void @__asan_store4_noabort(i32 %194)
  store ptr @bm1880_clk_lock, ptr %lock20.i.i, align 4
  br label %if.end22.i.i

if.end22.i.i:                                     ; preds = %if.end16.i.i, %if.end8.i.i.if.end22.i.i_crit_edge
  %gate_hw.0.i.i = phi ptr [ %call7.i.i105.i.i, %if.end16.i.i ], [ null, %if.end8.i.i.if.end22.i.i_crit_edge ]
  %gate_ops.0.i.i = phi ptr [ @clk_gate_ops, %if.end16.i.i ], [ null, %if.end8.i.i.if.end22.i.i_crit_edge ]
  %div_shift.i.i = getelementptr %struct.bm1880_composite_clock, ptr @bm1880_composite_clks, i32 %i.09.i, i32 11
  %195 = ptrtoint ptr %div_shift.i.i to i32
  call void @__asan_load1_noabort(i32 %195)
  %196 = load i8, ptr %div_shift.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %196)
  %cmp24.i.i = icmp sgt i8 %196, -1
  br i1 %cmp24.i.i, label %if.then26.i.i, label %if.end22.i.i.if.end43.i.i_crit_edge

if.end22.i.i.if.end43.i.i_crit_edge:              ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43.i.i

if.then26.i.i:                                    ; preds = %if.end22.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %197 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i106.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %197, i32 noundef 3520, i32 noundef 76) #11
  %tobool28.not.i.i = icmp eq ptr %call7.i.i106.i.i, null
  br i1 %tobool28.not.i.i, label %if.then26.i.i.err_out.i.i_crit_edge, label %if.end30.i.i

if.then26.i.i.err_out.i.i_crit_edge:              ; preds = %if.then26.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out.i.i

if.end30.i.i:                                     ; preds = %if.then26.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %base.i.i = getelementptr inbounds %struct.bm1880_div_hw_clock, ptr %call7.i.i106.i.i, i32 0, i32 1
  %198 = ptrtoint ptr %base.i.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store ptr %165, ptr %base.i.i, align 4
  %div_reg.i.i = getelementptr %struct.bm1880_composite_clock, ptr @bm1880_composite_clks, i32 %i.09.i, i32 8
  %199 = ptrtoint ptr %div_reg.i.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %div_reg.i.i, align 4
  %reg31.i.i = getelementptr inbounds %struct.bm1880_div_clock, ptr %call7.i.i106.i.i, i32 0, i32 2
  %201 = ptrtoint ptr %reg31.i.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %200, ptr %reg31.i.i, align 8
  %202 = ptrtoint ptr %div_shift.i.i to i32
  call void @__asan_load1_noabort(i32 %202)
  %203 = load i8, ptr %div_shift.i.i, align 2
  %shift34.i.i = getelementptr inbounds %struct.bm1880_div_clock, ptr %call7.i.i106.i.i, i32 0, i32 3
  %204 = ptrtoint ptr %shift34.i.i to i32
  call void @__asan_store1_noabort(i32 %204)
  store i8 %203, ptr %shift34.i.i, align 4
  %div_width.i.i = getelementptr %struct.bm1880_composite_clock, ptr @bm1880_composite_clks, i32 %i.09.i, i32 12
  %205 = ptrtoint ptr %div_width.i.i to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %div_width.i.i, align 1
  %width.i.i = getelementptr inbounds %struct.bm1880_div_clock, ptr %call7.i.i106.i.i, i32 0, i32 4
  %207 = ptrtoint ptr %width.i.i to i32
  call void @__asan_store1_noabort(i32 %207)
  store i8 %206, ptr %width.i.i, align 1
  %table.i.i = getelementptr %struct.bm1880_composite_clock, ptr @bm1880_composite_clks, i32 %i.09.i, i32 14
  %208 = ptrtoint ptr %table.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %table.i.i, align 4
  %table37.i.i = getelementptr inbounds %struct.bm1880_div_clock, ptr %call7.i.i106.i.i, i32 0, i32 6
  %210 = ptrtoint ptr %table37.i.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store ptr %209, ptr %table37.i.i, align 4
  %div_initval.i.i = getelementptr %struct.bm1880_composite_clock, ptr @bm1880_composite_clks, i32 %i.09.i, i32 13
  %211 = ptrtoint ptr %div_initval.i.i to i32
  call void @__asan_load2_noabort(i32 %211)
  %212 = load i16, ptr %div_initval.i.i, align 4
  %conv38.i.i = sext i16 %212 to i32
  %initval.i.i = getelementptr inbounds %struct.bm1880_div_clock, ptr %call7.i.i106.i.i, i32 0, i32 5
  %213 = ptrtoint ptr %initval.i.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 %conv38.i.i, ptr %initval.i.i, align 8
  %lock40.i.i = getelementptr inbounds %struct.bm1880_div_hw_clock, ptr %call7.i.i106.i.i, i32 0, i32 2
  %214 = ptrtoint ptr %lock40.i.i to i32
  call void @__asan_store4_noabort(i32 %214)
  store ptr @bm1880_clk_lock, ptr %lock40.i.i, align 8
  %flags.i.i = getelementptr inbounds %struct.bm1880_div_clock, ptr %call7.i.i106.i.i, i32 0, i32 7
  %215 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 5, ptr %flags.i.i, align 8
  %hw42.i.i = getelementptr inbounds %struct.bm1880_div_hw_clock, ptr %call7.i.i106.i.i, i32 0, i32 3
  br label %if.end43.i.i

if.end43.i.i:                                     ; preds = %if.end30.i.i, %if.end22.i.i.if.end43.i.i_crit_edge
  %div_hws.0.i.i = phi ptr [ %call7.i.i106.i.i, %if.end30.i.i ], [ null, %if.end22.i.i.if.end43.i.i_crit_edge ]
  %div_hw.0.i.i = phi ptr [ %hw42.i.i, %if.end30.i.i ], [ null, %if.end22.i.i.if.end43.i.i_crit_edge ]
  %div_ops.0.i.i = phi ptr [ @bm1880_clk_div_ops, %if.end30.i.i ], [ null, %if.end22.i.i.if.end43.i.i_crit_edge ]
  %name.i.i = getelementptr %struct.bm1880_composite_clock, ptr @bm1880_composite_clks, i32 %i.09.i, i32 1
  %216 = ptrtoint ptr %name.i.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load ptr, ptr %name.i.i, align 4
  %flags44.i.i = getelementptr %struct.bm1880_composite_clock, ptr @bm1880_composite_clks, i32 %i.09.i, i32 5
  %218 = ptrtoint ptr %flags44.i.i to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %flags44.i.i, align 4
  %call45.i.i = call ptr @clk_hw_register_composite(ptr noundef null, ptr noundef %217, ptr noundef %parent_names.0.i.i, i32 noundef %num_parents.0.i.i, ptr noundef %mux_hw.0.i.i, ptr noundef %mux_ops.0.i.i, ptr noundef %div_hw.0.i.i, ptr noundef %div_ops.0.i.i, ptr noundef %gate_hw.0.i.i, ptr noundef %gate_ops.0.i.i, i32 noundef %219) #7
  %cmp.i.i.i = icmp ugt ptr %call45.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.end43.i.i.err_out.i.i_crit_edge, label %if.end43.i.i.bm1880_clk_register_composite.exit.i_crit_edge

if.end43.i.i.bm1880_clk_register_composite.exit.i_crit_edge: ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bm1880_clk_register_composite.exit.i

if.end43.i.i.err_out.i.i_crit_edge:               ; preds = %if.end43.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_out.i.i

err_out.i.i:                                      ; preds = %if.end43.i.i.err_out.i.i_crit_edge, %if.then26.i.i.err_out.i.i_crit_edge, %if.then12.i.i.err_out.i.i_crit_edge
  %gate.1.i.i = phi ptr [ null, %if.then12.i.i.err_out.i.i_crit_edge ], [ %gate_hw.0.i.i, %if.then26.i.i.err_out.i.i_crit_edge ], [ %gate_hw.0.i.i, %if.end43.i.i.err_out.i.i_crit_edge ]
  %div_hws.1.i.i = phi ptr [ null, %if.then12.i.i.err_out.i.i_crit_edge ], [ null, %if.then26.i.i.err_out.i.i_crit_edge ], [ %div_hws.0.i.i, %if.end43.i.i.err_out.i.i_crit_edge ]
  %ret.0.i.i = phi ptr [ inttoptr (i32 -12 to ptr), %if.then12.i.i.err_out.i.i_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then26.i.i.err_out.i.i_crit_edge ], [ %call45.i.i, %if.end43.i.i.err_out.i.i_crit_edge ]
  call void @kfree(ptr noundef %div_hws.1.i.i) #7
  call void @kfree(ptr noundef %gate.1.i.i) #7
  call void @kfree(ptr noundef %mux_hw.0.i.i) #7
  br label %bm1880_clk_register_composite.exit.i

bm1880_clk_register_composite.exit.i:             ; preds = %err_out.i.i, %if.end43.i.i.bm1880_clk_register_composite.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %ret.0.i.i, %err_out.i.i ], [ %call45.i.i, %if.end43.i.i.bm1880_clk_register_composite.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent.i.i) #7
  %cmp.i1.i = icmp ugt ptr %retval.0.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i1.i, label %bm1880_clk_register_composite.exit.i.cleanup.i103_crit_edge, label %for.inc.i104

bm1880_clk_register_composite.exit.i.cleanup.i103_crit_edge: ; preds = %bm1880_clk_register_composite.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.i103

cleanup.i103:                                     ; preds = %bm1880_clk_register_composite.exit.i.cleanup.i103_crit_edge, %bm1880_clk_register_composite.exit.thread.i
  %name.i = getelementptr %struct.bm1880_composite_clock, ptr @bm1880_composite_clks, i32 %i.09.i, i32 1
  %220 = ptrtoint ptr %name.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %name.i, align 4
  %call3.i102 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.41, ptr noundef %221) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.09.i)
  %tobool.not10.i = icmp eq i32 %i.09.i, 0
  br i1 %tobool.not10.i, label %cleanup.i103.bm1880_clk_register_composites.exit_crit_edge, label %cleanup.i103.while.body.i108_crit_edge

cleanup.i103.while.body.i108_crit_edge:           ; preds = %cleanup.i103
  br label %while.body.i108

cleanup.i103.bm1880_clk_register_composites.exit_crit_edge: ; preds = %cleanup.i103
  call void @__sanitizer_cov_trace_pc() #9
  br label %bm1880_clk_register_composites.exit

for.inc.i104:                                     ; preds = %bm1880_clk_register_composite.exit.i
  %222 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %arrayidx.i, align 4
  %arrayidx5.i = getelementptr [0 x ptr], ptr %hws, i32 0, i32 %223
  %224 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store ptr %retval.0.i.i, ptr %arrayidx5.i, align 4
  %inc.i = add nuw nsw i32 %i.09.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 23
  br i1 %exitcond.not.i, label %for.inc.i104.bm1880_clk_register_composites.exit_crit_edge, label %for.inc.i104.for.body.i_crit_edge

for.inc.i104.for.body.i_crit_edge:                ; preds = %for.inc.i104
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i104.bm1880_clk_register_composites.exit_crit_edge: ; preds = %for.inc.i104
  call void @__sanitizer_cov_trace_pc() #9
  br label %bm1880_clk_register_composites.exit

while.body.i108:                                  ; preds = %while.body.i108.while.body.i108_crit_edge, %cleanup.i103.while.body.i108_crit_edge
  %i.111.i = phi i32 [ %dec.i105, %while.body.i108.while.body.i108_crit_edge ], [ %i.09.i, %cleanup.i103.while.body.i108_crit_edge ]
  %dec.i105 = add nsw i32 %i.111.i, -1
  %arrayidx8.i = getelementptr %struct.bm1880_composite_clock, ptr @bm1880_composite_clks, i32 %dec.i105
  %225 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %arrayidx8.i, align 4
  %arrayidx10.i106 = getelementptr [0 x ptr], ptr %hws, i32 0, i32 %226
  %227 = ptrtoint ptr %arrayidx10.i106 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %arrayidx10.i106, align 4
  call void @clk_hw_unregister_composite(ptr noundef %228) #7
  %tobool.not.i107 = icmp eq i32 %dec.i105, 0
  br i1 %tobool.not.i107, label %while.body.i108.bm1880_clk_register_composites.exit_crit_edge, label %while.body.i108.while.body.i108_crit_edge

while.body.i108.while.body.i108_crit_edge:        ; preds = %while.body.i108
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i108

while.body.i108.bm1880_clk_register_composites.exit_crit_edge: ; preds = %while.body.i108
  call void @__sanitizer_cov_trace_pc() #9
  br label %bm1880_clk_register_composites.exit

bm1880_clk_register_composites.exit:              ; preds = %while.body.i108.bm1880_clk_register_composites.exit_crit_edge, %for.inc.i104.bm1880_clk_register_composites.exit_crit_edge, %cleanup.i103.bm1880_clk_register_composites.exit_crit_edge
  %229 = ptrtoint ptr %sys_base18 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %sys_base18, align 4
  br label %for.body.i115

for.body.i115:                                    ; preds = %if.end.i119.for.body.i115_crit_edge, %bm1880_clk_register_composites.exit
  %i.03.i = phi i32 [ 0, %bm1880_clk_register_composites.exit ], [ %inc.i117, %if.end.i119.for.body.i115_crit_edge ]
  %name.i111 = getelementptr %struct.bm1880_gate_clock, ptr @bm1880_gate_clks, i32 %i.03.i, i32 1
  %231 = ptrtoint ptr %name.i111 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %name.i111, align 4
  %parent.i = getelementptr %struct.bm1880_gate_clock, ptr @bm1880_gate_clks, i32 %i.03.i, i32 2
  %233 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %parent.i, align 4
  %flags.i = getelementptr %struct.bm1880_gate_clock, ptr @bm1880_gate_clks, i32 %i.03.i, i32 5
  %235 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load i32, ptr %flags.i, align 4
  %gate_reg.i = getelementptr %struct.bm1880_gate_clock, ptr @bm1880_gate_clks, i32 %i.03.i, i32 3
  %237 = ptrtoint ptr %gate_reg.i to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %gate_reg.i, align 4
  %add.ptr.i112 = getelementptr i8, ptr %230, i32 %238
  %gate_shift.i = getelementptr %struct.bm1880_gate_clock, ptr @bm1880_gate_clks, i32 %i.03.i, i32 4
  %239 = ptrtoint ptr %gate_shift.i to i32
  call void @__asan_load1_noabort(i32 %239)
  %240 = load i8, ptr %gate_shift.i, align 4
  %call.i113 = call ptr @__clk_hw_register_gate(ptr noundef null, ptr noundef null, ptr noundef %232, ptr noundef %234, ptr noundef null, ptr noundef null, i32 noundef %236, ptr noundef %add.ptr.i112, i8 noundef zeroext %240, i8 noundef zeroext 0, ptr noundef nonnull @bm1880_clk_lock) #7
  %cmp.i.i114 = icmp ugt ptr %call.i113, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i114, label %do.end.i, label %if.end.i119

do.end.i:                                         ; preds = %for.body.i115
  %call9.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.65, ptr noundef %232) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.03.i)
  %tobool.not4.i = icmp eq i32 %i.03.i, 0
  br i1 %tobool.not4.i, label %do.end.i.bm1880_clk_register_gate.exit_crit_edge, label %do.end.i.while.body.i122_crit_edge

do.end.i.while.body.i122_crit_edge:               ; preds = %do.end.i
  br label %while.body.i122

do.end.i.bm1880_clk_register_gate.exit_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %bm1880_clk_register_gate.exit

if.end.i119:                                      ; preds = %for.body.i115
  %arrayidx.i116 = getelementptr %struct.bm1880_gate_clock, ptr @bm1880_gate_clks, i32 %i.03.i
  %241 = ptrtoint ptr %arrayidx.i116 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %arrayidx.i116, align 4
  %arrayidx11.i = getelementptr [0 x ptr], ptr %hws, i32 0, i32 %242
  %243 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store4_noabort(i32 %243)
  store ptr %call.i113, ptr %arrayidx11.i, align 4
  %inc.i117 = add nuw nsw i32 %i.03.i, 1
  %exitcond.not.i118 = icmp eq i32 %inc.i117, 31
  br i1 %exitcond.not.i118, label %if.end.i119.bm1880_clk_register_gate.exit_crit_edge, label %if.end.i119.for.body.i115_crit_edge

if.end.i119.for.body.i115_crit_edge:              ; preds = %if.end.i119
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i115

if.end.i119.bm1880_clk_register_gate.exit_crit_edge: ; preds = %if.end.i119
  call void @__sanitizer_cov_trace_pc() #9
  br label %bm1880_clk_register_gate.exit

while.body.i122:                                  ; preds = %while.body.i122.while.body.i122_crit_edge, %do.end.i.while.body.i122_crit_edge
  %i.15.i = phi i32 [ %dec.i120, %while.body.i122.while.body.i122_crit_edge ], [ %i.03.i, %do.end.i.while.body.i122_crit_edge ]
  %dec.i120 = add nsw i32 %i.15.i, -1
  %arrayidx14.i = getelementptr %struct.bm1880_gate_clock, ptr @bm1880_gate_clks, i32 %dec.i120
  %244 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %arrayidx14.i, align 4
  %arrayidx16.i = getelementptr [0 x ptr], ptr %hws, i32 0, i32 %245
  %246 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %arrayidx16.i, align 4
  call void @clk_hw_unregister_gate(ptr noundef %247) #7
  %tobool.not.i121 = icmp eq i32 %dec.i120, 0
  br i1 %tobool.not.i121, label %while.body.i122.bm1880_clk_register_gate.exit_crit_edge, label %while.body.i122.while.body.i122_crit_edge

while.body.i122.while.body.i122_crit_edge:        ; preds = %while.body.i122
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i122

while.body.i122.bm1880_clk_register_gate.exit_crit_edge: ; preds = %while.body.i122
  call void @__sanitizer_cov_trace_pc() #9
  br label %bm1880_clk_register_gate.exit

bm1880_clk_register_gate.exit:                    ; preds = %while.body.i122.bm1880_clk_register_gate.exit_crit_edge, %if.end.i119.bm1880_clk_register_gate.exit_crit_edge, %do.end.i.bm1880_clk_register_gate.exit_crit_edge
  %call27 = call i32 @devm_of_clk_add_hw_provider(ptr noundef %dev1, ptr noundef nonnull @of_clk_hw_onecell_get, ptr noundef %hw_data20) #7
  br label %cleanup

cleanup:                                          ; preds = %bm1880_clk_register_gate.exit, %if.end12.cleanup_crit_edge, %if.then10, %if.then
  %retval.0 = phi i32 [ %0, %if.then ], [ %1, %if.then10 ], [ %call27, %bm1880_clk_register_gate.exit ], [ -12, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_hw_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bm1880_pll_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr i8, ptr %hw, i32 -4
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %reg = getelementptr i8, ptr %hw, i32 -12
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 %3
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #7, !srcloc !223
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !224
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  %shr.i = lshr i32 %5, 16
  %and.i = and i32 %shr.i, 4095
  %mul.i = mul i32 %and.i, %parent_rate
  %shr2.i = lshr i32 %5, 8
  %and3.i = and i32 %shr2.i, 7
  %and1.i = and i32 %5, 31
  %mul6.i = mul nuw nsw i32 %and3.i, %and1.i
  %shr4.i = lshr i32 %5, 12
  %and5.i = and i32 %shr4.i, 7
  %mul7.i = mul nuw nsw i32 %mul6.i, %and5.i
  %div184.i = udiv i32 %mul.i, %mul7.i
  ret i32 %div184.i
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bm1880_clk_div_recalc_rate(ptr noundef %hw, i32 noundef %parent_rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr i8, ptr %hw, i32 -8
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %reg = getelementptr i8, ptr %hw, i32 -28
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg, align 4
  %add.ptr2 = getelementptr i8, ptr %1, i32 %3
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #7, !srcloc !223
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !225
  %5 = and i32 %4, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %initval = getelementptr i8, ptr %hw, i32 -20
  %6 = ptrtoint ptr %initval to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %initval, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #7, !srcloc !223
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !226
  %shift = getelementptr i8, ptr %hw, i32 -24
  %10 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %shift, align 4
  %conv = zext i8 %11 to i32
  %shr = lshr i32 %9, %conv
  %width = getelementptr i8, ptr %hw, i32 -23
  %12 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %width, align 1
  %conv10 = zext i8 %13 to i32
  %notmask = shl nsw i32 -1, %conv10
  %sub = xor i32 %notmask, -1
  %and11 = and i32 %shr, %sub
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %val.0 = phi i32 [ %and11, %if.else ], [ %7, %if.then ]
  %table = getelementptr i8, ptr %hw, i32 -16
  %14 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %table, align 4
  %flags = getelementptr i8, ptr %hw, i32 -12
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 4
  %width12 = getelementptr i8, ptr %hw, i32 -23
  %18 = ptrtoint ptr %width12 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %width12, align 1
  %conv13 = zext i8 %19 to i32
  %call14 = tail call i32 @divider_recalc_rate(ptr noundef %hw, i32 noundef %parent_rate, i32 noundef %val.0, ptr noundef %15, i32 noundef %17, i32 noundef %conv13) #7
  ret i32 %call14
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bm1880_clk_div_round_rate(ptr noundef %hw, i32 noundef %rate, ptr noundef %prate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr i8, ptr %hw, i32 -12
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flags, align 4
  %and = and i32 %1, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %base = getelementptr i8, ptr %hw, i32 -8
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %reg = getelementptr i8, ptr %hw, i32 -28
  %4 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %reg, align 4
  %add.ptr2 = getelementptr i8, ptr %3, i32 %5
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #7, !srcloc !223
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !227
  %shift = getelementptr i8, ptr %hw, i32 -24
  %8 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %shift, align 4
  %conv = zext i8 %9 to i32
  %shr = lshr i32 %7, %conv
  %width = getelementptr i8, ptr %hw, i32 -23
  %10 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %width, align 1
  %conv5 = zext i8 %11 to i32
  %notmask = shl nsw i32 -1, %conv5
  %sub = xor i32 %notmask, -1
  %and6 = and i32 %shr, %sub
  %table = getelementptr i8, ptr %hw, i32 -16
  %12 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %table, align 4
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %call.i = tail call ptr @clk_hw_get_parent(ptr noundef %hw) #7
  %call1.i = tail call i32 @divider_ro_round_rate_parent(ptr noundef %hw, ptr noundef %call.i, i32 noundef %rate, ptr noundef %prate, ptr noundef %13, i8 noundef zeroext %11, i32 noundef %15, i32 noundef %and6) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %table10 = getelementptr i8, ptr %hw, i32 -16
  %16 = ptrtoint ptr %table10 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %table10, align 4
  %width11 = getelementptr i8, ptr %hw, i32 -23
  %18 = ptrtoint ptr %width11 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %width11, align 1
  %call.i31 = tail call ptr @clk_hw_get_parent(ptr noundef %hw) #7
  %call1.i32 = tail call i32 @divider_round_rate_parent(ptr noundef %hw, ptr noundef %call.i31, i32 noundef %rate, ptr noundef %prate, ptr noundef %17, i8 noundef zeroext %19, i32 noundef %1) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %retval.0 = phi i32 [ %call1.i, %if.then ], [ %call1.i32, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bm1880_clk_div_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr i8, ptr %hw, i32 -8
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %reg = getelementptr i8, ptr %hw, i32 -28
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg, align 4
  %add.ptr2 = getelementptr i8, ptr %1, i32 %3
  %table = getelementptr i8, ptr %hw, i32 -16
  %4 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %table, align 4
  %width = getelementptr i8, ptr %hw, i32 -23
  %6 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %width, align 1
  %flags4 = getelementptr i8, ptr %hw, i32 -12
  %8 = ptrtoint ptr %flags4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags4, align 4
  %call = tail call i32 @divider_get_val(i32 noundef %rate, i32 noundef %parent_rate, ptr noundef %5, i8 noundef zeroext %7, i32 noundef %9) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr i8, ptr %hw, i32 -4
  %10 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %lock, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %if.end.if.end14_crit_edge, label %do.body6

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

do.body6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %11) #7
  br label %if.end14

if.end14:                                         ; preds = %do.body6, %if.end.if.end14_crit_edge
  %flags.0 = phi i32 [ %call11, %do.body6 ], [ 0, %if.end.if.end14_crit_edge ]
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #7, !srcloc !223
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !228
  %14 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %width, align 1
  %conv19 = zext i8 %15 to i32
  %notmask = shl nsw i32 -1, %conv19
  %sub = xor i32 %notmask, -1
  %shift = getelementptr i8, ptr %hw, i32 -24
  %16 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %shift, align 4
  %conv21 = zext i8 %17 to i32
  %shl22 = shl i32 %sub, %conv21
  %neg = xor i32 %shl22, -1
  %and = and i32 %13, %neg
  %shl25 = shl i32 %call, %conv21
  %or = or i32 %and, %shl25
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !229
  tail call void @arm_heavy_mb() #7
  %18 = tail call i32 @llvm.bswap.i32(i32 %or)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 %18) #7, !srcloc !230
  %19 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %lock, align 4
  %tobool30.not = icmp eq ptr %20, null
  br i1 %tobool30.not, label %if.end14.cleanup_crit_edge, label %if.then31

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then31:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %20, i32 noundef %flags.0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %if.end14.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end14.cleanup_crit_edge ], [ 0, %if.then31 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @divider_recalc_rate(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @divider_ro_round_rate_parent(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @divider_round_rate_parent(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @divider_get_val(i32 noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_mux(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_hw_unregister_mux(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_hw_unregister_composite(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_register_composite(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_gate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_hw_unregister_gate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 122)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 122)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !39, !40, !42, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !70, !71, !73, !75, !77, !79, !81, !83, !84, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !146, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211}
!llvm.module.flags = !{!213, !214, !215, !216, !217, !218, !219, !220}
!llvm.ident = !{!221}

!0 = !{ptr @__initcall__kmod_clk_bm1880__183_948_bm1880_clk_driver_init6, !1, !"__initcall__kmod_clk_bm1880__183_948_bm1880_clk_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/clk/clk-bm1880.c", i32 948, i32 1}
!2 = !{ptr @__exitcall_bm1880_clk_driver_exit, !1, !"__exitcall_bm1880_clk_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author184, !4, !"__UNIQUE_ID_author184", i1 false, i1 false}
!4 = !{!"../drivers/clk/clk-bm1880.c", i32 950, i32 1}
!5 = !{ptr @__UNIQUE_ID_description185, !6, !"__UNIQUE_ID_description185", i1 false, i1 false}
!6 = !{!"../drivers/clk/clk-bm1880.c", i32 951, i32 1}
!7 = !{ptr @__UNIQUE_ID_file186, !8, !"__UNIQUE_ID_file186", i1 false, i1 false}
!8 = !{!"../drivers/clk/clk-bm1880.c", i32 952, i32 1}
!9 = !{ptr @__UNIQUE_ID_license187, !8, !"__UNIQUE_ID_license187", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/clk-bm1880.c", i32 943, i32 11}
!12 = !{ptr @bm1880_clk_driver, !13, !"bm1880_clk_driver", i1 false, i1 false}
!13 = !{!"../drivers/clk/clk-bm1880.c", i32 941, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/clk-bm1880.c", i32 538, i32 4}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @bm1880_clk_register_plls._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @bm1880_clk_register_plls._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/clk-bm1880.c", i32 206, i32 2}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clk/clk-bm1880.c", i32 208, i32 2}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clk/clk-bm1880.c", i32 210, i32 2}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/clk-bm1880.c", i32 212, i32 2}
!28 = !{ptr @bm1880_pll_clks, !29, !"bm1880_pll_clks", i1 false, i1 false}
!29 = !{!"../drivers/clk/clk-bm1880.c", i32 205, i32 35}
!30 = !{ptr @bm1880_pll_ops, !31, !"bm1880_pll_ops", i1 false, i1 false}
!31 = !{!"../drivers/clk/clk-bm1880.c", i32 505, i32 29}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clk/clk-bm1880.c", i32 198, i32 15}
!34 = !{ptr @bm1880_pll_parent, !35, !"bm1880_pll_parent", i1 false, i1 false}
!35 = !{!"../drivers/clk/clk-bm1880.c", i32 197, i32 31}
!36 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clk/clk-bm1880.c", i32 703, i32 4}
!38 = !{ptr @bm1880_clk_register_divs._entry, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @bm1880_clk_register_divs._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/clk/clk-bm1880.c", i32 60, i32 8}
!42 = !{ptr @bm1880_clk_lock, !41, !"bm1880_clk_lock", i1 false, i1 false}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/clk/clk-bm1880.c", i32 372, i32 2}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/clk/clk-bm1880.c", i32 374, i32 2}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/clk/clk-bm1880.c", i32 376, i32 2}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/clk/clk-bm1880.c", i32 378, i32 2}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/clk/clk-bm1880.c", i32 381, i32 2}
!53 = !{ptr @.str.29, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/clk/clk-bm1880.c", i32 384, i32 2}
!55 = !{ptr @.str.32, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/clk/clk-bm1880.c", i32 387, i32 2}
!57 = !{ptr @.str.35, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/clk/clk-bm1880.c", i32 390, i32 2}
!59 = !{ptr @bm1880_div_clks, !60, !"bm1880_div_clks", i1 false, i1 false}
!60 = !{!"../drivers/clk/clk-bm1880.c", i32 371, i32 35}
!61 = !{ptr @bm1880_div_table_0, !62, !"bm1880_div_table_0", i1 false, i1 false}
!62 = !{!"../drivers/clk/clk-bm1880.c", i32 306, i32 35}
!63 = !{ptr @bm1880_clk_div_ops, !64, !"bm1880_clk_div_ops", i1 false, i1 false}
!64 = !{!"../drivers/clk/clk-bm1880.c", i32 666, i32 29}
!65 = !{ptr @bm1880_div_table_1, !66, !"bm1880_div_table_1", i1 false, i1 false}
!66 = !{!"../drivers/clk/clk-bm1880.c", i32 318, i32 35}
!67 = !{ptr @.str.38, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/clk/clk-bm1880.c", i32 572, i32 4}
!69 = !{ptr @bm1880_clk_register_mux._entry, !68, !"_entry", i1 false, i1 false}
!70 = !{ptr @bm1880_clk_register_mux._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.39, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/clk/clk-bm1880.c", i32 300, i32 23}
!73 = !{ptr @.str.40, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/clk/clk-bm1880.c", i32 302, i32 25}
!75 = distinct !{null, !76, !"bm1880_mux_clks", i1 false, i1 false}
!76 = !{!"../drivers/clk/clk-bm1880.c", i32 299, i32 38}
!77 = !{ptr @clk_rv_parents, !78, !"clk_rv_parents", i1 false, i1 false}
!78 = !{!"../drivers/clk/clk-bm1880.c", i32 295, i32 27}
!79 = !{ptr @clk_axi6_parents, !80, !"clk_axi6_parents", i1 false, i1 false}
!80 = !{!"../drivers/clk/clk-bm1880.c", i32 297, i32 27}
!81 = !{ptr @.str.41, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/clk/clk-bm1880.c", i32 857, i32 4}
!83 = !{ptr @bm1880_clk_register_composites._entry, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @bm1880_clk_register_composites._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/clk/clk-bm1880.c", i32 403, i32 2}
!87 = !{ptr @.str.43, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/clk/clk-bm1880.c", i32 406, i32 2}
!89 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/clk/clk-bm1880.c", i32 409, i32 2}
!91 = !{ptr @.str.45, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/clk/clk-bm1880.c", i32 412, i32 2}
!93 = !{ptr @.str.46, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/clk/clk-bm1880.c", i32 415, i32 2}
!95 = !{ptr @.str.47, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/clk/clk-bm1880.c", i32 418, i32 2}
!97 = !{ptr @.str.48, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/clk/clk-bm1880.c", i32 421, i32 2}
!99 = !{ptr @.str.49, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/clk/clk-bm1880.c", i32 424, i32 2}
!101 = !{ptr @.str.50, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/clk/clk-bm1880.c", i32 427, i32 2}
!103 = !{ptr @.str.51, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/clk/clk-bm1880.c", i32 431, i32 2}
!105 = !{ptr @.str.52, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/clk/clk-bm1880.c", i32 434, i32 2}
!107 = !{ptr @.str.53, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/clk/clk-bm1880.c", i32 437, i32 2}
!109 = !{ptr @.str.54, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/clk/clk-bm1880.c", i32 440, i32 2}
!111 = !{ptr @.str.55, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/clk/clk-bm1880.c", i32 443, i32 2}
!113 = !{ptr @.str.56, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/clk/clk-bm1880.c", i32 446, i32 2}
!115 = !{ptr @.str.57, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/clk/clk-bm1880.c", i32 449, i32 2}
!117 = !{ptr @.str.58, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/clk/clk-bm1880.c", i32 452, i32 2}
!119 = !{ptr @.str.59, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/clk/clk-bm1880.c", i32 455, i32 2}
!121 = !{ptr @.str.60, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/clk/clk-bm1880.c", i32 458, i32 2}
!123 = !{ptr @.str.61, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/clk/clk-bm1880.c", i32 460, i32 2}
!125 = !{ptr @.str.62, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/clk/clk-bm1880.c", i32 463, i32 2}
!127 = !{ptr @.str.63, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/clk/clk-bm1880.c", i32 466, i32 2}
!129 = !{ptr @.str.64, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/clk/clk-bm1880.c", i32 469, i32 2}
!131 = !{ptr @bm1880_composite_clks, !132, !"bm1880_composite_clks", i1 false, i1 false}
!132 = !{!"../drivers/clk/clk-bm1880.c", i32 398, i32 38}
!133 = !{ptr @clk_a53_parents, !134, !"clk_a53_parents", i1 false, i1 false}
!134 = !{!"../drivers/clk/clk-bm1880.c", i32 294, i32 27}
!135 = !{ptr @bm1880_div_table_2, !136, !"bm1880_div_table_2", i1 false, i1 false}
!136 = !{!"../drivers/clk/clk-bm1880.c", i32 330, i32 35}
!137 = !{ptr @bm1880_div_table_4, !138, !"bm1880_div_table_4", i1 false, i1 false}
!138 = !{!"../drivers/clk/clk-bm1880.c", i32 354, i32 35}
!139 = !{ptr @bm1880_div_table_3, !140, !"bm1880_div_table_3", i1 false, i1 false}
!140 = !{!"../drivers/clk/clk-bm1880.c", i32 342, i32 35}
!141 = !{ptr @clk_axi1_parents, !142, !"clk_axi1_parents", i1 false, i1 false}
!142 = !{!"../drivers/clk/clk-bm1880.c", i32 296, i32 27}
!143 = !{ptr @.str.65, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/clk/clk-bm1880.c", i32 737, i32 4}
!145 = !{ptr @bm1880_clk_register_gate._entry, !144, !"_entry", i1 false, i1 false}
!146 = !{ptr @bm1880_clk_register_gate._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.66, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/clk/clk-bm1880.c", i32 221, i32 24}
!149 = !{ptr @.str.67, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/clk/clk-bm1880.c", i32 223, i32 25}
!151 = !{ptr @.str.68, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/clk/clk-bm1880.c", i32 229, i32 24}
!153 = !{ptr @.str.69, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/clk/clk-bm1880.c", i32 231, i32 26}
!155 = !{ptr @.str.70, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/clk/clk-bm1880.c", i32 233, i32 26}
!157 = !{ptr @.str.71, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/clk/clk-bm1880.c", i32 235, i32 24}
!159 = !{ptr @.str.72, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/clk/clk-bm1880.c", i32 237, i32 26}
!161 = !{ptr @.str.73, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/clk/clk-bm1880.c", i32 239, i32 26}
!163 = !{ptr @.str.74, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/clk/clk-bm1880.c", i32 241, i32 26}
!165 = !{ptr @.str.75, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/clk/clk-bm1880.c", i32 244, i32 25}
!167 = !{ptr @.str.76, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/clk/clk-bm1880.c", i32 246, i32 30}
!169 = !{ptr @.str.77, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/clk/clk-bm1880.c", i32 248, i32 27}
!171 = !{ptr @.str.78, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/clk/clk-bm1880.c", i32 250, i32 23}
!173 = !{ptr @.str.79, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/clk/clk-bm1880.c", i32 256, i32 25}
!175 = !{ptr @.str.80, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/clk/clk-bm1880.c", i32 258, i32 24}
!177 = !{ptr @.str.81, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/clk/clk-bm1880.c", i32 260, i32 24}
!179 = !{ptr @.str.82, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/clk/clk-bm1880.c", i32 262, i32 25}
!181 = !{ptr @.str.83, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/clk/clk-bm1880.c", i32 262, i32 41}
!183 = !{ptr @.str.84, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/clk/clk-bm1880.c", i32 264, i32 24}
!185 = !{ptr @.str.85, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/clk/clk-bm1880.c", i32 266, i32 23}
!187 = !{ptr @.str.86, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/clk/clk-bm1880.c", i32 268, i32 24}
!189 = !{ptr @.str.87, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/clk/clk-bm1880.c", i32 270, i32 19}
!191 = !{ptr @.str.88, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/clk/clk-bm1880.c", i32 272, i32 24}
!193 = !{ptr @.str.89, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/clk/clk-bm1880.c", i32 274, i32 26}
!195 = !{ptr @.str.90, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/clk/clk-bm1880.c", i32 276, i32 25}
!197 = !{ptr @.str.91, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/clk/clk-bm1880.c", i32 278, i32 24}
!199 = !{ptr @.str.92, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/clk/clk-bm1880.c", i32 280, i32 25}
!201 = !{ptr @.str.93, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/clk/clk-bm1880.c", i32 282, i32 24}
!203 = !{ptr @.str.94, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/clk/clk-bm1880.c", i32 284, i32 24}
!205 = !{ptr @.str.95, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/clk/clk-bm1880.c", i32 286, i32 26}
!207 = !{ptr @.str.96, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/clk/clk-bm1880.c", i32 288, i32 24}
!209 = !{ptr @bm1880_gate_clks, !210, !"bm1880_gate_clks", i1 false, i1 false}
!210 = !{!"../drivers/clk/clk-bm1880.c", i32 220, i32 39}
!211 = !{ptr @bm1880_of_match, !212, !"bm1880_of_match", i1 false, i1 false}
!212 = !{!"../drivers/clk/clk-bm1880.c", i32 935, i32 34}
!213 = !{i32 1, !"wchar_size", i32 2}
!214 = !{i32 1, !"min_enum_size", i32 4}
!215 = !{i32 8, !"branch-target-enforcement", i32 0}
!216 = !{i32 8, !"sign-return-address", i32 0}
!217 = !{i32 8, !"sign-return-address-all", i32 0}
!218 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!219 = !{i32 7, !"uwtable", i32 1}
!220 = !{i32 7, !"frame-pointer", i32 2}
!221 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!222 = !{!"auto-init"}
!223 = !{i64 4259841}
!224 = !{i64 2153008119}
!225 = !{i64 2153013641}
!226 = !{i64 2153014166}
!227 = !{i64 2153015983}
!228 = !{i64 2153018082}
!229 = !{i64 2153018319}
!230 = !{i64 4259423}
