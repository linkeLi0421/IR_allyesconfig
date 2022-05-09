; ModuleID = '/llk/IR_all_yes/drivers/clk/hisilicon/clk-hi3559a.c_pt.bc'
source_filename = "../drivers/clk/hisilicon/clk-hi3559a.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.hisi_crg_funcs = type { ptr, ptr }
%struct.hisi_fixed_rate_clock = type { i32, ptr, ptr, i32, i32 }
%struct.hi3559av100_pll_clock = type { i32, ptr, ptr, i32, i8, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8 }
%struct.hisi_mux_clock = type { i32, ptr, ptr, i8, i32, i32, i8, i8, i8, ptr, ptr }
%struct.hisi_gate_clock = type { i32, ptr, ptr, i32, i32, i8, i8, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.hisi_divider_clock = type { i32, ptr, ptr, i32, i32, i8, i8, i8, ptr, ptr }
%struct.clk_div_table = type { i32, i32 }
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
%struct.hisi_crg_dev = type { ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.hisi_clock_data = type { %struct.clk_onecell_data, ptr }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.hi3559av100_clk_pll = type { %struct.clk_hw, i32, ptr, i8, i8, i8, i8, i8, i8, ptr, i8, i8, i8, i8 }
%struct.clk_hw = type { ptr, ptr, ptr }

@__initcall__kmod_clk_hi3559a__183_835_hi3559av100_crg_init1 = internal global ptr @hi3559av100_crg_init, section ".initcall1.init", align 4
@hi3559av100_crg_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @hi3559av100_crg_probe, ptr @hi3559av100_crg_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @hi3559av100_crg_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_hi3559av100_crg_exit = internal global ptr @hi3559av100_crg_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file184 = internal constant [51 x i8] c"clk_hi3559a.file=drivers/clk/hisilicon/clk-hi3559a\00", section ".modinfo", align 1
@__UNIQUE_ID_license185 = internal constant [27 x i8] c"clk_hi3559a.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description186 = internal constant [57 x i8] c"clk_hi3559a.description=HiSilicon Hi3559AV100 CRG Driver\00", section ".modinfo", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"hi3559av100-clock\00", [46 x i8] zeroinitializer }, align 32
@hi3559av100_crg_match_table = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi3559av100-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hi3559av100_crg_funcs }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi3559av100-shub-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hi3559av100_shub_crg_funcs }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@hi3559av100_crg_funcs = internal constant { %struct.hisi_crg_funcs, [24 x i8] } { %struct.hisi_crg_funcs { ptr @hi3559av100_clk_register, ptr @hi3559av100_clk_unregister }, [24 x i8] zeroinitializer }, align 32
@hi3559av100_shub_crg_funcs = internal constant { %struct.hisi_crg_funcs, [24 x i8] } { %struct.hisi_crg_funcs { ptr @hi3559av100_shub_clk_register, ptr @hi3559av100_shub_clk_unregister }, [24 x i8] zeroinitializer }, align 32
@hi3559av100_fixed_rate_clks_crg = internal constant { [45 x %struct.hisi_fixed_rate_clock], [252 x i8] } { [45 x %struct.hisi_fixed_rate_clock] [%struct.hisi_fixed_rate_clock { i32 1, ptr @.str.1, ptr null, i32 0, i32 1188000000 }, %struct.hisi_fixed_rate_clock { i32 2, ptr @.str.2, ptr null, i32 0, i32 1000000000 }, %struct.hisi_fixed_rate_clock { i32 3, ptr @.str.3, ptr null, i32 0, i32 842000000 }, %struct.hisi_fixed_rate_clock { i32 4, ptr @.str.4, ptr null, i32 0, i32 792000000 }, %struct.hisi_fixed_rate_clock { i32 5, ptr @.str.5, ptr null, i32 0, i32 750000000 }, %struct.hisi_fixed_rate_clock { i32 6, ptr @.str.6, ptr null, i32 0, i32 710000000 }, %struct.hisi_fixed_rate_clock { i32 7, ptr @.str.7, ptr null, i32 0, i32 680000000 }, %struct.hisi_fixed_rate_clock { i32 8, ptr @.str.8, ptr null, i32 0, i32 667000000 }, %struct.hisi_fixed_rate_clock { i32 9, ptr @.str.9, ptr null, i32 0, i32 631000000 }, %struct.hisi_fixed_rate_clock { i32 10, ptr @.str.10, ptr null, i32 0, i32 600000000 }, %struct.hisi_fixed_rate_clock { i32 11, ptr @.str.11, ptr null, i32 0, i32 568000000 }, %struct.hisi_fixed_rate_clock { i32 12, ptr @.str.12, ptr null, i32 0, i32 500000000 }, %struct.hisi_fixed_rate_clock { i32 13, ptr @.str.13, ptr null, i32 0, i32 475000000 }, %struct.hisi_fixed_rate_clock { i32 14, ptr @.str.14, ptr null, i32 0, i32 428000000 }, %struct.hisi_fixed_rate_clock { i32 15, ptr @.str.15, ptr null, i32 0, i32 400000000 }, %struct.hisi_fixed_rate_clock { i32 16, ptr @.str.16, ptr null, i32 0, i32 396000000 }, %struct.hisi_fixed_rate_clock { i32 17, ptr @.str.17, ptr null, i32 0, i32 300000000 }, %struct.hisi_fixed_rate_clock { i32 18, ptr @.str.18, ptr null, i32 0, i32 250000000 }, %struct.hisi_fixed_rate_clock { i32 44, ptr @.str.19, ptr null, i32 0, i32 200000000 }, %struct.hisi_fixed_rate_clock { i32 19, ptr @.str.20, ptr null, i32 0, i32 198000000 }, %struct.hisi_fixed_rate_clock { i32 20, ptr @.str.21, ptr null, i32 0, i32 187500000 }, %struct.hisi_fixed_rate_clock { i32 21, ptr @.str.22, ptr null, i32 0, i32 150000000 }, %struct.hisi_fixed_rate_clock { i32 22, ptr @.str.23, ptr null, i32 0, i32 1485000000 }, %struct.hisi_fixed_rate_clock { i32 23, ptr @.str.24, ptr null, i32 0, i32 125000000 }, %struct.hisi_fixed_rate_clock { i32 24, ptr @.str.25, ptr null, i32 0, i32 107000000 }, %struct.hisi_fixed_rate_clock { i32 25, ptr @.str.26, ptr null, i32 0, i32 100000000 }, %struct.hisi_fixed_rate_clock { i32 26, ptr @.str.27, ptr null, i32 0, i32 99000000 }, %struct.hisi_fixed_rate_clock { i32 75, ptr @.str.28, ptr null, i32 0, i32 75000000 }, %struct.hisi_fixed_rate_clock { i32 27, ptr @.str.29, ptr null, i32 0, i32 74250000 }, %struct.hisi_fixed_rate_clock { i32 28, ptr @.str.30, ptr null, i32 0, i32 72000000 }, %struct.hisi_fixed_rate_clock { i32 29, ptr @.str.31, ptr null, i32 0, i32 60000000 }, %struct.hisi_fixed_rate_clock { i32 30, ptr @.str.32, ptr null, i32 0, i32 54000000 }, %struct.hisi_fixed_rate_clock { i32 31, ptr @.str.33, ptr null, i32 0, i32 50000000 }, %struct.hisi_fixed_rate_clock { i32 32, ptr @.str.34, ptr null, i32 0, i32 49500000 }, %struct.hisi_fixed_rate_clock { i32 33, ptr @.str.35, ptr null, i32 0, i32 37125000 }, %struct.hisi_fixed_rate_clock { i32 34, ptr @.str.36, ptr null, i32 0, i32 36000000 }, %struct.hisi_fixed_rate_clock { i32 35, ptr @.str.37, ptr null, i32 0, i32 32400000 }, %struct.hisi_fixed_rate_clock { i32 36, ptr @.str.38, ptr null, i32 0, i32 27000000 }, %struct.hisi_fixed_rate_clock { i32 37, ptr @.str.39, ptr null, i32 0, i32 25000000 }, %struct.hisi_fixed_rate_clock { i32 38, ptr @.str.40, ptr null, i32 0, i32 24000000 }, %struct.hisi_fixed_rate_clock { i32 39, ptr @.str.41, ptr null, i32 0, i32 12000000 }, %struct.hisi_fixed_rate_clock { i32 40, ptr @.str.42, ptr null, i32 0, i32 3000000 }, %struct.hisi_fixed_rate_clock { i32 41, ptr @.str.43, ptr null, i32 0, i32 1600000 }, %struct.hisi_fixed_rate_clock { i32 42, ptr @.str.44, ptr null, i32 0, i32 400000 }, %struct.hisi_fixed_rate_clock { i32 43, ptr @.str.45, ptr null, i32 0, i32 100000 }], [252 x i8] zeroinitializer }, align 32
@hi3559av100_pll_clks = internal global { [2 x %struct.hi3559av100_pll_clock], [32 x i8] } { [2 x %struct.hi3559av100_pll_clock] [%struct.hi3559av100_pll_clock { i32 250, ptr @.str.51, ptr null, i32 0, i8 0, i8 24, i8 24, i8 3, i8 28, i8 3, i32 4, i8 0, i8 12, i8 12, i8 6 }, %struct.hi3559av100_pll_clock { i32 251, ptr @.str.52, ptr null, i32 32, i8 0, i8 24, i8 24, i8 3, i8 28, i8 3, i32 36, i8 0, i8 12, i8 12, i8 6 }], [32 x i8] zeroinitializer }, align 32
@hi3559av100_mux_clks_crg = internal global { [9 x %struct.hisi_mux_clock], [92 x i8] } { [9 x %struct.hisi_mux_clock] [%struct.hisi_mux_clock { i32 80, ptr @.str.53, ptr @fmc_mux_p, i8 8, i32 4, i32 368, i8 2, i8 3, i8 0, ptr @fmc_mux_table, ptr null }, %struct.hisi_mux_clock { i32 85, ptr @.str.54, ptr @mmc_mux_p, i8 8, i32 4, i32 424, i8 24, i8 3, i8 0, ptr @mmc_mux_table, ptr null }, %struct.hisi_mux_clock { i32 86, ptr @.str.55, ptr @mmc_mux_p, i8 8, i32 4, i32 492, i8 24, i8 3, i8 0, ptr @mmc_mux_table, ptr null }, %struct.hisi_mux_clock { i32 87, ptr @.str.56, ptr @mmc_mux_p, i8 8, i32 4, i32 532, i8 24, i8 3, i8 0, ptr @mmc_mux_table, ptr null }, %struct.hisi_mux_clock { i32 88, ptr @.str.57, ptr @mmc_mux_p, i8 8, i32 4, i32 572, i8 24, i8 3, i8 0, ptr @mmc_mux_table, ptr null }, %struct.hisi_mux_clock { i32 81, ptr @.str.58, ptr @sysapb_mux_p, i8 2, i32 4, i32 232, i8 3, i8 1, i8 0, ptr @sysapb_mux_table, ptr null }, %struct.hisi_mux_clock { i32 83, ptr @.str.59, ptr @sysbus_mux_p, i8 2, i32 4, i32 232, i8 0, i8 1, i8 0, ptr @sysbus_mux_table, ptr null }, %struct.hisi_mux_clock { i32 82, ptr @.str.60, ptr @uart_mux_p, i8 3, i32 4, i32 408, i8 28, i8 2, i8 0, ptr @uart_mux_table, ptr null }, %struct.hisi_mux_clock { i32 84, ptr @.str.61, ptr @a73_clksel_mux_p, i8 3, i32 4, i32 228, i8 0, i8 2, i8 0, ptr @a73_clksel_mux_table, ptr null }], [92 x i8] zeroinitializer }, align 32
@hi3559av100_gate_clks = internal global { [38 x %struct.hisi_gate_clock], [280 x i8] } { [38 x %struct.hisi_gate_clock] [%struct.hisi_gate_clock { i32 90, ptr @.str.62, ptr @.str.53, i32 4, i32 368, i8 1, i8 0, ptr null }, %struct.hisi_gate_clock { i32 96, ptr @.str.63, ptr @.str.54, i32 4, i32 424, i8 28, i8 0, ptr null }, %struct.hisi_gate_clock { i32 97, ptr @.str.64, ptr @.str.55, i32 4, i32 492, i8 28, i8 0, ptr null }, %struct.hisi_gate_clock { i32 98, ptr @.str.65, ptr @.str.56, i32 4, i32 532, i8 28, i8 0, ptr null }, %struct.hisi_gate_clock { i32 99, ptr @.str.66, ptr @.str.57, i32 4, i32 572, i8 28, i8 0, ptr null }, %struct.hisi_gate_clock { i32 91, ptr @.str.67, ptr @.str.60, i32 4, i32 408, i8 23, i8 0, ptr null }, %struct.hisi_gate_clock { i32 92, ptr @.str.68, ptr @.str.60, i32 4, i32 408, i8 24, i8 0, ptr null }, %struct.hisi_gate_clock { i32 93, ptr @.str.69, ptr @.str.60, i32 4, i32 408, i8 25, i8 0, ptr null }, %struct.hisi_gate_clock { i32 94, ptr @.str.70, ptr @.str.60, i32 4, i32 408, i8 26, i8 0, ptr null }, %struct.hisi_gate_clock { i32 95, ptr @.str.71, ptr @.str.60, i32 4, i32 408, i8 27, i8 0, ptr null }, %struct.hisi_gate_clock { i32 100, ptr @.str.72, ptr null, i32 4, i32 372, i8 1, i8 0, ptr null }, %struct.hisi_gate_clock { i32 101, ptr @.str.73, ptr null, i32 4, i32 372, i8 5, i8 0, ptr null }, %struct.hisi_gate_clock { i32 102, ptr @.str.74, ptr null, i32 4, i32 372, i8 3, i8 0, ptr null }, %struct.hisi_gate_clock { i32 103, ptr @.str.75, ptr null, i32 4, i32 372, i8 7, i8 0, ptr null }, %struct.hisi_gate_clock { i32 50, ptr @.str.76, ptr @.str.33, i32 4, i32 416, i8 16, i8 0, ptr null }, %struct.hisi_gate_clock { i32 51, ptr @.str.77, ptr @.str.33, i32 4, i32 416, i8 17, i8 0, ptr null }, %struct.hisi_gate_clock { i32 52, ptr @.str.78, ptr @.str.33, i32 4, i32 416, i8 18, i8 0, ptr null }, %struct.hisi_gate_clock { i32 53, ptr @.str.79, ptr @.str.33, i32 4, i32 416, i8 19, i8 0, ptr null }, %struct.hisi_gate_clock { i32 54, ptr @.str.80, ptr @.str.33, i32 4, i32 416, i8 20, i8 0, ptr null }, %struct.hisi_gate_clock { i32 55, ptr @.str.81, ptr @.str.33, i32 4, i32 416, i8 21, i8 0, ptr null }, %struct.hisi_gate_clock { i32 56, ptr @.str.82, ptr @.str.33, i32 4, i32 416, i8 22, i8 0, ptr null }, %struct.hisi_gate_clock { i32 57, ptr @.str.83, ptr @.str.33, i32 4, i32 416, i8 23, i8 0, ptr null }, %struct.hisi_gate_clock { i32 58, ptr @.str.84, ptr @.str.33, i32 4, i32 416, i8 24, i8 0, ptr null }, %struct.hisi_gate_clock { i32 59, ptr @.str.85, ptr @.str.33, i32 4, i32 416, i8 25, i8 0, ptr null }, %struct.hisi_gate_clock { i32 60, ptr @.str.86, ptr @.str.33, i32 4, i32 416, i8 26, i8 0, ptr null }, %struct.hisi_gate_clock { i32 61, ptr @.str.87, ptr @.str.33, i32 4, i32 416, i8 27, i8 0, ptr null }, %struct.hisi_gate_clock { i32 62, ptr @.str.88, ptr @.str.26, i32 4, i32 408, i8 16, i8 0, ptr null }, %struct.hisi_gate_clock { i32 63, ptr @.str.89, ptr @.str.26, i32 4, i32 408, i8 17, i8 0, ptr null }, %struct.hisi_gate_clock { i32 64, ptr @.str.90, ptr @.str.26, i32 4, i32 408, i8 18, i8 0, ptr null }, %struct.hisi_gate_clock { i32 65, ptr @.str.91, ptr @.str.26, i32 4, i32 408, i8 19, i8 0, ptr null }, %struct.hisi_gate_clock { i32 66, ptr @.str.92, ptr @.str.26, i32 4, i32 408, i8 20, i8 0, ptr null }, %struct.hisi_gate_clock { i32 67, ptr @.str.93, ptr @.str.26, i32 4, i32 408, i8 21, i8 0, ptr null }, %struct.hisi_gate_clock { i32 68, ptr @.str.94, ptr @.str.26, i32 4, i32 408, i8 22, i8 0, ptr null }, %struct.hisi_gate_clock { i32 70, ptr @.str.95, ptr null, i32 4, i32 364, i8 6, i8 0, ptr null }, %struct.hisi_gate_clock { i32 69, ptr @.str.96, ptr null, i32 4, i32 364, i8 5, i8 0, ptr null }, %struct.hisi_gate_clock { i32 72, ptr @.str.97, ptr null, i32 4, i32 364, i8 9, i8 0, ptr null }, %struct.hisi_gate_clock { i32 71, ptr @.str.98, ptr null, i32 4, i32 364, i8 8, i8 0, ptr null }, %struct.hisi_gate_clock { i32 73, ptr @.str.99, ptr null, i32 4, i32 332, i8 5, i8 0, ptr null }], [280 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1188m\00", [26 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"1000m\00", [26 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"842m\00", [27 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"792m\00", [27 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"750m\00", [27 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"710m\00", [27 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"680m\00", [27 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"667m\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"631m\00", [27 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"600m\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"568m\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"500m\00", [27 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"475m\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"428m\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"400m\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"396m\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"300m\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"250m\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"200m\00", [27 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"198m\00", [27 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"187p5m\00", [25 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"150m\00", [27 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"148p5m\00", [25 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"125m\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"107m\00", [27 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"100m\00", [27 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"99m\00", [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"75m\00", [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"74p25m\00", [25 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"72m\00", [28 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"60m\00", [28 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"54m\00", [28 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"50m\00", [28 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"49p5m\00", [26 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"37p125m\00", [24 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"36m\00", [28 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"32p4m\00", [26 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"27m\00", [28 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"25m\00", [28 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"24m\00", [28 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"12m\00", [28 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"3m\00", [29 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"1p6m\00", [27 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"400k\00", [27 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"100k\00", [27 x i8] zeroinitializer }, align 32
@hisi_clk_pll_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_pll_recalc_rate, ptr null, ptr null, ptr null, ptr null, ptr @clk_pll_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@hisi_clk_register_pll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.48, i32 496, ptr @.str.49, ptr @.str.50 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: failed to register clock %s\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"hisi_clk_register_pll\00", [42 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"drivers/clk/hisilicon/clk-hi3559a.c\00", [60 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@hisi_clk_register_pll._entry_ptr = internal global ptr @hisi_clk_register_pll._entry, section ".printk_index", align 4
@.str.51 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"apll\00", [27 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"gpll\00", [27 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fmc_mux\00", [24 x i8] zeroinitializer }, align 32
@fmc_mux_p = internal global { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.40, ptr @.str.28, ptr @.str.24, ptr @.str.22, ptr @.str.19, ptr @.str.18, ptr @.str.17, ptr @.str.15], [32 x i8] zeroinitializer }, align 32
@fmc_mux_table = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7], [32 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmc0_mux\00", [23 x i8] zeroinitializer }, align 32
@mmc_mux_p = internal global { [8 x ptr], [32 x i8] } { [8 x ptr] [ptr @.str.45, ptr @.str.39, ptr @.str.34, ptr @.str.27, ptr @.str.21, ptr @.str.22, ptr @.str.20, ptr @.str.44], [32 x i8] zeroinitializer }, align 32
@mmc_mux_table = internal constant { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7], [32 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmc1_mux\00", [23 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmc2_mux\00", [23 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmc3_mux\00", [23 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sysapb_mux\00", [21 x i8] zeroinitializer }, align 32
@sysapb_mux_p = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.40, ptr @.str.33], [24 x i8] zeroinitializer }, align 32
@sysapb_mux_table = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 0, i32 1], [24 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sysbus_mux\00", [21 x i8] zeroinitializer }, align 32
@sysbus_mux_p = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.40, ptr @.str.17], [24 x i8] zeroinitializer }, align 32
@sysbus_mux_table = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 0, i32 1], [24 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uart_mux\00", [23 x i8] zeroinitializer }, align 32
@uart_mux_p = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.33, ptr @.str.40, ptr @.str.42], [20 x i8] zeroinitializer }, align 32
@uart_mux_table = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 1, i32 2], [20 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"a73_mux\00", [24 x i8] zeroinitializer }, align 32
@a73_clksel_mux_p = internal global { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr @.str.40, ptr @.str.51, ptr @.str.2], [20 x i8] zeroinitializer }, align 32
@a73_clksel_mux_table = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 0, i32 1, i32 2], [20 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"clk_fmc\00", [24 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_mmc0\00", [23 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_mmc1\00", [23 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_mmc2\00", [23 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_mmc3\00", [23 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clk_uart0\00", [22 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clk_uart1\00", [22 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clk_uart2\00", [22 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clk_uart3\00", [22 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clk_uart4\00", [22 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"clk_eth\00", [24 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_eth_macif\00", [18 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_eth1\00", [23 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_eth1_macif\00", [17 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_i2c0\00", [23 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_i2c1\00", [23 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_i2c2\00", [23 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_i2c3\00", [23 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_i2c4\00", [23 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_i2c5\00", [23 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_i2c6\00", [23 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_i2c7\00", [23 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_i2c8\00", [23 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_i2c9\00", [23 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clk_i2c10\00", [22 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clk_i2c11\00", [22 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_spi0\00", [23 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_spi1\00", [23 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_spi2\00", [23 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_spi3\00", [23 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_spi4\00", [23 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_spi5\00", [23 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_spi6\00", [23 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"axi_clk_edmac\00", [18 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clk_edmac\00", [22 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"axi_clk_edmac1\00", [17 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clk_edmac1\00", [21 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clk_vdmac\00", [22 x i8] zeroinitializer }, align 32
@hi3559av100_shub_fixed_rate_clks = internal global { [13 x %struct.hisi_fixed_rate_clock], [92 x i8] } { [13 x %struct.hisi_fixed_rate_clock] [%struct.hisi_fixed_rate_clock { i32 0, ptr @.str.100, ptr null, i32 0, i32 24000000 }, %struct.hisi_fixed_rate_clock { i32 1, ptr @.str.101, ptr null, i32 0, i32 200000000 }, %struct.hisi_fixed_rate_clock { i32 2, ptr @.str.102, ptr null, i32 0, i32 300000000 }, %struct.hisi_fixed_rate_clock { i32 3, ptr @.str.103, ptr null, i32 0, i32 192000000 }, %struct.hisi_fixed_rate_clock { i32 10, ptr @.str.104, ptr null, i32 0, i32 48000000 }, %struct.hisi_fixed_rate_clock { i32 11, ptr @.str.105, ptr null, i32 0, i32 48000000 }, %struct.hisi_fixed_rate_clock { i32 12, ptr @.str.106, ptr null, i32 0, i32 48000000 }, %struct.hisi_fixed_rate_clock { i32 13, ptr @.str.107, ptr null, i32 0, i32 48000000 }, %struct.hisi_fixed_rate_clock { i32 14, ptr @.str.108, ptr null, i32 0, i32 48000000 }, %struct.hisi_fixed_rate_clock { i32 15, ptr @.str.109, ptr null, i32 0, i32 48000000 }, %struct.hisi_fixed_rate_clock { i32 16, ptr @.str.110, ptr null, i32 0, i32 48000000 }, %struct.hisi_fixed_rate_clock { i32 17, ptr @.str.111, ptr null, i32 0, i32 48000000 }, %struct.hisi_fixed_rate_clock { i32 30, ptr @.str.112, ptr null, i32 0, i32 32000 }], [92 x i8] zeroinitializer }, align 32
@hi3559av100_shub_mux_clks = internal global { [2 x %struct.hisi_mux_clock], [56 x i8] } { [2 x %struct.hisi_mux_clock] [%struct.hisi_mux_clock { i32 4, ptr @.str.113, ptr @shub_source_clk_mux_p, i8 4, i32 0, i32 0, i8 0, i8 2, i8 0, ptr @shub_source_clk_mux_table, ptr null }, %struct.hisi_mux_clock { i32 31, ptr @.str.114, ptr @shub_uart_source_clk_mux_p, i8 4, i32 0, i32 28, i8 28, i8 2, i8 0, ptr @shub_uart_source_clk_mux_table, ptr null }], [56 x i8] zeroinitializer }, align 32
@hi3559av100_shub_div_clks = internal global { [2 x %struct.hisi_divider_clock], [32 x i8] } { [2 x %struct.hisi_divider_clock] [%struct.hisi_divider_clock { i32 20, ptr @.str.116, ptr @.str.113, i32 0, i32 32, i8 24, i8 2, i8 4, ptr @shub_spi_clk_table, ptr null }, %struct.hisi_divider_clock { i32 32, ptr @.str.115, ptr @.str.113, i32 0, i32 28, i8 28, i8 2, i8 4, ptr @shub_uart_div_clk_table, ptr null }], [32 x i8] zeroinitializer }, align 32
@hi3559av100_shub_gate_clks = internal global { [11 x %struct.hisi_gate_clock], [76 x i8] } { [11 x %struct.hisi_gate_clock] [%struct.hisi_gate_clock { i32 22, ptr @.str.117, ptr @.str.116, i32 0, i32 32, i8 1, i8 0, ptr null }, %struct.hisi_gate_clock { i32 23, ptr @.str.118, ptr @.str.116, i32 0, i32 32, i8 5, i8 0, ptr null }, %struct.hisi_gate_clock { i32 24, ptr @.str.119, ptr @.str.116, i32 0, i32 32, i8 9, i8 0, ptr null }, %struct.hisi_gate_clock { i32 33, ptr @.str.120, ptr @.str.114, i32 0, i32 28, i8 1, i8 0, ptr null }, %struct.hisi_gate_clock { i32 34, ptr @.str.121, ptr @.str.114, i32 0, i32 28, i8 5, i8 0, ptr null }, %struct.hisi_gate_clock { i32 35, ptr @.str.122, ptr @.str.114, i32 0, i32 28, i8 9, i8 0, ptr null }, %struct.hisi_gate_clock { i32 36, ptr @.str.123, ptr @.str.114, i32 0, i32 28, i8 13, i8 0, ptr null }, %struct.hisi_gate_clock { i32 37, ptr @.str.124, ptr @.str.114, i32 0, i32 28, i8 17, i8 0, ptr null }, %struct.hisi_gate_clock { i32 38, ptr @.str.125, ptr @.str.114, i32 0, i32 28, i8 21, i8 0, ptr null }, %struct.hisi_gate_clock { i32 39, ptr @.str.126, ptr @.str.114, i32 0, i32 28, i8 25, i8 0, ptr null }, %struct.hisi_gate_clock { i32 40, ptr @.str.127, ptr @.str.113, i32 0, i32 36, i8 4, i8 0, ptr null }], [76 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_source_24M\00", [17 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clk_source_200M\00", [16 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clk_source_300M\00", [16 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_source_PLL\00", [17 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_shub_i2c0\00", [18 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_shub_i2c1\00", [18 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_shub_i2c2\00", [18 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_shub_i2c3\00", [18 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_shub_i2c4\00", [18 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_shub_i2c5\00", [18 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_shub_i2c6\00", [18 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_shub_i2c7\00", [18 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk_uart_32K\00", [19 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"shub_clk\00", [23 x i8] zeroinitializer }, align 32
@shub_source_clk_mux_p = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103], [16 x i8] zeroinitializer }, align 32
@shub_source_clk_mux_table = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 1, i32 2, i32 3], [16 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"shub_uart_source_clk\00", [43 x i8] zeroinitializer }, align 32
@shub_uart_source_clk_mux_p = internal global { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.112, ptr @.str.115, ptr @.str.115, ptr @.str.100], [16 x i8] zeroinitializer }, align 32
@shub_uart_source_clk_mux_table = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 1, i32 2, i32 3], [16 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clk_uart_div_clk\00", [47 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk_spi_clk\00", [20 x i8] zeroinitializer }, align 32
@shub_spi_clk_table = internal global { [3 x %struct.clk_div_table], [40 x i8] } { [3 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 8 }, %struct.clk_div_table { i32 1, i32 4 }, %struct.clk_div_table { i32 2, i32 2 }], [40 x i8] zeroinitializer }, align 32
@shub_uart_div_clk_table = internal global { [2 x %struct.clk_div_table], [16 x i8] } { [2 x %struct.clk_div_table] [%struct.clk_div_table { i32 1, i32 8 }, %struct.clk_div_table { i32 2, i32 4 }], [16 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_shub_spi0\00", [18 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_shub_spi1\00", [18 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_shub_spi2\00", [18 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_shub_uart0\00", [17 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_shub_uart1\00", [17 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_shub_uart2\00", [17 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_shub_uart3\00", [17 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_shub_uart4\00", [17 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_shub_uart5\00", [17 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_shub_uart6\00", [17 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_shub_dmac\00", [18 x i8] zeroinitializer }, align 32
@___asan_gen_.128 = private unnamed_addr constant [23 x i8] c"hi3559av100_crg_driver\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 822, i32 31 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 826, i32 11 }
@___asan_gen_.134 = private unnamed_addr constant [28 x i8] c"hi3559av100_crg_match_table\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 774, i32 34 }
@___asan_gen_.137 = private unnamed_addr constant [22 x i8] c"hi3559av100_crg_funcs\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 566, i32 36 }
@___asan_gen_.140 = private unnamed_addr constant [27 x i8] c"hi3559av100_shub_crg_funcs\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 769, i32 36 }
@___asan_gen_.143 = private unnamed_addr constant [32 x i8] c"hi3559av100_fixed_rate_clks_crg\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 61, i32 43 }
@___asan_gen_.146 = private unnamed_addr constant [21 x i8] c"hi3559av100_pll_clks\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 339, i32 37 }
@___asan_gen_.149 = private unnamed_addr constant [25 x i8] c"hi3559av100_mux_clks_crg\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 139, i32 30 }
@___asan_gen_.152 = private unnamed_addr constant [22 x i8] c"hi3559av100_gate_clks\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 184, i32 31 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 62, i32 29 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 63, i32 29 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 64, i32 28 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 65, i32 28 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 66, i32 28 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 67, i32 28 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 68, i32 28 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 69, i32 28 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 70, i32 28 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 71, i32 28 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 72, i32 28 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 73, i32 28 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 74, i32 28 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 75, i32 28 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 76, i32 28 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 77, i32 28 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 78, i32 28 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 79, i32 28 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 80, i32 28 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 81, i32 28 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 82, i32 30 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 83, i32 28 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 84, i32 30 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 85, i32 28 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 86, i32 28 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 87, i32 28 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 88, i32 27 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 89, i32 27 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 90, i32 30 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 91, i32 27 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 92, i32 27 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 93, i32 27 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 94, i32 27 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 95, i32 29 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 96, i32 31 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 97, i32 27 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 98, i32 29 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 99, i32 27 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 100, i32 27 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 101, i32 27 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 102, i32 27 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 103, i32 27 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 104, i32 28 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 105, i32 28 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 106, i32 28 }
@___asan_gen_.290 = private unnamed_addr constant [17 x i8] c"hisi_clk_pll_ops\00", align 1
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 450, i32 29 }
@___asan_gen_.293 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 495, i32 4 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 341, i32 25 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 345, i32 25 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 141, i32 24 }
@___asan_gen_.320 = private unnamed_addr constant [10 x i8] c"fmc_mux_p\00", align 1
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 110, i32 20 }
@___asan_gen_.323 = private unnamed_addr constant [14 x i8] c"fmc_mux_table\00", align 1
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 132, i32 18 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 145, i32 25 }
@___asan_gen_.329 = private unnamed_addr constant [10 x i8] c"mmc_mux_p\00", align 1
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 114, i32 20 }
@___asan_gen_.332 = private unnamed_addr constant [14 x i8] c"mmc_mux_table\00", align 1
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 133, i32 18 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 149, i32 25 }
@___asan_gen_.340 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 154, i32 25 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 159, i32 25 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 164, i32 27 }
@___asan_gen_.347 = private unnamed_addr constant [13 x i8] c"sysapb_mux_p\00", align 1
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 118, i32 20 }
@___asan_gen_.350 = private unnamed_addr constant [17 x i8] c"sysapb_mux_table\00", align 1
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 134, i32 18 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 169, i32 27 }
@___asan_gen_.356 = private unnamed_addr constant [13 x i8] c"sysbus_mux_p\00", align 1
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 122, i32 20 }
@___asan_gen_.359 = private unnamed_addr constant [17 x i8] c"sysbus_mux_table\00", align 1
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 135, i32 18 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 174, i32 25 }
@___asan_gen_.365 = private unnamed_addr constant [11 x i8] c"uart_mux_p\00", align 1
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 126, i32 20 }
@___asan_gen_.368 = private unnamed_addr constant [15 x i8] c"uart_mux_table\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 136, i32 18 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 179, i32 24 }
@___asan_gen_.374 = private unnamed_addr constant [17 x i8] c"a73_clksel_mux_p\00", align 1
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 128, i32 20 }
@___asan_gen_.377 = private unnamed_addr constant [21 x i8] c"a73_clksel_mux_table\00", align 1
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 137, i32 18 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 186, i32 24 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 190, i32 25 }
@___asan_gen_.388 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 194, i32 25 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 198, i32 25 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 202, i32 25 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 206, i32 26 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 210, i32 26 }
@___asan_gen_.403 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 214, i32 26 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 218, i32 26 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 222, i32 26 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 226, i32 24 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 230, i32 30 }
@___asan_gen_.418 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 234, i32 25 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 238, i32 31 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 242, i32 25 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 246, i32 25 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 250, i32 25 }
@___asan_gen_.433 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 254, i32 25 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 258, i32 25 }
@___asan_gen_.439 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 262, i32 25 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 266, i32 25 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 270, i32 25 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 274, i32 25 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 278, i32 25 }
@___asan_gen_.454 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 282, i32 26 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 286, i32 26 }
@___asan_gen_.460 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 290, i32 25 }
@___asan_gen_.463 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 294, i32 25 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 298, i32 25 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 302, i32 25 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 306, i32 25 }
@___asan_gen_.475 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 310, i32 25 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 314, i32 25 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 318, i32 29 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 322, i32 26 }
@___asan_gen_.487 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 326, i32 30 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 330, i32 27 }
@___asan_gen_.493 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 334, i32 26 }
@___asan_gen_.494 = private unnamed_addr constant [33 x i8] c"hi3559av100_shub_fixed_rate_clks\00", align 1
@___asan_gen_.496 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 571, i32 37 }
@___asan_gen_.497 = private unnamed_addr constant [26 x i8] c"hi3559av100_shub_mux_clks\00", align 1
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 598, i32 30 }
@___asan_gen_.500 = private unnamed_addr constant [26 x i8] c"hi3559av100_shub_div_clks\00", align 1
@___asan_gen_.502 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 617, i32 34 }
@___asan_gen_.503 = private unnamed_addr constant [27 x i8] c"hi3559av100_shub_gate_clks\00", align 1
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 627, i32 31 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 572, i32 37 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 573, i32 38 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 574, i32 38 }
@___asan_gen_.517 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 575, i32 33 }
@___asan_gen_.520 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 576, i32 31 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 577, i32 31 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 578, i32 31 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 579, i32 31 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 580, i32 31 }
@___asan_gen_.535 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 581, i32 31 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 582, i32 31 }
@___asan_gen_.541 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 583, i32 31 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 584, i32 35 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 600, i32 32 }
@___asan_gen_.548 = private unnamed_addr constant [22 x i8] c"shub_source_clk_mux_p\00", align 1
@___asan_gen_.550 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 589, i32 20 }
@___asan_gen_.551 = private unnamed_addr constant [26 x i8] c"shub_source_clk_mux_table\00", align 1
@___asan_gen_.553 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 588, i32 12 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 606, i32 37 }
@___asan_gen_.557 = private unnamed_addr constant [27 x i8] c"shub_uart_source_clk_mux_p\00", align 1
@___asan_gen_.559 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 594, i32 20 }
@___asan_gen_.560 = private unnamed_addr constant [31 x i8] c"shub_uart_source_clk_mux_table\00", align 1
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 593, i32 12 }
@___asan_gen_.565 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 595, i32 18 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 618, i32 37 }
@___asan_gen_.569 = private unnamed_addr constant [19 x i8] c"shub_spi_clk_table\00", align 1
@___asan_gen_.571 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 614, i32 29 }
@___asan_gen_.572 = private unnamed_addr constant [24 x i8] c"shub_uart_div_clk_table\00", align 1
@___asan_gen_.574 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 615, i32 29 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 629, i32 30 }
@___asan_gen_.580 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 633, i32 30 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 637, i32 30 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 642, i32 31 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 646, i32 31 }
@___asan_gen_.592 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 650, i32 31 }
@___asan_gen_.595 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 654, i32 31 }
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 658, i32 31 }
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 662, i32 31 }
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 666, i32 31 }
@___asan_gen_.605 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.606 = private constant [39 x i8] c"../drivers/clk/hisilicon/clk-hi3559a.c\00", align 1
@___asan_gen_.607 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.606, i32 671, i32 31 }
@llvm.compiler.used = appending global [167 x ptr] [ptr @__UNIQUE_ID_description186, ptr @__UNIQUE_ID_file184, ptr @__UNIQUE_ID_license185, ptr @__exitcall_hi3559av100_crg_exit, ptr @__initcall__kmod_clk_hi3559a__183_835_hi3559av100_crg_init1, ptr @hi3559av100_crg_exit, ptr @hisi_clk_register_pll._entry, ptr @hisi_clk_register_pll._entry_ptr, ptr @hi3559av100_crg_driver, ptr @.str, ptr @hi3559av100_crg_match_table, ptr @hi3559av100_crg_funcs, ptr @hi3559av100_shub_crg_funcs, ptr @hi3559av100_fixed_rate_clks_crg, ptr @hi3559av100_pll_clks, ptr @hi3559av100_mux_clks_crg, ptr @hi3559av100_gate_clks, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @hisi_clk_pll_ops, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @fmc_mux_p, ptr @fmc_mux_table, ptr @.str.54, ptr @mmc_mux_p, ptr @mmc_mux_table, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @sysapb_mux_p, ptr @sysapb_mux_table, ptr @.str.59, ptr @sysbus_mux_p, ptr @sysbus_mux_table, ptr @.str.60, ptr @uart_mux_p, ptr @uart_mux_table, ptr @.str.61, ptr @a73_clksel_mux_p, ptr @a73_clksel_mux_table, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @hi3559av100_shub_fixed_rate_clks, ptr @hi3559av100_shub_mux_clks, ptr @hi3559av100_shub_div_clks, ptr @hi3559av100_shub_gate_clks, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @shub_source_clk_mux_p, ptr @shub_source_clk_mux_table, ptr @.str.114, ptr @shub_uart_source_clk_mux_p, ptr @shub_uart_source_clk_mux_table, ptr @.str.115, ptr @.str.116, ptr @shub_spi_clk_table, ptr @shub_uart_div_clk_table, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127], section "llvm.metadata"
@0 = internal global [160 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3559av100_crg_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3559av100_crg_match_table to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3559av100_crg_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3559av100_shub_crg_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3559av100_fixed_rate_clks_crg to i32), i32 900, i32 1152, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3559av100_pll_clks to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3559av100_mux_clks_crg to i32), i32 324, i32 416, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3559av100_gate_clks to i32), i32 1064, i32 1344, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_clk_pll_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hisi_clk_register_pll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fmc_mux_p to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fmc_mux_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_mux_p to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_mux_table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysapb_mux_p to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysapb_mux_table to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysbus_mux_p to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sysbus_mux_table to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart_mux_p to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart_mux_table to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a73_clksel_mux_p to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @a73_clksel_mux_table to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.403 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.418 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.433 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.439 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.475 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.487 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.493 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3559av100_shub_fixed_rate_clks to i32), i32 260, i32 352, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.496 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3559av100_shub_mux_clks to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3559av100_shub_div_clks to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.502 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3559av100_shub_gate_clks to i32), i32 308, i32 384, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.517 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.520 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.541 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shub_source_clk_mux_p to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shub_source_clk_mux_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.553 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shub_uart_source_clk_mux_p to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.559 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shub_uart_source_clk_mux_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shub_spi_clk_table to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.571 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @shub_uart_div_clk_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.574 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.580 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.592 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 ptrtoint (ptr @___asan_gen_.606 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.607 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hi3559av100_crg_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @hi3559av100_crg_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hi3559av100_crg_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @hi3559av100_crg_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi3559av100_crg_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 12, i32 noundef 3264) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #6
  %funcs = getelementptr inbounds %struct.hisi_crg_dev, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %funcs, align 4
  %tobool4.not = icmp eq ptr %call2, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @hisi_reset_init(ptr noundef %pdev) #6
  %rstc = getelementptr inbounds %struct.hisi_crg_dev, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %rstc to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7, ptr %rstc, align 4
  %tobool9.not = icmp eq ptr %call7, null
  br i1 %tobool9.not, label %if.end6.cleanup_crit_edge, label %if.end11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call13 = tail call ptr %5(ptr noundef %pdev) #6
  %6 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call13, ptr %call, align 4
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then16, label %if.end20

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %rstc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rstc, align 4
  tail call void @hisi_reset_exit(ptr noundef %8) #6
  %9 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call, align 4
  %11 = ptrtoint ptr %10 to i32
  br label %cleanup

