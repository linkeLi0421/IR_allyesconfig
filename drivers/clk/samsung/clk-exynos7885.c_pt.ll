; ModuleID = '/llk/IR_all_yes/drivers/clk/samsung/clk-exynos7885.c_pt.bc'
source_filename = "../drivers/clk/samsung/clk-exynos7885.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.samsung_cmu_info = type { ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr }
%struct.samsung_pll_clock = type { i32, ptr, ptr, i32, i32, i32, i32, ptr }
%struct.samsung_mux_clock = type { i32, ptr, ptr, i8, i32, i32, i8, i8, i8 }
%struct.samsung_div_clock = type { i32, ptr, ptr, i32, i32, i8, i8, i8, ptr }
%struct.samsung_gate_clock = type { i32, ptr, ptr, i32, i32, i8, i8 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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

@__of_table_exynos7885_cmu_top = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos7885-cmu-top\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos7885_cmu_top_init }, section "__clk_of_table", align 4
@__of_table_exynos7885_cmu_peri = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos7885-cmu-peri\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @exynos7885_cmu_peri_init }, section "__clk_of_table", align 4
@__initcall__kmod_clk_exynos7885__170_597_exynos7885_cmu_init1 = internal global ptr @exynos7885_cmu_init, section ".initcall1.init", align 4
@top_cmu_info = internal constant %struct.samsung_cmu_info { ptr @top_pll_clks, i32 2, ptr @top_mux_clks, i32 12, ptr @top_div_clks, i32 19, ptr @top_gate_clks, i32 12, ptr null, i32 0, ptr null, i32 0, i32 46, ptr null, i32 0, ptr @top_clk_regs, i32 47, ptr null, i32 0, ptr null }, section ".init.rodata", align 4
@top_pll_clks = internal constant [2 x %struct.samsung_pll_clock] [%struct.samsung_pll_clock { i32 1, ptr @.str, ptr @.str.1, i32 64, i32 256, i32 0, i32 22, ptr null }, %struct.samsung_pll_clock { i32 2, ptr @.str.2, ptr @.str.1, i32 64, i32 288, i32 4, i32 22, ptr null }], section ".init.rodata", align 4
@top_mux_clks = internal constant [12 x %struct.samsung_mux_clock] [%struct.samsung_mux_clock { i32 10, ptr @.str.3, ptr @mout_core_bus_p, i8 4, i32 128, i32 4116, i8 0, i8 2, i8 0 }, %struct.samsung_mux_clock { i32 11, ptr @.str.4, ptr @mout_core_cci_p, i8 4, i32 128, i32 4120, i8 0, i8 2, i8 0 }, %struct.samsung_mux_clock { i32 12, ptr @.str.5, ptr @mout_core_g3d_p, i8 4, i32 128, i32 4124, i8 0, i8 2, i8 0 }, %struct.samsung_mux_clock { i32 19, ptr @.str.6, ptr @mout_peri_bus_p, i8 2, i32 128, i32 4184, i8 0, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 20, ptr @.str.7, ptr @mout_peri_spi0_p, i8 2, i32 128, i32 4188, i8 0, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 21, ptr @.str.8, ptr @mout_peri_spi1_p, i8 2, i32 128, i32 4192, i8 0, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 22, ptr @.str.9, ptr @mout_peri_uart0_p, i8 2, i32 128, i32 4196, i8 0, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 23, ptr @.str.10, ptr @mout_peri_uart1_p, i8 2, i32 128, i32 4200, i8 0, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 24, ptr @.str.11, ptr @mout_peri_uart2_p, i8 2, i32 128, i32 4204, i8 0, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 25, ptr @.str.12, ptr @mout_peri_usi0_p, i8 2, i32 128, i32 4208, i8 0, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 26, ptr @.str.13, ptr @mout_peri_usi1_p, i8 2, i32 128, i32 4212, i8 0, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 27, ptr @.str.14, ptr @mout_peri_usi2_p, i8 2, i32 128, i32 4216, i8 0, i8 1, i8 0 }], section ".init.rodata", align 4
@top_div_clks = internal constant [19 x %struct.samsung_div_clock] [%struct.samsung_div_clock { i32 3, ptr @.str.15, ptr @.str, i32 0, i32 6300, i8 0, i8 1, i8 0, ptr null }, %struct.samsung_div_clock { i32 4, ptr @.str.17, ptr @.str, i32 0, i32 6304, i8 0, i8 2, i8 0, ptr null }, %struct.samsung_div_clock { i32 5, ptr @.str.18, ptr @.str, i32 0, i32 6308, i8 0, i8 1, i8 0, ptr null }, %struct.samsung_div_clock { i32 6, ptr @.str.20, ptr @.str, i32 0, i32 6312, i8 0, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 7, ptr @.str.16, ptr @.str.2, i32 0, i32 6316, i8 0, i8 1, i8 0, ptr null }, %struct.samsung_div_clock { i32 8, ptr @.str.21, ptr @.str.2, i32 0, i32 6320, i8 0, i8 2, i8 0, ptr null }, %struct.samsung_div_clock { i32 9, ptr @.str.19, ptr @.str.2, i32 0, i32 6324, i8 0, i8 1, i8 0, ptr null }, %struct.samsung_div_clock { i32 13, ptr @.str.22, ptr @.str.23, i32 0, i32 6172, i8 0, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 14, ptr @.str.24, ptr @.str.25, i32 0, i32 6176, i8 0, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 15, ptr @.str.26, ptr @.str.27, i32 0, i32 6180, i8 0, i8 3, i8 0, ptr null }, %struct.samsung_div_clock { i32 28, ptr @.str.28, ptr @.str.29, i32 0, i32 6260, i8 0, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 29, ptr @.str.30, ptr @.str.31, i32 0, i32 6264, i8 0, i8 6, i8 0, ptr null }, %struct.samsung_div_clock { i32 30, ptr @.str.32, ptr @.str.33, i32 0, i32 6268, i8 0, i8 6, i8 0, ptr null }, %struct.samsung_div_clock { i32 31, ptr @.str.34, ptr @.str.35, i32 0, i32 6272, i8 0, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 32, ptr @.str.36, ptr @.str.37, i32 0, i32 6276, i8 0, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 33, ptr @.str.38, ptr @.str.39, i32 0, i32 6280, i8 0, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 34, ptr @.str.40, ptr @.str.41, i32 0, i32 6284, i8 0, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 35, ptr @.str.42, ptr @.str.43, i32 0, i32 6288, i8 0, i8 4, i8 0, ptr null }, %struct.samsung_div_clock { i32 36, ptr @.str.44, ptr @.str.45, i32 0, i32 6292, i8 0, i8 4, i8 0, ptr null }], section ".init.rodata", align 4
@top_gate_clks = internal constant [12 x %struct.samsung_gate_clock] [%struct.samsung_gate_clock { i32 16, ptr @.str.23, ptr @.str.3, i32 0, i32 8220, i8 21, i8 0 }, %struct.samsung_gate_clock { i32 17, ptr @.str.25, ptr @.str.4, i32 0, i32 8224, i8 21, i8 0 }, %struct.samsung_gate_clock { i32 18, ptr @.str.27, ptr @.str.5, i32 0, i32 8228, i8 21, i8 0 }, %struct.samsung_gate_clock { i32 37, ptr @.str.29, ptr @.str.6, i32 0, i32 8316, i8 21, i8 0 }, %struct.samsung_gate_clock { i32 38, ptr @.str.31, ptr @.str.7, i32 0, i32 8320, i8 21, i8 0 }, %struct.samsung_gate_clock { i32 39, ptr @.str.33, ptr @.str.8, i32 0, i32 8324, i8 21, i8 0 }, %struct.samsung_gate_clock { i32 40, ptr @.str.35, ptr @.str.9, i32 0, i32 8328, i8 21, i8 0 }, %struct.samsung_gate_clock { i32 41, ptr @.str.37, ptr @.str.10, i32 0, i32 8196, i8 21, i8 0 }, %struct.samsung_gate_clock { i32 42, ptr @.str.39, ptr @.str.11, i32 0, i32 8332, i8 21, i8 0 }, %struct.samsung_gate_clock { i32 43, ptr @.str.41, ptr @.str.12, i32 0, i32 8336, i8 21, i8 0 }, %struct.samsung_gate_clock { i32 44, ptr @.str.43, ptr @.str.13, i32 0, i32 8340, i8 21, i8 0 }, %struct.samsung_gate_clock { i32 45, ptr @.str.45, ptr @.str.14, i32 0, i32 8344, i8 21, i8 0 }], section ".init.rodata", align 4
@top_clk_regs = internal constant [47 x i32] [i32 0, i32 4, i32 256, i32 288, i32 4116, i32 4120, i32 4124, i32 4184, i32 4188, i32 4192, i32 4196, i32 4200, i32 4204, i32 4208, i32 4212, i32 4216, i32 6172, i32 6176, i32 6180, i32 6260, i32 6264, i32 6268, i32 6272, i32 6276, i32 6280, i32 6284, i32 6288, i32 6292, i32 6300, i32 6304, i32 6308, i32 6312, i32 6316, i32 6320, i32 6324, i32 8196, i32 8220, i32 8224, i32 8228, i32 8316, i32 8320, i32 8324, i32 8328, i32 8332, i32 8336, i32 8340, i32 8344], section ".init.rodata", align 4
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fout_shared0_pll\00", [47 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"oscclk\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"fout_shared1_pll\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mout_core_bus\00", [18 x i8] zeroinitializer }, align 32
@mout_core_bus_p = internal constant [4 x ptr] [ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.17], section ".init.rodata", align 4
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mout_core_cci\00", [18 x i8] zeroinitializer }, align 32
@mout_core_cci_p = internal constant [4 x ptr] [ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.17], section ".init.rodata", align 4
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mout_core_g3d\00", [18 x i8] zeroinitializer }, align 32
@mout_core_g3d_p = internal constant [4 x ptr] [ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.17], section ".init.rodata", align 4
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mout_peri_bus\00", [18 x i8] zeroinitializer }, align 32
@mout_peri_bus_p = internal constant [2 x ptr] [ptr @.str.18, ptr @.str.19], section ".init.rodata", align 4
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mout_peri_spi0\00", [17 x i8] zeroinitializer }, align 32
@mout_peri_spi0_p = internal constant [2 x ptr] [ptr @.str.1, ptr @.str.18], section ".init.rodata", align 4
@.str.8 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mout_peri_spi1\00", [17 x i8] zeroinitializer }, align 32
@mout_peri_spi1_p = internal constant [2 x ptr] [ptr @.str.1, ptr @.str.18], section ".init.rodata", align 4
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mout_peri_uart0\00", [16 x i8] zeroinitializer }, align 32
@mout_peri_uart0_p = internal constant [2 x ptr] [ptr @.str.1, ptr @.str.18], section ".init.rodata", align 4
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mout_peri_uart1\00", [16 x i8] zeroinitializer }, align 32
@mout_peri_uart1_p = internal constant [2 x ptr] [ptr @.str.1, ptr @.str.18], section ".init.rodata", align 4
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mout_peri_uart2\00", [16 x i8] zeroinitializer }, align 32
@mout_peri_uart2_p = internal constant [2 x ptr] [ptr @.str.1, ptr @.str.18], section ".init.rodata", align 4
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mout_peri_usi0\00", [17 x i8] zeroinitializer }, align 32
@mout_peri_usi0_p = internal constant [2 x ptr] [ptr @.str.1, ptr @.str.18], section ".init.rodata", align 4
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mout_peri_usi1\00", [17 x i8] zeroinitializer }, align 32
@mout_peri_usi1_p = internal constant [2 x ptr] [ptr @.str.1, ptr @.str.18], section ".init.rodata", align 4
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mout_peri_usi2\00", [17 x i8] zeroinitializer }, align 32
@mout_peri_usi2_p = internal constant [2 x ptr] [ptr @.str.1, ptr @.str.18], section ".init.rodata", align 4
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dout_shared0_div2\00", [46 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dout_shared1_div2\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dout_shared0_div3\00", [46 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dout_shared0_div4\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dout_shared1_div4\00", [46 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dout_shared0_div5\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dout_shared1_div3\00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dout_core_bus\00", [18 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gout_core_bus\00", [18 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dout_core_cci\00", [18 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gout_core_cci\00", [18 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dout_core_g3d\00", [18 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gout_core_g3d\00", [18 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dout_peri_bus\00", [18 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gout_peri_bus\00", [18 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dout_peri_spi0\00", [17 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gout_peri_spi0\00", [17 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dout_peri_spi1\00", [17 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gout_peri_spi1\00", [17 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dout_peri_uart0\00", [16 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gout_peri_uart0\00", [16 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dout_peri_uart1\00", [16 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gout_peri_uart1\00", [16 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dout_peri_uart2\00", [16 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gout_peri_uart2\00", [16 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dout_peri_usi0\00", [17 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gout_peri_usi0\00", [17 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dout_peri_usi1\00", [17 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gout_peri_usi1\00", [17 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dout_peri_usi2\00", [17 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gout_peri_usi2\00", [17 x i8] zeroinitializer }, align 32
@peri_cmu_info = internal constant %struct.samsung_cmu_info { ptr null, i32 0, ptr @peri_mux_clks, i32 9, ptr null, i32 0, ptr @peri_gate_clks, i32 34, ptr null, i32 0, ptr null, i32 0, i32 44, ptr null, i32 0, ptr @peri_clk_regs, i32 43, ptr null, i32 0, ptr @.str.28 }, section ".init.rodata", align 4
@peri_mux_clks = internal constant [9 x %struct.samsung_mux_clock] [%struct.samsung_mux_clock { i32 1, ptr @.str.46, ptr @mout_peri_bus_user_p, i8 2, i32 128, i32 256, i8 4, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 2, ptr @.str.47, ptr @mout_peri_spi0_user_p, i8 2, i32 128, i32 288, i8 4, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 3, ptr @.str.48, ptr @mout_peri_spi1_user_p, i8 2, i32 128, i32 320, i8 4, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 4, ptr @.str.49, ptr @mout_peri_uart0_user_p, i8 2, i32 128, i32 352, i8 4, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 5, ptr @.str.50, ptr @mout_peri_uart1_user_p, i8 2, i32 128, i32 384, i8 4, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 6, ptr @.str.51, ptr @mout_peri_uart2_user_p, i8 2, i32 128, i32 416, i8 4, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 7, ptr @.str.52, ptr @mout_peri_usi0_user_p, i8 2, i32 128, i32 448, i8 4, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 8, ptr @.str.53, ptr @mout_peri_usi1_user_p, i8 2, i32 128, i32 480, i8 4, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 9, ptr @.str.54, ptr @mout_peri_usi2_user_p, i8 2, i32 128, i32 512, i8 4, i8 1, i8 0 }], section ".init.rodata", align 4
@peri_gate_clks = internal constant [34 x %struct.samsung_gate_clock] [%struct.samsung_gate_clock { i32 10, ptr @.str.55, ptr @.str.46, i32 8, i32 8228, i8 21, i8 0 }, %struct.samsung_gate_clock { i32 11, ptr @.str.56, ptr @.str.46, i32 0, i32 8232, i8 21, i8 0 }, %struct.samsung_gate_clock { i32 12, ptr @.str.57, ptr @.str.46, i32 0, i32 8236, i8 21, i8 0 }, %struct.samsung_gate_clock { i32 13, ptr @.str.58, ptr @.str.46, i32 0, i32 8240, i8 21, i8 0 }, %struct.samsung_gate_clock { i32 14, ptr @.str.59, ptr @.str.46, i32 0, i32 8244, i8 21, i8 0 }, %struct.samsung_gate_clock { i32 15, ptr @.str.60, ptr @.str.46, i32 0, i32 8248, i8 21, i8 0 }, %struct.samsung_gate_clock { i32 16, ptr @.str.61, ptr @.str.46, i32 0, i32 8252, i8 21, i8 0 }, %struct.samsung_gate_clock { i32 17, ptr @.str.62, ptr @.str.46, i32 0, i32 8256, i8 21, i8 0 }, %struct.samsung_gate_clock { i32 18, ptr @.str.63, ptr @.str.46, i32 0, i32 8260, i8 21, i8 0 }, %struct.samsung_gate_clock { i32 19, ptr @.str.64, ptr @.str.46, i32 0, i32 8264, i8 21, i8 0 }, %struct.samsung_gate_clock { i32 20, ptr @.str.65, ptr @.str.46, i32 0, i32 8268, i8 21, i8 0 }, %struct.samsung_gate_clock { i32 21, ptr @.str.66, ptr @.str.46, i32 0, i32 8272, i8 21, i8 0 }, %struct.samsung_gate_clock { i32 22, ptr @.str.67, ptr @.str.46, i32 0, i32 8276, i8 21, i8 0 }, %struct.samsung_gate_clock { i32 23, ptr @.str.68, ptr @.str.46, i32 0, i32 8280, i8 21, i8 0 }, %struct.samsung_gate_clock { i32 24, ptr @.str.69, ptr @.str.46, i32 0, i32 8284, i8 21, i8 0 }, %struct.samsung_gate_clock { i32 25, ptr @.str.70, ptr @.str.47, i32 0, i32 8288, i8 21, i8 0 }, %struct.samsung_gate_clock { i32 26, ptr @.str.71, ptr @.str.46, i32 0, i32 8292, i8 21, i8 0 }, %struct.samsung_gate_clock { i32 27, ptr @.str.72, ptr @.str.48, i32 0, i32 8296, i8 21, i8 0 }, %struct.samsung_gate_clock { i32 28, ptr @.str.73, ptr @.str.49, i32 0, i32 8300, i8 21, i8 0 }, %struct.samsung_gate_clock { i32 29, ptr @.str.74, ptr @.str.46, i32 0, i32 8304, i8 21, i8 0 }, %struct.samsung_gate_clock { i32 30, ptr @.str.75, ptr @.str.50, i32 0, i32 8308, i8 21, i8 0 }, %struct.samsung_gate_clock { i32 31, ptr @.str.76, ptr @.str.46, i32 0, i32 8312, i8 21, i8 0 }, %struct.samsung_gate_clock { i32 32, ptr @.str.77, ptr @.str.51, i32 0, i32 8316, i8 21, i8 0 }, %struct.samsung_gate_clock { i32 33, ptr @.str.78, ptr @.str.46, i32 0, i32 8320, i8 21, i8 0 }, %struct.samsung_gate_clock { i32 34, ptr @.str.79, ptr @.str.46, i32 0, i32 8324, i8 21, i8 0 }, %struct.samsung_gate_clock { i32 35, ptr @.str.80, ptr @.str.52, i32 0, i32 8328, i8 21, i8 0 }, %struct.samsung_gate_clock { i32 36, ptr @.str.81, ptr @.str.46, i32 0, i32 8332, i8 21, i8 0 }, %struct.samsung_gate_clock { i32 37, ptr @.str.82, ptr @.str.53, i32 0, i32 8336, i8 21, i8 0 }, %struct.samsung_gate_clock { i32 38, ptr @.str.83, ptr @.str.46, i32 0, i32 8340, i8 21, i8 0 }, %struct.samsung_gate_clock { i32 39, ptr @.str.84, ptr @.str.54, i32 0, i32 8344, i8 21, i8 0 }, %struct.samsung_gate_clock { i32 40, ptr @.str.85, ptr @.str.46, i32 0, i32 8352, i8 21, i8 0 }, %struct.samsung_gate_clock { i32 41, ptr @.str.86, ptr @.str.46, i32 0, i32 8368, i8 21, i8 0 }, %struct.samsung_gate_clock { i32 42, ptr @.str.87, ptr @.str.46, i32 0, i32 8372, i8 21, i8 0 }, %struct.samsung_gate_clock { i32 43, ptr @.str.88, ptr @.str.46, i32 0, i32 8376, i8 21, i8 0 }], section ".init.rodata", align 4
@peri_clk_regs = internal constant [43 x i32] [i32 256, i32 288, i32 320, i32 352, i32 384, i32 416, i32 448, i32 480, i32 512, i32 8228, i32 8232, i32 8236, i32 8240, i32 8244, i32 8248, i32 8252, i32 8256, i32 8260, i32 8264, i32 8268, i32 8272, i32 8276, i32 8280, i32 8284, i32 8288, i32 8292, i32 8296, i32 8300, i32 8304, i32 8308, i32 8312, i32 8316, i32 8320, i32 8324, i32 8328, i32 8332, i32 8336, i32 8340, i32 8344, i32 8352, i32 8368, i32 8372, i32 8376], section ".init.rodata", align 4
@.str.46 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mout_peri_bus_user\00", [45 x i8] zeroinitializer }, align 32
@mout_peri_bus_user_p = internal constant [2 x ptr] [ptr @.str.1, ptr @.str.28], section ".init.rodata", align 4
@.str.47 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mout_peri_spi0_user\00", [44 x i8] zeroinitializer }, align 32
@mout_peri_spi0_user_p = internal constant [2 x ptr] [ptr @.str.1, ptr @.str.30], section ".init.rodata", align 4
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mout_peri_spi1_user\00", [44 x i8] zeroinitializer }, align 32
@mout_peri_spi1_user_p = internal constant [2 x ptr] [ptr @.str.1, ptr @.str.32], section ".init.rodata", align 4
@.str.49 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mout_peri_uart0_user\00", [43 x i8] zeroinitializer }, align 32
@mout_peri_uart0_user_p = internal constant [2 x ptr] [ptr @.str.1, ptr @.str.34], section ".init.rodata", align 4
@.str.50 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mout_peri_uart1_user\00", [43 x i8] zeroinitializer }, align 32
@mout_peri_uart1_user_p = internal constant [2 x ptr] [ptr @.str.1, ptr @.str.36], section ".init.rodata", align 4
@.str.51 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mout_peri_uart2_user\00", [43 x i8] zeroinitializer }, align 32
@mout_peri_uart2_user_p = internal constant [2 x ptr] [ptr @.str.1, ptr @.str.38], section ".init.rodata", align 4
@.str.52 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mout_peri_usi0_user\00", [44 x i8] zeroinitializer }, align 32
@mout_peri_usi0_user_p = internal constant [2 x ptr] [ptr @.str.1, ptr @.str.40], section ".init.rodata", align 4
@.str.53 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mout_peri_usi1_user\00", [44 x i8] zeroinitializer }, align 32
@mout_peri_usi1_user_p = internal constant [2 x ptr] [ptr @.str.1, ptr @.str.42], section ".init.rodata", align 4
@.str.54 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mout_peri_usi2_user\00", [44 x i8] zeroinitializer }, align 32
@mout_peri_usi2_user_p = internal constant [2 x ptr] [ptr @.str.1, ptr @.str.44], section ".init.rodata", align 4
@.str.55 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"gout_gpio_top_pclk\00", [45 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gout_hsi2c0_pclk\00", [47 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gout_hsi2c1_pclk\00", [47 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gout_hsi2c2_pclk\00", [47 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gout_hsi2c3_pclk\00", [47 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gout_i2c0_pclk\00", [17 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gout_i2c1_pclk\00", [17 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gout_i2c2_pclk\00", [17 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gout_i2c3_pclk\00", [17 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gout_i2c4_pclk\00", [17 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gout_i2c5_pclk\00", [17 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gout_i2c6_pclk\00", [17 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gout_i2c7_pclk\00", [17 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gout_pwm_motor_pclk\00", [44 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gout_spi0_pclk\00", [17 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gout_spi0_ipclk\00", [16 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gout_spi1_pclk\00", [17 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gout_spi1_ipclk\00", [16 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gout_uart0_ext_uclk\00", [44 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gout_uart0_pclk\00", [16 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gout_uart1_ext_uclk\00", [44 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gout_uart1_pclk\00", [16 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"gout_uart2_ext_uclk\00", [44 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gout_uart2_pclk\00", [16 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gout_usi0_pclk\00", [17 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gout_usi0_sclk\00", [17 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gout_usi1_pclk\00", [17 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gout_usi1_sclk\00", [17 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gout_usi2_pclk\00", [17 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gout_usi2_sclk\00", [17 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gout_mct_pclk\00", [18 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"gout_sysreg_peri_pclk\00", [42 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gout_wdt0_pclk\00", [17 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"gout_wdt1_pclk\00", [17 x i8] zeroinitializer }, align 32
@exynos7885_cmu_driver = internal global %struct.platform_driver { ptr @exynos7885_cmu_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.89, ptr null, ptr null, ptr null, i8 1, i32 0, ptr @exynos7885_cmu_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, section ".ref.data", align 4
@.str.89 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"exynos7885-cmu\00", [17 x i8] zeroinitializer }, align 32
@exynos7885_cmu_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,exynos7885-cmu-core\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @core_cmu_info }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@core_cmu_info = internal constant %struct.samsung_cmu_info { ptr null, i32 0, ptr @core_mux_clks, i32 4, ptr @core_div_clks, i32 1, ptr @core_gate_clks, i32 2, ptr null, i32 0, ptr null, i32 0, i32 8, ptr null, i32 0, ptr @core_clk_regs, i32 7, ptr null, i32 0, ptr @.str.22 }, section ".init.rodata", align 4
@core_mux_clks = internal constant [4 x %struct.samsung_mux_clock] [%struct.samsung_mux_clock { i32 1, ptr @.str.90, ptr @mout_core_bus_user_p, i8 2, i32 128, i32 256, i8 4, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 2, ptr @.str.91, ptr @mout_core_cci_user_p, i8 2, i32 128, i32 288, i8 4, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 3, ptr @.str.92, ptr @mout_core_g3d_user_p, i8 2, i32 128, i32 320, i8 4, i8 1, i8 0 }, %struct.samsung_mux_clock { i32 4, ptr @.str.93, ptr @mout_core_gic_p, i8 2, i32 128, i32 4096, i8 0, i8 1, i8 0 }], section ".init.rodata", align 4
@core_div_clks = internal constant [1 x %struct.samsung_div_clock] [%struct.samsung_div_clock { i32 5, ptr @.str.94, ptr @.str.90, i32 0, i32 6144, i8 0, i8 2, i8 0, ptr null }], section ".init.rodata", align 4
@core_gate_clks = internal constant [2 x %struct.samsung_gate_clock] [%struct.samsung_gate_clock { i32 6, ptr @.str.95, ptr @.str.91, i32 2048, i32 8276, i8 21, i8 0 }, %struct.samsung_gate_clock { i32 7, ptr @.str.96, ptr @.str.93, i32 2048, i32 8280, i8 21, i8 0 }], section ".init.rodata", align 4
@core_clk_regs = internal constant [7 x i32] [i32 256, i32 288, i32 320, i32 4096, i32 6144, i32 8276, i32 8280], section ".init.rodata", align 4
@.str.90 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mout_core_bus_user\00", [45 x i8] zeroinitializer }, align 32
@mout_core_bus_user_p = internal constant [2 x ptr] [ptr @.str.1, ptr @.str.22], section ".init.rodata", align 4
@.str.91 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mout_core_cci_user\00", [45 x i8] zeroinitializer }, align 32
@mout_core_cci_user_p = internal constant [2 x ptr] [ptr @.str.1, ptr @.str.24], section ".init.rodata", align 4
@.str.92 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mout_core_g3d_user\00", [45 x i8] zeroinitializer }, align 32
@mout_core_g3d_user_p = internal constant [2 x ptr] [ptr @.str.1, ptr @.str.26], section ".init.rodata", align 4
@.str.93 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mout_core_gic\00", [18 x i8] zeroinitializer }, align 32
@mout_core_gic_p = internal constant [2 x ptr] [ptr @.str.94, ptr @.str.1], section ".init.rodata", align 4
@.str.94 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dout_core_busp\00", [17 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"gout_cci_aclk\00", [18 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"gout_gic400_clk\00", [16 x i8] zeroinitializer }, align 32
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 122, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 125, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 151, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 153, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 155, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 159, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 161, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 163, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 165, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 167, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 169, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 171, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 173, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 175, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 131, i32 29 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 131, i32 50 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 132, i32 9 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 139, i32 29 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 139, i32 50 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 187, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 191, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 197, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 199, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 201, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 205, i32 2 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 207, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 209, i32 2 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 211, i32 2 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 213, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 215, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 217, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 219, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 221, i32 2 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 383, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 385, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 387, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 389, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 391, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 393, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 395, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 397, i32 2 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 399, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 405, i32 2 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 408, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 410, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 412, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 414, i32 2 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 416, i32 2 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 418, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 420, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 422, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 424, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 426, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 428, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 430, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 432, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 435, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 437, i32 2 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 439, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 441, i32 2 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 443, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 445, i32 2 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 447, i32 2 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 449, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 451, i32 2 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 453, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 455, i32 2 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 457, i32 2 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 459, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 461, i32 2 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 463, i32 2 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 465, i32 2 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 467, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 469, i32 2 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 472, i32 2 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 474, i32 2 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 586, i32 11 }
@___asan_gen_.367 = private unnamed_addr constant [24 x i8] c"exynos7885_cmu_of_match\00", align 1
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 576, i32 34 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 526, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 528, i32 2 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 530, i32 2 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 532, i32 2 }
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 523, i32 30 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 543, i32 2 }
@___asan_gen_.388 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.389 = private constant [40 x i8] c"../drivers/clk/samsung/clk-exynos7885.c\00", align 1
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.389, i32 546, i32 2 }
@llvm.compiler.used = appending global [101 x ptr] [ptr @__initcall__kmod_clk_exynos7885__170_597_exynos7885_cmu_init1, ptr @__of_table_exynos7885_cmu_peri, ptr @__of_table_exynos7885_cmu_top, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @exynos7885_cmu_of_match, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96], section "llvm.metadata"
@0 = internal global [98 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos7885_cmu_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exynos7885_cmu_top_init(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @exynos_arm64_register_cmu(ptr noundef null, ptr noundef %np, ptr noundef nonnull @top_cmu_info) #2
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exynos7885_cmu_peri_init(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @exynos_arm64_register_cmu(ptr noundef null, ptr noundef %np, ptr noundef nonnull @peri_cmu_info) #2
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos7885_cmu_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @exynos7885_cmu_driver, ptr noundef null) #2
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @exynos_arm64_register_cmu(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @exynos7885_cmu_probe(ptr noundef %pdev) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #2
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  tail call void @exynos_arm64_register_cmu(ptr noundef %dev1, ptr noundef %1, ptr noundef %call) #2
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 98)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 98)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !82, !84, !85, !87, !88, !90, !91, !93, !94, !96, !97, !99, !100, !102, !103, !105, !106, !108, !109, !111, !112, !114, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269}
!llvm.module.flags = !{!271, !272, !273, !274, !275, !276, !277, !278}
!llvm.ident = !{!279}

!0 = !{ptr @__of_table_exynos7885_cmu_top, !1, !"__of_table_exynos7885_cmu_top", i1 false, i1 false}
!1 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 275, i32 1}
!2 = !{ptr @__of_table_exynos7885_cmu_peri, !3, !"__of_table_exynos7885_cmu_peri", i1 false, i1 false}
!3 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 495, i32 1}
!4 = !{ptr @__initcall__kmod_clk_exynos7885__170_597_exynos7885_cmu_init1, !5, !"__initcall__kmod_clk_exynos7885__170_597_exynos7885_cmu_init1", i1 false, i1 false}
!5 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 597, i32 1}
!6 = !{ptr @top_cmu_info, !7, !"top_cmu_info", i1 false, i1 false}
!7 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 255, i32 38}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 122, i32 2}
!10 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 125, i32 2}
!13 = !{ptr @top_pll_clks, !14, !"top_pll_clks", i1 false, i1 false}
!14 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 121, i32 39}
!15 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 151, i32 2}
!17 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 153, i32 2}
!19 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 155, i32 2}
!21 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 159, i32 2}
!23 = !{ptr @.str.7, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 161, i32 2}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 163, i32 2}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 165, i32 2}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 167, i32 2}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 169, i32 2}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 171, i32 2}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 173, i32 2}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 175, i32 2}
!39 = !{ptr @top_mux_clks, !40, !"top_mux_clks", i1 false, i1 false}
!40 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 149, i32 39}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 131, i32 29}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 131, i32 50}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 132, i32 9}
!47 = !{ptr @mout_core_bus_p, !48, !"mout_core_bus_p", i1 false, i1 false}
!48 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 131, i32 1}
!49 = !{ptr @mout_core_cci_p, !50, !"mout_core_cci_p", i1 false, i1 false}
!50 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 133, i32 1}
!51 = !{ptr @mout_core_g3d_p, !52, !"mout_core_g3d_p", i1 false, i1 false}
!52 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 135, i32 1}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 139, i32 29}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 139, i32 50}
!57 = !{ptr @mout_peri_bus_p, !58, !"mout_peri_bus_p", i1 false, i1 false}
!58 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 139, i32 1}
!59 = !{ptr @mout_peri_spi0_p, !60, !"mout_peri_spi0_p", i1 false, i1 false}
!60 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 140, i32 1}
!61 = !{ptr @mout_peri_spi1_p, !62, !"mout_peri_spi1_p", i1 false, i1 false}
!62 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 141, i32 1}
!63 = !{ptr @mout_peri_uart0_p, !64, !"mout_peri_uart0_p", i1 false, i1 false}
!64 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 142, i32 1}
!65 = !{ptr @mout_peri_uart1_p, !66, !"mout_peri_uart1_p", i1 false, i1 false}
!66 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 143, i32 1}
!67 = !{ptr @mout_peri_uart2_p, !68, !"mout_peri_uart2_p", i1 false, i1 false}
!68 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 144, i32 1}
!69 = !{ptr @mout_peri_usi0_p, !70, !"mout_peri_usi0_p", i1 false, i1 false}
!70 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 145, i32 1}
!71 = !{ptr @mout_peri_usi1_p, !72, !"mout_peri_usi1_p", i1 false, i1 false}
!72 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 146, i32 1}
!73 = !{ptr @mout_peri_usi2_p, !74, !"mout_peri_usi2_p", i1 false, i1 false}
!74 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 147, i32 1}
!75 = !{ptr @.str.20, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 187, i32 2}
!77 = !{ptr @.str.21, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 191, i32 2}
!79 = !{ptr @.str.22, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 197, i32 2}
!81 = !{ptr @.str.23, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.24, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 199, i32 2}
!84 = !{ptr @.str.25, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.26, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 201, i32 2}
!87 = !{ptr @.str.27, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.28, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 205, i32 2}
!90 = !{ptr @.str.29, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @.str.30, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 207, i32 2}
!93 = !{ptr @.str.31, !92, !"<string literal>", i1 false, i1 false}
!94 = !{ptr @.str.32, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 209, i32 2}
!96 = !{ptr @.str.33, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.34, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 211, i32 2}
!99 = !{ptr @.str.35, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @.str.36, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 213, i32 2}
!102 = !{ptr @.str.37, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @.str.38, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 215, i32 2}
!105 = !{ptr @.str.39, !104, !"<string literal>", i1 false, i1 false}
!106 = !{ptr @.str.40, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 217, i32 2}
!108 = !{ptr @.str.41, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @.str.42, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 219, i32 2}
!111 = !{ptr @.str.43, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.44, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 221, i32 2}
!114 = !{ptr @.str.45, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @top_div_clks, !116, !"top_div_clks", i1 false, i1 false}
!116 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 179, i32 39}
!117 = !{ptr @top_gate_clks, !118, !"top_gate_clks", i1 false, i1 false}
!118 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 225, i32 40}
!119 = !{ptr @top_clk_regs, !120, !"top_clk_regs", i1 false, i1 false}
!120 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 71, i32 28}
!121 = !{ptr @peri_cmu_info, !122, !"peri_cmu_info", i1 false, i1 false}
!122 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 478, i32 38}
!123 = !{ptr @.str.46, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 383, i32 2}
!125 = !{ptr @.str.47, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 385, i32 2}
!127 = !{ptr @.str.48, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 387, i32 2}
!129 = !{ptr @.str.49, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 389, i32 2}
!131 = !{ptr @.str.50, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 391, i32 2}
!133 = !{ptr @.str.51, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 393, i32 2}
!135 = !{ptr @.str.52, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 395, i32 2}
!137 = !{ptr @.str.53, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 397, i32 2}
!139 = !{ptr @.str.54, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 399, i32 2}
!141 = !{ptr @peri_mux_clks, !142, !"peri_mux_clks", i1 false, i1 false}
!142 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 382, i32 39}
!143 = !{ptr @mout_peri_bus_user_p, !144, !"mout_peri_bus_user_p", i1 false, i1 false}
!144 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 372, i32 1}
!145 = !{ptr @mout_peri_spi0_user_p, !146, !"mout_peri_spi0_user_p", i1 false, i1 false}
!146 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 373, i32 1}
!147 = !{ptr @mout_peri_spi1_user_p, !148, !"mout_peri_spi1_user_p", i1 false, i1 false}
!148 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 374, i32 1}
!149 = !{ptr @mout_peri_uart0_user_p, !150, !"mout_peri_uart0_user_p", i1 false, i1 false}
!150 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 375, i32 1}
!151 = !{ptr @mout_peri_uart1_user_p, !152, !"mout_peri_uart1_user_p", i1 false, i1 false}
!152 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 376, i32 1}
!153 = !{ptr @mout_peri_uart2_user_p, !154, !"mout_peri_uart2_user_p", i1 false, i1 false}
!154 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 377, i32 1}
!155 = !{ptr @mout_peri_usi0_user_p, !156, !"mout_peri_usi0_user_p", i1 false, i1 false}
!156 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 378, i32 1}
!157 = !{ptr @mout_peri_usi1_user_p, !158, !"mout_peri_usi1_user_p", i1 false, i1 false}
!158 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 379, i32 1}
!159 = !{ptr @mout_peri_usi2_user_p, !160, !"mout_peri_usi2_user_p", i1 false, i1 false}
!160 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 380, i32 1}
!161 = !{ptr @.str.55, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 405, i32 2}
!163 = !{ptr @.str.56, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 408, i32 2}
!165 = !{ptr @.str.57, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 410, i32 2}
!167 = !{ptr @.str.58, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 412, i32 2}
!169 = !{ptr @.str.59, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 414, i32 2}
!171 = !{ptr @.str.60, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 416, i32 2}
!173 = !{ptr @.str.61, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 418, i32 2}
!175 = !{ptr @.str.62, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 420, i32 2}
!177 = !{ptr @.str.63, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 422, i32 2}
!179 = !{ptr @.str.64, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 424, i32 2}
!181 = !{ptr @.str.65, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 426, i32 2}
!183 = !{ptr @.str.66, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 428, i32 2}
!185 = !{ptr @.str.67, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 430, i32 2}
!187 = !{ptr @.str.68, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 432, i32 2}
!189 = !{ptr @.str.69, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 435, i32 2}
!191 = !{ptr @.str.70, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 437, i32 2}
!193 = !{ptr @.str.71, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 439, i32 2}
!195 = !{ptr @.str.72, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 441, i32 2}
!197 = !{ptr @.str.73, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 443, i32 2}
!199 = !{ptr @.str.74, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 445, i32 2}
!201 = !{ptr @.str.75, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 447, i32 2}
!203 = !{ptr @.str.76, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 449, i32 2}
!205 = !{ptr @.str.77, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 451, i32 2}
!207 = !{ptr @.str.78, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 453, i32 2}
!209 = !{ptr @.str.79, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 455, i32 2}
!211 = !{ptr @.str.80, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 457, i32 2}
!213 = !{ptr @.str.81, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 459, i32 2}
!215 = !{ptr @.str.82, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 461, i32 2}
!217 = !{ptr @.str.83, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 463, i32 2}
!219 = !{ptr @.str.84, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 465, i32 2}
!221 = !{ptr @.str.85, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 467, i32 2}
!223 = !{ptr @.str.86, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 469, i32 2}
!225 = !{ptr @.str.87, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 472, i32 2}
!227 = !{ptr @.str.88, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 474, i32 2}
!229 = !{ptr @peri_gate_clks, !230, !"peri_gate_clks", i1 false, i1 false}
!230 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 403, i32 40}
!231 = !{ptr @peri_clk_regs, !232, !"peri_clk_regs", i1 false, i1 false}
!232 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 325, i32 28}
!233 = !{ptr @.str.89, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 586, i32 11}
!235 = !{ptr @exynos7885_cmu_driver, !236, !"exynos7885_cmu_driver", i1 false, i1 false}
!236 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 584, i32 31}
!237 = !{ptr @exynos7885_cmu_of_match, !238, !"exynos7885_cmu_of_match", i1 false, i1 false}
!238 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 576, i32 34}
!239 = !{ptr @core_cmu_info, !240, !"core_cmu_info", i1 false, i1 false}
!240 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 550, i32 38}
!241 = !{ptr @.str.90, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 526, i32 2}
!243 = !{ptr @.str.91, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 528, i32 2}
!245 = !{ptr @.str.92, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 530, i32 2}
!247 = !{ptr @.str.93, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 532, i32 2}
!249 = !{ptr @core_mux_clks, !250, !"core_mux_clks", i1 false, i1 false}
!250 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 525, i32 39}
!251 = !{ptr @mout_core_bus_user_p, !252, !"mout_core_bus_user_p", i1 false, i1 false}
!252 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 520, i32 1}
!253 = !{ptr @mout_core_cci_user_p, !254, !"mout_core_cci_user_p", i1 false, i1 false}
!254 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 521, i32 1}
!255 = !{ptr @mout_core_g3d_user_p, !256, !"mout_core_g3d_user_p", i1 false, i1 false}
!256 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 522, i32 1}
!257 = !{ptr @.str.94, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 523, i32 30}
!259 = !{ptr @mout_core_gic_p, !260, !"mout_core_gic_p", i1 false, i1 false}
!260 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 523, i32 1}
!261 = !{ptr @core_div_clks, !262, !"core_div_clks", i1 false, i1 false}
!262 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 536, i32 39}
!263 = !{ptr @.str.95, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 543, i32 2}
!265 = !{ptr @.str.96, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 546, i32 2}
!267 = !{ptr @core_gate_clks, !268, !"core_gate_clks", i1 false, i1 false}
!268 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 541, i32 40}
!269 = !{ptr @core_clk_regs, !270, !"core_clk_regs", i1 false, i1 false}
!270 = !{!"../drivers/clk/samsung/clk-exynos7885.c", i32 509, i32 28}
!271 = !{i32 1, !"wchar_size", i32 2}
!272 = !{i32 1, !"min_enum_size", i32 4}
!273 = !{i32 8, !"branch-target-enforcement", i32 0}
!274 = !{i32 8, !"sign-return-address", i32 0}
!275 = !{i32 8, !"sign-return-address-all", i32 0}
!276 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!277 = !{i32 7, !"uwtable", i32 1}
!278 = !{i32 7, !"frame-pointer", i32 2}
!279 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
