; ModuleID = '/llk/IR_all_yes/drivers/clk/hisilicon/crg-hi3798cv200.c_pt.bc'
source_filename = "../drivers/clk/hisilicon/crg-hi3798cv200.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.hisi_crg_funcs = type { ptr, ptr }
%struct.hisi_phase_clock = type { i32, ptr, ptr, i32, i32, i8, i8, ptr, ptr, i8 }
%struct.hisi_fixed_rate_clock = type { i32, ptr, ptr, i32, i32 }
%struct.hisi_mux_clock = type { i32, ptr, ptr, i8, i32, i32, i8, i8, i8, ptr, ptr }
%struct.hisi_gate_clock = type { i32, ptr, ptr, i32, i32, i8, i8, ptr }
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

@__initcall__kmod_crg_hi3798cv200__170_392_hi3798cv200_crg_init1 = internal global ptr @hi3798cv200_crg_init, section ".initcall1.init", align 4
@hi3798cv200_crg_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @hi3798cv200_crg_probe, ptr @hi3798cv200_crg_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @hi3798cv200_crg_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_hi3798cv200_crg_exit = internal global ptr @hi3798cv200_crg_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file171 = internal constant [59 x i8] c"crg_hi3798cv200.file=drivers/clk/hisilicon/crg-hi3798cv200\00", section ".modinfo", align 1
@__UNIQUE_ID_license172 = internal constant [31 x i8] c"crg_hi3798cv200.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description173 = internal constant [61 x i8] c"crg_hi3798cv200.description=HiSilicon Hi3798CV200 CRG Driver\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hi3798cv200-crg\00", [16 x i8] zeroinitializer }, align 32
@hi3798cv200_crg_match_table = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi3798cv200-crg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hi3798cv200_crg_funcs }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi3798cv200-sysctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hi3798cv200_sysctrl_funcs }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@hi3798cv200_crg_funcs = internal constant { %struct.hisi_crg_funcs, [24 x i8] } { %struct.hisi_crg_funcs { ptr @hi3798cv200_clk_register, ptr @hi3798cv200_clk_unregister }, [24 x i8] zeroinitializer }, align 32
@hi3798cv200_sysctrl_funcs = internal constant { %struct.hisi_crg_funcs, [24 x i8] } { %struct.hisi_crg_funcs { ptr @hi3798cv200_sysctrl_clk_register, ptr @hi3798cv200_sysctrl_clk_unregister }, [24 x i8] zeroinitializer }, align 32
@hi3798cv200_phase_clks = internal global { [2 x %struct.hisi_phase_clock], [56 x i8] } { [2 x %struct.hisi_phase_clock] [%struct.hisi_phase_clock { i32 20, ptr @.str.1, ptr @.str.2, i32 4, i32 160, i8 12, i8 3, ptr @mmc_phase_degrees, ptr @mmc_phase_regvals, i8 8 }, %struct.hisi_phase_clock { i32 19, ptr @.str.3, ptr @.str.2, i32 4, i32 160, i8 16, i8 3, ptr @mmc_phase_degrees, ptr @mmc_phase_regvals, i8 8 }], [56 x i8] zeroinitializer }, align 32
@hi3798cv200_fixed_rate_clks = internal constant { [15 x %struct.hisi_fixed_rate_clock], [84 x i8] } { [15 x %struct.hisi_fixed_rate_clock] [%struct.hisi_fixed_rate_clock { i32 0, ptr @.str.4, ptr null, i32 0, i32 24000000 }, %struct.hisi_fixed_rate_clock { i32 1, ptr @.str.5, ptr null, i32 0, i32 100000000 }, %struct.hisi_fixed_rate_clock { i32 2, ptr @.str.6, ptr null, i32 0, i32 200000000 }, %struct.hisi_fixed_rate_clock { i32 81, ptr @.str.7, ptr null, i32 0, i32 12000000 }, %struct.hisi_fixed_rate_clock { i32 65, ptr @.str.8, ptr null, i32 0, i32 24000000 }, %struct.hisi_fixed_rate_clock { i32 66, ptr @.str.9, ptr null, i32 0, i32 25000000 }, %struct.hisi_fixed_rate_clock { i32 82, ptr @.str.10, ptr null, i32 0, i32 48000000 }, %struct.hisi_fixed_rate_clock { i32 67, ptr @.str.11, ptr null, i32 0, i32 50000000 }, %struct.hisi_fixed_rate_clock { i32 83, ptr @.str.12, ptr null, i32 0, i32 60000000 }, %struct.hisi_fixed_rate_clock { i32 68, ptr @.str.13, ptr null, i32 0, i32 75000000 }, %struct.hisi_fixed_rate_clock { i32 69, ptr @.str.14, ptr null, i32 0, i32 100000000 }, %struct.hisi_fixed_rate_clock { i32 70, ptr @.str.15, ptr null, i32 0, i32 150000000 }, %struct.hisi_fixed_rate_clock { i32 84, ptr @.str.16, ptr null, i32 0, i32 165000000 }, %struct.hisi_fixed_rate_clock { i32 71, ptr @.str.17, ptr null, i32 0, i32 200000000 }, %struct.hisi_fixed_rate_clock { i32 72, ptr @.str.18, ptr null, i32 0, i32 250000000 }], [84 x i8] zeroinitializer }, align 32
@hi3798cv200_mux_clks = internal global { [4 x %struct.hisi_mux_clock], [48 x i8] } { [4 x %struct.hisi_mux_clock] [%struct.hisi_mux_clock { i32 75, ptr @.str.19, ptr @mmc_mux_p, i8 5, i32 4, i32 160, i8 8, i8 3, i8 0, ptr @mmc_mux_table, ptr null }, %struct.hisi_mux_clock { i32 86, ptr @.str.20, ptr @comphy_mux_p, i8 2, i32 4, i32 392, i8 2, i8 2, i8 0, ptr @comphy_mux_table, ptr null }, %struct.hisi_mux_clock { i32 80, ptr @.str.21, ptr @comphy_mux_p, i8 2, i32 4, i32 392, i8 10, i8 2, i8 0, ptr @comphy_mux_table, ptr null }, %struct.hisi_mux_clock { i32 85, ptr @.str.22, ptr @sdio_mux_p, i8 4, i32 4, i32 156, i8 8, i8 2, i8 0, ptr @sdio_mux_table, ptr null }], [48 x i8] zeroinitializer }, align 32
@hi3798cv200_gate_clks = internal constant { [41 x %struct.hisi_gate_clock], [260 x i8] } { [41 x %struct.hisi_gate_clock] [%struct.hisi_gate_clock { i32 4, ptr @.str.23, ptr @.str.13, i32 4, i32 104, i8 4, i8 0, ptr null }, %struct.hisi_gate_clock { i32 6, ptr @.str.24, ptr @.str.5, i32 4, i32 108, i8 4, i8 0, ptr null }, %struct.hisi_gate_clock { i32 7, ptr @.str.25, ptr @.str.5, i32 4, i32 108, i8 8, i8 0, ptr null }, %struct.hisi_gate_clock { i32 8, ptr @.str.26, ptr @.str.5, i32 4, i32 108, i8 12, i8 0, ptr null }, %struct.hisi_gate_clock { i32 9, ptr @.str.27, ptr @.str.5, i32 4, i32 108, i8 16, i8 0, ptr null }, %struct.hisi_gate_clock { i32 10, ptr @.str.28, ptr @.str.5, i32 4, i32 108, i8 20, i8 0, ptr null }, %struct.hisi_gate_clock { i32 12, ptr @.str.29, ptr @.str.5, i32 4, i32 112, i8 0, i8 0, ptr null }, %struct.hisi_gate_clock { i32 21, ptr @.str.30, ptr @.str.17, i32 4, i32 156, i8 0, i8 0, ptr null }, %struct.hisi_gate_clock { i32 22, ptr @.str.31, ptr @.str.22, i32 4, i32 156, i8 1, i8 0, ptr null }, %struct.hisi_gate_clock { i32 17, ptr @.str.32, ptr @.str.17, i32 4, i32 160, i8 0, i8 0, ptr null }, %struct.hisi_gate_clock { i32 18, ptr @.str.2, ptr @.str.19, i32 4, i32 160, i8 1, i8 0, ptr null }, %struct.hisi_gate_clock { i32 28, ptr @.str.33, ptr @.str.17, i32 4, i32 396, i8 0, i8 0, ptr null }, %struct.hisi_gate_clock { i32 27, ptr @.str.34, ptr @.str.14, i32 4, i32 396, i8 1, i8 0, ptr null }, %struct.hisi_gate_clock { i32 26, ptr @.str.35, ptr @.str.18, i32 4, i32 396, i8 2, i8 0, ptr null }, %struct.hisi_gate_clock { i32 25, ptr @.str.36, ptr @.str.8, i32 4, i32 396, i8 3, i8 0, ptr null }, %struct.hisi_gate_clock { i32 76, ptr @.str.37, ptr null, i32 4, i32 204, i8 5, i8 0, ptr null }, %struct.hisi_gate_clock { i32 77, ptr @.str.38, ptr @.str.37, i32 4, i32 204, i8 0, i8 0, ptr null }, %struct.hisi_gate_clock { i32 78, ptr @.str.39, ptr @.str.38, i32 4, i32 204, i8 1, i8 0, ptr null }, %struct.hisi_gate_clock { i32 79, ptr @.str.40, ptr @.str.38, i32 4, i32 204, i8 2, i8 0, ptr null }, %struct.hisi_gate_clock { i32 29, ptr @.str.41, ptr @.str.39, i32 4, i32 204, i8 3, i8 0, ptr null }, %struct.hisi_gate_clock { i32 30, ptr @.str.42, ptr @.str.39, i32 4, i32 204, i8 24, i8 0, ptr null }, %struct.hisi_gate_clock { i32 31, ptr @.str.43, ptr @.str.40, i32 4, i32 204, i8 4, i8 0, ptr null }, %struct.hisi_gate_clock { i32 32, ptr @.str.44, ptr @.str.40, i32 4, i32 204, i8 25, i8 0, ptr null }, %struct.hisi_gate_clock { i32 42, ptr @.str.45, ptr @.str.20, i32 4, i32 392, i8 0, i8 0, ptr null }, %struct.hisi_gate_clock { i32 33, ptr @.str.46, ptr @.str.21, i32 4, i32 392, i8 8, i8 0, ptr null }, %struct.hisi_gate_clock { i32 34, ptr @.str.47, ptr @.str.6, i32 4, i32 184, i8 0, i8 0, ptr null }, %struct.hisi_gate_clock { i32 35, ptr @.str.48, ptr @.str.12, i32 4, i32 184, i8 4, i8 0, ptr null }, %struct.hisi_gate_clock { i32 37, ptr @.str.49, ptr @.str.7, i32 4, i32 184, i8 2, i8 0, ptr null }, %struct.hisi_gate_clock { i32 38, ptr @.str.50, ptr @.str.10, i32 4, i32 184, i8 1, i8 0, ptr null }, %struct.hisi_gate_clock { i32 36, ptr @.str.51, ptr @.str.12, i32 4, i32 184, i8 5, i8 0, ptr null }, %struct.hisi_gate_clock { i32 39, ptr @.str.52, ptr @.str.12, i32 4, i32 184, i8 3, i8 0, ptr null }, %struct.hisi_gate_clock { i32 40, ptr @.str.53, ptr @.str.8, i32 4, i32 188, i8 0, i8 0, ptr null }, %struct.hisi_gate_clock { i32 41, ptr @.str.54, ptr @.str.8, i32 4, i32 188, i8 2, i8 0, ptr null }, %struct.hisi_gate_clock { i32 43, ptr @.str.55, ptr null, i32 4, i32 176, i8 0, i8 0, ptr null }, %struct.hisi_gate_clock { i32 44, ptr @.str.56, ptr null, i32 4, i32 176, i8 4, i8 0, ptr null }, %struct.hisi_gate_clock { i32 45, ptr @.str.57, ptr null, i32 4, i32 176, i8 3, i8 0, ptr null }, %struct.hisi_gate_clock { i32 46, ptr @.str.58, ptr null, i32 4, i32 176, i8 2, i8 0, ptr null }, %struct.hisi_gate_clock { i32 47, ptr @.str.59, ptr null, i32 4, i32 176, i8 16, i8 0, ptr null }, %struct.hisi_gate_clock { i32 48, ptr @.str.60, ptr null, i32 4, i32 176, i8 20, i8 0, ptr null }, %struct.hisi_gate_clock { i32 49, ptr @.str.61, ptr null, i32 4, i32 176, i8 19, i8 0, ptr null }, %struct.hisi_gate_clock { i32 50, ptr @.str.62, ptr null, i32 4, i32 176, i8 18, i8 0, ptr null }], [260 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mmc_sample\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk_mmc_ciu\00", [20 x i8] zeroinitializer }, align 32
@mmc_phase_degrees = internal global { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 45, i32 90, i32 135, i32 180, i32 225, i32 270, i32 315], [32 x i8] zeroinitializer }, align 32
@mmc_phase_regvals = internal global { [8 x i32], [32 x i8] } { [8 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7], [32 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mmc_drive\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"clk_osc\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"clk_apb\00", [24 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"clk_ahb\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"12m\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"24m\00", [28 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"25m\00", [28 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"48m\00", [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"50m\00", [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"60m\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"75m\00", [28 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"100m\00", [27 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"150m\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"166p5m\00", [25 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"200m\00", [27 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"250m\00", [27 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mmc_mux\00", [24 x i8] zeroinitializer }, align 32
@mmc_mux_p = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.14, ptr @.str.11, ptr @.str.9, ptr @.str.17, ptr @.str.15], [44 x i8] zeroinitializer }, align 32
@mmc_mux_table = internal global { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 1, i32 2, i32 3, i32 6], [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"combphy0_mux\00", [19 x i8] zeroinitializer }, align 32
@comphy_mux_p = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.14, ptr @.str.9], [24 x i8] zeroinitializer }, align 32
@comphy_mux_table = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 2, i32 3], [24 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"combphy1_mux\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sdio0_mux\00", [22 x i8] zeroinitializer }, align 32
@sdio_mux_p = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.14, ptr @.str.11, ptr @.str.15, ptr @.str.16], [16 x i8] zeroinitializer }, align 32
@sdio_mux_table = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 1, i32 2, i32 3], [16 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clk_uart2\00", [22 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_i2c0\00", [23 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_i2c1\00", [23 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_i2c2\00", [23 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_i2c3\00", [23 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_i2c4\00", [23 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_spi0\00", [23 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_sdio0_biu\00", [18 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_sdio0_ciu\00", [18 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk_mmc_biu\00", [20 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk_pcie_bus\00", [19 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk_pcie_sys\00", [19 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"clk_pcie_pipe\00", [18 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk_pcie_aux\00", [19 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"clk_pub\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"clk_bus\00", [24 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clk_bus_m0\00", [21 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clk_bus_m1\00", [21 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_mac0\00", [23 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clk_macif0\00", [21 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_mac1\00", [23 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clk_macif1\00", [21 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk_combphy0\00", [19 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk_combphy1\00", [19 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clk_u2_bus\00", [21 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clk_u2_phy\00", [21 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clk_u2_12m\00", [21 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clk_u2_48m\00", [21 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk_u2_utmi\00", [20 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clk_u2_otg_utmi\00", [16 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clk_u2_phy1_ref\00", [16 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clk_u2_phy2_ref\00", [16 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clk_u3_bus\00", [21 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk_u3_utmi\00", [20 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk_u3_pipe\00", [20 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_u3_suspend\00", [17 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk_u3_bus1\00", [20 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk_u3_utmi1\00", [19 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk_u3_pipe1\00", [19 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clk_u3_suspend1\00", [16 x i8] zeroinitializer }, align 32
@hi3798cv200_sysctrl_gate_clks = internal constant { [3 x %struct.hisi_gate_clock], [44 x i8] } { [3 x %struct.hisi_gate_clock] [%struct.hisi_gate_clock { i32 2, ptr @.str.63, ptr @.str.8, i32 4, i32 72, i8 4, i8 0, ptr null }, %struct.hisi_gate_clock { i32 3, ptr @.str.64, ptr @.str.8, i32 4, i32 72, i8 6, i8 0, ptr null }, %struct.hisi_gate_clock { i32 5, ptr @.str.65, ptr @.str.13, i32 4, i32 72, i8 10, i8 0, ptr null }], [44 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"clk_ir\00", [25 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"clk_timer01\00", [20 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clk_uart0\00", [22 x i8] zeroinitializer }, align 32
@___asan_gen_.66 = private unnamed_addr constant [23 x i8] c"hi3798cv200_crg_driver\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 379, i32 31 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 383, i32 13 }
@___asan_gen_.72 = private unnamed_addr constant [28 x i8] c"hi3798cv200_crg_match_table\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 335, i32 34 }
@___asan_gen_.75 = private unnamed_addr constant [22 x i8] c"hi3798cv200_crg_funcs\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 271, i32 36 }
@___asan_gen_.78 = private unnamed_addr constant [26 x i8] c"hi3798cv200_sysctrl_funcs\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 330, i32 36 }
@___asan_gen_.81 = private unnamed_addr constant [23 x i8] c"hi3798cv200_phase_clks\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 91, i32 32 }
@___asan_gen_.84 = private unnamed_addr constant [28 x i8] c"hi3798cv200_fixed_rate_clks\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 44, i32 43 }
@___asan_gen_.87 = private unnamed_addr constant [21 x i8] c"hi3798cv200_mux_clks\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 74, i32 30 }
@___asan_gen_.90 = private unnamed_addr constant [22 x i8] c"hi3798cv200_gate_clks\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 100, i32 37 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 92, i32 26 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 92, i32 40 }
@___asan_gen_.99 = private unnamed_addr constant [18 x i8] c"mmc_phase_degrees\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 89, i32 12 }
@___asan_gen_.102 = private unnamed_addr constant [18 x i8] c"mmc_phase_regvals\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 88, i32 12 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 95, i32 23 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 45, i32 19 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 46, i32 19 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 47, i32 19 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 48, i32 27 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 49, i32 27 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 50, i32 27 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 51, i32 27 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 52, i32 27 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 53, i32 27 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 54, i32 27 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 55, i32 28 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 56, i32 28 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 57, i32 30 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 58, i32 28 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 59, i32 28 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 75, i32 25 }
@___asan_gen_.156 = private unnamed_addr constant [10 x i8] c"mmc_mux_p\00", align 1
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 62, i32 26 }
@___asan_gen_.159 = private unnamed_addr constant [14 x i8] c"mmc_mux_table\00", align 1
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 64, i32 12 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 77, i32 30 }
@___asan_gen_.165 = private unnamed_addr constant [13 x i8] c"comphy_mux_p\00", align 1
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 66, i32 26 }
@___asan_gen_.168 = private unnamed_addr constant [17 x i8] c"comphy_mux_table\00", align 1
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 68, i32 12 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 80, i32 30 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 83, i32 27 }
@___asan_gen_.177 = private unnamed_addr constant [11 x i8] c"sdio_mux_p\00", align 1
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 70, i32 26 }
@___asan_gen_.180 = private unnamed_addr constant [15 x i8] c"sdio_mux_table\00", align 1
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 72, i32 12 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 102, i32 21 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 105, i32 20 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 107, i32 20 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 109, i32 20 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 111, i32 20 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 113, i32 20 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 116, i32 20 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 119, i32 25 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 121, i32 25 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 124, i32 23 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 129, i32 24 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 131, i32 24 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 133, i32 25 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 135, i32 24 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 138, i32 29 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 140, i32 29 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 142, i32 30 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 144, i32 30 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 146, i32 24 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 148, i32 26 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 150, i32 24 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 152, i32 26 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 155, i32 24 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 158, i32 24 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 161, i32 24 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 163, i32 24 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 165, i32 24 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 167, i32 24 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 169, i32 25 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 171, i32 29 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 173, i32 29 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 175, i32 29 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 178, i32 24 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 180, i32 25 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 182, i32 25 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 184, i32 28 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 186, i32 25 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 188, i32 26 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 190, i32 26 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 192, i32 29 }
@___asan_gen_.303 = private unnamed_addr constant [30 x i8] c"hi3798cv200_sysctrl_gate_clks\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 280, i32 37 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 281, i32 18 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 283, i32 23 }
@___asan_gen_.312 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.313 = private constant [43 x i8] c"../drivers/clk/hisilicon/crg-hi3798cv200.c\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.313, i32 285, i32 21 }
@llvm.compiler.used = appending global [89 x ptr] [ptr @__UNIQUE_ID_description173, ptr @__UNIQUE_ID_file171, ptr @__UNIQUE_ID_license172, ptr @__exitcall_hi3798cv200_crg_exit, ptr @__initcall__kmod_crg_hi3798cv200__170_392_hi3798cv200_crg_init1, ptr @hi3798cv200_crg_exit, ptr @hi3798cv200_crg_driver, ptr @.str, ptr @hi3798cv200_crg_match_table, ptr @hi3798cv200_crg_funcs, ptr @hi3798cv200_sysctrl_funcs, ptr @hi3798cv200_phase_clks, ptr @hi3798cv200_fixed_rate_clks, ptr @hi3798cv200_mux_clks, ptr @hi3798cv200_gate_clks, ptr @.str.1, ptr @.str.2, ptr @mmc_phase_degrees, ptr @mmc_phase_regvals, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @mmc_mux_p, ptr @mmc_mux_table, ptr @.str.20, ptr @comphy_mux_p, ptr @comphy_mux_table, ptr @.str.21, ptr @.str.22, ptr @sdio_mux_p, ptr @sdio_mux_table, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @hi3798cv200_sysctrl_gate_clks, ptr @.str.63, ptr @.str.64, ptr @.str.65], section "llvm.metadata"
@0 = internal global [83 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3798cv200_crg_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3798cv200_crg_match_table to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3798cv200_crg_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3798cv200_sysctrl_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3798cv200_phase_clks to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3798cv200_fixed_rate_clks to i32), i32 300, i32 384, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3798cv200_mux_clks to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3798cv200_gate_clks to i32), i32 1148, i32 1408, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_phase_degrees to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_phase_regvals to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_mux_p to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_mux_table to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comphy_mux_p to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @comphy_mux_table to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdio_mux_p to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sdio_mux_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3798cv200_sysctrl_gate_clks to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hi3798cv200_crg_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @hi3798cv200_crg_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hi3798cv200_crg_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @hi3798cv200_crg_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi3798cv200_crg_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 12, i32 noundef 3264) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #4
  %funcs = getelementptr inbounds %struct.hisi_crg_dev, ptr %call, i32 0, i32 2
  %0 = ptrtoint ptr %funcs to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %funcs, align 4
  %tobool4.not = icmp eq ptr %call2, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @hisi_reset_init(ptr noundef %pdev) #4
  %rstc = getelementptr inbounds %struct.hisi_crg_dev, ptr %call, i32 0, i32 1
  %1 = ptrtoint ptr %rstc to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7, ptr %rstc, align 4
  %tobool9.not = icmp eq ptr %call7, null
  br i1 %tobool9.not, label %if.end6.cleanup_crit_edge, label %if.end11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %2 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %funcs, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call13 = tail call ptr %5(ptr noundef %pdev) #4
  %6 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call13, ptr %call, align 4
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then16, label %if.end20

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  %7 = ptrtoint ptr %rstc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %rstc, align 4
  tail call void @hisi_reset_exit(ptr noundef %8) #4
  %9 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call, align 4
  %11 = ptrtoint ptr %10 to i32
  br label %cleanup

if.end20:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
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
define internal i32 @hi3798cv200_crg_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %rstc = getelementptr inbounds %struct.hisi_crg_dev, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rstc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rstc, align 4
  tail call void @hisi_reset_exit(ptr noundef %3) #4
  %funcs = getelementptr inbounds %struct.hisi_crg_dev, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %funcs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %funcs, align 4
  %unregister_clks = getelementptr inbounds %struct.hisi_crg_funcs, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %unregister_clks to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %unregister_clks, align 4
  tail call void %7(ptr noundef %pdev) #4
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hisi_reset_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hisi_reset_exit(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @hi3798cv200_clk_register(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @hisi_clk_alloc(ptr noundef %pdev, i32 noundef 128) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call2 = tail call i32 @hisi_clk_register_phase(ptr noundef %dev, ptr noundef nonnull @hi3798cv200_phase_clks, i32 noundef 2, ptr noundef nonnull %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %0 = inttoptr i32 %call2 to ptr
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @hisi_clk_register_fixed_rate(ptr noundef nonnull @hi3798cv200_fixed_rate_clks, i32 noundef 15, ptr noundef nonnull %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end11, label %if.then9

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  %1 = inttoptr i32 %call7 to ptr
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %call12 = tail call i32 @hisi_clk_register_mux(ptr noundef nonnull @hi3798cv200_mux_clks, i32 noundef 4, ptr noundef nonnull %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.unregister_fixed_rate_crit_edge

if.end11.unregister_fixed_rate_crit_edge:         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %unregister_fixed_rate

if.end15:                                         ; preds = %if.end11
  %call16 = tail call i32 @hisi_clk_register_gate(ptr noundef nonnull @hi3798cv200_gate_clks, i32 noundef 41, ptr noundef nonnull %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.unregister_mux_crit_edge

if.end15.unregister_mux_crit_edge:                ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %unregister_mux

if.end19:                                         ; preds = %if.end15
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call22 = tail call i32 @of_clk_add_provider(ptr noundef %3, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %tobool23.not = icmp eq i32 %call22, 0
  br i1 %tobool23.not, label %if.end19.cleanup_crit_edge, label %unregister_gate

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

unregister_gate:                                  ; preds = %if.end19
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %unregister_gate
  %i.010.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %unregister_gate ]
  %arrayidx.i = getelementptr %struct.hisi_gate_clock, ptr @hi3798cv200_gate_clks, i32 %i.010.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx.i, align 4
  %arrayidx3.i = getelementptr ptr, ptr %5, i32 %7
  %8 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx3.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unregister_gate(ptr noundef nonnull %9) #4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %inc.i = add nuw nsw i32 %i.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 41
  br i1 %exitcond.not.i, label %if.end.i.unregister_mux_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

if.end.i.unregister_mux_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %unregister_mux

unregister_mux:                                   ; preds = %if.end.i.unregister_mux_crit_edge, %if.end15.unregister_mux_crit_edge
  %ret.0 = phi i32 [ %call16, %if.end15.unregister_mux_crit_edge ], [ %call22, %if.end.i.unregister_mux_crit_edge ]
  %10 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %call, align 4
  %12 = load i32, ptr @hi3798cv200_mux_clks, align 4
  %arrayidx3.i46 = getelementptr ptr, ptr %11, i32 %12
  %13 = ptrtoint ptr %arrayidx3.i46 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx3.i46, align 4
  %tobool.not.i47 = icmp eq ptr %14, null
  br i1 %tobool.not.i47, label %unregister_mux.if.end.i49_crit_edge, label %if.then.i48

unregister_mux.if.end.i49_crit_edge:              ; preds = %unregister_mux
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i49

if.then.i48:                                      ; preds = %unregister_mux
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unregister_mux(ptr noundef nonnull %14) #4
  br label %if.end.i49

if.end.i49:                                       ; preds = %if.then.i48, %unregister_mux.if.end.i49_crit_edge
  %15 = load i32, ptr getelementptr inbounds ([4 x %struct.hisi_mux_clock], ptr @hi3798cv200_mux_clks, i32 0, i32 1), align 4
  %arrayidx3.1.i = getelementptr ptr, ptr %11, i32 %15
  %16 = ptrtoint ptr %arrayidx3.1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx3.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %17, null
  br i1 %tobool.not.1.i, label %if.end.i49.if.end.1.i_crit_edge, label %if.then.1.i

if.end.i49.if.end.1.i_crit_edge:                  ; preds = %if.end.i49
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.1.i

if.then.1.i:                                      ; preds = %if.end.i49
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unregister_mux(ptr noundef nonnull %17) #4
  br label %if.end.1.i

if.end.1.i:                                       ; preds = %if.then.1.i, %if.end.i49.if.end.1.i_crit_edge
  %18 = load i32, ptr getelementptr inbounds ([4 x %struct.hisi_mux_clock], ptr @hi3798cv200_mux_clks, i32 0, i32 2), align 4
  %arrayidx3.2.i = getelementptr ptr, ptr %11, i32 %18
  %19 = ptrtoint ptr %arrayidx3.2.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx3.2.i, align 4
  %tobool.not.2.i = icmp eq ptr %20, null
  br i1 %tobool.not.2.i, label %if.end.1.i.if.end.2.i_crit_edge, label %if.then.2.i

if.end.1.i.if.end.2.i_crit_edge:                  ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.2.i

if.then.2.i:                                      ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unregister_mux(ptr noundef nonnull %20) #4
  br label %if.end.2.i

if.end.2.i:                                       ; preds = %if.then.2.i, %if.end.1.i.if.end.2.i_crit_edge
  %21 = load i32, ptr getelementptr inbounds ([4 x %struct.hisi_mux_clock], ptr @hi3798cv200_mux_clks, i32 0, i32 3), align 4
  %arrayidx3.3.i = getelementptr ptr, ptr %11, i32 %21
  %22 = ptrtoint ptr %arrayidx3.3.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx3.3.i, align 4
  %tobool.not.3.i = icmp eq ptr %23, null
  br i1 %tobool.not.3.i, label %if.end.2.i.unregister_fixed_rate_crit_edge, label %if.then.3.i

if.end.2.i.unregister_fixed_rate_crit_edge:       ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %unregister_fixed_rate

if.then.3.i:                                      ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unregister_mux(ptr noundef nonnull %23) #4
  br label %unregister_fixed_rate

unregister_fixed_rate:                            ; preds = %if.then.3.i, %if.end.2.i.unregister_fixed_rate_crit_edge, %if.end11.unregister_fixed_rate_crit_edge
  %ret.1 = phi i32 [ %call12, %if.end11.unregister_fixed_rate_crit_edge ], [ %ret.0, %if.end.2.i.unregister_fixed_rate_crit_edge ], [ %ret.0, %if.then.3.i ]
  tail call fastcc void @hisi_clk_unregister_fixed_rate(ptr noundef nonnull %call)
  %24 = inttoptr i32 %ret.1 to ptr
  br label %cleanup

cleanup:                                          ; preds = %unregister_fixed_rate, %if.end19.cleanup_crit_edge, %if.then9, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %0, %if.then4 ], [ %1, %if.then9 ], [ %24, %unregister_fixed_rate ], [ %call, %if.end19.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hi3798cv200_clk_unregister(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  tail call void @of_clk_del_provider(ptr noundef %3) #4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %entry
  %i.010.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %entry ]
  %arrayidx.i = getelementptr %struct.hisi_gate_clock, ptr @hi3798cv200_gate_clks, i32 %i.010.i
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
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unregister_gate(ptr noundef nonnull %11) #4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %inc.i = add nuw nsw i32 %i.010.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 41
  br i1 %exitcond.not.i, label %hisi_clk_unregister_gate.exit, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

hisi_clk_unregister_gate.exit:                    ; preds = %if.end.i
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %16 = load i32, ptr @hi3798cv200_mux_clks, align 4
  %arrayidx3.i6 = getelementptr ptr, ptr %15, i32 %16
  %17 = ptrtoint ptr %arrayidx3.i6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx3.i6, align 4
  %tobool.not.i7 = icmp eq ptr %18, null
  br i1 %tobool.not.i7, label %hisi_clk_unregister_gate.exit.if.end.i9_crit_edge, label %if.then.i8

hisi_clk_unregister_gate.exit.if.end.i9_crit_edge: ; preds = %hisi_clk_unregister_gate.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i9

if.then.i8:                                       ; preds = %hisi_clk_unregister_gate.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unregister_mux(ptr noundef nonnull %18) #4
  br label %if.end.i9

if.end.i9:                                        ; preds = %if.then.i8, %hisi_clk_unregister_gate.exit.if.end.i9_crit_edge
  %19 = load i32, ptr getelementptr inbounds ([4 x %struct.hisi_mux_clock], ptr @hi3798cv200_mux_clks, i32 0, i32 1), align 4
  %arrayidx3.1.i = getelementptr ptr, ptr %15, i32 %19
  %20 = ptrtoint ptr %arrayidx3.1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx3.1.i, align 4
  %tobool.not.1.i = icmp eq ptr %21, null
  br i1 %tobool.not.1.i, label %if.end.i9.if.end.1.i_crit_edge, label %if.then.1.i

if.end.i9.if.end.1.i_crit_edge:                   ; preds = %if.end.i9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.1.i

if.then.1.i:                                      ; preds = %if.end.i9
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unregister_mux(ptr noundef nonnull %21) #4
  br label %if.end.1.i

if.end.1.i:                                       ; preds = %if.then.1.i, %if.end.i9.if.end.1.i_crit_edge
  %22 = load i32, ptr getelementptr inbounds ([4 x %struct.hisi_mux_clock], ptr @hi3798cv200_mux_clks, i32 0, i32 2), align 4
  %arrayidx3.2.i = getelementptr ptr, ptr %15, i32 %22
  %23 = ptrtoint ptr %arrayidx3.2.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx3.2.i, align 4
  %tobool.not.2.i = icmp eq ptr %24, null
  br i1 %tobool.not.2.i, label %if.end.1.i.if.end.2.i_crit_edge, label %if.then.2.i

if.end.1.i.if.end.2.i_crit_edge:                  ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.2.i

if.then.2.i:                                      ; preds = %if.end.1.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unregister_mux(ptr noundef nonnull %24) #4
  br label %if.end.2.i

if.end.2.i:                                       ; preds = %if.then.2.i, %if.end.1.i.if.end.2.i_crit_edge
  %25 = load i32, ptr getelementptr inbounds ([4 x %struct.hisi_mux_clock], ptr @hi3798cv200_mux_clks, i32 0, i32 3), align 4
  %arrayidx3.3.i = getelementptr ptr, ptr %15, i32 %25
  %26 = ptrtoint ptr %arrayidx3.3.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx3.3.i, align 4
  %tobool.not.3.i = icmp eq ptr %27, null
  br i1 %tobool.not.3.i, label %if.end.2.i.hisi_clk_unregister_mux.exit_crit_edge, label %if.then.3.i

if.end.2.i.hisi_clk_unregister_mux.exit_crit_edge: ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %hisi_clk_unregister_mux.exit

if.then.3.i:                                      ; preds = %if.end.2.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unregister_mux(ptr noundef nonnull %27) #4
  br label %hisi_clk_unregister_mux.exit

hisi_clk_unregister_mux.exit:                     ; preds = %if.then.3.i, %if.end.2.i.hisi_clk_unregister_mux.exit_crit_edge
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  tail call fastcc void @hisi_clk_unregister_fixed_rate(ptr noundef %29)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @hisi_clk_alloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hisi_clk_register_phase(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hisi_clk_unregister_fixed_rate(ptr nocapture noundef readonly %data) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %3) #4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %arrayidx3.1 = getelementptr ptr, ptr %1, i32 1
  %4 = ptrtoint ptr %arrayidx3.1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx3.1, align 4
  %tobool.not.1 = icmp eq ptr %5, null
  br i1 %tobool.not.1, label %if.end.if.end.1_crit_edge, label %if.then.1

if.end.if.end.1_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.1

if.then.1:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %5) #4
  br label %if.end.1

if.end.1:                                         ; preds = %if.then.1, %if.end.if.end.1_crit_edge
  %arrayidx3.2 = getelementptr ptr, ptr %1, i32 2
  %6 = ptrtoint ptr %arrayidx3.2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx3.2, align 4
  %tobool.not.2 = icmp eq ptr %7, null
  br i1 %tobool.not.2, label %if.end.1.if.end.2_crit_edge, label %if.then.2

if.end.1.if.end.2_crit_edge:                      ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.2

if.then.2:                                        ; preds = %if.end.1
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %7) #4
  br label %if.end.2

if.end.2:                                         ; preds = %if.then.2, %if.end.1.if.end.2_crit_edge
  %arrayidx3.3 = getelementptr ptr, ptr %1, i32 81
  %8 = ptrtoint ptr %arrayidx3.3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx3.3, align 4
  %tobool.not.3 = icmp eq ptr %9, null
  br i1 %tobool.not.3, label %if.end.2.if.end.3_crit_edge, label %if.then.3

if.end.2.if.end.3_crit_edge:                      ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.3

if.then.3:                                        ; preds = %if.end.2
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %9) #4
  br label %if.end.3

if.end.3:                                         ; preds = %if.then.3, %if.end.2.if.end.3_crit_edge
  %arrayidx3.4 = getelementptr ptr, ptr %1, i32 65
  %10 = ptrtoint ptr %arrayidx3.4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx3.4, align 4
  %tobool.not.4 = icmp eq ptr %11, null
  br i1 %tobool.not.4, label %if.end.3.if.end.4_crit_edge, label %if.then.4

if.end.3.if.end.4_crit_edge:                      ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.4

if.then.4:                                        ; preds = %if.end.3
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %11) #4
  br label %if.end.4

if.end.4:                                         ; preds = %if.then.4, %if.end.3.if.end.4_crit_edge
  %arrayidx3.5 = getelementptr ptr, ptr %1, i32 66
  %12 = ptrtoint ptr %arrayidx3.5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx3.5, align 4
  %tobool.not.5 = icmp eq ptr %13, null
  br i1 %tobool.not.5, label %if.end.4.if.end.5_crit_edge, label %if.then.5

if.end.4.if.end.5_crit_edge:                      ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.5

if.then.5:                                        ; preds = %if.end.4
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %13) #4
  br label %if.end.5

if.end.5:                                         ; preds = %if.then.5, %if.end.4.if.end.5_crit_edge
  %arrayidx3.6 = getelementptr ptr, ptr %1, i32 82
  %14 = ptrtoint ptr %arrayidx3.6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx3.6, align 4
  %tobool.not.6 = icmp eq ptr %15, null
  br i1 %tobool.not.6, label %if.end.5.if.end.6_crit_edge, label %if.then.6

if.end.5.if.end.6_crit_edge:                      ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.6

if.then.6:                                        ; preds = %if.end.5
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %15) #4
  br label %if.end.6

if.end.6:                                         ; preds = %if.then.6, %if.end.5.if.end.6_crit_edge
  %arrayidx3.7 = getelementptr ptr, ptr %1, i32 67
  %16 = ptrtoint ptr %arrayidx3.7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx3.7, align 4
  %tobool.not.7 = icmp eq ptr %17, null
  br i1 %tobool.not.7, label %if.end.6.if.end.7_crit_edge, label %if.then.7

if.end.6.if.end.7_crit_edge:                      ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.7

if.then.7:                                        ; preds = %if.end.6
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %17) #4
  br label %if.end.7

if.end.7:                                         ; preds = %if.then.7, %if.end.6.if.end.7_crit_edge
  %arrayidx3.8 = getelementptr ptr, ptr %1, i32 83
  %18 = ptrtoint ptr %arrayidx3.8 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx3.8, align 4
  %tobool.not.8 = icmp eq ptr %19, null
  br i1 %tobool.not.8, label %if.end.7.if.end.8_crit_edge, label %if.then.8

if.end.7.if.end.8_crit_edge:                      ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.8

if.then.8:                                        ; preds = %if.end.7
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %19) #4
  br label %if.end.8

if.end.8:                                         ; preds = %if.then.8, %if.end.7.if.end.8_crit_edge
  %arrayidx3.9 = getelementptr ptr, ptr %1, i32 68
  %20 = ptrtoint ptr %arrayidx3.9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx3.9, align 4
  %tobool.not.9 = icmp eq ptr %21, null
  br i1 %tobool.not.9, label %if.end.8.if.end.9_crit_edge, label %if.then.9

if.end.8.if.end.9_crit_edge:                      ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.9

if.then.9:                                        ; preds = %if.end.8
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %21) #4
  br label %if.end.9

if.end.9:                                         ; preds = %if.then.9, %if.end.8.if.end.9_crit_edge
  %arrayidx3.10 = getelementptr ptr, ptr %1, i32 69
  %22 = ptrtoint ptr %arrayidx3.10 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx3.10, align 4
  %tobool.not.10 = icmp eq ptr %23, null
  br i1 %tobool.not.10, label %if.end.9.if.end.10_crit_edge, label %if.then.10

if.end.9.if.end.10_crit_edge:                     ; preds = %if.end.9
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.10

if.then.10:                                       ; preds = %if.end.9
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %23) #4
  br label %if.end.10

if.end.10:                                        ; preds = %if.then.10, %if.end.9.if.end.10_crit_edge
  %arrayidx3.11 = getelementptr ptr, ptr %1, i32 70
  %24 = ptrtoint ptr %arrayidx3.11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx3.11, align 4
  %tobool.not.11 = icmp eq ptr %25, null
  br i1 %tobool.not.11, label %if.end.10.if.end.11_crit_edge, label %if.then.11

if.end.10.if.end.11_crit_edge:                    ; preds = %if.end.10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.11

if.then.11:                                       ; preds = %if.end.10
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %25) #4
  br label %if.end.11

if.end.11:                                        ; preds = %if.then.11, %if.end.10.if.end.11_crit_edge
  %arrayidx3.12 = getelementptr ptr, ptr %1, i32 84
  %26 = ptrtoint ptr %arrayidx3.12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx3.12, align 4
  %tobool.not.12 = icmp eq ptr %27, null
  br i1 %tobool.not.12, label %if.end.11.if.end.12_crit_edge, label %if.then.12

if.end.11.if.end.12_crit_edge:                    ; preds = %if.end.11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.12

if.then.12:                                       ; preds = %if.end.11
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %27) #4
  br label %if.end.12

if.end.12:                                        ; preds = %if.then.12, %if.end.11.if.end.12_crit_edge
  %arrayidx3.13 = getelementptr ptr, ptr %1, i32 71
  %28 = ptrtoint ptr %arrayidx3.13 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx3.13, align 4
  %tobool.not.13 = icmp eq ptr %29, null
  br i1 %tobool.not.13, label %if.end.12.if.end.13_crit_edge, label %if.then.13

if.end.12.if.end.13_crit_edge:                    ; preds = %if.end.12
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.13

if.then.13:                                       ; preds = %if.end.12
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %29) #4
  br label %if.end.13

if.end.13:                                        ; preds = %if.then.13, %if.end.12.if.end.13_crit_edge
  %arrayidx3.14 = getelementptr ptr, ptr %1, i32 72
  %30 = ptrtoint ptr %arrayidx3.14 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx3.14, align 4
  %tobool.not.14 = icmp eq ptr %31, null
  br i1 %tobool.not.14, label %if.end.13.if.end.14_crit_edge, label %if.then.14

if.end.13.if.end.14_crit_edge:                    ; preds = %if.end.13
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.14

if.then.14:                                       ; preds = %if.end.13
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unregister_fixed_rate(ptr noundef nonnull %31) #4
  br label %if.end.14

if.end.14:                                        ; preds = %if.then.14, %if.end.13.if.end.14_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister_gate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister_mux(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister_fixed_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @hi3798cv200_sysctrl_clk_register(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @hisi_clk_alloc(ptr noundef %pdev, i32 noundef 16) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call i32 @hisi_clk_register_gate(ptr noundef nonnull @hi3798cv200_sysctrl_gate_clks, i32 noundef 3, ptr noundef nonnull %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %0 = inttoptr i32 %call2 to ptr
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %call8 = tail call i32 @of_clk_add_provider(ptr noundef %2, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end6.cleanup_crit_edge, label %unregister_gate

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

unregister_gate:                                  ; preds = %if.end6
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call, align 4
  %arrayidx3.i = getelementptr ptr, ptr %4, i32 2
  %5 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx3.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %unregister_gate.if.end.i_crit_edge, label %if.then.i

unregister_gate.if.end.i_crit_edge:               ; preds = %unregister_gate
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then.i:                                        ; preds = %unregister_gate
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unregister_gate(ptr noundef nonnull %6) #4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %unregister_gate.if.end.i_crit_edge
  %arrayidx3.i.1 = getelementptr ptr, ptr %4, i32 3
  %7 = ptrtoint ptr %arrayidx3.i.1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx3.i.1, align 4
  %tobool.not.i.1 = icmp eq ptr %8, null
  br i1 %tobool.not.i.1, label %if.end.i.if.end.i.1_crit_edge, label %if.then.i.1

if.end.i.if.end.i.1_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i.1

if.then.i.1:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unregister_gate(ptr noundef nonnull %8) #4
  br label %if.end.i.1

if.end.i.1:                                       ; preds = %if.then.i.1, %if.end.i.if.end.i.1_crit_edge
  %arrayidx3.i.2 = getelementptr ptr, ptr %4, i32 5
  %9 = ptrtoint ptr %arrayidx3.i.2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx3.i.2, align 4
  %tobool.not.i.2 = icmp eq ptr %10, null
  br i1 %tobool.not.i.2, label %if.end.i.1.if.end.i.2_crit_edge, label %if.then.i.2

if.end.i.1.if.end.i.2_crit_edge:                  ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i.2

if.then.i.2:                                      ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unregister_gate(ptr noundef nonnull %10) #4
  br label %if.end.i.2

if.end.i.2:                                       ; preds = %if.then.i.2, %if.end.i.1.if.end.i.2_crit_edge
  %11 = inttoptr i32 %call8 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.2, %if.end6.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %0, %if.then4 ], [ %11, %if.end.i.2 ], [ %call, %if.end6.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hi3798cv200_sysctrl_clk_unregister(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  tail call void @of_clk_del_provider(ptr noundef %3) #4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %arrayidx3.i = getelementptr ptr, ptr %7, i32 2
  %8 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx3.i, align 4
  %tobool.not.i = icmp eq ptr %9, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unregister_gate(ptr noundef nonnull %9) #4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %arrayidx3.i.1 = getelementptr ptr, ptr %7, i32 3
  %10 = ptrtoint ptr %arrayidx3.i.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx3.i.1, align 4
  %tobool.not.i.1 = icmp eq ptr %11, null
  br i1 %tobool.not.i.1, label %if.end.i.if.end.i.1_crit_edge, label %if.then.i.1

if.end.i.if.end.i.1_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i.1

if.then.i.1:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unregister_gate(ptr noundef nonnull %11) #4
  br label %if.end.i.1

if.end.i.1:                                       ; preds = %if.then.i.1, %if.end.i.if.end.i.1_crit_edge
  %arrayidx3.i.2 = getelementptr ptr, ptr %7, i32 5
  %12 = ptrtoint ptr %arrayidx3.i.2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx3.i.2, align 4
  %tobool.not.i.2 = icmp eq ptr %13, null
  br i1 %tobool.not.i.2, label %if.end.i.1.if.end.i.2_crit_edge, label %if.then.i.2

if.end.i.1.if.end.i.2_crit_edge:                  ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i.2

if.then.i.2:                                      ; preds = %if.end.i.1
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unregister_gate(ptr noundef nonnull %13) #4
  br label %if.end.i.2

if.end.i.2:                                       ; preds = %if.then.i.2, %if.end.i.1.if.end.i.2_crit_edge
  ret void
}

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 83)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 83)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173}
!llvm.module.flags = !{!175, !176, !177, !178, !179, !180, !181, !182}
!llvm.ident = !{!183}

!0 = !{ptr @__initcall__kmod_crg_hi3798cv200__170_392_hi3798cv200_crg_init1, !1, !"__initcall__kmod_crg_hi3798cv200__170_392_hi3798cv200_crg_init1", i1 false, i1 false}
!1 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 392, i32 1}
!2 = !{ptr @__exitcall_hi3798cv200_crg_exit, !3, !"__exitcall_hi3798cv200_crg_exit", i1 false, i1 false}
!3 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 398, i32 1}
!4 = !{ptr @__UNIQUE_ID_file171, !5, !"__UNIQUE_ID_file171", i1 false, i1 false}
!5 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 400, i32 1}
!6 = !{ptr @__UNIQUE_ID_license172, !5, !"__UNIQUE_ID_license172", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_description173, !8, !"__UNIQUE_ID_description173", i1 false, i1 false}
!8 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 401, i32 1}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 383, i32 13}
!11 = !{ptr @hi3798cv200_crg_driver, !12, !"hi3798cv200_crg_driver", i1 false, i1 false}
!12 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 379, i32 31}
!13 = !{ptr @hi3798cv200_crg_match_table, !14, !"hi3798cv200_crg_match_table", i1 false, i1 false}
!14 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 335, i32 34}
!15 = !{ptr @hi3798cv200_crg_funcs, !16, !"hi3798cv200_crg_funcs", i1 false, i1 false}
!16 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 271, i32 36}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 92, i32 26}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 92, i32 40}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 95, i32 23}
!23 = !{ptr @hi3798cv200_phase_clks, !24, !"hi3798cv200_phase_clks", i1 false, i1 false}
!24 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 91, i32 32}
!25 = !{ptr @mmc_phase_degrees, !26, !"mmc_phase_degrees", i1 false, i1 false}
!26 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 89, i32 12}
!27 = !{ptr @mmc_phase_regvals, !28, !"mmc_phase_regvals", i1 false, i1 false}
!28 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 88, i32 12}
!29 = !{ptr @.str.4, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 45, i32 19}
!31 = !{ptr @.str.5, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 46, i32 19}
!33 = !{ptr @.str.6, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 47, i32 19}
!35 = !{ptr @.str.7, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 48, i32 27}
!37 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 49, i32 27}
!39 = !{ptr @.str.9, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 50, i32 27}
!41 = !{ptr @.str.10, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 51, i32 27}
!43 = !{ptr @.str.11, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 52, i32 27}
!45 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 53, i32 27}
!47 = !{ptr @.str.13, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 54, i32 27}
!49 = !{ptr @.str.14, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 55, i32 28}
!51 = !{ptr @.str.15, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 56, i32 28}
!53 = !{ptr @.str.16, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 57, i32 30}
!55 = !{ptr @.str.17, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 58, i32 28}
!57 = !{ptr @.str.18, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 59, i32 28}
!59 = !{ptr @hi3798cv200_fixed_rate_clks, !60, !"hi3798cv200_fixed_rate_clks", i1 false, i1 false}
!60 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 44, i32 43}
!61 = !{ptr @.str.19, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 75, i32 25}
!63 = !{ptr @.str.20, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 77, i32 30}
!65 = !{ptr @.str.21, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 80, i32 30}
!67 = !{ptr @.str.22, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 83, i32 27}
!69 = !{ptr @hi3798cv200_mux_clks, !70, !"hi3798cv200_mux_clks", i1 false, i1 false}
!70 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 74, i32 30}
!71 = !{ptr @mmc_mux_p, !72, !"mmc_mux_p", i1 false, i1 false}
!72 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 62, i32 26}
!73 = !{ptr @mmc_mux_table, !74, !"mmc_mux_table", i1 false, i1 false}
!74 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 64, i32 12}
!75 = !{ptr @comphy_mux_p, !76, !"comphy_mux_p", i1 false, i1 false}
!76 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 66, i32 26}
!77 = !{ptr @comphy_mux_table, !78, !"comphy_mux_table", i1 false, i1 false}
!78 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 68, i32 12}
!79 = !{ptr @sdio_mux_p, !80, !"sdio_mux_p", i1 false, i1 false}
!80 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 70, i32 26}
!81 = !{ptr @sdio_mux_table, !82, !"sdio_mux_table", i1 false, i1 false}
!82 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 72, i32 12}
!83 = !{ptr @.str.23, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 102, i32 21}
!85 = !{ptr @.str.24, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 105, i32 20}
!87 = !{ptr @.str.25, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 107, i32 20}
!89 = !{ptr @.str.26, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 109, i32 20}
!91 = !{ptr @.str.27, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 111, i32 20}
!93 = !{ptr @.str.28, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 113, i32 20}
!95 = !{ptr @.str.29, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 116, i32 20}
!97 = !{ptr @.str.30, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 119, i32 25}
!99 = !{ptr @.str.31, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 121, i32 25}
!101 = !{ptr @.str.32, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 124, i32 23}
!103 = !{ptr @.str.33, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 129, i32 24}
!105 = !{ptr @.str.34, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 131, i32 24}
!107 = !{ptr @.str.35, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 133, i32 25}
!109 = !{ptr @.str.36, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 135, i32 24}
!111 = !{ptr @.str.37, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 138, i32 29}
!113 = !{ptr @.str.38, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 140, i32 29}
!115 = !{ptr @.str.39, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 142, i32 30}
!117 = !{ptr @.str.40, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 144, i32 30}
!119 = !{ptr @.str.41, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 146, i32 24}
!121 = !{ptr @.str.42, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 148, i32 26}
!123 = !{ptr @.str.43, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 150, i32 24}
!125 = !{ptr @.str.44, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 152, i32 26}
!127 = !{ptr @.str.45, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 155, i32 24}
!129 = !{ptr @.str.46, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 158, i32 24}
!131 = !{ptr @.str.47, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 161, i32 24}
!133 = !{ptr @.str.48, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 163, i32 24}
!135 = !{ptr @.str.49, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 165, i32 24}
!137 = !{ptr @.str.50, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 167, i32 24}
!139 = !{ptr @.str.51, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 169, i32 25}
!141 = !{ptr @.str.52, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 171, i32 29}
!143 = !{ptr @.str.53, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 173, i32 29}
!145 = !{ptr @.str.54, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 175, i32 29}
!147 = !{ptr @.str.55, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 178, i32 24}
!149 = !{ptr @.str.56, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 180, i32 25}
!151 = !{ptr @.str.57, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 182, i32 25}
!153 = !{ptr @.str.58, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 184, i32 28}
!155 = !{ptr @.str.59, !156, !"<string literal>", i1 false, i1 false}
!156 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 186, i32 25}
!157 = !{ptr @.str.60, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 188, i32 26}
!159 = !{ptr @.str.61, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 190, i32 26}
!161 = !{ptr @.str.62, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 192, i32 29}
!163 = !{ptr @hi3798cv200_gate_clks, !164, !"hi3798cv200_gate_clks", i1 false, i1 false}
!164 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 100, i32 37}
!165 = !{ptr @hi3798cv200_sysctrl_funcs, !166, !"hi3798cv200_sysctrl_funcs", i1 false, i1 false}
!166 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 330, i32 36}
!167 = !{ptr @.str.63, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 281, i32 18}
!169 = !{ptr @.str.64, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 283, i32 23}
!171 = !{ptr @.str.65, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 285, i32 21}
!173 = !{ptr @hi3798cv200_sysctrl_gate_clks, !174, !"hi3798cv200_sysctrl_gate_clks", i1 false, i1 false}
!174 = !{!"../drivers/clk/hisilicon/crg-hi3798cv200.c", i32 280, i32 37}
!175 = !{i32 1, !"wchar_size", i32 2}
!176 = !{i32 1, !"min_enum_size", i32 4}
!177 = !{i32 8, !"branch-target-enforcement", i32 0}
!178 = !{i32 8, !"sign-return-address", i32 0}
!179 = !{i32 8, !"sign-return-address-all", i32 0}
!180 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!181 = !{i32 7, !"uwtable", i32 1}
!182 = !{i32 7, !"frame-pointer", i32 2}
!183 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