if.end20:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call, ptr %driver_data.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.then16, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %11, %if.then16 ], [ 0, %if.end20 ], [ -12, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ], [ -12, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi3559av100_crg_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %rstc = getelementptr inbounds %struct.hisi_crg_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rstc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rstc, align 4
  tail call void @hisi_reset_exit(ptr noundef %3) #6
  %funcs = getelementptr inbounds %struct.hisi_crg_dev, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %unregister_clks = getelementptr inbounds %struct.hisi_crg_funcs, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %unregister_clks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %unregister_clks, align 4
  tail call void %7(ptr noundef %pdev) #6
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hisi_reset_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hisi_reset_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @hi3559av100_clk_register(ptr noundef %pdev) #2 align 64 {
entry:
  %init.i = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @hisi_clk_alloc(ptr noundef %pdev, i32 noundef 256) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @hisi_clk_register_fixed_rate(ptr noundef nonnull @hi3559av100_fixed_rate_clks_crg, i32 noundef 45, ptr noundef nonnull %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %0 = inttoptr i32 %call2 to ptr
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %base1.i = getelementptr inbounds %struct.hisi_clock_data, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %base1.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %base1.i, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init.i) #6
  %3 = getelementptr inbounds i8, ptr %init.i, i32 12
  %4 = call ptr @memset(ptr %3, i32 255, i32 12)
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 72, i32 noundef 3520) #6
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end6.hisi_clk_register_pll.exit_crit_edge, label %for.cond.preheader.i

