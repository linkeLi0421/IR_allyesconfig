; ModuleID = '/llk/IR_all_yes/drivers/clk/hisilicon/clk-hi3660.c_pt.bc'
source_filename = "../drivers/clk/hisilicon/clk-hi3660.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.hisi_fixed_rate_clock = type { i32, ptr, ptr, i32, i32 }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.hisi_gate_clock = type { i32, ptr, ptr, i32, i32, i8, i8, ptr }
%struct.hisi_mux_clock = type { i32, ptr, ptr, i8, i32, i32, i8, i8, i8, ptr, ptr }
%struct.hisi_fixed_factor_clock = type { i32, ptr, ptr, i32, i32, i32 }
%struct.hisi_divider_clock = type { i32, ptr, ptr, i32, i32, i8, i8, i8, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.list_head = type { ptr, ptr }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.clk_onecell_data = type { ptr, i32 }

@__of_table_hi3660_clk_crgctrl = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi3660-crgctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hi3660_clk_crgctrl_of_clk_init_driver }, section "__clk_of_table", align 4
@__initcall__kmod_clk_hi3660__170_637_hi3660_clk_init1 = internal global ptr @hi3660_clk_init, section ".initcall1.init", align 4
@clk_crgctrl_data = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@hi3660_fixed_rate_clks = internal constant { [15 x %struct.hisi_fixed_rate_clock], [84 x i8] } { [15 x %struct.hisi_fixed_rate_clock] [%struct.hisi_fixed_rate_clock { i32 0, ptr @.str, ptr null, i32 0, i32 19200000 }, %struct.hisi_fixed_rate_clock { i32 1, ptr @.str.1, ptr null, i32 0, i32 32764 }, %struct.hisi_fixed_rate_clock { i32 2, ptr @.str.2, ptr null, i32 0, i32 128000000 }, %struct.hisi_fixed_rate_clock { i32 3, ptr @.str.3, ptr null, i32 0, i32 1600000000 }, %struct.hisi_fixed_rate_clock { i32 4, ptr @.str.4, ptr null, i32 0, i32 1866000000 }, %struct.hisi_fixed_rate_clock { i32 5, ptr @.str.5, ptr null, i32 0, i32 -1414967296 }, %struct.hisi_fixed_rate_clock { i32 6, ptr @.str.6, ptr null, i32 0, i32 1290000000 }, %struct.hisi_fixed_rate_clock { i32 7, ptr @.str.7, ptr null, i32 0, i32 245760000 }, %struct.hisi_fixed_rate_clock { i32 8, ptr @.str.8, ptr null, i32 0, i32 20000000 }, %struct.hisi_fixed_rate_clock { i32 9, ptr @.str.9, ptr null, i32 0, i32 19200000 }, %struct.hisi_fixed_rate_clock { i32 10, ptr @.str.10, ptr null, i32 0, i32 19200000 }, %struct.hisi_fixed_rate_clock { i32 11, ptr @.str.11, ptr null, i32 0, i32 32764 }, %struct.hisi_fixed_rate_clock { i32 12, ptr @.str.12, ptr null, i32 0, i32 19200000 }, %struct.hisi_fixed_rate_clock { i32 13, ptr @.str.13, ptr null, i32 0, i32 480000000 }, %struct.hisi_fixed_rate_clock { i32 14, ptr @.str.14, ptr null, i32 0, i32 10000000 }], [84 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clkin_sys\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clkin_ref\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk_fll_src\00", [20 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clk_ppll0\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clk_ppll1\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clk_ppll2\00", [22 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clk_ppll3\00", [22 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clk_scpll\00", [22 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_uart0_dbg\00", [18 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clk_uart6\00", [22 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"osc32k\00", [25 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"osc19m\00", [25 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_480m\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"clk_inv\00", [24 x i8] zeroinitializer }, align 32
@hi3660_clk_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @hi3660_clk_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.15, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @hi3660_clk_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"hi3660-clk\00", [21 x i8] zeroinitializer }, align 32
@hi3660_clk_match_table = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi3660-crgctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hi3660_clk_crgctrl_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi3660-pctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hi3660_clk_pctrl_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi3660-pmuctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hi3660_clk_pmuctrl_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi3660-sctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hi3660_clk_sctrl_init }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi3660-iomcu\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hi3660_clk_iomcu_init }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@hi3660_crgctrl_gate_sep_clks = internal constant { [62 x %struct.hisi_gate_clock], [440 x i8] } { [62 x %struct.hisi_gate_clock] [%struct.hisi_gate_clock { i32 141, ptr @.str.19, ptr @.str, i32 4, i32 0, i8 0, i8 0, ptr null }, %struct.hisi_gate_clock { i32 28, ptr @.str.20, ptr @.str.21, i32 4, i32 0, i8 21, i8 0, ptr null }, %struct.hisi_gate_clock { i32 29, ptr @.str.22, ptr @.str.21, i32 4, i32 0, i8 30, i8 0, ptr null }, %struct.hisi_gate_clock { i32 30, ptr @.str.23, ptr @.str.24, i32 4, i32 0, i8 31, i8 0, ptr null }, %struct.hisi_gate_clock { i32 31, ptr @.str.25, ptr @.str.26, i32 4, i32 16, i8 0, i8 0, ptr null }, %struct.hisi_gate_clock { i32 32, ptr @.str.27, ptr @.str.26, i32 4, i32 16, i8 1, i8 0, ptr null }, %struct.hisi_gate_clock { i32 33, ptr @.str.28, ptr @.str.26, i32 4, i32 16, i8 2, i8 0, ptr null }, %struct.hisi_gate_clock { i32 34, ptr @.str.29, ptr @.str.26, i32 4, i32 16, i8 3, i8 0, ptr null }, %struct.hisi_gate_clock { i32 35, ptr @.str.30, ptr @.str.26, i32 4, i32 16, i8 4, i8 0, ptr null }, %struct.hisi_gate_clock { i32 36, ptr @.str.31, ptr @.str.26, i32 4, i32 16, i8 5, i8 0, ptr null }, %struct.hisi_gate_clock { i32 37, ptr @.str.32, ptr @.str.26, i32 4, i32 16, i8 6, i8 0, ptr null }, %struct.hisi_gate_clock { i32 38, ptr @.str.33, ptr @.str.26, i32 4, i32 16, i8 7, i8 0, ptr null }, %struct.hisi_gate_clock { i32 39, ptr @.str.34, ptr @.str.26, i32 4, i32 16, i8 8, i8 0, ptr null }, %struct.hisi_gate_clock { i32 40, ptr @.str.35, ptr @.str.26, i32 4, i32 16, i8 9, i8 0, ptr null }, %struct.hisi_gate_clock { i32 41, ptr @.str.36, ptr @.str.26, i32 4, i32 16, i8 10, i8 0, ptr null }, %struct.hisi_gate_clock { i32 42, ptr @.str.37, ptr @.str.26, i32 4, i32 16, i8 11, i8 0, ptr null }, %struct.hisi_gate_clock { i32 43, ptr @.str.38, ptr @.str.26, i32 4, i32 16, i8 12, i8 0, ptr null }, %struct.hisi_gate_clock { i32 44, ptr @.str.39, ptr @.str.26, i32 4, i32 16, i8 13, i8 0, ptr null }, %struct.hisi_gate_clock { i32 45, ptr @.str.40, ptr @.str.26, i32 4, i32 16, i8 14, i8 0, ptr null }, %struct.hisi_gate_clock { i32 46, ptr @.str.41, ptr @.str.26, i32 4, i32 16, i8 15, i8 0, ptr null }, %struct.hisi_gate_clock { i32 47, ptr @.str.42, ptr @.str.26, i32 4, i32 16, i8 16, i8 0, ptr null }, %struct.hisi_gate_clock { i32 48, ptr @.str.43, ptr @.str.26, i32 4, i32 16, i8 17, i8 0, ptr null }, %struct.hisi_gate_clock { i32 49, ptr @.str.44, ptr @.str.45, i32 4, i32 16, i8 18, i8 0, ptr null }, %struct.hisi_gate_clock { i32 50, ptr @.str.46, ptr @.str.45, i32 4, i32 16, i8 19, i8 0, ptr null }, %struct.hisi_gate_clock { i32 51, ptr @.str.47, ptr @.str.26, i32 4, i32 16, i8 20, i8 0, ptr null }, %struct.hisi_gate_clock { i32 52, ptr @.str.48, ptr @.str.26, i32 4, i32 16, i8 21, i8 0, ptr null }, %struct.hisi_gate_clock { i32 53, ptr @.str.49, ptr @.str.45, i32 4, i32 16, i8 30, i8 0, ptr null }, %struct.hisi_gate_clock { i32 54, ptr @.str.50, ptr @.str.51, i32 4, i32 16, i8 31, i8 0, ptr null }, %struct.hisi_gate_clock { i32 55, ptr @.str.52, ptr @.str.51, i32 4, i32 32, i8 7, i8 0, ptr null }, %struct.hisi_gate_clock { i32 56, ptr @.str.53, ptr @.str.54, i32 4, i32 32, i8 9, i8 0, ptr null }, %struct.hisi_gate_clock { i32 57, ptr @.str.55, ptr @.str.56, i32 4, i32 32, i8 11, i8 0, ptr null }, %struct.hisi_gate_clock { i32 58, ptr @.str.57, ptr @.str.58, i32 4, i32 32, i8 12, i8 0, ptr null }, %struct.hisi_gate_clock { i32 59, ptr @.str.59, ptr @.str.56, i32 4, i32 32, i8 14, i8 0, ptr null }, %struct.hisi_gate_clock { i32 60, ptr @.str.60, ptr @.str.58, i32 4, i32 32, i8 15, i8 0, ptr null }, %struct.hisi_gate_clock { i32 61, ptr @.str.61, ptr @.str.51, i32 4, i32 32, i8 27, i8 0, ptr null }, %struct.hisi_gate_clock { i32 62, ptr @.str.62, ptr @.str.21, i32 4, i32 48, i8 1, i8 0, ptr null }, %struct.hisi_gate_clock { i32 142, ptr @.str.63, ptr @.str.64, i32 4, i32 48, i8 10, i8 0, ptr null }, %struct.hisi_gate_clock { i32 143, ptr @.str.65, ptr @.str.66, i32 4, i32 48, i8 11, i8 0, ptr null }, %struct.hisi_gate_clock { i32 63, ptr @.str.67, ptr @.str.26, i32 4, i32 48, i8 12, i8 0, ptr null }, %struct.hisi_gate_clock { i32 64, ptr @.str.68, ptr @.str.69, i32 4, i32 48, i8 13, i8 0, ptr null }, %struct.hisi_gate_clock { i32 65, ptr @.str.70, ptr @.str.71, i32 4, i32 48, i8 14, i8 0, ptr null }, %struct.hisi_gate_clock { i32 66, ptr @.str.72, ptr @.str.73, i32 4, i32 48, i8 15, i8 0, ptr null }, %struct.hisi_gate_clock { i32 67, ptr @.str.69, ptr @.str.74, i32 4, i32 48, i8 16, i8 0, ptr null }, %struct.hisi_gate_clock { i32 68, ptr @.str.75, ptr @.str.76, i32 4, i32 48, i8 17, i8 0, ptr null }, %struct.hisi_gate_clock { i32 69, ptr @.str.77, ptr @.str, i32 4, i32 48, i8 28, i8 0, ptr null }, %struct.hisi_gate_clock { i32 70, ptr @.str.78, ptr @.str, i32 4, i32 48, i8 29, i8 0, ptr null }, %struct.hisi_gate_clock { i32 71, ptr @.str.79, ptr @.str, i32 4, i32 48, i8 30, i8 0, ptr null }, %struct.hisi_gate_clock { i32 72, ptr @.str.80, ptr @.str, i32 4, i32 48, i8 31, i8 0, ptr null }, %struct.hisi_gate_clock { i32 73, ptr @.str.81, ptr @.str.82, i32 4, i32 64, i8 1, i8 0, ptr null }, %struct.hisi_gate_clock { i32 74, ptr @.str.83, ptr @.str.54, i32 4, i32 64, i8 4, i8 0, ptr null }, %struct.hisi_gate_clock { i32 75, ptr @.str.84, ptr @.str.85, i32 4, i32 64, i8 17, i8 0, ptr null }, %struct.hisi_gate_clock { i32 76, ptr @.str.86, ptr @.str.87, i32 4, i32 64, i8 19, i8 0, ptr null }, %struct.hisi_gate_clock { i32 151, ptr @.str.88, ptr @.str.89, i32 4, i32 80, i8 16, i8 0, ptr null }, %struct.hisi_gate_clock { i32 152, ptr @.str.90, ptr @.str.89, i32 4, i32 80, i8 17, i8 0, ptr null }, %struct.hisi_gate_clock { i32 153, ptr @.str.91, ptr @.str.89, i32 4, i32 80, i8 18, i8 0, ptr null }, %struct.hisi_gate_clock { i32 77, ptr @.str.92, ptr @.str.21, i32 2052, i32 80, i8 21, i8 0, ptr null }, %struct.hisi_gate_clock { i32 78, ptr @.str.93, ptr @.str.26, i32 4, i32 80, i8 28, i8 0, ptr null }, %struct.hisi_gate_clock { i32 79, ptr @.str.94, ptr @.str.26, i32 4, i32 80, i8 29, i8 0, ptr null }, %struct.hisi_gate_clock { i32 80, ptr @.str.95, ptr @.str.96, i32 4, i32 1056, i8 5, i8 0, ptr null }, %struct.hisi_gate_clock { i32 81, ptr @.str.97, ptr @.str.96, i32 4, i32 1056, i8 7, i8 0, ptr null }, %struct.hisi_gate_clock { i32 82, ptr @.str.98, ptr @.str, i32 4, i32 1056, i8 8, i8 0, ptr null }, %struct.hisi_gate_clock { i32 83, ptr @.str.99, ptr @.str.96, i32 4, i32 1056, i8 9, i8 0, ptr null }], [440 x i8] zeroinitializer }, align 32
@hi3660_crgctrl_gate_clks = internal constant { [22 x %struct.hisi_gate_clock], [152 x i8] } { [22 x %struct.hisi_gate_clock] [%struct.hisi_gate_clock { i32 84, ptr @.str.100, ptr @.str.101, i32 4, i32 240, i8 6, i8 2, ptr null }, %struct.hisi_gate_clock { i32 85, ptr @.str.102, ptr @.str.103, i32 4, i32 240, i8 7, i8 2, ptr null }, %struct.hisi_gate_clock { i32 86, ptr @.str.104, ptr @.str.105, i32 4, i32 240, i8 8, i8 2, ptr null }, %struct.hisi_gate_clock { i32 145, ptr @.str.106, ptr @.str.107, i32 4, i32 240, i8 15, i8 2, ptr null }, %struct.hisi_gate_clock { i32 144, ptr @.str.108, ptr @.str.109, i32 4, i32 244, i8 0, i8 2, ptr null }, %struct.hisi_gate_clock { i32 87, ptr @.str.110, ptr @.str.111, i32 4, i32 244, i8 1, i8 2, ptr null }, %struct.hisi_gate_clock { i32 88, ptr @.str.112, ptr @.str.113, i32 4, i32 244, i8 2, i8 2, ptr null }, %struct.hisi_gate_clock { i32 89, ptr @.str.114, ptr @.str.115, i32 4, i32 244, i8 3, i8 2, ptr null }, %struct.hisi_gate_clock { i32 90, ptr @.str.116, ptr @.str.117, i32 4, i32 244, i8 7, i8 2, ptr null }, %struct.hisi_gate_clock { i32 91, ptr @.str.118, ptr @.str.119, i32 4, i32 244, i8 8, i8 2, ptr null }, %struct.hisi_gate_clock { i32 92, ptr @.str.120, ptr @.str.121, i32 4, i32 244, i8 9, i8 2, ptr null }, %struct.hisi_gate_clock { i32 93, ptr @.str.122, ptr @.str.121, i32 4, i32 244, i8 10, i8 2, ptr null }, %struct.hisi_gate_clock { i32 94, ptr @.str.123, ptr @.str.121, i32 4, i32 244, i8 11, i8 2, ptr null }, %struct.hisi_gate_clock { i32 95, ptr @.str.124, ptr @.str.121, i32 4, i32 244, i8 13, i8 2, ptr null }, %struct.hisi_gate_clock { i32 96, ptr @.str.125, ptr @.str.126, i32 4, i32 248, i8 1, i8 2, ptr null }, %struct.hisi_gate_clock { i32 97, ptr @.str.127, ptr @.str.5, i32 4, i32 248, i8 3, i8 2, ptr null }, %struct.hisi_gate_clock { i32 98, ptr @.str.128, ptr @.str.129, i32 4, i32 248, i8 10, i8 0, ptr null }, %struct.hisi_gate_clock { i32 154, ptr @.str.130, ptr @.str.131, i32 4, i32 264, i8 2, i8 2, ptr null }, %struct.hisi_gate_clock { i32 99, ptr @.str.132, ptr @.str.133, i32 4, i32 1028, i8 1, i8 2, ptr null }, %struct.hisi_gate_clock { i32 100, ptr @.str.133, ptr @.str.21, i32 4, i32 1028, i8 5, i8 2, ptr null }, %struct.hisi_gate_clock { i32 101, ptr @.str.134, ptr @.str.135, i32 4, i32 1056, i8 12, i8 0, ptr null }, %struct.hisi_gate_clock { i32 102, ptr @.str.136, ptr @.str.137, i32 4, i32 1056, i8 14, i8 0, ptr null }], [152 x i8] zeroinitializer }, align 32
@hi3660_crgctrl_mux_clks = internal constant { [21 x %struct.hisi_mux_clock], [172 x i8] } { [21 x %struct.hisi_mux_clock] [%struct.hisi_mux_clock { i32 103, ptr @.str.138, ptr @clk_mux_sysbus_p, i8 2, i32 4, i32 172, i8 0, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 104, ptr @.str.139, ptr @clk_mux_uart0_p, i8 2, i32 4, i32 172, i8 2, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 105, ptr @.str.58, ptr @clk_mux_uart1_p, i8 2, i32 4, i32 172, i8 3, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 106, ptr @.str.56, ptr @clk_mux_uarth_p, i8 2, i32 4, i32 172, i8 4, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 107, ptr @.str.54, ptr @clk_mux_spi_p, i8 2, i32 4, i32 172, i8 8, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 108, ptr @.str.51, ptr @clk_mux_i2c_p, i8 2, i32 4, i32 172, i8 13, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 109, ptr @.str.113, ptr @clk_mux_pll02p, i8 2, i32 4, i32 180, i8 0, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 110, ptr @.str.103, ptr @clk_mux_ldi0_p, i8 16, i32 4, i32 180, i8 8, i8 4, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 111, ptr @.str.101, ptr @clk_mux_ldi0_p, i8 16, i32 4, i32 180, i8 12, i8 4, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 112, ptr @.str.115, ptr @clk_mux_pll_p, i8 4, i32 4, i32 184, i8 4, i8 2, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 113, ptr @.str.85, ptr @clk_mux_sd_sys_p, i8 2, i32 4, i32 184, i8 6, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 114, ptr @.str.105, ptr @clk_mux_edc0_p, i8 16, i32 4, i32 188, i8 6, i8 4, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 115, ptr @.str.87, ptr @clk_mux_sdio_sys_p, i8 2, i32 4, i32 192, i8 6, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 116, ptr @.str.119, ptr @clk_mux_pll_p, i8 4, i32 4, i32 192, i8 4, i8 2, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 146, ptr @.str.109, ptr @clk_mux_venc_p, i8 4, i32 4, i32 200, i8 11, i8 2, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 147, ptr @.str.107, ptr @clk_mux_pll0123_p, i8 4, i32 4, i32 204, i8 5, i8 2, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 117, ptr @.str.126, ptr @clk_mux_pll0123_p, i8 4, i32 4, i32 208, i8 12, i8 2, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 118, ptr @.str.117, ptr @clk_mux_pll02p, i8 2, i32 4, i32 212, i8 9, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 119, ptr @.str.129, ptr @clk_mux_pll02p, i8 2, i32 4, i32 256, i8 0, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 155, ptr @.str.89, ptr @clk_mux_isp_snclk_p, i8 2, i32 4, i32 264, i8 3, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 120, ptr @.str.140, ptr @clk_mux_ioperi_p, i8 2, i32 4, i32 264, i8 10, i8 1, i8 4, ptr null, ptr null }], [172 x i8] zeroinitializer }, align 32
@hi3660_crg_fixed_factor_clks = internal constant { [15 x %struct.hisi_fixed_factor_clock], [88 x i8] } { [15 x %struct.hisi_fixed_factor_clock] [%struct.hisi_fixed_factor_clock { i32 15, ptr @.str.150, ptr @.str.151, i32 1, i32 16, i32 0 }, %struct.hisi_fixed_factor_clock { i32 16, ptr @.str.146, ptr @.str, i32 1, i32 6, i32 0 }, %struct.hisi_fixed_factor_clock { i32 17, ptr @.str.152, ptr @.str.153, i32 1, i32 4, i32 0 }, %struct.hisi_fixed_factor_clock { i32 18, ptr @.str.154, ptr @.str.155, i32 1, i32 4, i32 0 }, %struct.hisi_fixed_factor_clock { i32 19, ptr @.str.156, ptr @.str.157, i32 1, i32 4, i32 0 }, %struct.hisi_fixed_factor_clock { i32 20, ptr @.str.158, ptr @.str.159, i32 1, i32 4, i32 0 }, %struct.hisi_fixed_factor_clock { i32 21, ptr @.str.21, ptr @.str.138, i32 1, i32 7, i32 0 }, %struct.hisi_fixed_factor_clock { i32 22, ptr @.str.121, ptr @.str.128, i32 1, i32 5, i32 0 }, %struct.hisi_fixed_factor_clock { i32 23, ptr @.str.131, ptr @.str.116, i32 1, i32 6, i32 0 }, %struct.hisi_fixed_factor_clock { i32 24, ptr @.str.160, ptr @.str.3, i32 1, i32 8, i32 0 }, %struct.hisi_fixed_factor_clock { i32 25, ptr @.str.161, ptr @.str.3, i32 1, i32 8, i32 0 }, %struct.hisi_fixed_factor_clock { i32 26, ptr @.str.162, ptr @.str.163, i32 1, i32 1, i32 0 }, %struct.hisi_fixed_factor_clock { i32 27, ptr @.str.164, ptr @.str.165, i32 1, i32 1, i32 0 }, %struct.hisi_fixed_factor_clock { i32 140, ptr @.str.166, ptr @.str.19, i32 1, i32 1, i32 0 }, %struct.hisi_fixed_factor_clock { i32 150, ptr @.str.167, ptr @.str.130, i32 1, i32 10, i32 0 }], [88 x i8] zeroinitializer }, align 32
@hi3660_crgctrl_divider_clks = internal constant { [22 x %struct.hisi_divider_clock], [160 x i8] } { [22 x %struct.hisi_divider_clock] [%struct.hisi_divider_clock { i32 121, ptr @.str.141, ptr @.str.120, i32 4, i32 176, i8 4, i8 4, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 122, ptr @.str.142, ptr @.str.122, i32 4, i32 176, i8 8, i8 4, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 123, ptr @.str.143, ptr @.str.123, i32 4, i32 176, i8 12, i8 4, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 124, ptr @.str.168, ptr @.str.112, i32 4, i32 180, i8 3, i8 4, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 125, ptr @.str.147, ptr @.str.114, i32 4, i32 184, i8 0, i8 4, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 126, ptr @.str.76, ptr @.str.104, i32 4, i32 188, i8 0, i8 6, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 127, ptr @.str.73, ptr @.str.100, i32 4, i32 188, i8 10, i8 6, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 128, ptr @.str.148, ptr @.str.118, i32 4, i32 192, i8 0, i8 4, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 129, ptr @.str.71, ptr @.str.102, i32 4, i32 192, i8 8, i8 6, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 130, ptr @.str.144, ptr @.str.124, i32 4, i32 196, i8 12, i8 4, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 148, ptr @.str.64, ptr @.str.108, i32 4, i32 200, i8 6, i8 5, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 149, ptr @.str.66, ptr @.str.106, i32 4, i32 204, i8 0, i8 5, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 131, ptr @.str.74, ptr @.str.125, i32 4, i32 208, i8 7, i8 5, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 132, ptr @.str.145, ptr @.str.121, i32 4, i32 232, i8 4, i8 4, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 133, ptr @.str.135, ptr @.str.110, i32 4, i32 232, i8 9, i8 2, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 134, ptr @.str.26, ptr @.str.21, i32 4, i32 236, i8 0, i8 2, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 135, ptr @.str.82, ptr @.str.132, i32 4, i32 236, i8 2, i8 1, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 136, ptr @.str.96, ptr @.str.21, i32 4, i32 236, i8 3, i8 1, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 137, ptr @.str.111, ptr @.str.92, i32 4, i32 236, i8 14, i8 1, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 138, ptr @.str.24, ptr @.str.127, i32 4, i32 256, i8 7, i8 4, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 156, ptr @.str.149, ptr @.str.167, i32 4, i32 264, i8 0, i8 2, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 139, ptr @.str.45, ptr @.str.140, i32 4, i32 264, i8 11, i8 4, i8 8, ptr null, ptr null }], [160 x i8] zeroinitializer }, align 32
@hi3660_clk_crgctrl_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.18, i32 592, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013Failed to register crgctrl clock[%d] err=%ld\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"hi3660_clk_crgctrl_init\00", [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/clk/hisilicon/clk-hi3660.c\00", [61 x i8] zeroinitializer }, align 32
@hi3660_clk_crgctrl_init._entry_ptr = internal global ptr @hi3660_clk_crgctrl_init._entry, section ".printk_index", align 4
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"peri_volt_hold\00", [17 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hclk_gate_sdio0\00", [16 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_div_sysbus\00", [17 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hclk_gate_sd\00", [19 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_gate_aomm\00", [18 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk_div_aomm\00", [19 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pclk_gpio0\00", [21 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_div_cfgbus\00", [17 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pclk_gpio1\00", [21 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pclk_gpio2\00", [21 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pclk_gpio3\00", [21 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pclk_gpio4\00", [21 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pclk_gpio5\00", [21 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pclk_gpio6\00", [21 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pclk_gpio7\00", [21 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pclk_gpio8\00", [21 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pclk_gpio9\00", [21 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pclk_gpio10\00", [20 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pclk_gpio11\00", [20 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pclk_gpio12\00", [20 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pclk_gpio13\00", [20 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pclk_gpio14\00", [20 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pclk_gpio15\00", [20 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pclk_gpio16\00", [20 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pclk_gpio17\00", [20 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pclk_gpio18\00", [20 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_div_ioperi\00", [17 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pclk_gpio19\00", [20 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pclk_gpio20\00", [20 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pclk_gpio21\00", [20 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_gate_spi3\00", [18 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_gate_i2c7\00", [18 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk_mux_i2c\00", [20 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_gate_i2c3\00", [18 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_gate_spi1\00", [18 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk_mux_spi\00", [20 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_gate_uart1\00", [17 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_mux_uarth\00", [18 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_gate_uart2\00", [17 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_mux_uart1\00", [18 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_gate_uart4\00", [17 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_gate_uart5\00", [17 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_gate_i2c4\00", [18 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_gate_dmac\00", [18 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_gate_venc\00", [18 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk_div_venc\00", [19 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_gate_vdec\00", [18 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk_div_vdec\00", [19 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pclk_gate_dss\00", [18 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"aclk_gate_dss\00", [18 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clk_gate_vivobus\00", [47 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_gate_ldi1\00", [18 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk_div_ldi1\00", [19 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_gate_ldi0\00", [18 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk_div_ldi0\00", [19 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clk_div_vivobus\00", [16 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_gate_edc0\00", [18 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk_div_edc0\00", [19 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"clk_gate_txdphy0_cfg\00", [43 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"clk_gate_txdphy0_ref\00", [43 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"clk_gate_txdphy1_cfg\00", [43 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"clk_gate_txdphy1_ref\00", [43 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"aclk_gate_usb3otg\00", [46 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clk_div_mmc0bus\00", [16 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_gate_spi4\00", [18 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk_gate_sd\00", [20 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_mux_sd_sys\00", [17 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_gate_sdio0\00", [17 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clk_mux_sdio_sys\00", [47 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"clk_gate_isp_snclk0\00", [44 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"clk_isp_snclk_mux\00", [46 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"clk_gate_isp_snclk1\00", [44 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"clk_gate_isp_snclk2\00", [44 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"clk_gate_ufs_subsys\00", [44 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pclk_gate_dsi0\00", [17 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pclk_gate_dsi1\00", [17 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aclk_gate_pcie\00", [17 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clk_div_mmc1bus\00", [16 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pclk_gate_pcie_sys\00", [45 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clk_gate_pcieaux\00", [47 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pclk_gate_pcie_phy\00", [45 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_andgt_ldi0\00", [17 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk_mux_ldi0\00", [19 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_andgt_ldi1\00", [17 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk_mux_ldi1\00", [19 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_andgt_edc0\00", [17 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk_mux_edc0\00", [19 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_andgt_vdec\00", [17 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk_mux_vdec\00", [19 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_andgt_venc\00", [17 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk_mux_venc\00", [19 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clk_gate_ufsphy_gt\00", [45 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clk_div_ufsperi\00", [16 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_andgt_mmc\00", [18 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clk_mux_mmc_pll\00", [16 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk_andgt_sd\00", [19 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_mux_sd_pll\00", [17 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clk_a53hpm_andgt\00", [47 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_mux_a53hpm\00", [17 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_andgt_sdio\00", [17 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clk_mux_sdio_pll\00", [47 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clk_andgt_uart0\00", [16 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk_div_320m\00", [19 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clk_andgt_uart1\00", [16 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clk_andgt_uarth\00", [16 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_andgt_spi\00", [18 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"clk_vivobus_andgt\00", [46 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clk_mux_vivobus\00", [16 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_aomm_andgt\00", [17 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clk_320m_pll_gt\00", [16 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk_mux_320m\00", [19 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clk_isp_snclk_angt\00", [45 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_div_a53hpm\00", [17 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"autodiv_emmc0bus\00", [47 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"autodiv_sysbus\00", [17 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"clk_gate_ufsphy_cfg\00", [44 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clk_div_ufsphy_cfg\00", [45 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clk_gate_ufsio_ref\00", [45 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"clk_gate_ufs_tcxo_en\00", [43 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_mux_sysbus\00", [17 x i8] zeroinitializer }, align 32
@clk_mux_sysbus_p = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.4, ptr @.str.3], [24 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_mux_uart0\00", [18 x i8] zeroinitializer }, align 32
@clk_mux_uart0_p = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str, ptr @.str.141], [24 x i8] zeroinitializer }, align 32
@clk_mux_uart1_p = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str, ptr @.str.142], [24 x i8] zeroinitializer }, align 32
@clk_mux_uarth_p = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str, ptr @.str.143], [24 x i8] zeroinitializer }, align 32
@clk_mux_spi_p = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str, ptr @.str.144], [24 x i8] zeroinitializer }, align 32
@clk_mux_i2c_p = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str, ptr @.str.145], [24 x i8] zeroinitializer }, align 32
@clk_mux_pll02p = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.3, ptr @.str.5], [24 x i8] zeroinitializer }, align 32
@clk_mux_ldi0_p = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.14, ptr @.str.3, ptr @.str.5, ptr @.str.14, ptr @.str.4, ptr @.str.14, ptr @.str.14, ptr @.str.14, ptr @.str.6, ptr @.str.14, ptr @.str.14, ptr @.str.14, ptr @.str.14, ptr @.str.14, ptr @.str.14, ptr @.str.14], [32 x i8] zeroinitializer }, align 32
@clk_mux_pll_p = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.5], [16 x i8] zeroinitializer }, align 32
@clk_mux_sd_sys_p = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.146, ptr @.str.147], [24 x i8] zeroinitializer }, align 32
@clk_mux_edc0_p = internal constant { [16 x ptr], [32 x i8] } { [16 x ptr] [ptr @.str.14, ptr @.str.3, ptr @.str.4, ptr @.str.14, ptr @.str.5, ptr @.str.14, ptr @.str.14, ptr @.str.14, ptr @.str.6, ptr @.str.14, ptr @.str.14, ptr @.str.14, ptr @.str.14, ptr @.str.14, ptr @.str.14, ptr @.str.14], [32 x i8] zeroinitializer }, align 32
@clk_mux_sdio_sys_p = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.146, ptr @.str.148], [24 x i8] zeroinitializer }, align 32
@clk_mux_venc_p = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.6], [16 x i8] zeroinitializer }, align 32
@clk_mux_pll0123_p = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], [16 x i8] zeroinitializer }, align 32
@clk_mux_isp_snclk_p = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str, ptr @.str.149], [24 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_mux_ioperi\00", [17 x i8] zeroinitializer }, align 32
@clk_mux_ioperi_p = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.121, ptr @.str.131], [24 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_div_uart0\00", [18 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_div_uart1\00", [18 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_div_uarth\00", [18 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk_div_spi\00", [20 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk_div_i2c\00", [20 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_factor_mmc\00", [17 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clk_div_sd\00", [21 x i8] zeroinitializer }, align 32
@.str.148 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk_div_sdio\00", [19 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"clk_isp_snclk_div\00", [46 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clk_factor_uart3\00", [47 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"iomcu_peri0\00", [20 x i8] zeroinitializer }, align 32
@.str.152 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_gate_i2c0\00", [18 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_i2c0_iomcu\00", [17 x i8] zeroinitializer }, align 32
@.str.154 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_gate_i2c1\00", [18 x i8] zeroinitializer }, align 32
@.str.155 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_i2c1_iomcu\00", [17 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_gate_i2c2\00", [18 x i8] zeroinitializer }, align 32
@.str.157 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_i2c2_iomcu\00", [17 x i8] zeroinitializer }, align 32
@.str.158 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_gate_i2c6\00", [18 x i8] zeroinitializer }, align 32
@.str.159 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_i2c6_iomcu\00", [17 x i8] zeroinitializer }, align 32
@.str.160 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_gate_spi0\00", [18 x i8] zeroinitializer }, align 32
@.str.161 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_gate_spi2\00", [18 x i8] zeroinitializer }, align 32
@.str.162 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clk_pciephy_ref\00", [16 x i8] zeroinitializer }, align 32
@.str.163 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clk_div_pciephy\00", [16 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk_abb_usb\00", [20 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"clk_gate_usb_tcxo_en\00", [43 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"venc_volt_hold\00", [17 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"clk_isp_snclk_fac\00", [46 x i8] zeroinitializer }, align 32
@.str.168 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk_div_mmc\00", [20 x i8] zeroinitializer }, align 32
@hi3660_pctrl_gate_clks = internal constant { [2 x %struct.hisi_gate_clock], [40 x i8] } { [2 x %struct.hisi_gate_clock] [%struct.hisi_gate_clock { i32 0, ptr @.str.137, ptr @.str.169, i32 4, i32 16, i8 0, i8 2, ptr null }, %struct.hisi_gate_clock { i32 1, ptr @.str.165, ptr @.str.169, i32 4, i32 16, i8 1, i8 2, ptr null }], [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clk_gate_abb_192\00", [47 x i8] zeroinitializer }, align 32
@hi3660_pmu_gate_clks = internal constant { [1 x %struct.hisi_gate_clock], [36 x i8] } { [1 x %struct.hisi_gate_clock] [%struct.hisi_gate_clock { i32 0, ptr @.str.169, ptr @.str, i32 4, i32 1064, i8 3, i8 0, ptr null }], [36 x i8] zeroinitializer }, align 32
@hi3660_sctrl_gate_clks = internal constant { [5 x %struct.hisi_gate_clock], [52 x i8] } { [5 x %struct.hisi_gate_clock] [%struct.hisi_gate_clock { i32 9, ptr @.str.170, ptr @.str.171, i32 4, i32 600, i8 7, i8 2, ptr null }, %struct.hisi_gate_clock { i32 10, ptr @.str.172, ptr @.str.3, i32 4, i32 608, i8 11, i8 8, ptr null }, %struct.hisi_gate_clock { i32 11, ptr @.str.173, ptr @.str.2, i32 4, i32 608, i8 12, i8 8, ptr null }, %struct.hisi_gate_clock { i32 12, ptr @.str.174, ptr @.str, i32 4, i32 608, i8 13, i8 8, ptr null }, %struct.hisi_gate_clock { i32 13, ptr @.str.175, ptr @.str.3, i32 4, i32 616, i8 11, i8 8, ptr null }], [52 x i8] zeroinitializer }, align 32
@hi3660_sctrl_gate_sep_clks = internal constant { [9 x %struct.hisi_gate_clock], [36 x i8] } { [9 x %struct.hisi_gate_clock] [%struct.hisi_gate_clock { i32 0, ptr @.str.176, ptr @.str.177, i32 4, i32 352, i8 11, i8 0, ptr null }, %struct.hisi_gate_clock { i32 1, ptr @.str.178, ptr @.str.177, i32 4, i32 352, i8 12, i8 0, ptr null }, %struct.hisi_gate_clock { i32 2, ptr @.str.179, ptr @.str.177, i32 4, i32 352, i8 13, i8 0, ptr null }, %struct.hisi_gate_clock { i32 3, ptr @.str.180, ptr @.str.177, i32 4, i32 352, i8 14, i8 0, ptr null }, %struct.hisi_gate_clock { i32 4, ptr @.str.181, ptr @.str.177, i32 4, i32 352, i8 21, i8 0, ptr null }, %struct.hisi_gate_clock { i32 5, ptr @.str.182, ptr @.str.177, i32 4, i32 352, i8 22, i8 0, ptr null }, %struct.hisi_gate_clock { i32 6, ptr @.str.183, ptr @.str.177, i32 4, i32 352, i8 25, i8 0, ptr null }, %struct.hisi_gate_clock { i32 7, ptr @.str.184, ptr @.str.185, i32 4, i32 368, i8 23, i8 0, ptr null }, %struct.hisi_gate_clock { i32 8, ptr @.str.186, ptr @.str.187, i32 4, i32 368, i8 24, i8 0, ptr null }], [36 x i8] zeroinitializer }, align 32
@hi3660_sctrl_mux_clks = internal constant { [2 x %struct.hisi_mux_clock], [56 x i8] } { [2 x %struct.hisi_mux_clock] [%struct.hisi_mux_clock { i32 14, ptr @.str.187, ptr @aclk_mux_mmbuf_p, i8 2, i32 4, i32 592, i8 12, i8 1, i8 4, ptr null, ptr null }, %struct.hisi_mux_clock { i32 15, ptr @.str.171, ptr @clk_sw_mmbuf_p, i8 4, i32 4, i32 600, i8 8, i8 2, i8 4, ptr null, ptr null }], [56 x i8] zeroinitializer }, align 32
@hi3660_sctrl_divider_clks = internal constant { [4 x %struct.hisi_divider_clock], [32 x i8] } { [4 x %struct.hisi_divider_clock] [%struct.hisi_divider_clock { i32 16, ptr @.str.177, ptr @.str.3, i32 4, i32 596, i8 0, i8 6, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 17, ptr @.str.185, ptr @.str.170, i32 4, i32 600, i8 10, i8 2, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 18, ptr @.str.188, ptr @.str.172, i32 4, i32 600, i8 12, i8 4, i8 8, ptr null, ptr null }, %struct.hisi_divider_clock { i32 19, ptr @.str.163, ptr @.str.175, i32 4, i32 616, i8 12, i8 4, i8 8, ptr null, ptr null }], [32 x i8] zeroinitializer }, align 32
@.str.170 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pclk_mmbuf_andgt\00", [47 x i8] zeroinitializer }, align 32
@.str.171 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk_sw_mmbuf\00", [19 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"clk_mmbuf_pll_andgt\00", [44 x i8] zeroinitializer }, align 32
@.str.173 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"clk_fll_mmbuf_andgt\00", [44 x i8] zeroinitializer }, align 32
@.str.174 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"clk_sys_mmbuf_andgt\00", [44 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"clk_gate_pciephy_gt\00", [44 x i8] zeroinitializer }, align 32
@.str.176 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pclk_ao_gpio0\00", [18 x i8] zeroinitializer }, align 32
@.str.177 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_div_aobus\00", [18 x i8] zeroinitializer }, align 32
@.str.178 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pclk_ao_gpio1\00", [18 x i8] zeroinitializer }, align 32
@.str.179 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pclk_ao_gpio2\00", [18 x i8] zeroinitializer }, align 32
@.str.180 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pclk_ao_gpio3\00", [18 x i8] zeroinitializer }, align 32
@.str.181 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pclk_ao_gpio4\00", [18 x i8] zeroinitializer }, align 32
@.str.182 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pclk_ao_gpio5\00", [18 x i8] zeroinitializer }, align 32
@.str.183 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pclk_ao_gpio6\00", [18 x i8] zeroinitializer }, align 32
@.str.184 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pclk_gate_mmbuf\00", [16 x i8] zeroinitializer }, align 32
@.str.185 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pclk_div_mmbuf\00", [17 x i8] zeroinitializer }, align 32
@.str.186 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"clk_gate_dss_axi_mm\00", [44 x i8] zeroinitializer }, align 32
@.str.187 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aclk_mux_mmbuf\00", [17 x i8] zeroinitializer }, align 32
@aclk_mux_mmbuf_p = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.188, ptr @.str.23], [24 x i8] zeroinitializer }, align 32
@clk_sw_mmbuf_p = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.174, ptr @.str.173, ptr @.str.187, ptr @.str.187], [16 x i8] zeroinitializer }, align 32
@.str.188 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"aclk_div_mmbuf\00", [17 x i8] zeroinitializer }, align 32
@hi3660_iomcu_gate_sep_clks = internal constant { [5 x %struct.hisi_gate_clock], [52 x i8] } { [5 x %struct.hisi_gate_clock] [%struct.hisi_gate_clock { i32 0, ptr @.str.153, ptr @.str.2, i32 4, i32 16, i8 3, i8 0, ptr null }, %struct.hisi_gate_clock { i32 1, ptr @.str.155, ptr @.str.2, i32 4, i32 16, i8 4, i8 0, ptr null }, %struct.hisi_gate_clock { i32 2, ptr @.str.157, ptr @.str.2, i32 4, i32 16, i8 5, i8 0, ptr null }, %struct.hisi_gate_clock { i32 3, ptr @.str.159, ptr @.str.2, i32 4, i32 16, i8 27, i8 0, ptr null }, %struct.hisi_gate_clock { i32 4, ptr @.str.151, ptr @.str.3, i32 4, i32 144, i8 0, i8 0, ptr null }], [52 x i8] zeroinitializer }, align 32
@___asan_gen_.189 = private unnamed_addr constant [17 x i8] c"clk_crgctrl_data\00", align 1
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 472, i32 32 }
@___asan_gen_.192 = private unnamed_addr constant [23 x i8] c"hi3660_fixed_rate_clks\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 13, i32 43 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 14, i32 22 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 15, i32 22 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 16, i32 24 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 17, i32 22 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 18, i32 22 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 19, i32 22 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 20, i32 22 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 21, i32 22 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 22, i32 17 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 23, i32 26 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 24, i32 22 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 25, i32 19 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 26, i32 19 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 27, i32 21 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 28, i32 20 }
@___asan_gen_.240 = private unnamed_addr constant [18 x i8] c"hi3660_clk_driver\00", align 1
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 625, i32 31 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 628, i32 13 }
@___asan_gen_.246 = private unnamed_addr constant [23 x i8] c"hi3660_clk_match_table\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 596, i32 34 }
@___asan_gen_.249 = private unnamed_addr constant [29 x i8] c"hi3660_crgctrl_gate_sep_clks\00", align 1
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 51, i32 37 }
@___asan_gen_.252 = private unnamed_addr constant [25 x i8] c"hi3660_crgctrl_gate_clks\00", align 1
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 182, i32 37 }
@___asan_gen_.255 = private unnamed_addr constant [24 x i8] c"hi3660_crgctrl_mux_clks\00", align 1
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 268, i32 36 }
@___asan_gen_.258 = private unnamed_addr constant [29 x i8] c"hi3660_crg_fixed_factor_clks\00", align 1
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 32, i32 45 }
@___asan_gen_.261 = private unnamed_addr constant [28 x i8] c"hi3660_crgctrl_divider_clks\00", align 1
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 334, i32 40 }
@___asan_gen_.264 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 591, i32 4 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 52, i32 27 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 54, i32 28 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 54, i32 47 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 56, i32 25 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 58, i32 26 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 58, i32 43 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 60, i32 23 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 60, i32 37 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 62, i32 23 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 64, i32 23 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 66, i32 23 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 68, i32 23 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 70, i32 23 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 72, i32 23 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 74, i32 23 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 76, i32 23 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 78, i32 23 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 80, i32 24 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 82, i32 24 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 84, i32 24 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 86, i32 24 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 88, i32 24 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 90, i32 24 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 92, i32 24 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 94, i32 24 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 96, i32 24 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 96, i32 39 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 98, i32 24 }
@___asan_gen_.362 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 100, i32 24 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 102, i32 24 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 104, i32 26 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 106, i32 26 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 106, i32 43 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 108, i32 26 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 110, i32 26 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 110, i32 43 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 112, i32 27 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 112, i32 45 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 114, i32 27 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 114, i32 45 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 116, i32 27 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 118, i32 27 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 120, i32 26 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 122, i32 26 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 124, i32 26 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 124, i32 43 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 126, i32 26 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 126, i32 43 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 128, i32 26 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 130, i32 26 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 130, i32 43 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 132, i32 26 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 132, i32 43 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 134, i32 26 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 134, i32 43 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 136, i32 49 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 138, i32 26 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 138, i32 43 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 140, i32 33 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 142, i32 33 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 144, i32 33 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 146, i32 33 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 148, i32 30 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 148, i32 51 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 150, i32 26 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 152, i32 24 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 152, i32 39 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 154, i32 27 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 154, i32 45 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 156, i32 32 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 157, i32 4 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 158, i32 32 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 160, i32 32 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 166, i32 32 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 168, i32 27 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 170, i32 27 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 172, i32 27 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 172, i32 45 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 174, i32 31 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 176, i32 29 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 178, i32 31 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 183, i32 27 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 183, i32 45 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 185, i32 27 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 185, i32 45 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 187, i32 27 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 187, i32 45 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 189, i32 27 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 189, i32 45 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 191, i32 27 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 191, i32 45 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 193, i32 31 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 193, i32 53 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 195, i32 26 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 195, i32 43 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 197, i32 25 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 197, i32 41 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 199, i32 29 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 199, i32 49 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 201, i32 27 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 201, i32 45 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 203, i32 28 }
@___asan_gen_.584 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 203, i32 47 }
@___asan_gen_.587 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 205, i32 28 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 207, i32 28 }
@___asan_gen_.593 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 209, i32 26 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 211, i32 30 }
@___asan_gen_.599 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 211, i32 51 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 213, i32 27 }
@___asan_gen_.605 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 215, i32 28 }
@___asan_gen_.608 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 215, i32 47 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 217, i32 31 }
@___asan_gen_.614 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 217, i32 53 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 219, i32 29 }
@___asan_gen_.620 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 219, i32 49 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 223, i32 32 }
@___asan_gen_.626 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 224, i32 4 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 225, i32 31 }
@___asan_gen_.632 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 226, i32 4 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 269, i32 27 }
@___asan_gen_.636 = private unnamed_addr constant [17 x i8] c"clk_mux_sysbus_p\00", align 1
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 230, i32 1 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 272, i32 26 }
@___asan_gen_.642 = private unnamed_addr constant [16 x i8] c"clk_mux_uart0_p\00", align 1
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 250, i32 1 }
@___asan_gen_.645 = private unnamed_addr constant [16 x i8] c"clk_mux_uart1_p\00", align 1
@___asan_gen_.647 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 252, i32 1 }
@___asan_gen_.648 = private unnamed_addr constant [16 x i8] c"clk_mux_uarth_p\00", align 1
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 254, i32 1 }
@___asan_gen_.651 = private unnamed_addr constant [14 x i8] c"clk_mux_spi_p\00", align 1
@___asan_gen_.653 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 260, i32 1 }
@___asan_gen_.654 = private unnamed_addr constant [14 x i8] c"clk_mux_i2c_p\00", align 1
@___asan_gen_.656 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 262, i32 1 }
@___asan_gen_.657 = private unnamed_addr constant [15 x i8] c"clk_mux_pll02p\00", align 1
@___asan_gen_.659 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 256, i32 1 }
@___asan_gen_.660 = private unnamed_addr constant [15 x i8] c"clk_mux_ldi0_p\00", align 1
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 245, i32 1 }
@___asan_gen_.663 = private unnamed_addr constant [14 x i8] c"clk_mux_pll_p\00", align 1
@___asan_gen_.665 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 236, i32 1 }
@___asan_gen_.666 = private unnamed_addr constant [17 x i8] c"clk_mux_sd_sys_p\00", align 1
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 234, i32 1 }
@___asan_gen_.669 = private unnamed_addr constant [15 x i8] c"clk_mux_edc0_p\00", align 1
@___asan_gen_.671 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 240, i32 1 }
@___asan_gen_.672 = private unnamed_addr constant [19 x i8] c"clk_mux_sdio_sys_p\00", align 1
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 232, i32 1 }
@___asan_gen_.675 = private unnamed_addr constant [15 x i8] c"clk_mux_venc_p\00", align 1
@___asan_gen_.677 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 264, i32 1 }
@___asan_gen_.678 = private unnamed_addr constant [18 x i8] c"clk_mux_pll0123_p\00", align 1
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 238, i32 1 }
@___asan_gen_.681 = private unnamed_addr constant [20 x i8] c"clk_mux_isp_snclk_p\00", align 1
@___asan_gen_.683 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 266, i32 1 }
@___asan_gen_.686 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 329, i32 27 }
@___asan_gen_.687 = private unnamed_addr constant [17 x i8] c"clk_mux_ioperi_p\00", align 1
@___asan_gen_.689 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 258, i32 1 }
@___asan_gen_.692 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 250, i32 35 }
@___asan_gen_.695 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 252, i32 35 }
@___asan_gen_.698 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 254, i32 35 }
@___asan_gen_.701 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 260, i32 33 }
@___asan_gen_.704 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 262, i32 33 }
@___asan_gen_.707 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 234, i32 23 }
@___asan_gen_.710 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 234, i32 41 }
@___asan_gen_.713 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 232, i32 43 }
@___asan_gen_.716 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 266, i32 39 }
@___asan_gen_.719 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 33, i32 25 }
@___asan_gen_.722 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 33, i32 45 }
@___asan_gen_.725 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 35, i32 26 }
@___asan_gen_.728 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 35, i32 43 }
@___asan_gen_.731 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 36, i32 26 }
@___asan_gen_.734 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 36, i32 43 }
@___asan_gen_.737 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 37, i32 26 }
@___asan_gen_.740 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 37, i32 43 }
@___asan_gen_.743 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 38, i32 26 }
@___asan_gen_.746 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 38, i32 43 }
@___asan_gen_.749 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 42, i32 26 }
@___asan_gen_.752 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 43, i32 26 }
@___asan_gen_.755 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 44, i32 24 }
@___asan_gen_.758 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 44, i32 43 }
@___asan_gen_.761 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 45, i32 24 }
@___asan_gen_.764 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 45, i32 39 }
@___asan_gen_.767 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 46, i32 27 }
@___asan_gen_.770 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 47, i32 30 }
@___asan_gen_.773 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 341, i32 24 }
@___asan_gen_.774 = private unnamed_addr constant [23 x i8] c"hi3660_pctrl_gate_clks\00", align 1
@___asan_gen_.776 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 389, i32 37 }
@___asan_gen_.779 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 391, i32 4 }
@___asan_gen_.780 = private unnamed_addr constant [21 x i8] c"hi3660_pmu_gate_clks\00", align 1
@___asan_gen_.782 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 383, i32 37 }
@___asan_gen_.783 = private unnamed_addr constant [23 x i8] c"hi3660_sctrl_gate_clks\00", align 1
@___asan_gen_.785 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 419, i32 37 }
@___asan_gen_.786 = private unnamed_addr constant [27 x i8] c"hi3660_sctrl_gate_sep_clks\00", align 1
@___asan_gen_.788 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 398, i32 37 }
@___asan_gen_.789 = private unnamed_addr constant [22 x i8] c"hi3660_sctrl_mux_clks\00", align 1
@___asan_gen_.791 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 438, i32 36 }
@___asan_gen_.792 = private unnamed_addr constant [26 x i8] c"hi3660_sctrl_divider_clks\00", align 1
@___asan_gen_.794 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 447, i32 40 }
@___asan_gen_.797 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 420, i32 29 }
@___asan_gen_.800 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 420, i32 49 }
@___asan_gen_.803 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 422, i32 32 }
@___asan_gen_.806 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 424, i32 32 }
@___asan_gen_.809 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 426, i32 32 }
@___asan_gen_.812 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 428, i32 32 }
@___asan_gen_.815 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 399, i32 26 }
@___asan_gen_.818 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 399, i32 43 }
@___asan_gen_.821 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 401, i32 26 }
@___asan_gen_.824 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 403, i32 26 }
@___asan_gen_.827 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 405, i32 26 }
@___asan_gen_.830 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 407, i32 26 }
@___asan_gen_.833 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 409, i32 26 }
@___asan_gen_.836 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 411, i32 26 }
@___asan_gen_.839 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 413, i32 28 }
@___asan_gen_.842 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 413, i32 47 }
@___asan_gen_.845 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 415, i32 32 }
@___asan_gen_.848 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 415, i32 55 }
@___asan_gen_.849 = private unnamed_addr constant [17 x i8] c"aclk_mux_mmbuf_p\00", align 1
@___asan_gen_.851 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 433, i32 1 }
@___asan_gen_.852 = private unnamed_addr constant [15 x i8] c"clk_sw_mmbuf_p\00", align 1
@___asan_gen_.854 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 435, i32 1 }
@___asan_gen_.855 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.857 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 433, i32 23 }
@___asan_gen_.858 = private unnamed_addr constant [27 x i8] c"hi3660_iomcu_gate_sep_clks\00", align 1
@___asan_gen_.859 = private constant [38 x i8] c"../drivers/clk/hisilicon/clk-hi3660.c\00", align 1
@___asan_gen_.860 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.859, i32 459, i32 37 }
@llvm.compiler.used = appending global [227 x ptr] [ptr @__initcall__kmod_clk_hi3660__170_637_hi3660_clk_init1, ptr @__of_table_hi3660_clk_crgctrl, ptr @hi3660_clk_crgctrl_init._entry, ptr @hi3660_clk_crgctrl_init._entry_ptr, ptr @clk_crgctrl_data, ptr @hi3660_fixed_rate_clks, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @hi3660_clk_driver, ptr @.str.15, ptr @hi3660_clk_match_table, ptr @hi3660_crgctrl_gate_sep_clks, ptr @hi3660_crgctrl_gate_clks, ptr @hi3660_crgctrl_mux_clks, ptr @hi3660_crg_fixed_factor_clks, ptr @hi3660_crgctrl_divider_clks, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @clk_mux_sysbus_p, ptr @.str.139, ptr @clk_mux_uart0_p, ptr @clk_mux_uart1_p, ptr @clk_mux_uarth_p, ptr @clk_mux_spi_p, ptr @clk_mux_i2c_p, ptr @clk_mux_pll02p, ptr @clk_mux_ldi0_p, ptr @clk_mux_pll_p, ptr @clk_mux_sd_sys_p, ptr @clk_mux_edc0_p, ptr @clk_mux_sdio_sys_p, ptr @clk_mux_venc_p, ptr @clk_mux_pll0123_p, ptr @clk_mux_isp_snclk_p, ptr @.str.140, ptr @clk_mux_ioperi_p, ptr @.str.141, ptr @.str.142, ptr @.str.143, ptr @.str.144, ptr @.str.145, ptr @.str.146, ptr @.str.147, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @.str.152, ptr @.str.153, ptr @.str.154, ptr @.str.155, ptr @.str.156, ptr @.str.157, ptr @.str.158, ptr @.str.159, ptr @.str.160, ptr @.str.161, ptr @.str.162, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.168, ptr @hi3660_pctrl_gate_clks, ptr @.str.169, ptr @hi3660_pmu_gate_clks, ptr @hi3660_sctrl_gate_clks, ptr @hi3660_sctrl_gate_sep_clks, ptr @hi3660_sctrl_mux_clks, ptr @hi3660_sctrl_divider_clks, ptr @.str.170, ptr @.str.171, ptr @.str.172, ptr @.str.173, ptr @.str.174, ptr @.str.175, ptr @.str.176, ptr @.str.177, ptr @.str.178, ptr @.str.179, ptr @.str.180, ptr @.str.181, ptr @.str.182, ptr @.str.183, ptr @.str.184, ptr @.str.185, ptr @.str.186, ptr @.str.187, ptr @aclk_mux_mmbuf_p, ptr @clk_sw_mmbuf_p, ptr @.str.188, ptr @hi3660_iomcu_gate_sep_clks], section "llvm.metadata"
@0 = internal global [224 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_crgctrl_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3660_fixed_rate_clks to i32), i32 300, i32 384, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3660_clk_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3660_clk_match_table to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3660_crgctrl_gate_sep_clks to i32), i32 1736, i32 2176, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3660_crgctrl_gate_clks to i32), i32 616, i32 768, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3660_crgctrl_mux_clks to i32), i32 756, i32 928, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3660_crg_fixed_factor_clks to i32), i32 360, i32 448, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3660_crgctrl_divider_clks to i32), i32 704, i32 864, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3660_clk_crgctrl_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.584 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.587 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.593 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.605 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.608 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.614 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.620 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.626 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.632 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mux_sysbus_p to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.636 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mux_uart0_p to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mux_uart1_p to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.645 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.647 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mux_uarth_p to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.648 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mux_spi_p to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.651 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.653 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mux_i2c_p to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.654 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.656 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mux_pll02p to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.657 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.659 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mux_ldi0_p to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.660 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mux_pll_p to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.663 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.665 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mux_sd_sys_p to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.666 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mux_edc0_p to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.669 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.671 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mux_sdio_sys_p to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.672 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mux_venc_p to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.677 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mux_pll0123_p to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mux_isp_snclk_p to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.681 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.683 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.686 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mux_ioperi_p to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.687 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.689 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.692 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.695 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.698 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.701 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.704 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.707 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.710 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.713 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.716 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.719 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.722 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.152 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.725 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.728 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.154 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.731 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.734 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.737 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.157 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.740 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.743 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.159 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.746 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.160 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.749 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.752 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.162 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.755 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.758 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.761 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.764 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.767 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.770 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.168 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.773 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3660_pctrl_gate_clks to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.774 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.776 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.779 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3660_pmu_gate_clks to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.780 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.782 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3660_sctrl_gate_clks to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.783 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.785 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3660_sctrl_gate_sep_clks to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.786 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.788 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3660_sctrl_mux_clks to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.789 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.791 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3660_sctrl_divider_clks to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.792 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.794 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.170 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.797 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.171 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.800 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.803 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.173 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.806 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.174 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.809 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.812 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.176 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.815 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.177 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.818 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.178 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.821 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.179 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.824 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.180 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.827 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.181 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.830 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.182 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.833 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.183 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.836 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.184 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.839 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.185 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.842 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.186 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.845 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.187 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.848 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aclk_mux_mmbuf_p to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.849 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.851 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_sw_mmbuf_p to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.852 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.854 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.188 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.855 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.857 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3660_iomcu_gate_sep_clks to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.858 to i32), i32 ptrtoint (ptr @___asan_gen_.859 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.860 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hi3660_clk_crgctrl_of_clk_init_driver(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %_flags.i = getelementptr inbounds %struct.device_node, ptr %np, i32 0, i32 10
  tail call void @_clear_bit(i32 noundef 3, ptr noundef %_flags.i) #4
  %call.i = tail call ptr @hisi_clk_init(ptr noundef %np, i32 noundef 157) #4
  store ptr %call.i, ptr @clk_crgctrl_data, align 4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.hi3660_clk_crgctrl_early_init.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.hi3660_clk_crgctrl_early_init.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %hi3660_clk_crgctrl_early_init.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %i.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %call.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %1, i32 %i.07.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -517 to ptr), ptr %arrayidx.i, align 4
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 157
  br i1 %exitcond.not.i, label %for.end.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  %call2.i = tail call i32 @hisi_clk_register_fixed_rate(ptr noundef nonnull @hi3660_fixed_rate_clks, i32 noundef 15, ptr noundef nonnull %call.i) #4
  br label %hi3660_clk_crgctrl_early_init.exit

hi3660_clk_crgctrl_early_init.exit:               ; preds = %for.end.i, %entry.hi3660_clk_crgctrl_early_init.exit_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hi3660_clk_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @hi3660_clk_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hisi_clk_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hisi_clk_register_fixed_rate(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi3660_clk_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev1) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void %call(ptr noundef %1) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -19, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hi3660_clk_crgctrl_init(ptr noundef %np) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @clk_crgctrl_data, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3

if.then:                                          ; preds = %entry
  %call.i = tail call ptr @hisi_clk_init(ptr noundef %np, i32 noundef 157) #4
  store ptr %call.i, ptr @clk_crgctrl_data, align 4
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.then.cleanup_crit_edge, label %if.then.for.body.i_crit_edge

if.then.for.body.i_crit_edge:                     ; preds = %if.then
  br label %for.body.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.for.body.i_crit_edge
  %i.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then.for.body.i_crit_edge ]
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %call.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %2, i32 %i.07.i
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -517 to ptr), ptr %arrayidx.i, align 4
  %inc.i = add nuw nsw i32 %i.07.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 157
  br i1 %exitcond.not.i, label %if.end, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