if.end6.hisi_clk_register_pll.exit_crit_edge:     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %hisi_clk_register_pll.exit

for.cond.preheader.i:                             ; preds = %if.end6
  %flags.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 6
  %parent_names.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 2
  %num_parents.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 5
  %ops.i = getelementptr inbounds %struct.clk_init_data, ptr %init.i, i32 0, i32 1
  %5 = load ptr, ptr getelementptr inbounds ([2 x %struct.hi3559av100_pll_clock], ptr @hi3559av100_pll_clks, i32 0, i32 0, i32 1), align 4
  %6 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %init.i, align 4
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %flags.i, align 4
  %8 = load ptr, ptr getelementptr inbounds ([2 x %struct.hi3559av100_pll_clock], ptr @hi3559av100_pll_clks, i32 0, i32 0, i32 2), align 4
  %tobool4.not.i = icmp eq ptr %8, null
  %spec.select.i = select i1 %tobool4.not.i, ptr null, ptr getelementptr inbounds ([2 x %struct.hi3559av100_pll_clock], ptr @hi3559av100_pll_clks, i32 0, i32 0, i32 2)
  %9 = ptrtoint ptr %parent_names.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %spec.select.i, ptr %parent_names.i, align 4
  %tobool9.not.i = icmp ne ptr %8, null
  %conv.i = zext i1 %tobool9.not.i to i8
  %10 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv.i, ptr %num_parents.i, align 4
  %11 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @hisi_clk_pll_ops, ptr %ops.i, align 4
  %12 = load i32, ptr getelementptr inbounds ([2 x %struct.hi3559av100_pll_clock], ptr @hi3559av100_pll_clks, i32 0, i32 0, i32 3), align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 %12
  %ctrl_reg112.i = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %call.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %ctrl_reg112.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %add.ptr.i, ptr %ctrl_reg112.i, align 4
  %14 = load i8, ptr getelementptr inbounds ([2 x %struct.hi3559av100_pll_clock], ptr @hi3559av100_pll_clks, i32 0, i32 0, i32 4), align 4
  %frac_shift14.i = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %call.i.i, i32 0, i32 3
  %15 = ptrtoint ptr %frac_shift14.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %frac_shift14.i, align 4
  %16 = load i8, ptr getelementptr inbounds ([2 x %struct.hi3559av100_pll_clock], ptr @hi3559av100_pll_clks, i32 0, i32 0, i32 5), align 1
  %frac_width16.i = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %call.i.i, i32 0, i32 4
  %17 = ptrtoint ptr %frac_width16.i to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %frac_width16.i, align 1
  %18 = load i8, ptr getelementptr inbounds ([2 x %struct.hi3559av100_pll_clock], ptr @hi3559av100_pll_clks, i32 0, i32 0, i32 6), align 2
  %postdiv1_shift18.i = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %call.i.i, i32 0, i32 5
  %19 = ptrtoint ptr %postdiv1_shift18.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %postdiv1_shift18.i, align 2
  %20 = load i8, ptr getelementptr inbounds ([2 x %struct.hi3559av100_pll_clock], ptr @hi3559av100_pll_clks, i32 0, i32 0, i32 7), align 1
  %postdiv1_width20.i = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %call.i.i, i32 0, i32 6
  %21 = ptrtoint ptr %postdiv1_width20.i to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %20, ptr %postdiv1_width20.i, align 1
  %22 = load i8, ptr getelementptr inbounds ([2 x %struct.hi3559av100_pll_clock], ptr @hi3559av100_pll_clks, i32 0, i32 0, i32 8), align 4
  %postdiv2_shift22.i = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %call.i.i, i32 0, i32 7
  %23 = ptrtoint ptr %postdiv2_shift22.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %postdiv2_shift22.i, align 4
  %24 = load i8, ptr getelementptr inbounds ([2 x %struct.hi3559av100_pll_clock], ptr @hi3559av100_pll_clks, i32 0, i32 0, i32 9), align 1
  %postdiv2_width24.i = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %call.i.i, i32 0, i32 8
  %25 = ptrtoint ptr %postdiv2_width24.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %postdiv2_width24.i, align 1
  %26 = load i32, ptr getelementptr inbounds ([2 x %struct.hi3559av100_pll_clock], ptr @hi3559av100_pll_clks, i32 0, i32 0, i32 10), align 4
  %add.ptr26.i = getelementptr i8, ptr %2, i32 %26
  %ctrl_reg227.i = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %call.i.i, i32 0, i32 9
  %27 = ptrtoint ptr %ctrl_reg227.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr26.i, ptr %ctrl_reg227.i, align 4
  %28 = load i8, ptr getelementptr inbounds ([2 x %struct.hi3559av100_pll_clock], ptr @hi3559av100_pll_clks, i32 0, i32 0, i32 11), align 4
  %fbdiv_shift29.i = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %call.i.i, i32 0, i32 10
  %29 = ptrtoint ptr %fbdiv_shift29.i to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %28, ptr %fbdiv_shift29.i, align 4
  %30 = load i8, ptr getelementptr inbounds ([2 x %struct.hi3559av100_pll_clock], ptr @hi3559av100_pll_clks, i32 0, i32 0, i32 12), align 1
  %fbdiv_width31.i = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %call.i.i, i32 0, i32 11
  %31 = ptrtoint ptr %fbdiv_width31.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %30, ptr %fbdiv_width31.i, align 1
  %32 = load i8, ptr getelementptr inbounds ([2 x %struct.hi3559av100_pll_clock], ptr @hi3559av100_pll_clks, i32 0, i32 0, i32 13), align 2
  %refdiv_shift33.i = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %call.i.i, i32 0, i32 12
  %33 = ptrtoint ptr %refdiv_shift33.i to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %refdiv_shift33.i, align 2
  %34 = load i8, ptr getelementptr inbounds ([2 x %struct.hi3559av100_pll_clock], ptr @hi3559av100_pll_clks, i32 0, i32 0, i32 14), align 1
  %refdiv_width35.i = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %call.i.i, i32 0, i32 13
  %35 = ptrtoint ptr %refdiv_width35.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %refdiv_width35.i, align 1
  %init36.i = getelementptr inbounds %struct.clk_hw, ptr %call.i.i, i32 0, i32 2
  %36 = ptrtoint ptr %init36.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %init.i, ptr %init36.i, align 4
  %call38.i = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %call.i.i) #6
  %cmp.i.i = icmp ugt ptr %call38.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then40.i, label %if.end43.i

if.then40.i:                                      ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @devm_kfree(ptr noundef %dev, ptr noundef nonnull %call.i.i) #6
  %37 = load ptr, ptr getelementptr inbounds ([2 x %struct.hi3559av100_pll_clock], ptr @hi3559av100_pll_clks, i32 0, i32 0, i32 1), align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, ptr noundef %37) #9
  br label %for.inc.i

if.end43.i:                                       ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %call, align 4
  %40 = load i32, ptr @hi3559av100_pll_clks, align 4
  %arrayidx46.i = getelementptr ptr, ptr %39, i32 %40
  %41 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call38.i, ptr %arrayidx46.i, align 4
  %incdec.ptr.i = getelementptr %struct.hi3559av100_clk_pll, ptr %call.i.i, i32 1
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.end43.i, %if.then40.i
  %p_clk.1.i = phi ptr [ %call.i.i, %if.then40.i ], [ %incdec.ptr.i, %if.end43.i ]
  %42 = load ptr, ptr getelementptr inbounds ([2 x %struct.hi3559av100_pll_clock], ptr @hi3559av100_pll_clks, i32 0, i32 1, i32 1), align 4
  %43 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %init.i, align 4
  %44 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %flags.i, align 4
  %45 = load ptr, ptr getelementptr inbounds ([2 x %struct.hi3559av100_pll_clock], ptr @hi3559av100_pll_clks, i32 0, i32 1, i32 2), align 4
  %tobool4.not.1.i = icmp eq ptr %45, null
  %spec.select.1.i = select i1 %tobool4.not.1.i, ptr null, ptr getelementptr inbounds ([2 x %struct.hi3559av100_pll_clock], ptr @hi3559av100_pll_clks, i32 0, i32 1, i32 2)
  %46 = ptrtoint ptr %parent_names.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %spec.select.1.i, ptr %parent_names.i, align 4
  %tobool9.not.1.i = icmp ne ptr %45, null
  %conv.1.i = zext i1 %tobool9.not.1.i to i8
  %47 = ptrtoint ptr %num_parents.i to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %conv.1.i, ptr %num_parents.i, align 4
  %48 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @hisi_clk_pll_ops, ptr %ops.i, align 4
  %49 = load i32, ptr getelementptr inbounds ([2 x %struct.hi3559av100_pll_clock], ptr @hi3559av100_pll_clks, i32 0, i32 1, i32 3), align 4
  %add.ptr.1.i = getelementptr i8, ptr %2, i32 %49
  %ctrl_reg112.1.i = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %p_clk.1.i, i32 0, i32 2
  %50 = ptrtoint ptr %ctrl_reg112.1.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %add.ptr.1.i, ptr %ctrl_reg112.1.i, align 4
  %51 = load i8, ptr getelementptr inbounds ([2 x %struct.hi3559av100_pll_clock], ptr @hi3559av100_pll_clks, i32 0, i32 1, i32 4), align 4
  %frac_shift14.1.i = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %p_clk.1.i, i32 0, i32 3
  %52 = ptrtoint ptr %frac_shift14.1.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 %51, ptr %frac_shift14.1.i, align 4
  %53 = load i8, ptr getelementptr inbounds ([2 x %struct.hi3559av100_pll_clock], ptr @hi3559av100_pll_clks, i32 0, i32 1, i32 5), align 1
  %frac_width16.1.i = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %p_clk.1.i, i32 0, i32 4
  %54 = ptrtoint ptr %frac_width16.1.i to i32
  call void @__asan_store1_noabort(i32 %54)
  store i8 %53, ptr %frac_width16.1.i, align 1
  %55 = load i8, ptr getelementptr inbounds ([2 x %struct.hi3559av100_pll_clock], ptr @hi3559av100_pll_clks, i32 0, i32 1, i32 6), align 2
  %postdiv1_shift18.1.i = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %p_clk.1.i, i32 0, i32 5
  %56 = ptrtoint ptr %postdiv1_shift18.1.i to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 %55, ptr %postdiv1_shift18.1.i, align 2
  %57 = load i8, ptr getelementptr inbounds ([2 x %struct.hi3559av100_pll_clock], ptr @hi3559av100_pll_clks, i32 0, i32 1, i32 7), align 1
  %postdiv1_width20.1.i = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %p_clk.1.i, i32 0, i32 6
  %58 = ptrtoint ptr %postdiv1_width20.1.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 %57, ptr %postdiv1_width20.1.i, align 1
  %59 = load i8, ptr getelementptr inbounds ([2 x %struct.hi3559av100_pll_clock], ptr @hi3559av100_pll_clks, i32 0, i32 1, i32 8), align 4
  %postdiv2_shift22.1.i = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %p_clk.1.i, i32 0, i32 7
  %60 = ptrtoint ptr %postdiv2_shift22.1.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %postdiv2_shift22.1.i, align 4
  %61 = load i8, ptr getelementptr inbounds ([2 x %struct.hi3559av100_pll_clock], ptr @hi3559av100_pll_clks, i32 0, i32 1, i32 9), align 1
  %postdiv2_width24.1.i = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %p_clk.1.i, i32 0, i32 8
  %62 = ptrtoint ptr %postdiv2_width24.1.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 %61, ptr %postdiv2_width24.1.i, align 1
  %63 = load i32, ptr getelementptr inbounds ([2 x %struct.hi3559av100_pll_clock], ptr @hi3559av100_pll_clks, i32 0, i32 1, i32 10), align 4
  %add.ptr26.1.i = getelementptr i8, ptr %2, i32 %63
  %ctrl_reg227.1.i = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %p_clk.1.i, i32 0, i32 9
  %64 = ptrtoint ptr %ctrl_reg227.1.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %add.ptr26.1.i, ptr %ctrl_reg227.1.i, align 4
  %65 = load i8, ptr getelementptr inbounds ([2 x %struct.hi3559av100_pll_clock], ptr @hi3559av100_pll_clks, i32 0, i32 1, i32 11), align 4
  %fbdiv_shift29.1.i = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %p_clk.1.i, i32 0, i32 10
  %66 = ptrtoint ptr %fbdiv_shift29.1.i to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %fbdiv_shift29.1.i, align 4
  %67 = load i8, ptr getelementptr inbounds ([2 x %struct.hi3559av100_pll_clock], ptr @hi3559av100_pll_clks, i32 0, i32 1, i32 12), align 1
  %fbdiv_width31.1.i = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %p_clk.1.i, i32 0, i32 11
  %68 = ptrtoint ptr %fbdiv_width31.1.i to i32
  call void @__asan_store1_noabort(i32 %68)
  store i8 %67, ptr %fbdiv_width31.1.i, align 1
  %69 = load i8, ptr getelementptr inbounds ([2 x %struct.hi3559av100_pll_clock], ptr @hi3559av100_pll_clks, i32 0, i32 1, i32 13), align 2
  %refdiv_shift33.1.i = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %p_clk.1.i, i32 0, i32 12
  %70 = ptrtoint ptr %refdiv_shift33.1.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %refdiv_shift33.1.i, align 2
  %71 = load i8, ptr getelementptr inbounds ([2 x %struct.hi3559av100_pll_clock], ptr @hi3559av100_pll_clks, i32 0, i32 1, i32 14), align 1
  %refdiv_width35.1.i = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %p_clk.1.i, i32 0, i32 13
  %72 = ptrtoint ptr %refdiv_width35.1.i to i32
  call void @__asan_store1_noabort(i32 %72)
  store i8 %71, ptr %refdiv_width35.1.i, align 1
  %init36.1.i = getelementptr inbounds %struct.clk_hw, ptr %p_clk.1.i, i32 0, i32 2
  %73 = ptrtoint ptr %init36.1.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %init.i, ptr %init36.1.i, align 4
  %call38.1.i = call ptr @clk_register(ptr noundef null, ptr noundef %p_clk.1.i) #6
  %cmp.i.1.i = icmp ugt ptr %call38.1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1.i, label %if.then40.1.i, label %if.end43.1.i

if.end43.1.i:                                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  %74 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %call, align 4
  %76 = load i32, ptr getelementptr inbounds ([2 x %struct.hi3559av100_pll_clock], ptr @hi3559av100_pll_clks, i32 0, i32 1), align 4
  %arrayidx46.1.i = getelementptr ptr, ptr %75, i32 %76
  %77 = ptrtoint ptr %arrayidx46.1.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call38.1.i, ptr %arrayidx46.1.i, align 4
  br label %hisi_clk_register_pll.exit

if.then40.1.i:                                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @devm_kfree(ptr noundef %dev, ptr noundef %p_clk.1.i) #6
  %78 = load ptr, ptr getelementptr inbounds ([2 x %struct.hi3559av100_pll_clock], ptr @hi3559av100_pll_clks, i32 0, i32 1, i32 1), align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, ptr noundef %78) #9
  br label %hisi_clk_register_pll.exit

hisi_clk_register_pll.exit:                       ; preds = %if.then40.1.i, %if.end43.1.i, %if.end6.hisi_clk_register_pll.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init.i) #6
  %call7 = call i32 @hisi_clk_register_mux(ptr noundef nonnull @hi3559av100_mux_clks_crg, i32 noundef 9, ptr noundef nonnull %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %hisi_clk_register_pll.exit.unregister_fixed_rate_crit_edge

hisi_clk_register_pll.exit.unregister_fixed_rate_crit_edge: ; preds = %hisi_clk_register_pll.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %unregister_fixed_rate

if.end10:                                         ; preds = %hisi_clk_register_pll.exit
  %call11 = call i32 @hisi_clk_register_gate(ptr noundef nonnull @hi3559av100_gate_clks, i32 noundef 38, ptr noundef nonnull %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.unregister_mux_crit_edge

if.end10.unregister_mux_crit_edge:                ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #8
  br label %unregister_mux

if.end14:                                         ; preds = %if.end10
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %79 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %of_node, align 8
  %call17 = call i32 @of_clk_add_provider(ptr noundef %80, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull %call) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end14.cleanup_crit_edge, label %unregister_gate

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

unregister_gate:                                  ; preds = %if.end14
  %81 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %call, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %unregister_gate
  %i.010.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %unregister_gate ]
  %arrayidx.i = getelementptr %struct.hisi_gate_clock, ptr @hi3559av100_gate_clks, i32 %i.010.i
  %83 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx.i, align 4
  %arrayidx3.i = getelementptr ptr, ptr %82, i32 %84
  %85 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx3.i, align 4
  %tobool.not.i39 = icmp eq ptr %86, null
  br i1 %tobool.not.i39, label %for.body.i.if.end.i_crit_edge, label %if.then.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @clk_unregister_gate(ptr noundef nonnull %86) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %inc.i = add nuw nsw i32 %i.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 38
  br i1 %exitcond.not.i, label %if.end.i.unregister_mux_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

if.end.i.unregister_mux_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %unregister_mux

unregister_mux:                                   ; preds = %if.end.i.unregister_mux_crit_edge, %if.end10.unregister_mux_crit_edge
  %ret.0 = phi i32 [ %call11, %if.end10.unregister_mux_crit_edge ], [ %call17, %if.end.i.unregister_mux_crit_edge ]
  %87 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %call, align 4
  %89 = load i32, ptr @hi3559av100_mux_clks_crg, align 4
  %arrayidx3.i42 = getelementptr ptr, ptr %88, i32 %89
  %90 = ptrtoint ptr %arrayidx3.i42 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx3.i42, align 4
  %tobool.not.i43 = icmp eq ptr %91, null
  br i1 %tobool.not.i43, label %unregister_mux.if.end.i48_crit_edge, label %if.then.i45

unregister_mux.if.end.i48_crit_edge:              ; preds = %unregister_mux
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i48

if.then.i45:                                      ; preds = %unregister_mux
  call void @__sanitizer_cov_trace_pc() #8
  call void @clk_unregister_mux(ptr noundef nonnull %91) #6
  br label %if.end.i48

if.end.i48:                                       ; preds = %if.then.i45, %unregister_mux.if.end.i48_crit_edge
  %92 = load i32, ptr getelementptr inbounds ([9 x %struct.hisi_mux_clock], ptr @hi3559av100_mux_clks_crg, i32 0, i32 1), align 4
  %arrayidx3.i42.1 = getelementptr ptr, ptr %88, i32 %92
  %93 = ptrtoint ptr %arrayidx3.i42.1 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx3.i42.1, align 4
  %tobool.not.i43.1 = icmp eq ptr %94, null
  br i1 %tobool.not.i43.1, label %if.end.i48.if.end.i48.1_crit_edge, label %if.then.i45.1

if.end.i48.if.end.i48.1_crit_edge:                ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i48.1

if.then.i45.1:                                    ; preds = %if.end.i48
  call void @__sanitizer_cov_trace_pc() #8
  call void @clk_unregister_mux(ptr noundef nonnull %94) #6
  br label %if.end.i48.1

if.end.i48.1:                                     ; preds = %if.then.i45.1, %if.end.i48.if.end.i48.1_crit_edge
  %95 = load i32, ptr getelementptr inbounds ([9 x %struct.hisi_mux_clock], ptr @hi3559av100_mux_clks_crg, i32 0, i32 2), align 4
  %arrayidx3.i42.2 = getelementptr ptr, ptr %88, i32 %95
  %96 = ptrtoint ptr %arrayidx3.i42.2 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx3.i42.2, align 4
  %tobool.not.i43.2 = icmp eq ptr %97, null
  br i1 %tobool.not.i43.2, label %if.end.i48.1.if.end.i48.2_crit_edge, label %if.then.i45.2

if.end.i48.1.if.end.i48.2_crit_edge:              ; preds = %if.end.i48.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i48.2

if.then.i45.2:                                    ; preds = %if.end.i48.1
  call void @__sanitizer_cov_trace_pc() #8
  call void @clk_unregister_mux(ptr noundef nonnull %97) #6
  br label %if.end.i48.2

if.end.i48.2:                                     ; preds = %if.then.i45.2, %if.end.i48.1.if.end.i48.2_crit_edge
  %98 = load i32, ptr getelementptr inbounds ([9 x %struct.hisi_mux_clock], ptr @hi3559av100_mux_clks_crg, i32 0, i32 3), align 4
  %arrayidx3.i42.3 = getelementptr ptr, ptr %88, i32 %98
  %99 = ptrtoint ptr %arrayidx3.i42.3 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx3.i42.3, align 4
  %tobool.not.i43.3 = icmp eq ptr %100, null
  br i1 %tobool.not.i43.3, label %if.end.i48.2.if.end.i48.3_crit_edge, label %if.then.i45.3

if.end.i48.2.if.end.i48.3_crit_edge:              ; preds = %if.end.i48.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i48.3

if.then.i45.3:                                    ; preds = %if.end.i48.2
  call void @__sanitizer_cov_trace_pc() #8
  call void @clk_unregister_mux(ptr noundef nonnull %100) #6
  br label %if.end.i48.3

if.end.i48.3:                                     ; preds = %if.then.i45.3, %if.end.i48.2.if.end.i48.3_crit_edge
  %101 = load i32, ptr getelementptr inbounds ([9 x %struct.hisi_mux_clock], ptr @hi3559av100_mux_clks_crg, i32 0, i32 4), align 4
  %arrayidx3.i42.4 = getelementptr ptr, ptr %88, i32 %101
  %102 = ptrtoint ptr %arrayidx3.i42.4 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %arrayidx3.i42.4, align 4
  %tobool.not.i43.4 = icmp eq ptr %103, null
  br i1 %tobool.not.i43.4, label %if.end.i48.3.if.end.i48.4_crit_edge, label %if.then.i45.4

if.end.i48.3.if.end.i48.4_crit_edge:              ; preds = %if.end.i48.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i48.4

if.then.i45.4:                                    ; preds = %if.end.i48.3
  call void @__sanitizer_cov_trace_pc() #8
  call void @clk_unregister_mux(ptr noundef nonnull %103) #6
  br label %if.end.i48.4

if.end.i48.4:                                     ; preds = %if.then.i45.4, %if.end.i48.3.if.end.i48.4_crit_edge
  %104 = load i32, ptr getelementptr inbounds ([9 x %struct.hisi_mux_clock], ptr @hi3559av100_mux_clks_crg, i32 0, i32 5), align 4
  %arrayidx3.i42.5 = getelementptr ptr, ptr %88, i32 %104
  %105 = ptrtoint ptr %arrayidx3.i42.5 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %arrayidx3.i42.5, align 4
  %tobool.not.i43.5 = icmp eq ptr %106, null
  br i1 %tobool.not.i43.5, label %if.end.i48.4.if.end.i48.5_crit_edge, label %if.then.i45.5

if.end.i48.4.if.end.i48.5_crit_edge:              ; preds = %if.end.i48.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i48.5

if.then.i45.5:                                    ; preds = %if.end.i48.4
  call void @__sanitizer_cov_trace_pc() #8
  call void @clk_unregister_mux(ptr noundef nonnull %106) #6
  br label %if.end.i48.5

if.end.i48.5:                                     ; preds = %if.then.i45.5, %if.end.i48.4.if.end.i48.5_crit_edge
  %107 = load i32, ptr getelementptr inbounds ([9 x %struct.hisi_mux_clock], ptr @hi3559av100_mux_clks_crg, i32 0, i32 6), align 4
  %arrayidx3.i42.6 = getelementptr ptr, ptr %88, i32 %107
  %108 = ptrtoint ptr %arrayidx3.i42.6 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %arrayidx3.i42.6, align 4
  %tobool.not.i43.6 = icmp eq ptr %109, null
  br i1 %tobool.not.i43.6, label %if.end.i48.5.if.end.i48.6_crit_edge, label %if.then.i45.6

if.end.i48.5.if.end.i48.6_crit_edge:              ; preds = %if.end.i48.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i48.6

if.then.i45.6:                                    ; preds = %if.end.i48.5
  call void @__sanitizer_cov_trace_pc() #8
  call void @clk_unregister_mux(ptr noundef nonnull %109) #6
  br label %if.end.i48.6

if.end.i48.6:                                     ; preds = %if.then.i45.6, %if.end.i48.5.if.end.i48.6_crit_edge
  %110 = load i32, ptr getelementptr inbounds ([9 x %struct.hisi_mux_clock], ptr @hi3559av100_mux_clks_crg, i32 0, i32 7), align 4
  %arrayidx3.i42.7 = getelementptr ptr, ptr %88, i32 %110
  %111 = ptrtoint ptr %arrayidx3.i42.7 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %arrayidx3.i42.7, align 4
  %tobool.not.i43.7 = icmp eq ptr %112, null
  br i1 %tobool.not.i43.7, label %if.end.i48.6.if.end.i48.7_crit_edge, label %if.then.i45.7

if.end.i48.6.if.end.i48.7_crit_edge:              ; preds = %if.end.i48.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i48.7

if.then.i45.7:                                    ; preds = %if.end.i48.6
  call void @__sanitizer_cov_trace_pc() #8
  call void @clk_unregister_mux(ptr noundef nonnull %112) #6
  br label %if.end.i48.7

if.end.i48.7:                                     ; preds = %if.then.i45.7, %if.end.i48.6.if.end.i48.7_crit_edge
  %113 = load i32, ptr getelementptr inbounds ([9 x %struct.hisi_mux_clock], ptr @hi3559av100_mux_clks_crg, i32 0, i32 8), align 4
  %arrayidx3.i42.8 = getelementptr ptr, ptr %88, i32 %113
  %114 = ptrtoint ptr %arrayidx3.i42.8 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx3.i42.8, align 4
  %tobool.not.i43.8 = icmp eq ptr %115, null
  br i1 %tobool.not.i43.8, label %if.end.i48.7.unregister_fixed_rate_crit_edge, label %if.then.i45.8

if.end.i48.7.unregister_fixed_rate_crit_edge:     ; preds = %if.end.i48.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %unregister_fixed_rate

if.then.i45.8:                                    ; preds = %if.end.i48.7
  call void @__sanitizer_cov_trace_pc() #8
  call void @clk_unregister_mux(ptr noundef nonnull %115) #6
  br label %unregister_fixed_rate

unregister_fixed_rate:                            ; preds = %if.then.i45.8, %if.end.i48.7.unregister_fixed_rate_crit_edge, %hisi_clk_register_pll.exit.unregister_fixed_rate_crit_edge
  %ret.1 = phi i32 [ %call7, %hisi_clk_register_pll.exit.unregister_fixed_rate_crit_edge ], [ %ret.0, %if.then.i45.8 ], [ %ret.0, %if.end.i48.7.unregister_fixed_rate_crit_edge ]
  %116 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %call, align 4
  br label %for.body.i53

for.body.i53:                                     ; preds = %if.end.i57.for.body.i53_crit_edge, %unregister_fixed_rate
  %i.010.i49 = phi i32 [ %inc.i55, %if.end.i57.for.body.i53_crit_edge ], [ 0, %unregister_fixed_rate ]
  %arrayidx.i50 = getelementptr %struct.hisi_fixed_rate_clock, ptr @hi3559av100_fixed_rate_clks_crg, i32 %i.010.i49
  %118 = ptrtoint ptr %arrayidx.i50 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %arrayidx.i50, align 4
  %arrayidx3.i51 = getelementptr ptr, ptr %117, i32 %119
  %120 = ptrtoint ptr %arrayidx3.i51 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %arrayidx3.i51, align 4
  %tobool.not.i52 = icmp eq ptr %121, null
  br i1 %tobool.not.i52, label %for.body.i53.if.end.i57_crit_edge, label %if.then.i54

for.body.i53.if.end.i57_crit_edge:                ; preds = %for.body.i53
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i57

if.then.i54:                                      ; preds = %for.body.i53
  call void @__sanitizer_cov_trace_pc() #8
  call void @clk_unregister_fixed_rate(ptr noundef nonnull %121) #6
  br label %if.end.i57

if.end.i57:                                       ; preds = %if.then.i54, %for.body.i53.if.end.i57_crit_edge
  %inc.i55 = add nuw nsw i32 %i.010.i49, 1
  %exitcond.not.i56 = icmp eq i32 %inc.i55, 45
  br i1 %exitcond.not.i56, label %hisi_clk_unregister_fixed_rate.exit, label %if.end.i57.for.body.i53_crit_edge

if.end.i57.for.body.i53_crit_edge:                ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i53

hisi_clk_unregister_fixed_rate.exit:              ; preds = %if.end.i57
  call void @__sanitizer_cov_trace_pc() #8
  %122 = inttoptr i32 %ret.1 to ptr
  br label %cleanup

cleanup:                                          ; preds = %hisi_clk_unregister_fixed_rate.exit, %if.end14.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %0, %if.then4 ], [ %122, %hisi_clk_unregister_fixed_rate.exit ], [ %call, %if.end14.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hi3559av100_clk_unregister(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  tail call void @of_clk_del_provider(ptr noundef %3) #6
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry
  %i.010.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %entry ]
  %arrayidx.i = getelementptr %struct.hisi_gate_clock, ptr @hi3559av100_gate_clks, i32 %i.010.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %arrayidx3.i = getelementptr ptr, ptr %7, i32 %9
  %10 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx3.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unregister_gate(ptr noundef nonnull %11) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %inc.i = add nuw nsw i32 %i.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 38
  br i1 %exitcond.not.i, label %hisi_clk_unregister_gate.exit, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

hisi_clk_unregister_gate.exit:                    ; preds = %if.end.i
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %16 = load i32, ptr @hi3559av100_mux_clks_crg, align 4
  %arrayidx3.i8 = getelementptr ptr, ptr %15, i32 %16
  %17 = ptrtoint ptr %arrayidx3.i8 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx3.i8, align 4
  %tobool.not.i9 = icmp eq ptr %18, null
  br i1 %tobool.not.i9, label %hisi_clk_unregister_gate.exit.if.end.i14_crit_edge, label %if.then.i11

hisi_clk_unregister_gate.exit.if.end.i14_crit_edge: ; preds = %hisi_clk_unregister_gate.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i14

if.then.i11:                                      ; preds = %hisi_clk_unregister_gate.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unregister_mux(ptr noundef nonnull %18) #6
  br label %if.end.i14

if.end.i14:                                       ; preds = %if.then.i11, %hisi_clk_unregister_gate.exit.if.end.i14_crit_edge
  %19 = load i32, ptr getelementptr inbounds ([9 x %struct.hisi_mux_clock], ptr @hi3559av100_mux_clks_crg, i32 0, i32 1), align 4
  %arrayidx3.i8.1 = getelementptr ptr, ptr %15, i32 %19
  %20 = ptrtoint ptr %arrayidx3.i8.1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx3.i8.1, align 4
  %tobool.not.i9.1 = icmp eq ptr %21, null
  br i1 %tobool.not.i9.1, label %if.end.i14.if.end.i14.1_crit_edge, label %if.then.i11.1

if.end.i14.if.end.i14.1_crit_edge:                ; preds = %if.end.i14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i14.1

if.then.i11.1:                                    ; preds = %if.end.i14
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unregister_mux(ptr noundef nonnull %21) #6
  br label %if.end.i14.1

if.end.i14.1:                                     ; preds = %if.then.i11.1, %if.end.i14.if.end.i14.1_crit_edge
  %22 = load i32, ptr getelementptr inbounds ([9 x %struct.hisi_mux_clock], ptr @hi3559av100_mux_clks_crg, i32 0, i32 2), align 4
  %arrayidx3.i8.2 = getelementptr ptr, ptr %15, i32 %22
  %23 = ptrtoint ptr %arrayidx3.i8.2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx3.i8.2, align 4
  %tobool.not.i9.2 = icmp eq ptr %24, null
  br i1 %tobool.not.i9.2, label %if.end.i14.1.if.end.i14.2_crit_edge, label %if.then.i11.2

if.end.i14.1.if.end.i14.2_crit_edge:              ; preds = %if.end.i14.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i14.2

if.then.i11.2:                                    ; preds = %if.end.i14.1
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unregister_mux(ptr noundef nonnull %24) #6
  br label %if.end.i14.2

if.end.i14.2:                                     ; preds = %if.then.i11.2, %if.end.i14.1.if.end.i14.2_crit_edge
  %25 = load i32, ptr getelementptr inbounds ([9 x %struct.hisi_mux_clock], ptr @hi3559av100_mux_clks_crg, i32 0, i32 3), align 4
  %arrayidx3.i8.3 = getelementptr ptr, ptr %15, i32 %25
  %26 = ptrtoint ptr %arrayidx3.i8.3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx3.i8.3, align 4
  %tobool.not.i9.3 = icmp eq ptr %27, null
  br i1 %tobool.not.i9.3, label %if.end.i14.2.if.end.i14.3_crit_edge, label %if.then.i11.3

if.end.i14.2.if.end.i14.3_crit_edge:              ; preds = %if.end.i14.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i14.3

if.then.i11.3:                                    ; preds = %if.end.i14.2
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unregister_mux(ptr noundef nonnull %27) #6
  br label %if.end.i14.3

if.end.i14.3:                                     ; preds = %if.then.i11.3, %if.end.i14.2.if.end.i14.3_crit_edge
  %28 = load i32, ptr getelementptr inbounds ([9 x %struct.hisi_mux_clock], ptr @hi3559av100_mux_clks_crg, i32 0, i32 4), align 4
  %arrayidx3.i8.4 = getelementptr ptr, ptr %15, i32 %28
  %29 = ptrtoint ptr %arrayidx3.i8.4 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx3.i8.4, align 4
  %tobool.not.i9.4 = icmp eq ptr %30, null
  br i1 %tobool.not.i9.4, label %if.end.i14.3.if.end.i14.4_crit_edge, label %if.then.i11.4

if.end.i14.3.if.end.i14.4_crit_edge:              ; preds = %if.end.i14.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i14.4

if.then.i11.4:                                    ; preds = %if.end.i14.3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unregister_mux(ptr noundef nonnull %30) #6
  br label %if.end.i14.4

if.end.i14.4:                                     ; preds = %if.then.i11.4, %if.end.i14.3.if.end.i14.4_crit_edge
  %31 = load i32, ptr getelementptr inbounds ([9 x %struct.hisi_mux_clock], ptr @hi3559av100_mux_clks_crg, i32 0, i32 5), align 4
  %arrayidx3.i8.5 = getelementptr ptr, ptr %15, i32 %31
  %32 = ptrtoint ptr %arrayidx3.i8.5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx3.i8.5, align 4
  %tobool.not.i9.5 = icmp eq ptr %33, null
  br i1 %tobool.not.i9.5, label %if.end.i14.4.if.end.i14.5_crit_edge, label %if.then.i11.5

if.end.i14.4.if.end.i14.5_crit_edge:              ; preds = %if.end.i14.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i14.5

if.then.i11.5:                                    ; preds = %if.end.i14.4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unregister_mux(ptr noundef nonnull %33) #6
  br label %if.end.i14.5

if.end.i14.5:                                     ; preds = %if.then.i11.5, %if.end.i14.4.if.end.i14.5_crit_edge
  %34 = load i32, ptr getelementptr inbounds ([9 x %struct.hisi_mux_clock], ptr @hi3559av100_mux_clks_crg, i32 0, i32 6), align 4
  %arrayidx3.i8.6 = getelementptr ptr, ptr %15, i32 %34
  %35 = ptrtoint ptr %arrayidx3.i8.6 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx3.i8.6, align 4
  %tobool.not.i9.6 = icmp eq ptr %36, null
  br i1 %tobool.not.i9.6, label %if.end.i14.5.if.end.i14.6_crit_edge, label %if.then.i11.6

if.end.i14.5.if.end.i14.6_crit_edge:              ; preds = %if.end.i14.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i14.6

if.then.i11.6:                                    ; preds = %if.end.i14.5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unregister_mux(ptr noundef nonnull %36) #6
  br label %if.end.i14.6

if.end.i14.6:                                     ; preds = %if.then.i11.6, %if.end.i14.5.if.end.i14.6_crit_edge
  %37 = load i32, ptr getelementptr inbounds ([9 x %struct.hisi_mux_clock], ptr @hi3559av100_mux_clks_crg, i32 0, i32 7), align 4
  %arrayidx3.i8.7 = getelementptr ptr, ptr %15, i32 %37
  %38 = ptrtoint ptr %arrayidx3.i8.7 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx3.i8.7, align 4
  %tobool.not.i9.7 = icmp eq ptr %39, null
  br i1 %tobool.not.i9.7, label %if.end.i14.6.if.end.i14.7_crit_edge, label %if.then.i11.7

if.end.i14.6.if.end.i14.7_crit_edge:              ; preds = %if.end.i14.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i14.7

if.then.i11.7:                                    ; preds = %if.end.i14.6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unregister_mux(ptr noundef nonnull %39) #6
  br label %if.end.i14.7

if.end.i14.7:                                     ; preds = %if.then.i11.7, %if.end.i14.6.if.end.i14.7_crit_edge
  %40 = load i32, ptr getelementptr inbounds ([9 x %struct.hisi_mux_clock], ptr @hi3559av100_mux_clks_crg, i32 0, i32 8), align 4
  %arrayidx3.i8.8 = getelementptr ptr, ptr %15, i32 %40
  %41 = ptrtoint ptr %arrayidx3.i8.8 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx3.i8.8, align 4
  %tobool.not.i9.8 = icmp eq ptr %42, null
  br i1 %tobool.not.i9.8, label %if.end.i14.7.if.end.i14.8_crit_edge, label %if.then.i11.8

if.end.i14.7.if.end.i14.8_crit_edge:              ; preds = %if.end.i14.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i14.8

if.then.i11.8:                                    ; preds = %if.end.i14.7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unregister_mux(ptr noundef nonnull %42) #6
  br label %if.end.i14.8

if.end.i14.8:                                     ; preds = %if.then.i11.8, %if.end.i14.7.if.end.i14.8_crit_edge
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %1, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %44, align 4
  br label %for.body.i19

for.body.i19:                                     ; preds = %if.end.i23.for.body.i19_crit_edge, %if.end.i14.8
  %i.010.i15 = phi i32 [ %inc.i21, %if.end.i23.for.body.i19_crit_edge ], [ 0, %if.end.i14.8 ]
  %arrayidx.i16 = getelementptr %struct.hisi_fixed_rate_clock, ptr @hi3559av100_fixed_rate_clks_crg, i32 %i.010.i15
  %47 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx.i16, align 4
  %arrayidx3.i17 = getelementptr ptr, ptr %46, i32 %48
  %49 = ptrtoint ptr %arrayidx3.i17 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx3.i17, align 4
  %tobool.not.i18 = icmp eq ptr %50, null
  br i1 %tobool.not.i18, label %for.body.i19.if.end.i23_crit_edge, label %if.then.i20

for.body.i19.if.end.i23_crit_edge:                ; preds = %for.body.i19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i23

if.then.i20:                                      ; preds = %for.body.i19
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %50) #6
  br label %if.end.i23