if.end:                                           ; preds = %for.body.i
  %call2.i = tail call i32 @hisi_clk_register_fixed_rate(ptr noundef nonnull @hi3660_fixed_rate_clks, i32 noundef 15, ptr noundef nonnull %call.i) #4
  %.pr = load ptr, ptr @clk_crgctrl_data, align 4
  %tobool1.not = icmp eq ptr %.pr, null
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end.if.end3_crit_edge

if.end.if.end3_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end3:                                          ; preds = %if.end.if.end3_crit_edge, %entry.if.end3_crit_edge
  %4 = phi ptr [ %.pr, %if.end.if.end3_crit_edge ], [ %0, %entry.if.end3_crit_edge ]
  tail call void @hisi_clk_register_gate_sep(ptr noundef nonnull @hi3660_crgctrl_gate_sep_clks, i32 noundef 62, ptr noundef nonnull %4) #4
  %5 = load ptr, ptr @clk_crgctrl_data, align 4
  %call = tail call i32 @hisi_clk_register_gate(ptr noundef nonnull @hi3660_crgctrl_gate_clks, i32 noundef 22, ptr noundef %5) #4
  %6 = load ptr, ptr @clk_crgctrl_data, align 4
  %call4 = tail call i32 @hisi_clk_register_mux(ptr noundef nonnull @hi3660_crgctrl_mux_clks, i32 noundef 21, ptr noundef %6) #4
  %7 = load ptr, ptr @clk_crgctrl_data, align 4
  %call5 = tail call i32 @hisi_clk_register_fixed_factor(ptr noundef nonnull @hi3660_crg_fixed_factor_clks, i32 noundef 15, ptr noundef %7) #4
  %8 = load ptr, ptr @clk_crgctrl_data, align 4
  %call6 = tail call i32 @hisi_clk_register_divider(ptr noundef nonnull @hi3660_crgctrl_divider_clks, i32 noundef 22, ptr noundef %8) #4
  %9 = load ptr, ptr @clk_crgctrl_data, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %clk_num29 = getelementptr inbounds %struct.clk_onecell_data, ptr %9, i32 0, i32 1
  %12 = ptrtoint ptr %clk_num29 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %clk_num29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp30.not = icmp eq i32 %13, 0
  br i1 %cmp30.not, label %if.end3.cleanup_crit_edge, label %if.end3.for.body_crit_edge