if.end.i23:                                       ; preds = %if.then.i20, %for.body.i19.if.end.i23_crit_edge
  %inc.i21 = add nuw nsw i32 %i.010.i15, 1
  %exitcond.not.i22 = icmp eq i32 %inc.i21, 45
  br i1 %exitcond.not.i22, label %hisi_clk_unregister_fixed_rate.exit, label %if.end.i23.for.body.i19_crit_edge

if.end.i23.for.body.i19_crit_edge:                ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i19

hisi_clk_unregister_fixed_rate.exit:              ; preds = %if.end.i23
  call void @__sanitizer_cov_trace_pc() #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hisi_clk_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hisi_clk_register_fixed_rate(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hisi_clk_register_mux(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hisi_clk_register_gate(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pll_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_reg1 = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %ctrl_reg1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl_reg1, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !334
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %frac_shift = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %hw, i32 0, i32 3
  %4 = ptrtoint ptr %frac_shift to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %frac_shift, align 4
  %conv = zext i8 %5 to i32
  %shr = lshr i32 %3, %conv
  %frac_width = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %hw, i32 0, i32 4
  %6 = ptrtoint ptr %frac_width to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %frac_width, align 1
  %conv3 = zext i8 %7 to i32
  %notmask = shl nsw i32 -1, %conv3
  %sub = xor i32 %notmask, -1
  %and = and i32 %shr, %sub
  %conv4 = zext i32 %and to i64
  %8 = ptrtoint ptr %ctrl_reg1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ctrl_reg1, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #6, !srcloc !334
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  %postdiv1_shift = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %hw, i32 0, i32 5
  %12 = ptrtoint ptr %postdiv1_shift to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %postdiv1_shift, align 2
  %conv9 = zext i8 %13 to i32
  %shr10 = lshr i32 %11, %conv9
  %postdiv1_width = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %hw, i32 0, i32 6
  %14 = ptrtoint ptr %postdiv1_width to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %postdiv1_width, align 1
  %conv11 = zext i8 %15 to i32
  %notmask648 = shl nsw i32 -1, %conv11
  %sub13 = xor i32 %notmask648, -1
  %and14 = and i32 %shr10, %sub13
  %16 = ptrtoint ptr %ctrl_reg1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ctrl_reg1, align 4
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %17) #6, !srcloc !334
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %postdiv2_shift = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %hw, i32 0, i32 7
  %20 = ptrtoint ptr %postdiv2_shift to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %postdiv2_shift, align 4
  %conv19 = zext i8 %21 to i32
  %shr20 = lshr i32 %19, %conv19
  %postdiv2_width = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %hw, i32 0, i32 8
  %22 = ptrtoint ptr %postdiv2_width to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %postdiv2_width, align 1
  %conv21 = zext i8 %23 to i32
  %notmask649 = shl nsw i32 -1, %conv21
  %sub23 = xor i32 %notmask649, -1
  %and24 = and i32 %shr20, %sub23
  %ctrl_reg2 = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %hw, i32 0, i32 9
  %24 = ptrtoint ptr %ctrl_reg2 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ctrl_reg2, align 4
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %25) #6, !srcloc !334
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  %fbdiv_shift = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %hw, i32 0, i32 10
  %28 = ptrtoint ptr %fbdiv_shift to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %fbdiv_shift, align 4
  %conv28 = zext i8 %29 to i32
  %shr29 = lshr i32 %27, %conv28
  %fbdiv_width = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %hw, i32 0, i32 11
  %30 = ptrtoint ptr %fbdiv_width to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %fbdiv_width, align 1
  %conv30 = zext i8 %31 to i32
  %notmask650 = shl nsw i32 -1, %conv30
  %sub32 = xor i32 %notmask650, -1
  %and33 = and i32 %shr29, %sub32
  %conv34 = zext i32 %and33 to i64
  %32 = ptrtoint ptr %ctrl_reg2 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ctrl_reg2, align 4
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %33) #6, !srcloc !334
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  %refdiv_shift = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %hw, i32 0, i32 12
  %36 = ptrtoint ptr %refdiv_shift to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %refdiv_shift, align 2
  %conv39 = zext i8 %37 to i32
  %shr40 = lshr i32 %35, %conv39
  %refdiv_width = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %hw, i32 0, i32 13
  %38 = ptrtoint ptr %refdiv_width to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %refdiv_width, align 1
  %conv41 = zext i8 %39 to i32
  %notmask651 = shl nsw i32 -1, %conv41
  %sub43 = xor i32 %notmask651, -1
  %and44 = and i32 %shr40, %sub43
  %mul = mul nuw nsw i64 %conv34, 24000000
  %mul46 = mul nuw nsw i64 %conv4, 24000000
  %div652 = lshr i64 %mul46, 24
  %add = add nuw nsw i64 %mul, %div652
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %add)
  %cmp223 = icmp ult i64 %add, 4294967296
  br i1 %cmp223, label %if.then227, label %if.else233, !prof !335

if.then227:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv228 = trunc i64 %add to i32
  %div231 = udiv i32 %conv228, %and44
  %conv232 = zext i32 %div231 to i64
  br label %if.end237

if.else233:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %40 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %and44, i64 %add) #10, !srcloc !336
  %asmresult1.i = extractvalue { i64, i64 } %40, 1
  br label %if.end237

if.end237:                                        ; preds = %if.else233, %if.then227
  %rate.0 = phi i64 [ %conv232, %if.then227 ], [ %asmresult1.i, %if.else233 ]
  %mul240 = mul i32 %and24, %and14
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %rate.0)
  %cmp441 = icmp ult i64 %rate.0, 4294967296
  br i1 %cmp441, label %if.then449, label %if.else455, !prof !335

if.then449:                                       ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #8
  %conv450 = trunc i64 %rate.0 to i32
  %div453 = udiv i32 %conv450, %mul240
  br label %if.end459

if.else455:                                       ; preds = %if.end237
  call void @__sanitizer_cov_trace_pc() #8
  %41 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul240, i64 %rate.0) #10, !srcloc !336
  %asmresult1.i680 = extractvalue { i64, i64 } %41, 1
  %extract.t728 = trunc i64 %asmresult1.i680 to i32
  br label %if.end459

if.end459:                                        ; preds = %if.else455, %if.then449
  %rate.1.off0 = phi i32 [ %div453, %if.then449 ], [ %extract.t728, %if.else455 ]
  ret i32 %rate.1.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_pll_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = zext i32 %rate to i64
  %mul1.i = shl nuw nsw i64 %conv, 1
  %0 = tail call i64 asm "umull\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,~{cc}"(i64 4835703278458516699, i64 %mul1.i) #10, !srcloc !337
  %1 = tail call { i64, i32 } asm "umlal\09${0:R}, ${0:Q}, ${2:R}, ${3:Q}\0A\09umlal\09${0:R}, $1, ${2:Q}, ${3:R}\0A\09mov\09${0:R}, #0\0A\09adds\09${0:Q}, $1, ${0:Q}\0A\09adc\09${0:R}, ${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${2:R}, ${3:R}", "=&r,=&{r12},r,r,0,1,~{cc}"(i64 4835703278458516699, i64 %mul1.i, i64 %0, i32 0) #10, !srcloc !338
  %asmresult10.i.i = extractvalue { i64, i32 } %1, 0
  %div163872.i = lshr i64 %asmresult10.i.i, 18
  %conv219.i = trunc i64 %div163872.i to i32
  %div296873.i = lshr i64 %asmresult10.i.i, 21
  %2 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 6148914691236517205, i64 %div296873.i, i64 6148914691236517205) #10, !srcloc !339
  %3 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 6148914691236517205, i64 %div296873.i, i64 %2) #10, !srcloc !340
  %conv382.i = trunc i64 %3 to i32
  %mul383.neg.i = mul i32 %conv382.i, -24
  %sub384.i = add i32 %mul383.neg.i, %conv219.i
  %conv407.i = zext i32 %sub384.i to i64
  %div520.i = shl nuw nsw i64 %conv407.i, 21
  %4 = tail call i64 asm "umlal\09${0:Q}, ${0:R}, ${1:Q}, ${2:Q}\0A\09mov\09${0:Q}, #0", "=&r,r,r,0,~{cc}"(i64 6148914691236517205, i64 %div520.i, i64 6148914691236517205) #10, !srcloc !339
  %5 = tail call i64 asm "umlal\09${0:R}, ${0:Q}, ${1:R}, ${2:Q}\0A\09umlal\09${0:R}, ${0:Q}, ${1:Q}, ${2:R}\0A\09mov\09${0:R}, #0\0A\09umlal\09${0:Q}, ${0:R}, ${1:R}, ${2:R}", "=&r,r,r,0,~{cc}"(i64 6148914691236517205, i64 %div520.i, i64 %4) #10, !srcloc !340
  %extract.t876.i = trunc i64 %5 to i32
  %ctrl_reg1 = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %hw, i32 0, i32 2
  %6 = ptrtoint ptr %ctrl_reg1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctrl_reg1, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #6, !srcloc !334
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %frac_width = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %hw, i32 0, i32 4
  %10 = ptrtoint ptr %frac_width to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %frac_width, align 1
  %conv2 = zext i8 %11 to i32
  %notmask = shl nsw i32 -1, %conv2
  %sub = xor i32 %notmask, -1
  %frac_shift = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %hw, i32 0, i32 3
  %12 = ptrtoint ptr %frac_shift to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %frac_shift, align 4
  %conv3 = zext i8 %13 to i32
  %shl4 = shl i32 %sub, %conv3
  %postdiv1_width = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %hw, i32 0, i32 6
  %14 = ptrtoint ptr %postdiv1_width to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %postdiv1_width, align 1
  %conv5 = zext i8 %15 to i32
  %notmask86 = shl nsw i32 -1, %conv5
  %sub7 = xor i32 %notmask86, -1
  %postdiv1_shift = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %hw, i32 0, i32 5
  %16 = ptrtoint ptr %postdiv1_shift to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %postdiv1_shift, align 2
  %conv8 = zext i8 %17 to i32
  %shl9 = shl i32 %sub7, %conv8
  %18 = or i32 %shl9, %shl4
  %postdiv2_width = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %hw, i32 0, i32 8
  %19 = ptrtoint ptr %postdiv2_width to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %postdiv2_width, align 1
  %conv12 = zext i8 %20 to i32
  %notmask87 = shl nsw i32 -1, %conv12
  %sub14 = xor i32 %notmask87, -1
  %postdiv2_shift = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %hw, i32 0, i32 7
  %21 = ptrtoint ptr %postdiv2_shift to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %postdiv2_shift, align 4
  %conv15 = zext i8 %22 to i32
  %shl16 = shl i32 %sub14, %conv15
  %23 = or i32 %18, %shl16
  %24 = xor i32 %23, -1
  %and18 = and i32 %9, %24
  %shl21 = shl i32 %extract.t876.i, %conv3
  %shl24 = shl i32 2, %conv8
  %shl28 = shl nuw i32 1, %conv15
  %or = or i32 %shl24, %shl21
  %or25 = or i32 %or, %shl28
  %or29 = or i32 %or25, %and18
  %25 = tail call i32 @llvm.bswap.i32(i32 %or29)
  %26 = ptrtoint ptr %ctrl_reg1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ctrl_reg1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #6, !srcloc !341
  %ctrl_reg2 = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %hw, i32 0, i32 9
  %28 = ptrtoint ptr %ctrl_reg2 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ctrl_reg2, align 4
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #6, !srcloc !334
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  %fbdiv_width = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %hw, i32 0, i32 11
  %32 = ptrtoint ptr %fbdiv_width to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %fbdiv_width, align 1
  %conv34 = zext i8 %33 to i32
  %notmask88 = shl nsw i32 -1, %conv34
  %sub36 = xor i32 %notmask88, -1
  %fbdiv_shift = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %hw, i32 0, i32 10
  %34 = ptrtoint ptr %fbdiv_shift to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %fbdiv_shift, align 4
  %conv37 = zext i8 %35 to i32
  %shl38 = shl i32 %sub36, %conv37
  %refdiv_width = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %hw, i32 0, i32 13
  %36 = ptrtoint ptr %refdiv_width to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %refdiv_width, align 1
  %conv41 = zext i8 %37 to i32
  %notmask89 = shl nsw i32 -1, %conv41
  %sub43 = xor i32 %notmask89, -1
  %refdiv_shift = getelementptr inbounds %struct.hi3559av100_clk_pll, ptr %hw, i32 0, i32 12
  %38 = ptrtoint ptr %refdiv_shift to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %refdiv_shift, align 2
  %conv44 = zext i8 %39 to i32
  %shl45 = shl i32 %sub43, %conv44
  %40 = or i32 %shl45, %shl38
  %41 = xor i32 %40, -1
  %and47 = and i32 %31, %41
  %shl50 = shl i32 %conv382.i, %conv37
  %shl54 = shl nuw i32 1, %conv44
  %or51 = or i32 %shl54, %shl50
  %or55 = or i32 %or51, %and47
  %42 = tail call i32 @llvm.bswap.i32(i32 %or55)
  %43 = ptrtoint ptr %ctrl_reg2 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ctrl_reg2, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %44, i32 %42) #6, !srcloc !341
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister_gate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister_mux(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister_fixed_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @hi3559av100_shub_clk_register(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call ptr @ioremap(i32 noundef 402784256, i32 noundef 4096) #6
  %add.ptr.i = getelementptr i8, ptr %call.i, i32 32
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !334
  %1 = or i32 %0, 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %1) #6, !srcloc !341
  %add.ptr4.i = getelementptr i8, ptr %call.i, i32 28
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr4.i) #6, !srcloc !334
  %3 = or i32 %2, 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %3) #6, !srcloc !341
  tail call void @iounmap(ptr noundef %call.i) #6
  %call1 = tail call ptr @hisi_clk_alloc(ptr noundef %pdev, i32 noundef 50) #6
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @hisi_clk_register_fixed_rate(ptr noundef nonnull @hi3559av100_shub_fixed_rate_clks, i32 noundef 13, ptr noundef nonnull %call1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = inttoptr i32 %call3 to ptr
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call i32 @hisi_clk_register_mux(ptr noundef nonnull @hi3559av100_shub_mux_clks, i32 noundef 2, ptr noundef nonnull %call1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.unregister_fixed_rate_crit_edge

if.end7.unregister_fixed_rate_crit_edge:          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %unregister_fixed_rate

if.end11:                                         ; preds = %if.end7
  %call12 = tail call i32 @hisi_clk_register_divider(ptr noundef nonnull @hi3559av100_shub_div_clks, i32 noundef 2, ptr noundef nonnull %call1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.unregister_mux_crit_edge

if.end11.unregister_mux_crit_edge:                ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %unregister_mux

if.end15:                                         ; preds = %if.end11
  %call16 = tail call i32 @hisi_clk_register_gate(ptr noundef nonnull @hi3559av100_shub_gate_clks, i32 noundef 11, ptr noundef nonnull %call1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.unregister_factor_crit_edge

if.end15.unregister_factor_crit_edge:             ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %unregister_factor

if.end19:                                         ; preds = %if.end15
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %call21 = tail call i32 @of_clk_add_provider(ptr noundef %6, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull %call1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end19.cleanup_crit_edge, label %unregister_gate

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

unregister_gate:                                  ; preds = %if.end19
  %7 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %call1, align 4
  %9 = load i32, ptr @hi3559av100_shub_gate_clks, align 4
  %arrayidx3.i = getelementptr ptr, ptr %8, i32 %9
  %10 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx3.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %unregister_gate.if.end.i_crit_edge, label %if.then.i

unregister_gate.if.end.i_crit_edge:               ; preds = %unregister_gate
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %unregister_gate
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unregister_gate(ptr noundef nonnull %11) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %unregister_gate.if.end.i_crit_edge
  %12 = load i32, ptr getelementptr inbounds ([11 x %struct.hisi_gate_clock], ptr @hi3559av100_shub_gate_clks, i32 0, i32 1), align 4
  %arrayidx3.i.1 = getelementptr ptr, ptr %8, i32 %12
  %13 = ptrtoint ptr %arrayidx3.i.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx3.i.1, align 4
  %tobool.not.i.1 = icmp eq ptr %14, null
  br i1 %tobool.not.i.1, label %if.end.i.if.end.i.1_crit_edge, label %if.then.i.1

if.end.i.if.end.i.1_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.1

if.then.i.1:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unregister_gate(ptr noundef nonnull %14) #6
  br label %if.end.i.1

if.end.i.1:                                       ; preds = %if.then.i.1, %if.end.i.if.end.i.1_crit_edge
  %15 = load i32, ptr getelementptr inbounds ([11 x %struct.hisi_gate_clock], ptr @hi3559av100_shub_gate_clks, i32 0, i32 2), align 4
  %arrayidx3.i.2 = getelementptr ptr, ptr %8, i32 %15
  %16 = ptrtoint ptr %arrayidx3.i.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx3.i.2, align 4
  %tobool.not.i.2 = icmp eq ptr %17, null
  br i1 %tobool.not.i.2, label %if.end.i.1.if.end.i.2_crit_edge, label %if.then.i.2

if.end.i.1.if.end.i.2_crit_edge:                  ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.2

if.then.i.2:                                      ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unregister_gate(ptr noundef nonnull %17) #6
  br label %if.end.i.2

if.end.i.2:                                       ; preds = %if.then.i.2, %if.end.i.1.if.end.i.2_crit_edge
  %18 = load i32, ptr getelementptr inbounds ([11 x %struct.hisi_gate_clock], ptr @hi3559av100_shub_gate_clks, i32 0, i32 3), align 4
  %arrayidx3.i.3 = getelementptr ptr, ptr %8, i32 %18
  %19 = ptrtoint ptr %arrayidx3.i.3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx3.i.3, align 4
  %tobool.not.i.3 = icmp eq ptr %20, null
  br i1 %tobool.not.i.3, label %if.end.i.2.if.end.i.3_crit_edge, label %if.then.i.3

if.end.i.2.if.end.i.3_crit_edge:                  ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.3

if.then.i.3:                                      ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unregister_gate(ptr noundef nonnull %20) #6
  br label %if.end.i.3

if.end.i.3:                                       ; preds = %if.then.i.3, %if.end.i.2.if.end.i.3_crit_edge
  %21 = load i32, ptr getelementptr inbounds ([11 x %struct.hisi_gate_clock], ptr @hi3559av100_shub_gate_clks, i32 0, i32 4), align 4
  %arrayidx3.i.4 = getelementptr ptr, ptr %8, i32 %21
  %22 = ptrtoint ptr %arrayidx3.i.4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx3.i.4, align 4
  %tobool.not.i.4 = icmp eq ptr %23, null
  br i1 %tobool.not.i.4, label %if.end.i.3.if.end.i.4_crit_edge, label %if.then.i.4

if.end.i.3.if.end.i.4_crit_edge:                  ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.4

if.then.i.4:                                      ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unregister_gate(ptr noundef nonnull %23) #6
  br label %if.end.i.4

if.end.i.4:                                       ; preds = %if.then.i.4, %if.end.i.3.if.end.i.4_crit_edge
  %24 = load i32, ptr getelementptr inbounds ([11 x %struct.hisi_gate_clock], ptr @hi3559av100_shub_gate_clks, i32 0, i32 5), align 4
  %arrayidx3.i.5 = getelementptr ptr, ptr %8, i32 %24
  %25 = ptrtoint ptr %arrayidx3.i.5 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx3.i.5, align 4
  %tobool.not.i.5 = icmp eq ptr %26, null
  br i1 %tobool.not.i.5, label %if.end.i.4.if.end.i.5_crit_edge, label %if.then.i.5

if.end.i.4.if.end.i.5_crit_edge:                  ; preds = %if.end.i.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.5

if.then.i.5:                                      ; preds = %if.end.i.4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unregister_gate(ptr noundef nonnull %26) #6
  br label %if.end.i.5

if.end.i.5:                                       ; preds = %if.then.i.5, %if.end.i.4.if.end.i.5_crit_edge
  %27 = load i32, ptr getelementptr inbounds ([11 x %struct.hisi_gate_clock], ptr @hi3559av100_shub_gate_clks, i32 0, i32 6), align 4
  %arrayidx3.i.6 = getelementptr ptr, ptr %8, i32 %27
  %28 = ptrtoint ptr %arrayidx3.i.6 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx3.i.6, align 4
  %tobool.not.i.6 = icmp eq ptr %29, null
  br i1 %tobool.not.i.6, label %if.end.i.5.if.end.i.6_crit_edge, label %if.then.i.6

if.end.i.5.if.end.i.6_crit_edge:                  ; preds = %if.end.i.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.6

if.then.i.6:                                      ; preds = %if.end.i.5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unregister_gate(ptr noundef nonnull %29) #6
  br label %if.end.i.6

if.end.i.6:                                       ; preds = %if.then.i.6, %if.end.i.5.if.end.i.6_crit_edge
  %30 = load i32, ptr getelementptr inbounds ([11 x %struct.hisi_gate_clock], ptr @hi3559av100_shub_gate_clks, i32 0, i32 7), align 4
  %arrayidx3.i.7 = getelementptr ptr, ptr %8, i32 %30
  %31 = ptrtoint ptr %arrayidx3.i.7 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx3.i.7, align 4
  %tobool.not.i.7 = icmp eq ptr %32, null
  br i1 %tobool.not.i.7, label %if.end.i.6.if.end.i.7_crit_edge, label %if.then.i.7

if.end.i.6.if.end.i.7_crit_edge:                  ; preds = %if.end.i.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.7

if.then.i.7:                                      ; preds = %if.end.i.6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unregister_gate(ptr noundef nonnull %32) #6
  br label %if.end.i.7

if.end.i.7:                                       ; preds = %if.then.i.7, %if.end.i.6.if.end.i.7_crit_edge
  %33 = load i32, ptr getelementptr inbounds ([11 x %struct.hisi_gate_clock], ptr @hi3559av100_shub_gate_clks, i32 0, i32 8), align 4
  %arrayidx3.i.8 = getelementptr ptr, ptr %8, i32 %33
  %34 = ptrtoint ptr %arrayidx3.i.8 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx3.i.8, align 4
  %tobool.not.i.8 = icmp eq ptr %35, null
  br i1 %tobool.not.i.8, label %if.end.i.7.if.end.i.8_crit_edge, label %if.then.i.8

if.end.i.7.if.end.i.8_crit_edge:                  ; preds = %if.end.i.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.8

if.then.i.8:                                      ; preds = %if.end.i.7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unregister_gate(ptr noundef nonnull %35) #6
  br label %if.end.i.8

if.end.i.8:                                       ; preds = %if.then.i.8, %if.end.i.7.if.end.i.8_crit_edge
  %36 = load i32, ptr getelementptr inbounds ([11 x %struct.hisi_gate_clock], ptr @hi3559av100_shub_gate_clks, i32 0, i32 9), align 4
  %arrayidx3.i.9 = getelementptr ptr, ptr %8, i32 %36
  %37 = ptrtoint ptr %arrayidx3.i.9 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx3.i.9, align 4
  %tobool.not.i.9 = icmp eq ptr %38, null
  br i1 %tobool.not.i.9, label %if.end.i.8.if.end.i.9_crit_edge, label %if.then.i.9

if.end.i.8.if.end.i.9_crit_edge:                  ; preds = %if.end.i.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.9

if.then.i.9:                                      ; preds = %if.end.i.8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unregister_gate(ptr noundef nonnull %38) #6
  br label %if.end.i.9

if.end.i.9:                                       ; preds = %if.then.i.9, %if.end.i.8.if.end.i.9_crit_edge
  %39 = load i32, ptr getelementptr inbounds ([11 x %struct.hisi_gate_clock], ptr @hi3559av100_shub_gate_clks, i32 0, i32 10), align 4
  %arrayidx3.i.10 = getelementptr ptr, ptr %8, i32 %39
  %40 = ptrtoint ptr %arrayidx3.i.10 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx3.i.10, align 4
  %tobool.not.i.10 = icmp eq ptr %41, null
  br i1 %tobool.not.i.10, label %if.end.i.9.unregister_factor_crit_edge, label %if.then.i.10

if.end.i.9.unregister_factor_crit_edge:           ; preds = %if.end.i.9
  call void @__sanitizer_cov_trace_pc() #8
  br label %unregister_factor

if.then.i.10:                                     ; preds = %if.end.i.9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unregister_gate(ptr noundef nonnull %41) #6
  br label %unregister_factor

unregister_factor:                                ; preds = %if.then.i.10, %if.end.i.9.unregister_factor_crit_edge, %if.end15.unregister_factor_crit_edge
  %ret.0 = phi i32 [ %call16, %if.end15.unregister_factor_crit_edge ], [ %call21, %if.then.i.10 ], [ %call21, %if.end.i.9.unregister_factor_crit_edge ]
  %42 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %call1, align 4
  %44 = load i32, ptr @hi3559av100_shub_div_clks, align 4
  %arrayidx3.i44 = getelementptr ptr, ptr %43, i32 %44
  %45 = ptrtoint ptr %arrayidx3.i44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx3.i44, align 4
  %tobool.not.i45 = icmp eq ptr %46, null
  br i1 %tobool.not.i45, label %unregister_factor.if.end.i47_crit_edge, label %if.then.i46

unregister_factor.if.end.i47_crit_edge:           ; preds = %unregister_factor
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i47

if.then.i46:                                      ; preds = %unregister_factor
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unregister_divider(ptr noundef nonnull %46) #6
  br label %if.end.i47

if.end.i47:                                       ; preds = %if.then.i46, %unregister_factor.if.end.i47_crit_edge
  %47 = load i32, ptr getelementptr inbounds ([2 x %struct.hisi_divider_clock], ptr @hi3559av100_shub_div_clks, i32 0, i32 1), align 4
  %arrayidx3.1.i = getelementptr ptr, ptr %43, i32 %47
  %48 = ptrtoint ptr %arrayidx3.1.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx3.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %49, null
  br i1 %tobool.not.1.i, label %if.end.i47.unregister_mux_crit_edge, label %if.then.1.i

if.end.i47.unregister_mux_crit_edge:              ; preds = %if.end.i47
  call void @__sanitizer_cov_trace_pc() #8
  br label %unregister_mux

if.then.1.i:                                      ; preds = %if.end.i47
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unregister_divider(ptr noundef nonnull %49) #6
  br label %unregister_mux

unregister_mux:                                   ; preds = %if.then.1.i, %if.end.i47.unregister_mux_crit_edge, %if.end11.unregister_mux_crit_edge
  %ret.1 = phi i32 [ %call12, %if.end11.unregister_mux_crit_edge ], [ %ret.0, %if.end.i47.unregister_mux_crit_edge ], [ %ret.0, %if.then.1.i ]
  %50 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %call1, align 4
  %52 = load i32, ptr @hi3559av100_shub_mux_clks, align 4
  %arrayidx3.i50 = getelementptr ptr, ptr %51, i32 %52
  %53 = ptrtoint ptr %arrayidx3.i50 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx3.i50, align 4
  %tobool.not.i51 = icmp eq ptr %54, null
  br i1 %tobool.not.i51, label %unregister_mux.if.end.i56_crit_edge, label %if.then.i53

unregister_mux.if.end.i56_crit_edge:              ; preds = %unregister_mux
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i56

if.then.i53:                                      ; preds = %unregister_mux
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unregister_mux(ptr noundef nonnull %54) #6
  br label %if.end.i56

if.end.i56:                                       ; preds = %if.then.i53, %unregister_mux.if.end.i56_crit_edge
  %55 = load i32, ptr getelementptr inbounds ([2 x %struct.hisi_mux_clock], ptr @hi3559av100_shub_mux_clks, i32 0, i32 1), align 4
  %arrayidx3.i50.1 = getelementptr ptr, ptr %51, i32 %55
  %56 = ptrtoint ptr %arrayidx3.i50.1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx3.i50.1, align 4
  %tobool.not.i51.1 = icmp eq ptr %57, null
  br i1 %tobool.not.i51.1, label %if.end.i56.unregister_fixed_rate_crit_edge, label %if.then.i53.1

if.end.i56.unregister_fixed_rate_crit_edge:       ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_pc() #8
  br label %unregister_fixed_rate

if.then.i53.1:                                    ; preds = %if.end.i56
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unregister_mux(ptr noundef nonnull %57) #6
  br label %unregister_fixed_rate

unregister_fixed_rate:                            ; preds = %if.then.i53.1, %if.end.i56.unregister_fixed_rate_crit_edge, %if.end7.unregister_fixed_rate_crit_edge
  %ret.2 = phi i32 [ %call8, %if.end7.unregister_fixed_rate_crit_edge ], [ %ret.1, %if.then.i53.1 ], [ %ret.1, %if.end.i56.unregister_fixed_rate_crit_edge ]
  %58 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %call1, align 4
  %60 = load i32, ptr @hi3559av100_shub_fixed_rate_clks, align 4
  %arrayidx3.i59 = getelementptr ptr, ptr %59, i32 %60
  %61 = ptrtoint ptr %arrayidx3.i59 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx3.i59, align 4
  %tobool.not.i60 = icmp eq ptr %62, null
  br i1 %tobool.not.i60, label %unregister_fixed_rate.if.end.i65_crit_edge, label %if.then.i62

unregister_fixed_rate.if.end.i65_crit_edge:       ; preds = %unregister_fixed_rate
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i65

if.then.i62:                                      ; preds = %unregister_fixed_rate
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %62) #6
  br label %if.end.i65

if.end.i65:                                       ; preds = %if.then.i62, %unregister_fixed_rate.if.end.i65_crit_edge
  %63 = load i32, ptr getelementptr inbounds ([13 x %struct.hisi_fixed_rate_clock], ptr @hi3559av100_shub_fixed_rate_clks, i32 0, i32 1), align 4
  %arrayidx3.i59.1 = getelementptr ptr, ptr %59, i32 %63
  %64 = ptrtoint ptr %arrayidx3.i59.1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx3.i59.1, align 4
  %tobool.not.i60.1 = icmp eq ptr %65, null
  br i1 %tobool.not.i60.1, label %if.end.i65.if.end.i65.1_crit_edge, label %if.then.i62.1

if.end.i65.if.end.i65.1_crit_edge:                ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i65.1

if.then.i62.1:                                    ; preds = %if.end.i65
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %65) #6
  br label %if.end.i65.1

if.end.i65.1:                                     ; preds = %if.then.i62.1, %if.end.i65.if.end.i65.1_crit_edge
  %66 = load i32, ptr getelementptr inbounds ([13 x %struct.hisi_fixed_rate_clock], ptr @hi3559av100_shub_fixed_rate_clks, i32 0, i32 2), align 4
  %arrayidx3.i59.2 = getelementptr ptr, ptr %59, i32 %66
  %67 = ptrtoint ptr %arrayidx3.i59.2 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %arrayidx3.i59.2, align 4
  %tobool.not.i60.2 = icmp eq ptr %68, null
  br i1 %tobool.not.i60.2, label %if.end.i65.1.if.end.i65.2_crit_edge, label %if.then.i62.2

if.end.i65.1.if.end.i65.2_crit_edge:              ; preds = %if.end.i65.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i65.2

if.then.i62.2:                                    ; preds = %if.end.i65.1
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %68) #6
  br label %if.end.i65.2

if.end.i65.2:                                     ; preds = %if.then.i62.2, %if.end.i65.1.if.end.i65.2_crit_edge
  %69 = load i32, ptr getelementptr inbounds ([13 x %struct.hisi_fixed_rate_clock], ptr @hi3559av100_shub_fixed_rate_clks, i32 0, i32 3), align 4
  %arrayidx3.i59.3 = getelementptr ptr, ptr %59, i32 %69
  %70 = ptrtoint ptr %arrayidx3.i59.3 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx3.i59.3, align 4
  %tobool.not.i60.3 = icmp eq ptr %71, null
  br i1 %tobool.not.i60.3, label %if.end.i65.2.if.end.i65.3_crit_edge, label %if.then.i62.3

if.end.i65.2.if.end.i65.3_crit_edge:              ; preds = %if.end.i65.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i65.3

if.then.i62.3:                                    ; preds = %if.end.i65.2
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %71) #6
  br label %if.end.i65.3

if.end.i65.3:                                     ; preds = %if.then.i62.3, %if.end.i65.2.if.end.i65.3_crit_edge
  %72 = load i32, ptr getelementptr inbounds ([13 x %struct.hisi_fixed_rate_clock], ptr @hi3559av100_shub_fixed_rate_clks, i32 0, i32 4), align 4
  %arrayidx3.i59.4 = getelementptr ptr, ptr %59, i32 %72
  %73 = ptrtoint ptr %arrayidx3.i59.4 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx3.i59.4, align 4
  %tobool.not.i60.4 = icmp eq ptr %74, null
  br i1 %tobool.not.i60.4, label %if.end.i65.3.if.end.i65.4_crit_edge, label %if.then.i62.4

if.end.i65.3.if.end.i65.4_crit_edge:              ; preds = %if.end.i65.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i65.4

if.then.i62.4:                                    ; preds = %if.end.i65.3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %74) #6
  br label %if.end.i65.4

if.end.i65.4:                                     ; preds = %if.then.i62.4, %if.end.i65.3.if.end.i65.4_crit_edge
  %75 = load i32, ptr getelementptr inbounds ([13 x %struct.hisi_fixed_rate_clock], ptr @hi3559av100_shub_fixed_rate_clks, i32 0, i32 5), align 4
  %arrayidx3.i59.5 = getelementptr ptr, ptr %59, i32 %75
  %76 = ptrtoint ptr %arrayidx3.i59.5 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx3.i59.5, align 4
  %tobool.not.i60.5 = icmp eq ptr %77, null
  br i1 %tobool.not.i60.5, label %if.end.i65.4.if.end.i65.5_crit_edge, label %if.then.i62.5

if.end.i65.4.if.end.i65.5_crit_edge:              ; preds = %if.end.i65.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i65.5

if.then.i62.5:                                    ; preds = %if.end.i65.4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %77) #6
  br label %if.end.i65.5

if.end.i65.5:                                     ; preds = %if.then.i62.5, %if.end.i65.4.if.end.i65.5_crit_edge
  %78 = load i32, ptr getelementptr inbounds ([13 x %struct.hisi_fixed_rate_clock], ptr @hi3559av100_shub_fixed_rate_clks, i32 0, i32 6), align 4
  %arrayidx3.i59.6 = getelementptr ptr, ptr %59, i32 %78
  %79 = ptrtoint ptr %arrayidx3.i59.6 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx3.i59.6, align 4
  %tobool.not.i60.6 = icmp eq ptr %80, null
  br i1 %tobool.not.i60.6, label %if.end.i65.5.if.end.i65.6_crit_edge, label %if.then.i62.6

if.end.i65.5.if.end.i65.6_crit_edge:              ; preds = %if.end.i65.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i65.6

if.then.i62.6:                                    ; preds = %if.end.i65.5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %80) #6
  br label %if.end.i65.6

if.end.i65.6:                                     ; preds = %if.then.i62.6, %if.end.i65.5.if.end.i65.6_crit_edge
  %81 = load i32, ptr getelementptr inbounds ([13 x %struct.hisi_fixed_rate_clock], ptr @hi3559av100_shub_fixed_rate_clks, i32 0, i32 7), align 4
  %arrayidx3.i59.7 = getelementptr ptr, ptr %59, i32 %81
  %82 = ptrtoint ptr %arrayidx3.i59.7 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx3.i59.7, align 4
  %tobool.not.i60.7 = icmp eq ptr %83, null
  br i1 %tobool.not.i60.7, label %if.end.i65.6.if.end.i65.7_crit_edge, label %if.then.i62.7

if.end.i65.6.if.end.i65.7_crit_edge:              ; preds = %if.end.i65.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i65.7

if.then.i62.7:                                    ; preds = %if.end.i65.6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %83) #6
  br label %if.end.i65.7

if.end.i65.7:                                     ; preds = %if.then.i62.7, %if.end.i65.6.if.end.i65.7_crit_edge
  %84 = load i32, ptr getelementptr inbounds ([13 x %struct.hisi_fixed_rate_clock], ptr @hi3559av100_shub_fixed_rate_clks, i32 0, i32 8), align 4
  %arrayidx3.i59.8 = getelementptr ptr, ptr %59, i32 %84
  %85 = ptrtoint ptr %arrayidx3.i59.8 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx3.i59.8, align 4
  %tobool.not.i60.8 = icmp eq ptr %86, null
  br i1 %tobool.not.i60.8, label %if.end.i65.7.if.end.i65.8_crit_edge, label %if.then.i62.8

if.end.i65.7.if.end.i65.8_crit_edge:              ; preds = %if.end.i65.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i65.8

if.then.i62.8:                                    ; preds = %if.end.i65.7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %86) #6
  br label %if.end.i65.8

if.end.i65.8:                                     ; preds = %if.then.i62.8, %if.end.i65.7.if.end.i65.8_crit_edge
  %87 = load i32, ptr getelementptr inbounds ([13 x %struct.hisi_fixed_rate_clock], ptr @hi3559av100_shub_fixed_rate_clks, i32 0, i32 9), align 4
  %arrayidx3.i59.9 = getelementptr ptr, ptr %59, i32 %87
  %88 = ptrtoint ptr %arrayidx3.i59.9 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx3.i59.9, align 4
  %tobool.not.i60.9 = icmp eq ptr %89, null
  br i1 %tobool.not.i60.9, label %if.end.i65.8.if.end.i65.9_crit_edge, label %if.then.i62.9

if.end.i65.8.if.end.i65.9_crit_edge:              ; preds = %if.end.i65.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i65.9

if.then.i62.9:                                    ; preds = %if.end.i65.8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %89) #6
  br label %if.end.i65.9

if.end.i65.9:                                     ; preds = %if.then.i62.9, %if.end.i65.8.if.end.i65.9_crit_edge
  %90 = load i32, ptr getelementptr inbounds ([13 x %struct.hisi_fixed_rate_clock], ptr @hi3559av100_shub_fixed_rate_clks, i32 0, i32 10), align 4
  %arrayidx3.i59.10 = getelementptr ptr, ptr %59, i32 %90
  %91 = ptrtoint ptr %arrayidx3.i59.10 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %arrayidx3.i59.10, align 4
  %tobool.not.i60.10 = icmp eq ptr %92, null
  br i1 %tobool.not.i60.10, label %if.end.i65.9.if.end.i65.10_crit_edge, label %if.then.i62.10

if.end.i65.9.if.end.i65.10_crit_edge:             ; preds = %if.end.i65.9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i65.10

if.then.i62.10:                                   ; preds = %if.end.i65.9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %92) #6
  br label %if.end.i65.10

if.end.i65.10:                                    ; preds = %if.then.i62.10, %if.end.i65.9.if.end.i65.10_crit_edge
  %93 = load i32, ptr getelementptr inbounds ([13 x %struct.hisi_fixed_rate_clock], ptr @hi3559av100_shub_fixed_rate_clks, i32 0, i32 11), align 4
  %arrayidx3.i59.11 = getelementptr ptr, ptr %59, i32 %93
  %94 = ptrtoint ptr %arrayidx3.i59.11 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %arrayidx3.i59.11, align 4
  %tobool.not.i60.11 = icmp eq ptr %95, null
  br i1 %tobool.not.i60.11, label %if.end.i65.10.if.end.i65.11_crit_edge, label %if.then.i62.11