if.end3.for.body_crit_edge:                       ; preds = %if.end3
  br label %for.body

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end3.for.body_crit_edge
  %i.031 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end3.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %11, i32 %i.031
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx, align 4
  %cmp.i = icmp ule ptr %15, inttoptr (i32 -4096 to ptr)
  %cmp12.not = icmp eq ptr %15, inttoptr (i32 -517 to ptr)
  %or.cond = or i1 %cmp.i, %cmp12.not
  br i1 %or.cond, label %for.body.for.inc_crit_edge, label %do.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %15 to i32
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, i32 noundef %i.031, i32 noundef %16) #7
  br label %for.inc

for.inc:                                          ; preds = %do.end, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.031, 1
  %17 = load ptr, ptr @clk_crgctrl_data, align 4
  %clk_num = getelementptr inbounds %struct.clk_onecell_data, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %clk_num to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %clk_num, align 4
  %cmp = icmp ult i32 %inc, %19
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hi3660_clk_pctrl_init(ptr noundef %np) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @hisi_clk_init(ptr noundef %np, i32 noundef 2) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call1 = tail call i32 @hisi_clk_register_gate(ptr noundef nonnull @hi3660_pctrl_gate_clks, i32 noundef 2, ptr noundef nonnull %call) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hi3660_clk_pmuctrl_init(ptr noundef %np) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @hisi_clk_init(ptr noundef %np, i32 noundef 1) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call1 = tail call i32 @hisi_clk_register_gate(ptr noundef nonnull @hi3660_pmu_gate_clks, i32 noundef 1, ptr noundef nonnull %call) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hi3660_clk_sctrl_init(ptr noundef %np) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @hisi_clk_init(ptr noundef %np, i32 noundef 20) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call1 = tail call i32 @hisi_clk_register_gate(ptr noundef nonnull @hi3660_sctrl_gate_clks, i32 noundef 5, ptr noundef nonnull %call) #4
  tail call void @hisi_clk_register_gate_sep(ptr noundef nonnull @hi3660_sctrl_gate_sep_clks, i32 noundef 9, ptr noundef nonnull %call) #4
  %call2 = tail call i32 @hisi_clk_register_mux(ptr noundef nonnull @hi3660_sctrl_mux_clks, i32 noundef 2, ptr noundef nonnull %call) #4
  %call3 = tail call i32 @hisi_clk_register_divider(ptr noundef nonnull @hi3660_sctrl_divider_clks, i32 noundef 4, ptr noundef nonnull %call) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hi3660_clk_iomcu_init(ptr noundef %np) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @hisi_clk_init(ptr noundef %np, i32 noundef 5) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @hisi_clk_register_gate_sep(ptr noundef nonnull @hi3660_iomcu_gate_sep_clks, i32 noundef 5, ptr noundef nonnull %call) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @hisi_clk_register_gate_sep(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hisi_clk_register_gate(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hisi_clk_register_mux(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hisi_clk_register_fixed_factor(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hisi_clk_register_divider(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 224)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 224)
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !47, !48, !49, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !300, !302, !304, !306, !308, !310, !312, !314, !316, !318, !320, !322, !324, !326, !328, !330, !332, !334, !336, !338, !340, !342, !344, !346, !348, !350, !352, !354, !356, !358, !360, !362, !364, !366, !368, !370, !372, !374, !376, !378, !380, !382, !384, !386, !388, !390, !392, !394, !396, !398, !400, !402, !404, !406, !408, !410, !412, !414, !416, !418, !420, !422, !424, !426, !428, !430, !432, !434, !436, !438, !440, !442, !444, !446, !448}
!llvm.module.flags = !{!450, !451, !452, !453, !454, !455, !456, !457}
!llvm.ident = !{!458}

!0 = !{ptr @__of_table_hi3660_clk_crgctrl, !1, !"__of_table_hi3660_clk_crgctrl", i1 false, i1 false}
!1 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 557, i32 1}
!2 = !{ptr @__initcall__kmod_clk_hi3660__170_637_hi3660_clk_init1, !3, !"__initcall__kmod_clk_hi3660__170_637_hi3660_clk_init1", i1 false, i1 false}
!3 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 637, i32 1}
!4 = !{ptr @clk_crgctrl_data, !5, !"clk_crgctrl_data", i1 false, i1 false}
!5 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 472, i32 32}
!6 = !{ptr @.str, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 14, i32 22}
!8 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 15, i32 22}
!10 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 16, i32 24}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 17, i32 22}
!14 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 18, i32 22}
!16 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 19, i32 22}
!18 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 20, i32 22}
!20 = !{ptr @.str.7, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 21, i32 22}
!22 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 22, i32 17}
!24 = !{ptr @.str.9, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 23, i32 26}
!26 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 24, i32 22}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 25, i32 19}
!30 = !{ptr @.str.12, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 26, i32 19}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 27, i32 21}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 28, i32 20}
!36 = !{ptr @hi3660_fixed_rate_clks, !37, !"hi3660_fixed_rate_clks", i1 false, i1 false}
!37 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 13, i32 43}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 628, i32 13}
!40 = !{ptr @hi3660_clk_driver, !41, !"hi3660_clk_driver", i1 false, i1 false}
!41 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 625, i32 31}
!42 = !{ptr @hi3660_clk_match_table, !43, !"hi3660_clk_match_table", i1 false, i1 false}
!43 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 596, i32 34}
!44 = !{ptr @.str.16, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 591, i32 4}
!46 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @hi3660_clk_crgctrl_init._entry, !45, !"_entry", i1 false, i1 false}
!49 = !{ptr @hi3660_clk_crgctrl_init._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.19, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 52, i32 27}
!52 = !{ptr @.str.20, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 54, i32 28}
!54 = !{ptr @.str.21, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 54, i32 47}
!56 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 56, i32 25}
!58 = !{ptr @.str.23, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 58, i32 26}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 58, i32 43}
!62 = !{ptr @.str.25, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 60, i32 23}
!64 = !{ptr @.str.26, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 60, i32 37}
!66 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 62, i32 23}
!68 = !{ptr @.str.28, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 64, i32 23}
!70 = !{ptr @.str.29, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 66, i32 23}
!72 = !{ptr @.str.30, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 68, i32 23}
!74 = !{ptr @.str.31, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 70, i32 23}
!76 = !{ptr @.str.32, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 72, i32 23}
!78 = !{ptr @.str.33, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 74, i32 23}
!80 = !{ptr @.str.34, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 76, i32 23}
!82 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 78, i32 23}
!84 = !{ptr @.str.36, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 80, i32 24}
!86 = !{ptr @.str.37, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 82, i32 24}
!88 = !{ptr @.str.38, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 84, i32 24}
!90 = !{ptr @.str.39, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 86, i32 24}
!92 = !{ptr @.str.40, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 88, i32 24}
!94 = !{ptr @.str.41, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 90, i32 24}
!96 = !{ptr @.str.42, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 92, i32 24}
!98 = !{ptr @.str.43, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 94, i32 24}
!100 = !{ptr @.str.44, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 96, i32 24}
!102 = !{ptr @.str.45, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 96, i32 39}
!104 = !{ptr @.str.46, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 98, i32 24}
!106 = !{ptr @.str.47, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 100, i32 24}
!108 = !{ptr @.str.48, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 102, i32 24}
!110 = !{ptr @.str.49, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 104, i32 26}
!112 = !{ptr @.str.50, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 106, i32 26}
!114 = !{ptr @.str.51, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 106, i32 43}
!116 = !{ptr @.str.52, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 108, i32 26}
!118 = !{ptr @.str.53, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 110, i32 26}
!120 = !{ptr @.str.54, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 110, i32 43}
!122 = !{ptr @.str.55, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 112, i32 27}
!124 = !{ptr @.str.56, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 112, i32 45}
!126 = !{ptr @.str.57, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 114, i32 27}
!128 = !{ptr @.str.58, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 114, i32 45}
!130 = !{ptr @.str.59, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 116, i32 27}
!132 = !{ptr @.str.60, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 118, i32 27}
!134 = !{ptr @.str.61, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 120, i32 26}
!136 = !{ptr @.str.62, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 122, i32 26}
!138 = !{ptr @.str.63, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 124, i32 26}
!140 = !{ptr @.str.64, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 124, i32 43}
!142 = !{ptr @.str.65, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 126, i32 26}
!144 = !{ptr @.str.66, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 126, i32 43}
!146 = !{ptr @.str.67, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 128, i32 26}
!148 = !{ptr @.str.68, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 130, i32 26}
!150 = !{ptr @.str.69, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 130, i32 43}
!152 = !{ptr @.str.70, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 132, i32 26}
!154 = !{ptr @.str.71, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 132, i32 43}
!156 = !{ptr @.str.72, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 134, i32 26}
!158 = !{ptr @.str.73, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 134, i32 43}
!160 = !{ptr @.str.74, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 136, i32 49}
!162 = !{ptr @.str.75, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 138, i32 26}
!164 = !{ptr @.str.76, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 138, i32 43}
!166 = !{ptr @.str.77, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 140, i32 33}
!168 = !{ptr @.str.78, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 142, i32 33}
!170 = !{ptr @.str.79, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 144, i32 33}
!172 = !{ptr @.str.80, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 146, i32 33}
!174 = !{ptr @.str.81, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 148, i32 30}
!176 = !{ptr @.str.82, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 148, i32 51}
!178 = !{ptr @.str.83, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 150, i32 26}
!180 = !{ptr @.str.84, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 152, i32 24}
!182 = !{ptr @.str.85, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 152, i32 39}
!184 = !{ptr @.str.86, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 154, i32 27}
!186 = !{ptr @.str.87, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 154, i32 45}
!188 = !{ptr @.str.88, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 156, i32 32}
!190 = !{ptr @.str.89, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 157, i32 4}
!192 = !{ptr @.str.90, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 158, i32 32}
!194 = !{ptr @.str.91, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 160, i32 32}
!196 = !{ptr @.str.92, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 166, i32 32}
!198 = !{ptr @.str.93, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 168, i32 27}
!200 = !{ptr @.str.94, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 170, i32 27}
!202 = !{ptr @.str.95, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 172, i32 27}
!204 = !{ptr @.str.96, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 172, i32 45}
!206 = !{ptr @.str.97, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 174, i32 31}
!208 = !{ptr @.str.98, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 176, i32 29}
!210 = !{ptr @.str.99, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 178, i32 31}
!212 = !{ptr @hi3660_crgctrl_gate_sep_clks, !213, !"hi3660_crgctrl_gate_sep_clks", i1 false, i1 false}
!213 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 51, i32 37}
!214 = !{ptr @.str.100, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 183, i32 27}
!216 = !{ptr @.str.101, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 183, i32 45}
!218 = !{ptr @.str.102, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 185, i32 27}
!220 = !{ptr @.str.103, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 185, i32 45}
!222 = !{ptr @.str.104, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 187, i32 27}
!224 = !{ptr @.str.105, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 187, i32 45}
!226 = !{ptr @.str.106, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 189, i32 27}
!228 = !{ptr @.str.107, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 189, i32 45}
!230 = !{ptr @.str.108, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 191, i32 27}
!232 = !{ptr @.str.109, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 191, i32 45}
!234 = !{ptr @.str.110, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 193, i32 31}
!236 = !{ptr @.str.111, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 193, i32 53}
!238 = !{ptr @.str.112, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 195, i32 26}
!240 = !{ptr @.str.113, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 195, i32 43}
!242 = !{ptr @.str.114, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 197, i32 25}
!244 = !{ptr @.str.115, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 197, i32 41}
!246 = !{ptr @.str.116, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 199, i32 29}
!248 = !{ptr @.str.117, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 199, i32 49}
!250 = !{ptr @.str.118, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 201, i32 27}
!252 = !{ptr @.str.119, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 201, i32 45}
!254 = !{ptr @.str.120, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 203, i32 28}
!256 = !{ptr @.str.121, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 203, i32 47}
!258 = !{ptr @.str.122, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 205, i32 28}
!260 = !{ptr @.str.123, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 207, i32 28}
!262 = !{ptr @.str.124, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 209, i32 26}
!264 = !{ptr @.str.125, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 211, i32 30}
!266 = !{ptr @.str.126, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 211, i32 51}
!268 = !{ptr @.str.127, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 213, i32 27}
!270 = !{ptr @.str.128, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 215, i32 28}
!272 = !{ptr @.str.129, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 215, i32 47}
!274 = !{ptr @.str.130, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 217, i32 31}
!276 = !{ptr @.str.131, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 217, i32 53}
!278 = !{ptr @.str.132, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 219, i32 29}
!280 = !{ptr @.str.133, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 219, i32 49}
!282 = !{ptr @.str.134, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 223, i32 32}
!284 = !{ptr @.str.135, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 224, i32 4}
!286 = !{ptr @.str.136, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 225, i32 31}
!288 = !{ptr @.str.137, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 226, i32 4}
!290 = !{ptr @hi3660_crgctrl_gate_clks, !291, !"hi3660_crgctrl_gate_clks", i1 false, i1 false}
!291 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 182, i32 37}
!292 = !{ptr @.str.138, !293, !"<string literal>", i1 false, i1 false}
!293 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 269, i32 27}
!294 = !{ptr @.str.139, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 272, i32 26}
!296 = !{ptr @.str.140, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 329, i32 27}
!298 = !{ptr @hi3660_crgctrl_mux_clks, !299, !"hi3660_crgctrl_mux_clks", i1 false, i1 false}
!299 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 268, i32 36}
!300 = !{ptr @clk_mux_sysbus_p, !301, !"clk_mux_sysbus_p", i1 false, i1 false}
!301 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 230, i32 1}
!302 = !{ptr @.str.141, !303, !"<string literal>", i1 false, i1 false}
!303 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 250, i32 35}
!304 = !{ptr @clk_mux_uart0_p, !305, !"clk_mux_uart0_p", i1 false, i1 false}
!305 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 250, i32 1}
!306 = !{ptr @.str.142, !307, !"<string literal>", i1 false, i1 false}
!307 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 252, i32 35}
!308 = !{ptr @clk_mux_uart1_p, !309, !"clk_mux_uart1_p", i1 false, i1 false}
!309 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 252, i32 1}
!310 = !{ptr @.str.143, !311, !"<string literal>", i1 false, i1 false}
!311 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 254, i32 35}
!312 = !{ptr @clk_mux_uarth_p, !313, !"clk_mux_uarth_p", i1 false, i1 false}
!313 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 254, i32 1}
!314 = !{ptr @.str.144, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 260, i32 33}
!316 = !{ptr @clk_mux_spi_p, !317, !"clk_mux_spi_p", i1 false, i1 false}
!317 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 260, i32 1}
!318 = !{ptr @.str.145, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 262, i32 33}
!320 = !{ptr @clk_mux_i2c_p, !321, !"clk_mux_i2c_p", i1 false, i1 false}
!321 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 262, i32 1}
!322 = !{ptr @clk_mux_pll02p, !323, !"clk_mux_pll02p", i1 false, i1 false}
!323 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 256, i32 1}
!324 = !{ptr @clk_mux_ldi0_p, !325, !"clk_mux_ldi0_p", i1 false, i1 false}
!325 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 245, i32 1}
!326 = !{ptr @clk_mux_pll_p, !327, !"clk_mux_pll_p", i1 false, i1 false}
!327 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 236, i32 1}
!328 = !{ptr @.str.146, !329, !"<string literal>", i1 false, i1 false}
!329 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 234, i32 23}
!330 = !{ptr @.str.147, !331, !"<string literal>", i1 false, i1 false}
!331 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 234, i32 41}
!332 = !{ptr @clk_mux_sd_sys_p, !333, !"clk_mux_sd_sys_p", i1 false, i1 false}
!333 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 234, i32 1}
!334 = !{ptr @clk_mux_edc0_p, !335, !"clk_mux_edc0_p", i1 false, i1 false}
!335 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 240, i32 1}
!336 = !{ptr @.str.148, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 232, i32 43}
!338 = !{ptr @clk_mux_sdio_sys_p, !339, !"clk_mux_sdio_sys_p", i1 false, i1 false}
!339 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 232, i32 1}
!340 = !{ptr @clk_mux_venc_p, !341, !"clk_mux_venc_p", i1 false, i1 false}
!341 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 264, i32 1}
!342 = !{ptr @clk_mux_pll0123_p, !343, !"clk_mux_pll0123_p", i1 false, i1 false}
!343 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 238, i32 1}
!344 = !{ptr @.str.149, !345, !"<string literal>", i1 false, i1 false}
!345 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 266, i32 39}
!346 = !{ptr @clk_mux_isp_snclk_p, !347, !"clk_mux_isp_snclk_p", i1 false, i1 false}
!347 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 266, i32 1}
!348 = !{ptr @clk_mux_ioperi_p, !349, !"clk_mux_ioperi_p", i1 false, i1 false}
!349 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 258, i32 1}
!350 = !{ptr @.str.150, !351, !"<string literal>", i1 false, i1 false}
!351 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 33, i32 25}
!352 = !{ptr @.str.151, !353, !"<string literal>", i1 false, i1 false}
!353 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 33, i32 45}
!354 = !{ptr @.str.152, !355, !"<string literal>", i1 false, i1 false}
!355 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 35, i32 26}
!356 = !{ptr @.str.153, !357, !"<string literal>", i1 false, i1 false}
!357 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 35, i32 43}
!358 = !{ptr @.str.154, !359, !"<string literal>", i1 false, i1 false}
!359 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 36, i32 26}
!360 = !{ptr @.str.155, !361, !"<string literal>", i1 false, i1 false}
!361 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 36, i32 43}
!362 = !{ptr @.str.156, !363, !"<string literal>", i1 false, i1 false}
!363 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 37, i32 26}
!364 = !{ptr @.str.157, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 37, i32 43}
!366 = !{ptr @.str.158, !367, !"<string literal>", i1 false, i1 false}
!367 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 38, i32 26}
!368 = !{ptr @.str.159, !369, !"<string literal>", i1 false, i1 false}
!369 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 38, i32 43}
!370 = !{ptr @.str.160, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 42, i32 26}
!372 = !{ptr @.str.161, !373, !"<string literal>", i1 false, i1 false}
!373 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 43, i32 26}
!374 = !{ptr @.str.162, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 44, i32 24}
!376 = !{ptr @.str.163, !377, !"<string literal>", i1 false, i1 false}
!377 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 44, i32 43}
!378 = !{ptr @.str.164, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 45, i32 24}
!380 = !{ptr @.str.165, !381, !"<string literal>", i1 false, i1 false}
!381 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 45, i32 39}
!382 = !{ptr @.str.166, !383, !"<string literal>", i1 false, i1 false}
!383 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 46, i32 27}
!384 = !{ptr @.str.167, !385, !"<string literal>", i1 false, i1 false}
!385 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 47, i32 30}
!386 = !{ptr @hi3660_crg_fixed_factor_clks, !387, !"hi3660_crg_fixed_factor_clks", i1 false, i1 false}
!387 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 32, i32 45}
!388 = !{ptr @.str.168, !389, !"<string literal>", i1 false, i1 false}
!389 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 341, i32 24}
!390 = !{ptr @hi3660_crgctrl_divider_clks, !391, !"hi3660_crgctrl_divider_clks", i1 false, i1 false}
!391 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 334, i32 40}
!392 = !{ptr @.str.169, !393, !"<string literal>", i1 false, i1 false}
!393 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 391, i32 4}
!394 = !{ptr @hi3660_pctrl_gate_clks, !395, !"hi3660_pctrl_gate_clks", i1 false, i1 false}
!395 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 389, i32 37}
!396 = !{ptr @hi3660_pmu_gate_clks, !397, !"hi3660_pmu_gate_clks", i1 false, i1 false}
!397 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 383, i32 37}
!398 = !{ptr @.str.170, !399, !"<string literal>", i1 false, i1 false}
!399 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 420, i32 29}
!400 = !{ptr @.str.171, !401, !"<string literal>", i1 false, i1 false}
!401 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 420, i32 49}
!402 = !{ptr @.str.172, !403, !"<string literal>", i1 false, i1 false}
!403 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 422, i32 32}
!404 = !{ptr @.str.173, !405, !"<string literal>", i1 false, i1 false}
!405 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 424, i32 32}
!406 = !{ptr @.str.174, !407, !"<string literal>", i1 false, i1 false}
!407 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 426, i32 32}
!408 = !{ptr @.str.175, !409, !"<string literal>", i1 false, i1 false}
!409 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 428, i32 32}
!410 = !{ptr @hi3660_sctrl_gate_clks, !411, !"hi3660_sctrl_gate_clks", i1 false, i1 false}
!411 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 419, i32 37}
!412 = !{ptr @.str.176, !413, !"<string literal>", i1 false, i1 false}
!413 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 399, i32 26}
!414 = !{ptr @.str.177, !415, !"<string literal>", i1 false, i1 false}
!415 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 399, i32 43}
!416 = !{ptr @.str.178, !417, !"<string literal>", i1 false, i1 false}
!417 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 401, i32 26}
!418 = !{ptr @.str.179, !419, !"<string literal>", i1 false, i1 false}
!419 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 403, i32 26}
!420 = !{ptr @.str.180, !421, !"<string literal>", i1 false, i1 false}
!421 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 405, i32 26}
!422 = !{ptr @.str.181, !423, !"<string literal>", i1 false, i1 false}
!423 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 407, i32 26}
!424 = !{ptr @.str.182, !425, !"<string literal>", i1 false, i1 false}
!425 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 409, i32 26}
!426 = !{ptr @.str.183, !427, !"<string literal>", i1 false, i1 false}
!427 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 411, i32 26}
!428 = !{ptr @.str.184, !429, !"<string literal>", i1 false, i1 false}
!429 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 413, i32 28}
!430 = !{ptr @.str.185, !431, !"<string literal>", i1 false, i1 false}
!431 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 413, i32 47}
!432 = !{ptr @.str.186, !433, !"<string literal>", i1 false, i1 false}
!433 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 415, i32 32}
!434 = !{ptr @.str.187, !435, !"<string literal>", i1 false, i1 false}
!435 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 415, i32 55}
!436 = !{ptr @hi3660_sctrl_gate_sep_clks, !437, !"hi3660_sctrl_gate_sep_clks", i1 false, i1 false}
!437 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 398, i32 37}
!438 = !{ptr @hi3660_sctrl_mux_clks, !439, !"hi3660_sctrl_mux_clks", i1 false, i1 false}
!439 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 438, i32 36}
!440 = !{ptr @.str.188, !441, !"<string literal>", i1 false, i1 false}
!441 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 433, i32 23}
!442 = !{ptr @aclk_mux_mmbuf_p, !443, !"aclk_mux_mmbuf_p", i1 false, i1 false}
!443 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 433, i32 1}
!444 = !{ptr @clk_sw_mmbuf_p, !445, !"clk_sw_mmbuf_p", i1 false, i1 false}
!445 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 435, i32 1}
!446 = !{ptr @hi3660_sctrl_divider_clks, !447, !"hi3660_sctrl_divider_clks", i1 false, i1 false}
!447 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 447, i32 40}
!448 = !{ptr @hi3660_iomcu_gate_sep_clks, !449, !"hi3660_iomcu_gate_sep_clks", i1 false, i1 false}
!449 = !{!"../drivers/clk/hisilicon/clk-hi3660.c", i32 459, i32 37}
!450 = !{i32 1, !"wchar_size", i32 2}
!451 = !{i32 1, !"min_enum_size", i32 4}
!452 = !{i32 8, !"branch-target-enforcement", i32 0}
!453 = !{i32 8, !"sign-return-address", i32 0}
!454 = !{i32 8, !"sign-return-address-all", i32 0}
!455 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!456 = !{i32 7, !"uwtable", i32 1}
!457 = !{i32 7, !"frame-pointer", i32 2}
!458 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