if.end.i65.10.if.end.i65.11_crit_edge:            ; preds = %if.end.i65.10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i65.11

if.then.i62.11:                                   ; preds = %if.end.i65.10
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %95) #6
  br label %if.end.i65.11

if.end.i65.11:                                    ; preds = %if.then.i62.11, %if.end.i65.10.if.end.i65.11_crit_edge
  %96 = load i32, ptr getelementptr inbounds ([13 x %struct.hisi_fixed_rate_clock], ptr @hi3559av100_shub_fixed_rate_clks, i32 0, i32 12), align 4
  %arrayidx3.i59.12 = getelementptr ptr, ptr %59, i32 %96
  %97 = ptrtoint ptr %arrayidx3.i59.12 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %arrayidx3.i59.12, align 4
  %tobool.not.i60.12 = icmp eq ptr %98, null
  br i1 %tobool.not.i60.12, label %if.end.i65.11.if.end.i65.12_crit_edge, label %if.then.i62.12

if.end.i65.11.if.end.i65.12_crit_edge:            ; preds = %if.end.i65.11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i65.12

if.then.i62.12:                                   ; preds = %if.end.i65.11
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %98) #6
  br label %if.end.i65.12

if.end.i65.12:                                    ; preds = %if.then.i62.12, %if.end.i65.11.if.end.i65.12_crit_edge
  %99 = inttoptr i32 %ret.2 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.end.i65.12, %if.end19.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %4, %if.then5 ], [ %99, %if.end.i65.12 ], [ %call1, %if.end19.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hi3559av100_shub_clk_unregister(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  tail call void @of_clk_del_provider(ptr noundef %3) #6
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %8 = load i32, ptr @hi3559av100_shub_gate_clks, align 4
  %arrayidx3.i = getelementptr ptr, ptr %7, i32 %8
  %9 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx3.i, align 4
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unregister_gate(ptr noundef nonnull %10) #6
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %11 = load i32, ptr getelementptr inbounds ([11 x %struct.hisi_gate_clock], ptr @hi3559av100_shub_gate_clks, i32 0, i32 1), align 4
  %arrayidx3.i.1 = getelementptr ptr, ptr %7, i32 %11
  %12 = ptrtoint ptr %arrayidx3.i.1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx3.i.1, align 4
  %tobool.not.i.1 = icmp eq ptr %13, null
  br i1 %tobool.not.i.1, label %if.end.i.if.end.i.1_crit_edge, label %if.then.i.1

if.end.i.if.end.i.1_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.1

if.then.i.1:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unregister_gate(ptr noundef nonnull %13) #6
  br label %if.end.i.1

if.end.i.1:                                       ; preds = %if.then.i.1, %if.end.i.if.end.i.1_crit_edge
  %14 = load i32, ptr getelementptr inbounds ([11 x %struct.hisi_gate_clock], ptr @hi3559av100_shub_gate_clks, i32 0, i32 2), align 4
  %arrayidx3.i.2 = getelementptr ptr, ptr %7, i32 %14
  %15 = ptrtoint ptr %arrayidx3.i.2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx3.i.2, align 4
  %tobool.not.i.2 = icmp eq ptr %16, null
  br i1 %tobool.not.i.2, label %if.end.i.1.if.end.i.2_crit_edge, label %if.then.i.2

if.end.i.1.if.end.i.2_crit_edge:                  ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.2

if.then.i.2:                                      ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unregister_gate(ptr noundef nonnull %16) #6
  br label %if.end.i.2

if.end.i.2:                                       ; preds = %if.then.i.2, %if.end.i.1.if.end.i.2_crit_edge
  %17 = load i32, ptr getelementptr inbounds ([11 x %struct.hisi_gate_clock], ptr @hi3559av100_shub_gate_clks, i32 0, i32 3), align 4
  %arrayidx3.i.3 = getelementptr ptr, ptr %7, i32 %17
  %18 = ptrtoint ptr %arrayidx3.i.3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx3.i.3, align 4
  %tobool.not.i.3 = icmp eq ptr %19, null
  br i1 %tobool.not.i.3, label %if.end.i.2.if.end.i.3_crit_edge, label %if.then.i.3

if.end.i.2.if.end.i.3_crit_edge:                  ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.3

if.then.i.3:                                      ; preds = %if.end.i.2
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unregister_gate(ptr noundef nonnull %19) #6
  br label %if.end.i.3

if.end.i.3:                                       ; preds = %if.then.i.3, %if.end.i.2.if.end.i.3_crit_edge
  %20 = load i32, ptr getelementptr inbounds ([11 x %struct.hisi_gate_clock], ptr @hi3559av100_shub_gate_clks, i32 0, i32 4), align 4
  %arrayidx3.i.4 = getelementptr ptr, ptr %7, i32 %20
  %21 = ptrtoint ptr %arrayidx3.i.4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx3.i.4, align 4
  %tobool.not.i.4 = icmp eq ptr %22, null
  br i1 %tobool.not.i.4, label %if.end.i.3.if.end.i.4_crit_edge, label %if.then.i.4

if.end.i.3.if.end.i.4_crit_edge:                  ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.4

if.then.i.4:                                      ; preds = %if.end.i.3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unregister_gate(ptr noundef nonnull %22) #6
  br label %if.end.i.4

if.end.i.4:                                       ; preds = %if.then.i.4, %if.end.i.3.if.end.i.4_crit_edge
  %23 = load i32, ptr getelementptr inbounds ([11 x %struct.hisi_gate_clock], ptr @hi3559av100_shub_gate_clks, i32 0, i32 5), align 4
  %arrayidx3.i.5 = getelementptr ptr, ptr %7, i32 %23
  %24 = ptrtoint ptr %arrayidx3.i.5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx3.i.5, align 4
  %tobool.not.i.5 = icmp eq ptr %25, null
  br i1 %tobool.not.i.5, label %if.end.i.4.if.end.i.5_crit_edge, label %if.then.i.5

if.end.i.4.if.end.i.5_crit_edge:                  ; preds = %if.end.i.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.5

if.then.i.5:                                      ; preds = %if.end.i.4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unregister_gate(ptr noundef nonnull %25) #6
  br label %if.end.i.5

if.end.i.5:                                       ; preds = %if.then.i.5, %if.end.i.4.if.end.i.5_crit_edge
  %26 = load i32, ptr getelementptr inbounds ([11 x %struct.hisi_gate_clock], ptr @hi3559av100_shub_gate_clks, i32 0, i32 6), align 4
  %arrayidx3.i.6 = getelementptr ptr, ptr %7, i32 %26
  %27 = ptrtoint ptr %arrayidx3.i.6 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx3.i.6, align 4
  %tobool.not.i.6 = icmp eq ptr %28, null
  br i1 %tobool.not.i.6, label %if.end.i.5.if.end.i.6_crit_edge, label %if.then.i.6

if.end.i.5.if.end.i.6_crit_edge:                  ; preds = %if.end.i.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.6

if.then.i.6:                                      ; preds = %if.end.i.5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unregister_gate(ptr noundef nonnull %28) #6
  br label %if.end.i.6

if.end.i.6:                                       ; preds = %if.then.i.6, %if.end.i.5.if.end.i.6_crit_edge
  %29 = load i32, ptr getelementptr inbounds ([11 x %struct.hisi_gate_clock], ptr @hi3559av100_shub_gate_clks, i32 0, i32 7), align 4
  %arrayidx3.i.7 = getelementptr ptr, ptr %7, i32 %29
  %30 = ptrtoint ptr %arrayidx3.i.7 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx3.i.7, align 4
  %tobool.not.i.7 = icmp eq ptr %31, null
  br i1 %tobool.not.i.7, label %if.end.i.6.if.end.i.7_crit_edge, label %if.then.i.7

if.end.i.6.if.end.i.7_crit_edge:                  ; preds = %if.end.i.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.7

if.then.i.7:                                      ; preds = %if.end.i.6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unregister_gate(ptr noundef nonnull %31) #6
  br label %if.end.i.7

if.end.i.7:                                       ; preds = %if.then.i.7, %if.end.i.6.if.end.i.7_crit_edge
  %32 = load i32, ptr getelementptr inbounds ([11 x %struct.hisi_gate_clock], ptr @hi3559av100_shub_gate_clks, i32 0, i32 8), align 4
  %arrayidx3.i.8 = getelementptr ptr, ptr %7, i32 %32
  %33 = ptrtoint ptr %arrayidx3.i.8 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx3.i.8, align 4
  %tobool.not.i.8 = icmp eq ptr %34, null
  br i1 %tobool.not.i.8, label %if.end.i.7.if.end.i.8_crit_edge, label %if.then.i.8

if.end.i.7.if.end.i.8_crit_edge:                  ; preds = %if.end.i.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.8

if.then.i.8:                                      ; preds = %if.end.i.7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unregister_gate(ptr noundef nonnull %34) #6
  br label %if.end.i.8

if.end.i.8:                                       ; preds = %if.then.i.8, %if.end.i.7.if.end.i.8_crit_edge
  %35 = load i32, ptr getelementptr inbounds ([11 x %struct.hisi_gate_clock], ptr @hi3559av100_shub_gate_clks, i32 0, i32 9), align 4
  %arrayidx3.i.9 = getelementptr ptr, ptr %7, i32 %35
  %36 = ptrtoint ptr %arrayidx3.i.9 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx3.i.9, align 4
  %tobool.not.i.9 = icmp eq ptr %37, null
  br i1 %tobool.not.i.9, label %if.end.i.8.if.end.i.9_crit_edge, label %if.then.i.9

if.end.i.8.if.end.i.9_crit_edge:                  ; preds = %if.end.i.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.9

if.then.i.9:                                      ; preds = %if.end.i.8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unregister_gate(ptr noundef nonnull %37) #6
  br label %if.end.i.9

if.end.i.9:                                       ; preds = %if.then.i.9, %if.end.i.8.if.end.i.9_crit_edge
  %38 = load i32, ptr getelementptr inbounds ([11 x %struct.hisi_gate_clock], ptr @hi3559av100_shub_gate_clks, i32 0, i32 10), align 4
  %arrayidx3.i.10 = getelementptr ptr, ptr %7, i32 %38
  %39 = ptrtoint ptr %arrayidx3.i.10 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx3.i.10, align 4
  %tobool.not.i.10 = icmp eq ptr %40, null
  br i1 %tobool.not.i.10, label %if.end.i.9.if.end.i.10_crit_edge, label %if.then.i.10

if.end.i.9.if.end.i.10_crit_edge:                 ; preds = %if.end.i.9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.10

if.then.i.10:                                     ; preds = %if.end.i.9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unregister_gate(ptr noundef nonnull %40) #6
  br label %if.end.i.10

if.end.i.10:                                      ; preds = %if.then.i.10, %if.end.i.9.if.end.i.10_crit_edge
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %42, align 4
  %45 = load i32, ptr @hi3559av100_shub_div_clks, align 4
  %arrayidx3.i8 = getelementptr ptr, ptr %44, i32 %45
  %46 = ptrtoint ptr %arrayidx3.i8 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx3.i8, align 4
  %tobool.not.i9 = icmp eq ptr %47, null
  br i1 %tobool.not.i9, label %if.end.i.10.if.end.i11_crit_edge, label %if.then.i10

if.end.i.10.if.end.i11_crit_edge:                 ; preds = %if.end.i.10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i11

if.then.i10:                                      ; preds = %if.end.i.10
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unregister_divider(ptr noundef nonnull %47) #6
  br label %if.end.i11

if.end.i11:                                       ; preds = %if.then.i10, %if.end.i.10.if.end.i11_crit_edge
  %48 = load i32, ptr getelementptr inbounds ([2 x %struct.hisi_divider_clock], ptr @hi3559av100_shub_div_clks, i32 0, i32 1), align 4
  %arrayidx3.1.i = getelementptr ptr, ptr %44, i32 %48
  %49 = ptrtoint ptr %arrayidx3.1.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx3.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %50, null
  br i1 %tobool.not.1.i, label %if.end.i11.hisi_clk_unregister_divider.exit_crit_edge, label %if.then.1.i

if.end.i11.hisi_clk_unregister_divider.exit_crit_edge: ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #8
  br label %hisi_clk_unregister_divider.exit

if.then.1.i:                                      ; preds = %if.end.i11
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unregister_divider(ptr noundef nonnull %50) #6
  br label %hisi_clk_unregister_divider.exit

hisi_clk_unregister_divider.exit:                 ; preds = %if.then.1.i, %if.end.i11.hisi_clk_unregister_divider.exit_crit_edge
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %1, align 4
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  %55 = load i32, ptr @hi3559av100_shub_mux_clks, align 4
  %arrayidx3.i14 = getelementptr ptr, ptr %54, i32 %55
  %56 = ptrtoint ptr %arrayidx3.i14 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx3.i14, align 4
  %tobool.not.i15 = icmp eq ptr %57, null
  br i1 %tobool.not.i15, label %hisi_clk_unregister_divider.exit.if.end.i20_crit_edge, label %if.then.i17

hisi_clk_unregister_divider.exit.if.end.i20_crit_edge: ; preds = %hisi_clk_unregister_divider.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i20

if.then.i17:                                      ; preds = %hisi_clk_unregister_divider.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unregister_mux(ptr noundef nonnull %57) #6
  br label %if.end.i20

if.end.i20:                                       ; preds = %if.then.i17, %hisi_clk_unregister_divider.exit.if.end.i20_crit_edge
  %58 = load i32, ptr getelementptr inbounds ([2 x %struct.hisi_mux_clock], ptr @hi3559av100_shub_mux_clks, i32 0, i32 1), align 4
  %arrayidx3.i14.1 = getelementptr ptr, ptr %54, i32 %58
  %59 = ptrtoint ptr %arrayidx3.i14.1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx3.i14.1, align 4
  %tobool.not.i15.1 = icmp eq ptr %60, null
  br i1 %tobool.not.i15.1, label %if.end.i20.if.end.i20.1_crit_edge, label %if.then.i17.1

if.end.i20.if.end.i20.1_crit_edge:                ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i20.1

if.then.i17.1:                                    ; preds = %if.end.i20
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unregister_mux(ptr noundef nonnull %60) #6
  br label %if.end.i20.1

if.end.i20.1:                                     ; preds = %if.then.i17.1, %if.end.i20.if.end.i20.1_crit_edge
  %61 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %1, align 4
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 4
  %65 = load i32, ptr @hi3559av100_shub_fixed_rate_clks, align 4
  %arrayidx3.i23 = getelementptr ptr, ptr %64, i32 %65
  %66 = ptrtoint ptr %arrayidx3.i23 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx3.i23, align 4
  %tobool.not.i24 = icmp eq ptr %67, null
  br i1 %tobool.not.i24, label %if.end.i20.1.if.end.i29_crit_edge, label %if.then.i26

if.end.i20.1.if.end.i29_crit_edge:                ; preds = %if.end.i20.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i29

if.then.i26:                                      ; preds = %if.end.i20.1
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %67) #6
  br label %if.end.i29

if.end.i29:                                       ; preds = %if.then.i26, %if.end.i20.1.if.end.i29_crit_edge
  %68 = load i32, ptr getelementptr inbounds ([13 x %struct.hisi_fixed_rate_clock], ptr @hi3559av100_shub_fixed_rate_clks, i32 0, i32 1), align 4
  %arrayidx3.i23.1 = getelementptr ptr, ptr %64, i32 %68
  %69 = ptrtoint ptr %arrayidx3.i23.1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx3.i23.1, align 4
  %tobool.not.i24.1 = icmp eq ptr %70, null
  br i1 %tobool.not.i24.1, label %if.end.i29.if.end.i29.1_crit_edge, label %if.then.i26.1

if.end.i29.if.end.i29.1_crit_edge:                ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i29.1

if.then.i26.1:                                    ; preds = %if.end.i29
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %70) #6
  br label %if.end.i29.1

if.end.i29.1:                                     ; preds = %if.then.i26.1, %if.end.i29.if.end.i29.1_crit_edge
  %71 = load i32, ptr getelementptr inbounds ([13 x %struct.hisi_fixed_rate_clock], ptr @hi3559av100_shub_fixed_rate_clks, i32 0, i32 2), align 4
  %arrayidx3.i23.2 = getelementptr ptr, ptr %64, i32 %71
  %72 = ptrtoint ptr %arrayidx3.i23.2 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %arrayidx3.i23.2, align 4
  %tobool.not.i24.2 = icmp eq ptr %73, null
  br i1 %tobool.not.i24.2, label %if.end.i29.1.if.end.i29.2_crit_edge, label %if.then.i26.2

if.end.i29.1.if.end.i29.2_crit_edge:              ; preds = %if.end.i29.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i29.2

if.then.i26.2:                                    ; preds = %if.end.i29.1
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %73) #6
  br label %if.end.i29.2

if.end.i29.2:                                     ; preds = %if.then.i26.2, %if.end.i29.1.if.end.i29.2_crit_edge
  %74 = load i32, ptr getelementptr inbounds ([13 x %struct.hisi_fixed_rate_clock], ptr @hi3559av100_shub_fixed_rate_clks, i32 0, i32 3), align 4
  %arrayidx3.i23.3 = getelementptr ptr, ptr %64, i32 %74
  %75 = ptrtoint ptr %arrayidx3.i23.3 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %arrayidx3.i23.3, align 4
  %tobool.not.i24.3 = icmp eq ptr %76, null
  br i1 %tobool.not.i24.3, label %if.end.i29.2.if.end.i29.3_crit_edge, label %if.then.i26.3

if.end.i29.2.if.end.i29.3_crit_edge:              ; preds = %if.end.i29.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i29.3

if.then.i26.3:                                    ; preds = %if.end.i29.2
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %76) #6
  br label %if.end.i29.3

if.end.i29.3:                                     ; preds = %if.then.i26.3, %if.end.i29.2.if.end.i29.3_crit_edge
  %77 = load i32, ptr getelementptr inbounds ([13 x %struct.hisi_fixed_rate_clock], ptr @hi3559av100_shub_fixed_rate_clks, i32 0, i32 4), align 4
  %arrayidx3.i23.4 = getelementptr ptr, ptr %64, i32 %77
  %78 = ptrtoint ptr %arrayidx3.i23.4 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx3.i23.4, align 4
  %tobool.not.i24.4 = icmp eq ptr %79, null
  br i1 %tobool.not.i24.4, label %if.end.i29.3.if.end.i29.4_crit_edge, label %if.then.i26.4

if.end.i29.3.if.end.i29.4_crit_edge:              ; preds = %if.end.i29.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i29.4

if.then.i26.4:                                    ; preds = %if.end.i29.3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %79) #6
  br label %if.end.i29.4

if.end.i29.4:                                     ; preds = %if.then.i26.4, %if.end.i29.3.if.end.i29.4_crit_edge
  %80 = load i32, ptr getelementptr inbounds ([13 x %struct.hisi_fixed_rate_clock], ptr @hi3559av100_shub_fixed_rate_clks, i32 0, i32 5), align 4
  %arrayidx3.i23.5 = getelementptr ptr, ptr %64, i32 %80
  %81 = ptrtoint ptr %arrayidx3.i23.5 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx3.i23.5, align 4
  %tobool.not.i24.5 = icmp eq ptr %82, null
  br i1 %tobool.not.i24.5, label %if.end.i29.4.if.end.i29.5_crit_edge, label %if.then.i26.5

if.end.i29.4.if.end.i29.5_crit_edge:              ; preds = %if.end.i29.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i29.5

if.then.i26.5:                                    ; preds = %if.end.i29.4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %82) #6
  br label %if.end.i29.5

if.end.i29.5:                                     ; preds = %if.then.i26.5, %if.end.i29.4.if.end.i29.5_crit_edge
  %83 = load i32, ptr getelementptr inbounds ([13 x %struct.hisi_fixed_rate_clock], ptr @hi3559av100_shub_fixed_rate_clks, i32 0, i32 6), align 4
  %arrayidx3.i23.6 = getelementptr ptr, ptr %64, i32 %83
  %84 = ptrtoint ptr %arrayidx3.i23.6 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx3.i23.6, align 4
  %tobool.not.i24.6 = icmp eq ptr %85, null
  br i1 %tobool.not.i24.6, label %if.end.i29.5.if.end.i29.6_crit_edge, label %if.then.i26.6

if.end.i29.5.if.end.i29.6_crit_edge:              ; preds = %if.end.i29.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i29.6

if.then.i26.6:                                    ; preds = %if.end.i29.5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %85) #6
  br label %if.end.i29.6

if.end.i29.6:                                     ; preds = %if.then.i26.6, %if.end.i29.5.if.end.i29.6_crit_edge
  %86 = load i32, ptr getelementptr inbounds ([13 x %struct.hisi_fixed_rate_clock], ptr @hi3559av100_shub_fixed_rate_clks, i32 0, i32 7), align 4
  %arrayidx3.i23.7 = getelementptr ptr, ptr %64, i32 %86
  %87 = ptrtoint ptr %arrayidx3.i23.7 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %arrayidx3.i23.7, align 4
  %tobool.not.i24.7 = icmp eq ptr %88, null
  br i1 %tobool.not.i24.7, label %if.end.i29.6.if.end.i29.7_crit_edge, label %if.then.i26.7

if.end.i29.6.if.end.i29.7_crit_edge:              ; preds = %if.end.i29.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i29.7

if.then.i26.7:                                    ; preds = %if.end.i29.6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %88) #6
  br label %if.end.i29.7

if.end.i29.7:                                     ; preds = %if.then.i26.7, %if.end.i29.6.if.end.i29.7_crit_edge
  %89 = load i32, ptr getelementptr inbounds ([13 x %struct.hisi_fixed_rate_clock], ptr @hi3559av100_shub_fixed_rate_clks, i32 0, i32 8), align 4
  %arrayidx3.i23.8 = getelementptr ptr, ptr %64, i32 %89
  %90 = ptrtoint ptr %arrayidx3.i23.8 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx3.i23.8, align 4
  %tobool.not.i24.8 = icmp eq ptr %91, null
  br i1 %tobool.not.i24.8, label %if.end.i29.7.if.end.i29.8_crit_edge, label %if.then.i26.8

if.end.i29.7.if.end.i29.8_crit_edge:              ; preds = %if.end.i29.7
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i29.8

if.then.i26.8:                                    ; preds = %if.end.i29.7
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %91) #6
  br label %if.end.i29.8

if.end.i29.8:                                     ; preds = %if.then.i26.8, %if.end.i29.7.if.end.i29.8_crit_edge
  %92 = load i32, ptr getelementptr inbounds ([13 x %struct.hisi_fixed_rate_clock], ptr @hi3559av100_shub_fixed_rate_clks, i32 0, i32 9), align 4
  %arrayidx3.i23.9 = getelementptr ptr, ptr %64, i32 %92
  %93 = ptrtoint ptr %arrayidx3.i23.9 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx3.i23.9, align 4
  %tobool.not.i24.9 = icmp eq ptr %94, null
  br i1 %tobool.not.i24.9, label %if.end.i29.8.if.end.i29.9_crit_edge, label %if.then.i26.9

if.end.i29.8.if.end.i29.9_crit_edge:              ; preds = %if.end.i29.8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i29.9

if.then.i26.9:                                    ; preds = %if.end.i29.8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %94) #6
  br label %if.end.i29.9

if.end.i29.9:                                     ; preds = %if.then.i26.9, %if.end.i29.8.if.end.i29.9_crit_edge
  %95 = load i32, ptr getelementptr inbounds ([13 x %struct.hisi_fixed_rate_clock], ptr @hi3559av100_shub_fixed_rate_clks, i32 0, i32 10), align 4
  %arrayidx3.i23.10 = getelementptr ptr, ptr %64, i32 %95
  %96 = ptrtoint ptr %arrayidx3.i23.10 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx3.i23.10, align 4
  %tobool.not.i24.10 = icmp eq ptr %97, null
  br i1 %tobool.not.i24.10, label %if.end.i29.9.if.end.i29.10_crit_edge, label %if.then.i26.10

if.end.i29.9.if.end.i29.10_crit_edge:             ; preds = %if.end.i29.9
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i29.10

if.then.i26.10:                                   ; preds = %if.end.i29.9
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %97) #6
  br label %if.end.i29.10

if.end.i29.10:                                    ; preds = %if.then.i26.10, %if.end.i29.9.if.end.i29.10_crit_edge
  %98 = load i32, ptr getelementptr inbounds ([13 x %struct.hisi_fixed_rate_clock], ptr @hi3559av100_shub_fixed_rate_clks, i32 0, i32 11), align 4
  %arrayidx3.i23.11 = getelementptr ptr, ptr %64, i32 %98
  %99 = ptrtoint ptr %arrayidx3.i23.11 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %arrayidx3.i23.11, align 4
  %tobool.not.i24.11 = icmp eq ptr %100, null
  br i1 %tobool.not.i24.11, label %if.end.i29.10.if.end.i29.11_crit_edge, label %if.then.i26.11

if.end.i29.10.if.end.i29.11_crit_edge:            ; preds = %if.end.i29.10
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i29.11

if.then.i26.11:                                   ; preds = %if.end.i29.10
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %100) #6
  br label %if.end.i29.11

if.end.i29.11:                                    ; preds = %if.then.i26.11, %if.end.i29.10.if.end.i29.11_crit_edge
  %101 = load i32, ptr getelementptr inbounds ([13 x %struct.hisi_fixed_rate_clock], ptr @hi3559av100_shub_fixed_rate_clks, i32 0, i32 12), align 4
  %arrayidx3.i23.12 = getelementptr ptr, ptr %64, i32 %101
  %102 = ptrtoint ptr %arrayidx3.i23.12 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %arrayidx3.i23.12, align 4
  %tobool.not.i24.12 = icmp eq ptr %103, null
  br i1 %tobool.not.i24.12, label %if.end.i29.11.if.end.i29.12_crit_edge, label %if.then.i26.12

if.end.i29.11.if.end.i29.12_crit_edge:            ; preds = %if.end.i29.11
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i29.12

if.then.i26.12:                                   ; preds = %if.end.i29.11
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %103) #6
  br label %if.end.i29.12

if.end.i29.12:                                    ; preds = %if.then.i26.12, %if.end.i29.11.if.end.i29.12_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hisi_clk_register_divider(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister_divider(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 160)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 160)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind readnone }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !112, !113, !114, !115, !116, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323}
!llvm.module.flags = !{!325, !326, !327, !328, !329, !330, !331, !332}
!llvm.ident = !{!333}

!0 = !{ptr @__initcall__kmod_clk_hi3559a__183_835_hi3559av100_crg_init1, !1, !"__initcall__kmod_clk_hi3559a__183_835_hi3559av100_crg_init1", i1 false, i1 false}
!1 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 835, i32 1}
!2 = !{ptr @__exitcall_hi3559av100_crg_exit, !3, !"__exitcall_hi3559av100_crg_exit", i1 false, i1 false}
!3 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 841, i32 1}
!4 = !{ptr @__UNIQUE_ID_file184, !5, !"__UNIQUE_ID_file184", i1 false, i1 false}
!5 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 844, i32 1}
!6 = !{ptr @__UNIQUE_ID_license185, !5, !"__UNIQUE_ID_license185", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_description186, !8, !"__UNIQUE_ID_description186", i1 false, i1 false}
!8 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 845, i32 1}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 826, i32 11}
!11 = !{ptr @hi3559av100_crg_driver, !12, !"hi3559av100_crg_driver", i1 false, i1 false}
!12 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 822, i32 31}
!13 = !{ptr @hi3559av100_crg_match_table, !14, !"hi3559av100_crg_match_table", i1 false, i1 false}
!14 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 774, i32 34}
!15 = !{ptr @hi3559av100_crg_funcs, !16, !"hi3559av100_crg_funcs", i1 false, i1 false}
!16 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 566, i32 36}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 62, i32 29}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 63, i32 29}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 64, i32 28}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 65, i32 28}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 66, i32 28}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 67, i32 28}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 68, i32 28}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 69, i32 28}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 70, i32 28}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 71, i32 28}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 72, i32 28}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 73, i32 28}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 74, i32 28}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 75, i32 28}
!45 = !{ptr @.str.15, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 76, i32 28}
!47 = !{ptr @.str.16, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 77, i32 28}
!49 = !{ptr @.str.17, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 78, i32 28}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 79, i32 28}
!53 = !{ptr @.str.19, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 80, i32 28}
!55 = !{ptr @.str.20, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 81, i32 28}
!57 = !{ptr @.str.21, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 82, i32 30}
!59 = !{ptr @.str.22, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 83, i32 28}
!61 = !{ptr @.str.23, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 84, i32 30}
!63 = !{ptr @.str.24, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 85, i32 28}
!65 = !{ptr @.str.25, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 86, i32 28}
!67 = !{ptr @.str.26, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 87, i32 28}
!69 = !{ptr @.str.27, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 88, i32 27}
!71 = !{ptr @.str.28, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 89, i32 27}
!73 = !{ptr @.str.29, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 90, i32 30}
!75 = !{ptr @.str.30, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 91, i32 27}
!77 = !{ptr @.str.31, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 92, i32 27}
!79 = !{ptr @.str.32, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 93, i32 27}
!81 = !{ptr @.str.33, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 94, i32 27}
!83 = !{ptr @.str.34, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 95, i32 29}
!85 = !{ptr @.str.35, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 96, i32 31}
!87 = !{ptr @.str.36, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 97, i32 27}
!89 = !{ptr @.str.37, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 98, i32 29}
!91 = !{ptr @.str.38, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 99, i32 27}
!93 = !{ptr @.str.39, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 100, i32 27}
!95 = !{ptr @.str.40, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 101, i32 27}
!97 = !{ptr @.str.41, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 102, i32 27}
!99 = !{ptr @.str.42, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 103, i32 27}
!101 = !{ptr @.str.43, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 104, i32 28}
!103 = !{ptr @.str.44, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 105, i32 28}
!105 = !{ptr @.str.45, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 106, i32 28}
!107 = !{ptr @hi3559av100_fixed_rate_clks_crg, !108, !"hi3559av100_fixed_rate_clks_crg", i1 false, i1 false}
!108 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 61, i32 43}
!109 = !{ptr @.str.46, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 495, i32 4}
!111 = !{ptr @.str.47, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.48, !110, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @.str.49, !110, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.50, !110, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @hisi_clk_register_pll._entry, !110, !"_entry", i1 false, i1 false}
!116 = !{ptr @hisi_clk_register_pll._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @hisi_clk_pll_ops, !118, !"hisi_clk_pll_ops", i1 false, i1 false}
!118 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 450, i32 29}
!119 = !{ptr @.str.51, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 341, i32 25}
!121 = !{ptr @.str.52, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 345, i32 25}
!123 = !{ptr @hi3559av100_pll_clks, !124, !"hi3559av100_pll_clks", i1 false, i1 false}
!124 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 339, i32 37}
!125 = !{ptr @.str.53, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 141, i32 24}
!127 = !{ptr @.str.54, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 145, i32 25}
!129 = !{ptr @.str.55, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 149, i32 25}
!131 = !{ptr @.str.56, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 154, i32 25}
!133 = !{ptr @.str.57, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 159, i32 25}
!135 = !{ptr @.str.58, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 164, i32 27}
!137 = !{ptr @.str.59, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 169, i32 27}
!139 = !{ptr @.str.60, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 174, i32 25}
!141 = !{ptr @.str.61, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 179, i32 24}
!143 = !{ptr @hi3559av100_mux_clks_crg, !144, !"hi3559av100_mux_clks_crg", i1 false, i1 false}
!144 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 139, i32 30}
!145 = !{ptr @fmc_mux_p, !146, !"fmc_mux_p", i1 false, i1 false}
!146 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 110, i32 20}
!147 = !{ptr @fmc_mux_table, !148, !"fmc_mux_table", i1 false, i1 false}
!148 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 132, i32 18}
!149 = !{ptr @mmc_mux_p, !150, !"mmc_mux_p", i1 false, i1 false}
!150 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 114, i32 20}
!151 = !{ptr @mmc_mux_table, !152, !"mmc_mux_table", i1 false, i1 false}
!152 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 133, i32 18}
!153 = !{ptr @sysapb_mux_p, !154, !"sysapb_mux_p", i1 false, i1 false}
!154 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 118, i32 20}
!155 = !{ptr @sysapb_mux_table, !156, !"sysapb_mux_table", i1 false, i1 false}
!156 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 134, i32 18}
!157 = !{ptr @sysbus_mux_p, !158, !"sysbus_mux_p", i1 false, i1 false}
!158 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 122, i32 20}
!159 = !{ptr @sysbus_mux_table, !160, !"sysbus_mux_table", i1 false, i1 false}
!160 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 135, i32 18}
!161 = !{ptr @uart_mux_p, !162, !"uart_mux_p", i1 false, i1 false}
!162 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 126, i32 20}
!163 = !{ptr @uart_mux_table, !164, !"uart_mux_table", i1 false, i1 false}
!164 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 136, i32 18}
!165 = !{ptr @a73_clksel_mux_p, !166, !"a73_clksel_mux_p", i1 false, i1 false}
!166 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 128, i32 20}
!167 = !{ptr @a73_clksel_mux_table, !168, !"a73_clksel_mux_table", i1 false, i1 false}
!168 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 137, i32 18}
!169 = !{ptr @.str.62, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 186, i32 24}
!171 = !{ptr @.str.63, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 190, i32 25}
!173 = !{ptr @.str.64, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 194, i32 25}
!175 = !{ptr @.str.65, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 198, i32 25}
!177 = !{ptr @.str.66, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 202, i32 25}
!179 = !{ptr @.str.67, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 206, i32 26}
!181 = !{ptr @.str.68, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 210, i32 26}
!183 = !{ptr @.str.69, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 214, i32 26}
!185 = !{ptr @.str.70, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 218, i32 26}
!187 = !{ptr @.str.71, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 222, i32 26}
!189 = !{ptr @.str.72, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 226, i32 24}
!191 = !{ptr @.str.73, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 230, i32 30}
!193 = !{ptr @.str.74, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 234, i32 25}
!195 = !{ptr @.str.75, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 238, i32 31}
!197 = !{ptr @.str.76, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 242, i32 25}
!199 = !{ptr @.str.77, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 246, i32 25}
!201 = !{ptr @.str.78, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 250, i32 25}
!203 = !{ptr @.str.79, !204, !"<string literal>", i1 false, i1 false}
!204 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 254, i32 25}
!205 = !{ptr @.str.80, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 258, i32 25}
!207 = !{ptr @.str.81, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 262, i32 25}
!209 = !{ptr @.str.82, !210, !"<string literal>", i1 false, i1 false}
!210 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 266, i32 25}
!211 = !{ptr @.str.83, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 270, i32 25}
!213 = !{ptr @.str.84, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 274, i32 25}
!215 = !{ptr @.str.85, !216, !"<string literal>", i1 false, i1 false}
!216 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 278, i32 25}
!217 = !{ptr @.str.86, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 282, i32 26}
!219 = !{ptr @.str.87, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 286, i32 26}
!221 = !{ptr @.str.88, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 290, i32 25}
!223 = !{ptr @.str.89, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 294, i32 25}
!225 = !{ptr @.str.90, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 298, i32 25}
!227 = !{ptr @.str.91, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 302, i32 25}
!229 = !{ptr @.str.92, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 306, i32 25}
!231 = !{ptr @.str.93, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 310, i32 25}
!233 = !{ptr @.str.94, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 314, i32 25}
!235 = !{ptr @.str.95, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 318, i32 29}
!237 = !{ptr @.str.96, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 322, i32 26}
!239 = !{ptr @.str.97, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 326, i32 30}
!241 = !{ptr @.str.98, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 330, i32 27}
!243 = !{ptr @.str.99, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 334, i32 26}
!245 = !{ptr @hi3559av100_gate_clks, !246, !"hi3559av100_gate_clks", i1 false, i1 false}
!246 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 184, i32 31}
!247 = !{ptr @hi3559av100_shub_crg_funcs, !248, !"hi3559av100_shub_crg_funcs", i1 false, i1 false}
!248 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 769, i32 36}
!249 = !{ptr @.str.100, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 572, i32 37}
!251 = !{ptr @.str.101, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 573, i32 38}
!253 = !{ptr @.str.102, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 574, i32 38}
!255 = !{ptr @.str.103, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 575, i32 33}
!257 = !{ptr @.str.104, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 576, i32 31}
!259 = !{ptr @.str.105, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 577, i32 31}
!261 = !{ptr @.str.106, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 578, i32 31}
!263 = !{ptr @.str.107, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 579, i32 31}
!265 = !{ptr @.str.108, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 580, i32 31}
!267 = !{ptr @.str.109, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 581, i32 31}
!269 = !{ptr @.str.110, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 582, i32 31}
!271 = !{ptr @.str.111, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 583, i32 31}
!273 = !{ptr @.str.112, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 584, i32 35}
!275 = !{ptr @hi3559av100_shub_fixed_rate_clks, !276, !"hi3559av100_shub_fixed_rate_clks", i1 false, i1 false}
!276 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 571, i32 37}
!277 = !{ptr @.str.113, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 600, i32 32}
!279 = !{ptr @.str.114, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 606, i32 37}
!281 = !{ptr @hi3559av100_shub_mux_clks, !282, !"hi3559av100_shub_mux_clks", i1 false, i1 false}
!282 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 598, i32 30}
!283 = !{ptr @shub_source_clk_mux_p, !284, !"shub_source_clk_mux_p", i1 false, i1 false}
!284 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 589, i32 20}
!285 = !{ptr @shub_source_clk_mux_table, !286, !"shub_source_clk_mux_table", i1 false, i1 false}
!286 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 588, i32 12}
!287 = !{ptr @.str.115, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 595, i32 18}
!289 = !{ptr @shub_uart_source_clk_mux_p, !290, !"shub_uart_source_clk_mux_p", i1 false, i1 false}
!290 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 594, i32 20}
!291 = !{ptr @shub_uart_source_clk_mux_table, !292, !"shub_uart_source_clk_mux_table", i1 false, i1 false}
!292 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 593, i32 12}
!293 = !{ptr @.str.116, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 618, i32 37}
!295 = !{ptr @hi3559av100_shub_div_clks, !296, !"hi3559av100_shub_div_clks", i1 false, i1 false}
!296 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 617, i32 34}
!297 = !{ptr @shub_spi_clk_table, !298, !"shub_spi_clk_table", i1 false, i1 false}
!298 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 614, i32 29}
!299 = !{ptr @shub_uart_div_clk_table, !300, !"shub_uart_div_clk_table", i1 false, i1 false}
!300 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 615, i32 29}
!301 = !{ptr @.str.117, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 629, i32 30}
!303 = !{ptr @.str.118, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 633, i32 30}
!305 = !{ptr @.str.119, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 637, i32 30}
!307 = !{ptr @.str.120, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 642, i32 31}
!309 = !{ptr @.str.121, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 646, i32 31}
!311 = !{ptr @.str.122, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 650, i32 31}
!313 = !{ptr @.str.123, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 654, i32 31}
!315 = !{ptr @.str.124, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 658, i32 31}
!317 = !{ptr @.str.125, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 662, i32 31}
!319 = !{ptr @.str.126, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 666, i32 31}
!321 = !{ptr @.str.127, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 671, i32 31}
!323 = !{ptr @hi3559av100_shub_gate_clks, !324, !"hi3559av100_shub_gate_clks", i1 false, i1 false}
!324 = !{!"../drivers/clk/hisilicon/clk-hi3559a.c", i32 627, i32 31}
!325 = !{i32 1, !"wchar_size", i32 2}
!326 = !{i32 1, !"min_enum_size", i32 4}
!327 = !{i32 8, !"branch-target-enforcement", i32 0}
!328 = !{i32 8, !"sign-return-address", i32 0}
!329 = !{i32 8, !"sign-return-address-all", i32 0}
!330 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!331 = !{i32 7, !"uwtable", i32 1}
!332 = !{i32 7, !"frame-pointer", i32 2}
!333 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!334 = !{i64 5429297}
!335 = !{!"branch_weights", i32 2000, i32 1}
!336 = !{i64 2148964098, i64 2148964378, i64 2148964712, i64 2148965046}
!337 = !{i64 1478267, i64 1478294}
!338 = !{i64 1478962, i64 1478989, i64 1479022, i64 1479043, i64 1479070, i64 1479096}
!339 = !{i64 1478437, i64 1478464}
!340 = !{i64 1478777, i64 1478804, i64 1478838, i64 1478859}
!341 = !{i64 5428879}
