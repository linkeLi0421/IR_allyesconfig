; ModuleID = '/llk/IR_all_yes/drivers/clk/hisilicon/crg-hi3516cv300.c_pt.bc'
source_filename = "../drivers/clk/hisilicon/crg-hi3516cv300.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.hisi_crg_funcs = type { ptr, ptr }
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

@__initcall__kmod_crg_hi3516cv300__170_309_hi3516cv300_crg_init1 = internal global ptr @hi3516cv300_crg_init, section ".initcall1.init", align 4
@hi3516cv300_crg_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @hi3516cv300_crg_probe, ptr @hi3516cv300_crg_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @hi3516cv300_crg_match_table, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_hi3516cv300_crg_exit = internal global ptr @hi3516cv300_crg_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file171 = internal constant [59 x i8] c"crg_hi3516cv300.file=drivers/clk/hisilicon/crg-hi3516cv300\00", section ".modinfo", align 1
@__UNIQUE_ID_license172 = internal constant [31 x i8] c"crg_hi3516cv300.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description173 = internal constant [61 x i8] c"crg_hi3516cv300.description=HiSilicon Hi3516CV300 CRG Driver\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"hi3516cv300-crg\00", [16 x i8] zeroinitializer }, align 32
@hi3516cv300_crg_match_table = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi3516cv300-crg\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hi3516cv300_crg_funcs }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"hisilicon,hi3516cv300-sysctrl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @hi3516cv300_sysctrl_funcs }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@hi3516cv300_crg_funcs = internal constant { %struct.hisi_crg_funcs, [24 x i8] } { %struct.hisi_crg_funcs { ptr @hi3516cv300_clk_register, ptr @hi3516cv300_clk_unregister }, [24 x i8] zeroinitializer }, align 32
@hi3516cv300_sysctrl_funcs = internal constant { %struct.hisi_crg_funcs, [24 x i8] } { %struct.hisi_crg_funcs { ptr @hi3516cv300_sysctrl_clk_register, ptr @hi3516cv300_sysctrl_clk_unregister }, [24 x i8] zeroinitializer }, align 32
@hi3516cv300_fixed_rate_clks = internal constant { [12 x %struct.hisi_fixed_rate_clock], [48 x i8] } { [12 x %struct.hisi_fixed_rate_clock] [%struct.hisi_fixed_rate_clock { i32 65, ptr @.str.1, ptr null, i32 0, i32 3000000 }, %struct.hisi_fixed_rate_clock { i32 66, ptr @.str.2, ptr null, i32 0, i32 6000000 }, %struct.hisi_fixed_rate_clock { i32 67, ptr @.str.3, ptr null, i32 0, i32 24000000 }, %struct.hisi_fixed_rate_clock { i32 68, ptr @.str.4, ptr null, i32 0, i32 49500000 }, %struct.hisi_fixed_rate_clock { i32 69, ptr @.str.5, ptr null, i32 0, i32 50000000 }, %struct.hisi_fixed_rate_clock { i32 70, ptr @.str.6, ptr null, i32 0, i32 83300000 }, %struct.hisi_fixed_rate_clock { i32 71, ptr @.str.7, ptr null, i32 0, i32 99000000 }, %struct.hisi_fixed_rate_clock { i32 72, ptr @.str.8, ptr null, i32 0, i32 100000000 }, %struct.hisi_fixed_rate_clock { i32 73, ptr @.str.9, ptr null, i32 0, i32 148500000 }, %struct.hisi_fixed_rate_clock { i32 74, ptr @.str.10, ptr null, i32 0, i32 198000000 }, %struct.hisi_fixed_rate_clock { i32 75, ptr @.str.11, ptr null, i32 0, i32 297000000 }, %struct.hisi_fixed_rate_clock { i32 0, ptr @.str.12, ptr null, i32 0, i32 50000000 }], [48 x i8] zeroinitializer }, align 32
@hi3516cv300_mux_clks = internal constant { [7 x %struct.hisi_mux_clock], [36 x i8] } { [7 x %struct.hisi_mux_clock] [%struct.hisi_mux_clock { i32 76, ptr @.str.13, ptr @uart_mux_p, i8 2, i32 4, i32 228, i8 19, i8 1, i8 0, ptr @uart_mux_table, ptr null }, %struct.hisi_mux_clock { i32 77, ptr @.str.14, ptr @fmc_mux_p, i8 5, i32 4, i32 192, i8 2, i8 3, i8 0, ptr @fmc_mux_table, ptr null }, %struct.hisi_mux_clock { i32 78, ptr @.str.15, ptr @mmc_mux_p, i8 1, i32 4, i32 196, i8 4, i8 2, i8 0, ptr @mmc_mux_table, ptr null }, %struct.hisi_mux_clock { i32 79, ptr @.str.16, ptr @mmc_mux_p, i8 1, i32 4, i32 196, i8 12, i8 2, i8 0, ptr @mmc_mux_table, ptr null }, %struct.hisi_mux_clock { i32 80, ptr @.str.17, ptr @mmc2_mux_p, i8 2, i32 4, i32 196, i8 20, i8 2, i8 0, ptr @mmc2_mux_table, ptr null }, %struct.hisi_mux_clock { i32 81, ptr @.str.18, ptr @mmc_mux_p, i8 1, i32 4, i32 200, i8 4, i8 2, i8 0, ptr @mmc_mux_table, ptr null }, %struct.hisi_mux_clock { i32 82, ptr @.str.19, ptr @pwm_mux_p, i8 4, i32 4, i32 56, i8 2, i8 2, i8 0, ptr @pwm_mux_table, ptr null }], [36 x i8] zeroinitializer }, align 32
@hi3516cv300_gate_clks = internal constant { [20 x %struct.hisi_gate_clock], [144 x i8] } { [20 x %struct.hisi_gate_clock] [%struct.hisi_gate_clock { i32 1, ptr @.str.20, ptr @.str.13, i32 4, i32 228, i8 15, i8 0, ptr null }, %struct.hisi_gate_clock { i32 2, ptr @.str.21, ptr @.str.13, i32 4, i32 228, i8 16, i8 0, ptr null }, %struct.hisi_gate_clock { i32 3, ptr @.str.22, ptr @.str.13, i32 4, i32 228, i8 17, i8 0, ptr null }, %struct.hisi_gate_clock { i32 4, ptr @.str.23, ptr @.str.8, i32 4, i32 228, i8 13, i8 0, ptr null }, %struct.hisi_gate_clock { i32 5, ptr @.str.24, ptr @.str.8, i32 4, i32 228, i8 14, i8 0, ptr null }, %struct.hisi_gate_clock { i32 6, ptr @.str.25, ptr @.str.14, i32 4, i32 192, i8 1, i8 0, ptr null }, %struct.hisi_gate_clock { i32 7, ptr @.str.26, ptr @.str.15, i32 4, i32 196, i8 1, i8 0, ptr null }, %struct.hisi_gate_clock { i32 8, ptr @.str.27, ptr @.str.16, i32 4, i32 196, i8 9, i8 0, ptr null }, %struct.hisi_gate_clock { i32 9, ptr @.str.28, ptr @.str.17, i32 4, i32 196, i8 17, i8 0, ptr null }, %struct.hisi_gate_clock { i32 10, ptr @.str.29, ptr @.str.18, i32 4, i32 200, i8 1, i8 0, ptr null }, %struct.hisi_gate_clock { i32 11, ptr @.str.30, ptr null, i32 0, i32 236, i8 1, i8 0, ptr null }, %struct.hisi_gate_clock { i32 13, ptr @.str.31, ptr null, i32 0, i32 216, i8 5, i8 0, ptr null }, %struct.hisi_gate_clock { i32 14, ptr @.str.32, ptr @.str.19, i32 4, i32 56, i8 1, i8 0, ptr null }, %struct.hisi_gate_clock { i32 15, ptr @.str.33, ptr null, i32 0, i32 184, i8 0, i8 0, ptr null }, %struct.hisi_gate_clock { i32 16, ptr @.str.34, ptr null, i32 0, i32 184, i8 1, i8 0, ptr null }, %struct.hisi_gate_clock { i32 17, ptr @.str.35, ptr null, i32 0, i32 184, i8 2, i8 0, ptr null }, %struct.hisi_gate_clock { i32 18, ptr @.str.36, ptr null, i32 0, i32 184, i8 3, i8 0, ptr null }, %struct.hisi_gate_clock { i32 19, ptr @.str.37, ptr null, i32 0, i32 184, i8 4, i8 0, ptr null }, %struct.hisi_gate_clock { i32 20, ptr @.str.38, ptr null, i32 0, i32 184, i8 5, i8 0, ptr null }, %struct.hisi_gate_clock { i32 21, ptr @.str.39, ptr null, i32 0, i32 184, i8 7, i8 0, ptr null }], [144 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"3m\00", [29 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"6m\00", [29 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"24m\00", [28 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"49.5m\00", [26 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"50m\00", [28 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"83.3m\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"99m\00", [28 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"100m\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"148.5m\00", [25 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"198m\00", [27 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"297m\00", [27 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"apb\00", [28 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"uart_mux\00", [23 x i8] zeroinitializer }, align 32
@uart_mux_p = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.3, ptr @.str.2], [24 x i8] zeroinitializer }, align 32
@uart_mux_table = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 0, i32 1], [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"fmc_mux\00", [24 x i8] zeroinitializer }, align 32
@fmc_mux_p = internal constant { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.3, ptr @.str.6, ptr @.str.9, ptr @.str.10, ptr @.str.11], [44 x i8] zeroinitializer }, align 32
@fmc_mux_table = internal global { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4], [44 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmc0_mux\00", [23 x i8] zeroinitializer }, align 32
@mmc_mux_p = internal constant { [1 x ptr], [28 x i8] } { [1 x ptr] [ptr @.str.4], [28 x i8] zeroinitializer }, align 32
@mmc_mux_table = internal global { [1 x i32], [28 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmc1_mux\00", [23 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmc2_mux\00", [23 x i8] zeroinitializer }, align 32
@mmc2_mux_p = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.7, ptr @.str.4], [24 x i8] zeroinitializer }, align 32
@mmc2_mux_table = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 0, i32 2], [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmc3_mux\00", [23 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pwm_mux\00", [24 x i8] zeroinitializer }, align 32
@pwm_mux_p = internal constant { [4 x ptr], [16 x i8] } { [4 x ptr] [ptr @.str.1, ptr @.str.5, ptr @.str.3, ptr @.str.3], [16 x i8] zeroinitializer }, align 32
@pwm_mux_table = internal global { [4 x i32], [16 x i8] } { [4 x i32] [i32 0, i32 1, i32 2, i32 3], [16 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clk_uart0\00", [22 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clk_uart1\00", [22 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"clk_uart2\00", [22 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_spi0\00", [23 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_spi1\00", [23 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"clk_fmc\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_mmc0\00", [23 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_mmc1\00", [23 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_mmc2\00", [23 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_mmc3\00", [23 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"clk_eth\00", [24 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_dmac\00", [23 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"clk_pwm\00", [24 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk_usb2_bus\00", [19 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clk_usb2_ohci48m\00", [47 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clk_usb2_ohci12m\00", [47 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"clk_usb2_otg_utmi\00", [46 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"clk_usb2_hst_phy\00", [47 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clk_usb2_utmi0\00", [17 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"clk_usb2_phy\00", [19 x i8] zeroinitializer }, align 32
@hi3516cv300_sysctrl_mux_clks = internal constant { [1 x %struct.hisi_mux_clock], [60 x i8] } { [1 x %struct.hisi_mux_clock] [%struct.hisi_mux_clock { i32 1, ptr @.str.40, ptr @wdt_mux_p, i8 2, i32 4, i32 0, i8 23, i8 1, i8 0, ptr @wdt_mux_table, ptr null }], [60 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"wdt\00", [28 x i8] zeroinitializer }, align 32
@wdt_mux_p = internal constant [2 x ptr] [ptr @.str.1, ptr @.str.12], section ".init.rodata", align 4
@wdt_mux_table = internal global { [2 x i32], [24 x i8] } { [2 x i32] [i32 0, i32 1], [24 x i8] zeroinitializer }, align 32
@___asan_gen_.41 = private unnamed_addr constant [23 x i8] c"hi3516cv300_crg_driver\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 296, i32 31 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 300, i32 13 }
@___asan_gen_.47 = private unnamed_addr constant [28 x i8] c"hi3516cv300_crg_match_table\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 248, i32 34 }
@___asan_gen_.50 = private unnamed_addr constant [22 x i8] c"hi3516cv300_crg_funcs\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 187, i32 36 }
@___asan_gen_.53 = private unnamed_addr constant [26 x i8] c"hi3516cv300_sysctrl_funcs\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 243, i32 36 }
@___asan_gen_.56 = private unnamed_addr constant [28 x i8] c"hi3516cv300_fixed_rate_clks\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 39, i32 43 }
@___asan_gen_.59 = private unnamed_addr constant [21 x i8] c"hi3516cv300_mux_clks\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 68, i32 36 }
@___asan_gen_.62 = private unnamed_addr constant [22 x i8] c"hi3516cv300_gate_clks\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 85, i32 37 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 40, i32 26 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 41, i32 26 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 42, i32 27 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 43, i32 28 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 44, i32 27 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 45, i32 29 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 46, i32 27 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 47, i32 28 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 48, i32 30 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 49, i32 28 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 50, i32 28 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 51, i32 25 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 69, i32 26 }
@___asan_gen_.104 = private unnamed_addr constant [11 x i8] c"uart_mux_p\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 54, i32 26 }
@___asan_gen_.107 = private unnamed_addr constant [15 x i8] c"uart_mux_table\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 62, i32 12 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 71, i32 25 }
@___asan_gen_.113 = private unnamed_addr constant [10 x i8] c"fmc_mux_p\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 55, i32 26 }
@___asan_gen_.116 = private unnamed_addr constant [14 x i8] c"fmc_mux_table\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 63, i32 12 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 73, i32 26 }
@___asan_gen_.122 = private unnamed_addr constant [10 x i8] c"mmc_mux_p\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 58, i32 26 }
@___asan_gen_.125 = private unnamed_addr constant [14 x i8] c"mmc_mux_table\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 64, i32 12 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 75, i32 26 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 77, i32 26 }
@___asan_gen_.134 = private unnamed_addr constant [11 x i8] c"mmc2_mux_p\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 59, i32 26 }
@___asan_gen_.137 = private unnamed_addr constant [15 x i8] c"mmc2_mux_table\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 65, i32 12 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 79, i32 26 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 81, i32 25 }
@___asan_gen_.146 = private unnamed_addr constant [10 x i8] c"pwm_mux_p\00", align 1
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 60, i32 26 }
@___asan_gen_.149 = private unnamed_addr constant [14 x i8] c"pwm_mux_table\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 66, i32 12 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 87, i32 27 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 89, i32 27 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 91, i32 27 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 94, i32 26 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 96, i32 26 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 99, i32 25 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 101, i32 26 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 103, i32 26 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 105, i32 26 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 107, i32 26 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 110, i32 25 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 112, i32 26 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 113, i32 25 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 116, i32 30 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 117, i32 34 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 119, i32 34 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 121, i32 35 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 123, i32 34 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 125, i32 32 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 126, i32 30 }
@___asan_gen_.212 = private unnamed_addr constant [29 x i8] c"hi3516cv300_sysctrl_mux_clks\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 198, i32 36 }
@___asan_gen_.215 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 199, i32 25 }
@___asan_gen_.218 = private unnamed_addr constant [14 x i8] c"wdt_mux_table\00", align 1
@___asan_gen_.219 = private constant [43 x i8] c"../drivers/clk/hisilicon/crg-hi3516cv300.c\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 196, i32 12 }
@llvm.compiler.used = appending global [66 x ptr] [ptr @__UNIQUE_ID_description173, ptr @__UNIQUE_ID_file171, ptr @__UNIQUE_ID_license172, ptr @__exitcall_hi3516cv300_crg_exit, ptr @__initcall__kmod_crg_hi3516cv300__170_309_hi3516cv300_crg_init1, ptr @hi3516cv300_crg_exit, ptr @hi3516cv300_crg_driver, ptr @.str, ptr @hi3516cv300_crg_match_table, ptr @hi3516cv300_crg_funcs, ptr @hi3516cv300_sysctrl_funcs, ptr @hi3516cv300_fixed_rate_clks, ptr @hi3516cv300_mux_clks, ptr @hi3516cv300_gate_clks, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @uart_mux_p, ptr @uart_mux_table, ptr @.str.14, ptr @fmc_mux_p, ptr @fmc_mux_table, ptr @.str.15, ptr @mmc_mux_p, ptr @mmc_mux_table, ptr @.str.16, ptr @.str.17, ptr @mmc2_mux_p, ptr @mmc2_mux_table, ptr @.str.18, ptr @.str.19, ptr @pwm_mux_p, ptr @pwm_mux_table, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @hi3516cv300_sysctrl_mux_clks, ptr @.str.40, ptr @wdt_mux_table], section "llvm.metadata"
@0 = internal global [60 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3516cv300_crg_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3516cv300_crg_match_table to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3516cv300_crg_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3516cv300_sysctrl_funcs to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3516cv300_fixed_rate_clks to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3516cv300_mux_clks to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3516cv300_gate_clks to i32), i32 560, i32 704, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart_mux_p to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uart_mux_table to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fmc_mux_p to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fmc_mux_table to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_mux_p to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc_mux_table to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc2_mux_p to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmc2_mux_table to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_mux_p to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pwm_mux_table to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hi3516cv300_sysctrl_mux_clks to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wdt_mux_table to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hi3516cv300_crg_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @hi3516cv300_crg_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hi3516cv300_crg_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @hi3516cv300_crg_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hi3516cv300_crg_probe(ptr noundef %pdev) #2 align 64 {
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
define internal i32 @hi3516cv300_crg_remove(ptr noundef %pdev) #2 align 64 {
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
define internal ptr @hi3516cv300_clk_register(ptr noundef %pdev) #2 align 64 {
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
  %call2 = tail call i32 @hisi_clk_register_fixed_rate(ptr noundef nonnull @hi3516cv300_fixed_rate_clks, i32 noundef 12, ptr noundef nonnull %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end6, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %0 = inttoptr i32 %call2 to ptr
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call i32 @hisi_clk_register_mux(ptr noundef nonnull @hi3516cv300_mux_clks, i32 noundef 7, ptr noundef nonnull %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.unregister_fixed_rate_crit_edge

if.end6.unregister_fixed_rate_crit_edge:          ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %unregister_fixed_rate

if.end10:                                         ; preds = %if.end6
  %call11 = tail call i32 @hisi_clk_register_gate(ptr noundef nonnull @hi3516cv300_gate_clks, i32 noundef 20, ptr noundef nonnull %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.unregister_mux_crit_edge

if.end10.unregister_mux_crit_edge:                ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %unregister_mux

if.end14:                                         ; preds = %if.end10
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %1 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %of_node, align 8
  %call16 = tail call i32 @of_clk_add_provider(ptr noundef %2, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull %call) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end14.cleanup_crit_edge, label %unregister_gate

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

unregister_gate:                                  ; preds = %if.end14
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %unregister_gate
  %i.01.i = phi i32 [ 0, %unregister_gate ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.hisi_gate_clock, ptr @hi3516cv300_gate_clks, i32 %i.01.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  %arrayidx3.i = getelementptr ptr, ptr %4, i32 %6
  %7 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx3.i, align 4
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %for.body.i.if.end.i_crit_edge, label %if.then.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unregister_gate(ptr noundef nonnull %8) #4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.i.if.end.i_crit_edge
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 20
  br i1 %exitcond.not.i, label %if.end.i.unregister_mux_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

if.end.i.unregister_mux_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %unregister_mux

unregister_mux:                                   ; preds = %if.end.i.unregister_mux_crit_edge, %if.end10.unregister_mux_crit_edge
  %ret.0 = phi i32 [ %call11, %if.end10.unregister_mux_crit_edge ], [ %call16, %if.end.i.unregister_mux_crit_edge ]
  %9 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call, align 4
  %arrayidx3.i37 = getelementptr ptr, ptr %10, i32 76
  %11 = ptrtoint ptr %arrayidx3.i37 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx3.i37, align 4
  %tobool.not.i38 = icmp eq ptr %12, null
  br i1 %tobool.not.i38, label %unregister_mux.if.end.i43_crit_edge, label %if.then.i40

unregister_mux.if.end.i43_crit_edge:              ; preds = %unregister_mux
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i43

if.then.i40:                                      ; preds = %unregister_mux
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unregister_mux(ptr noundef nonnull %12) #4
  br label %if.end.i43

if.end.i43:                                       ; preds = %if.then.i40, %unregister_mux.if.end.i43_crit_edge
  %arrayidx3.i37.1 = getelementptr ptr, ptr %10, i32 77
  %13 = ptrtoint ptr %arrayidx3.i37.1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx3.i37.1, align 4
  %tobool.not.i38.1 = icmp eq ptr %14, null
  br i1 %tobool.not.i38.1, label %if.end.i43.if.end.i43.1_crit_edge, label %if.then.i40.1

if.end.i43.if.end.i43.1_crit_edge:                ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i43.1

if.then.i40.1:                                    ; preds = %if.end.i43
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unregister_mux(ptr noundef nonnull %14) #4
  br label %if.end.i43.1

if.end.i43.1:                                     ; preds = %if.then.i40.1, %if.end.i43.if.end.i43.1_crit_edge
  %arrayidx3.i37.2 = getelementptr ptr, ptr %10, i32 78
  %15 = ptrtoint ptr %arrayidx3.i37.2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx3.i37.2, align 4
  %tobool.not.i38.2 = icmp eq ptr %16, null
  br i1 %tobool.not.i38.2, label %if.end.i43.1.if.end.i43.2_crit_edge, label %if.then.i40.2

if.end.i43.1.if.end.i43.2_crit_edge:              ; preds = %if.end.i43.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i43.2

if.then.i40.2:                                    ; preds = %if.end.i43.1
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unregister_mux(ptr noundef nonnull %16) #4
  br label %if.end.i43.2

if.end.i43.2:                                     ; preds = %if.then.i40.2, %if.end.i43.1.if.end.i43.2_crit_edge
  %arrayidx3.i37.3 = getelementptr ptr, ptr %10, i32 79
  %17 = ptrtoint ptr %arrayidx3.i37.3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx3.i37.3, align 4
  %tobool.not.i38.3 = icmp eq ptr %18, null
  br i1 %tobool.not.i38.3, label %if.end.i43.2.if.end.i43.3_crit_edge, label %if.then.i40.3

if.end.i43.2.if.end.i43.3_crit_edge:              ; preds = %if.end.i43.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i43.3

if.then.i40.3:                                    ; preds = %if.end.i43.2
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unregister_mux(ptr noundef nonnull %18) #4
  br label %if.end.i43.3

if.end.i43.3:                                     ; preds = %if.then.i40.3, %if.end.i43.2.if.end.i43.3_crit_edge
  %arrayidx3.i37.4 = getelementptr ptr, ptr %10, i32 80
  %19 = ptrtoint ptr %arrayidx3.i37.4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx3.i37.4, align 4
  %tobool.not.i38.4 = icmp eq ptr %20, null
  br i1 %tobool.not.i38.4, label %if.end.i43.3.if.end.i43.4_crit_edge, label %if.then.i40.4

if.end.i43.3.if.end.i43.4_crit_edge:              ; preds = %if.end.i43.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i43.4

if.then.i40.4:                                    ; preds = %if.end.i43.3
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unregister_mux(ptr noundef nonnull %20) #4
  br label %if.end.i43.4

if.end.i43.4:                                     ; preds = %if.then.i40.4, %if.end.i43.3.if.end.i43.4_crit_edge
  %arrayidx3.i37.5 = getelementptr ptr, ptr %10, i32 81
  %21 = ptrtoint ptr %arrayidx3.i37.5 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx3.i37.5, align 4
  %tobool.not.i38.5 = icmp eq ptr %22, null
  br i1 %tobool.not.i38.5, label %if.end.i43.4.if.end.i43.5_crit_edge, label %if.then.i40.5

if.end.i43.4.if.end.i43.5_crit_edge:              ; preds = %if.end.i43.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i43.5

if.then.i40.5:                                    ; preds = %if.end.i43.4
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unregister_mux(ptr noundef nonnull %22) #4
  br label %if.end.i43.5

if.end.i43.5:                                     ; preds = %if.then.i40.5, %if.end.i43.4.if.end.i43.5_crit_edge
  %arrayidx3.i37.6 = getelementptr ptr, ptr %10, i32 82
  %23 = ptrtoint ptr %arrayidx3.i37.6 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx3.i37.6, align 4
  %tobool.not.i38.6 = icmp eq ptr %24, null
  br i1 %tobool.not.i38.6, label %if.end.i43.5.unregister_fixed_rate_crit_edge, label %if.then.i40.6

if.end.i43.5.unregister_fixed_rate_crit_edge:     ; preds = %if.end.i43.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %unregister_fixed_rate

if.then.i40.6:                                    ; preds = %if.end.i43.5
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unregister_mux(ptr noundef nonnull %24) #4
  br label %unregister_fixed_rate

unregister_fixed_rate:                            ; preds = %if.then.i40.6, %if.end.i43.5.unregister_fixed_rate_crit_edge, %if.end6.unregister_fixed_rate_crit_edge
  %ret.1 = phi i32 [ %call7, %if.end6.unregister_fixed_rate_crit_edge ], [ %ret.0, %if.then.i40.6 ], [ %ret.0, %if.end.i43.5.unregister_fixed_rate_crit_edge ]
  tail call fastcc void @hisi_clk_unregister_fixed_rate(ptr noundef nonnull %call)
  %25 = inttoptr i32 %ret.1 to ptr
  br label %cleanup

cleanup:                                          ; preds = %unregister_fixed_rate, %if.end14.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %0, %if.then4 ], [ %25, %unregister_fixed_rate ], [ %call, %if.end14.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hi3516cv300_clk_unregister(ptr nocapture noundef readonly %pdev) #2 align 64 {
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
  %i.01.i = phi i32 [ 0, %entry ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.hisi_gate_clock, ptr @hi3516cv300_gate_clks, i32 %i.01.i
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
  %inc.i = add nuw nsw i32 %i.01.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 20
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
  %arrayidx3.i7 = getelementptr ptr, ptr %15, i32 76
  %16 = ptrtoint ptr %arrayidx3.i7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx3.i7, align 4
  %tobool.not.i8 = icmp eq ptr %17, null
  br i1 %tobool.not.i8, label %hisi_clk_unregister_gate.exit.if.end.i13_crit_edge, label %if.then.i10

hisi_clk_unregister_gate.exit.if.end.i13_crit_edge: ; preds = %hisi_clk_unregister_gate.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i13

if.then.i10:                                      ; preds = %hisi_clk_unregister_gate.exit
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unregister_mux(ptr noundef nonnull %17) #4
  br label %if.end.i13

if.end.i13:                                       ; preds = %if.then.i10, %hisi_clk_unregister_gate.exit.if.end.i13_crit_edge
  %arrayidx3.i7.1 = getelementptr ptr, ptr %15, i32 77
  %18 = ptrtoint ptr %arrayidx3.i7.1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx3.i7.1, align 4
  %tobool.not.i8.1 = icmp eq ptr %19, null
  br i1 %tobool.not.i8.1, label %if.end.i13.if.end.i13.1_crit_edge, label %if.then.i10.1

if.end.i13.if.end.i13.1_crit_edge:                ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i13.1

if.then.i10.1:                                    ; preds = %if.end.i13
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unregister_mux(ptr noundef nonnull %19) #4
  br label %if.end.i13.1

if.end.i13.1:                                     ; preds = %if.then.i10.1, %if.end.i13.if.end.i13.1_crit_edge
  %arrayidx3.i7.2 = getelementptr ptr, ptr %15, i32 78
  %20 = ptrtoint ptr %arrayidx3.i7.2 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx3.i7.2, align 4
  %tobool.not.i8.2 = icmp eq ptr %21, null
  br i1 %tobool.not.i8.2, label %if.end.i13.1.if.end.i13.2_crit_edge, label %if.then.i10.2

if.end.i13.1.if.end.i13.2_crit_edge:              ; preds = %if.end.i13.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i13.2

if.then.i10.2:                                    ; preds = %if.end.i13.1
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unregister_mux(ptr noundef nonnull %21) #4
  br label %if.end.i13.2

if.end.i13.2:                                     ; preds = %if.then.i10.2, %if.end.i13.1.if.end.i13.2_crit_edge
  %arrayidx3.i7.3 = getelementptr ptr, ptr %15, i32 79
  %22 = ptrtoint ptr %arrayidx3.i7.3 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx3.i7.3, align 4
  %tobool.not.i8.3 = icmp eq ptr %23, null
  br i1 %tobool.not.i8.3, label %if.end.i13.2.if.end.i13.3_crit_edge, label %if.then.i10.3

if.end.i13.2.if.end.i13.3_crit_edge:              ; preds = %if.end.i13.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i13.3

if.then.i10.3:                                    ; preds = %if.end.i13.2
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unregister_mux(ptr noundef nonnull %23) #4
  br label %if.end.i13.3

if.end.i13.3:                                     ; preds = %if.then.i10.3, %if.end.i13.2.if.end.i13.3_crit_edge
  %arrayidx3.i7.4 = getelementptr ptr, ptr %15, i32 80
  %24 = ptrtoint ptr %arrayidx3.i7.4 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx3.i7.4, align 4
  %tobool.not.i8.4 = icmp eq ptr %25, null
  br i1 %tobool.not.i8.4, label %if.end.i13.3.if.end.i13.4_crit_edge, label %if.then.i10.4

if.end.i13.3.if.end.i13.4_crit_edge:              ; preds = %if.end.i13.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i13.4

if.then.i10.4:                                    ; preds = %if.end.i13.3
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unregister_mux(ptr noundef nonnull %25) #4
  br label %if.end.i13.4

if.end.i13.4:                                     ; preds = %if.then.i10.4, %if.end.i13.3.if.end.i13.4_crit_edge
  %arrayidx3.i7.5 = getelementptr ptr, ptr %15, i32 81
  %26 = ptrtoint ptr %arrayidx3.i7.5 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx3.i7.5, align 4
  %tobool.not.i8.5 = icmp eq ptr %27, null
  br i1 %tobool.not.i8.5, label %if.end.i13.4.if.end.i13.5_crit_edge, label %if.then.i10.5

if.end.i13.4.if.end.i13.5_crit_edge:              ; preds = %if.end.i13.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i13.5

if.then.i10.5:                                    ; preds = %if.end.i13.4
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unregister_mux(ptr noundef nonnull %27) #4
  br label %if.end.i13.5

if.end.i13.5:                                     ; preds = %if.then.i10.5, %if.end.i13.4.if.end.i13.5_crit_edge
  %arrayidx3.i7.6 = getelementptr ptr, ptr %15, i32 82
  %28 = ptrtoint ptr %arrayidx3.i7.6 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx3.i7.6, align 4
  %tobool.not.i8.6 = icmp eq ptr %29, null
  br i1 %tobool.not.i8.6, label %if.end.i13.5.if.end.i13.6_crit_edge, label %if.then.i10.6

if.end.i13.5.if.end.i13.6_crit_edge:              ; preds = %if.end.i13.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i13.6

if.then.i10.6:                                    ; preds = %if.end.i13.5
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unregister_mux(ptr noundef nonnull %29) #4
  br label %if.end.i13.6

if.end.i13.6:                                     ; preds = %if.then.i10.6, %if.end.i13.5.if.end.i13.6_crit_edge
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  tail call fastcc void @hisi_clk_unregister_fixed_rate(ptr noundef %31)
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @hisi_clk_unregister_fixed_rate(ptr nocapture noundef readonly %data) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %arrayidx3 = getelementptr ptr, ptr %1, i32 65
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx3, align 4
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
  %arrayidx3.1 = getelementptr ptr, ptr %1, i32 66
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
  %arrayidx3.2 = getelementptr ptr, ptr %1, i32 67
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
  %arrayidx3.3 = getelementptr ptr, ptr %1, i32 68
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
  %arrayidx3.4 = getelementptr ptr, ptr %1, i32 69
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
  %arrayidx3.5 = getelementptr ptr, ptr %1, i32 70
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
  %arrayidx3.6 = getelementptr ptr, ptr %1, i32 71
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
  %arrayidx3.7 = getelementptr ptr, ptr %1, i32 72
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
  %arrayidx3.8 = getelementptr ptr, ptr %1, i32 73
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
  %arrayidx3.9 = getelementptr ptr, ptr %1, i32 74
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
  %arrayidx3.10 = getelementptr ptr, ptr %1, i32 75
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
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
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
define internal ptr @hi3516cv300_sysctrl_clk_register(ptr noundef %pdev) #2 align 64 {
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
  %call2 = tail call i32 @hisi_clk_register_mux(ptr noundef nonnull @hi3516cv300_sysctrl_mux_clks, i32 noundef 1, ptr noundef nonnull %call) #4
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
  br i1 %tobool9.not, label %if.end6.cleanup_crit_edge, label %unregister_mux

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

unregister_mux:                                   ; preds = %if.end6
  %3 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %call, align 4
  %arrayidx3.i = getelementptr ptr, ptr %4, i32 1
  %5 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx3.i, align 4
  %tobool.not.i = icmp eq ptr %6, null
  br i1 %tobool.not.i, label %unregister_mux.if.end.i_crit_edge, label %if.then.i

unregister_mux.if.end.i_crit_edge:                ; preds = %unregister_mux
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

if.then.i:                                        ; preds = %unregister_mux
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unregister_mux(ptr noundef nonnull %6) #4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %unregister_mux.if.end.i_crit_edge
  %7 = inttoptr i32 %call8 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %if.end6.cleanup_crit_edge, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %0, %if.then4 ], [ %7, %if.end.i ], [ %call, %if.end6.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @hi3516cv300_sysctrl_clk_unregister(ptr nocapture noundef readonly %pdev) #2 align 64 {
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
  %arrayidx3.i = getelementptr ptr, ptr %7, i32 1
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
  tail call void @clk_unregister_mux(ptr noundef nonnull %9) #4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 60)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129}
!llvm.module.flags = !{!131, !132, !133, !134, !135, !136, !137, !138}
!llvm.ident = !{!139}

!0 = !{ptr @__initcall__kmod_crg_hi3516cv300__170_309_hi3516cv300_crg_init1, !1, !"__initcall__kmod_crg_hi3516cv300__170_309_hi3516cv300_crg_init1", i1 false, i1 false}
!1 = !{!"../drivers/clk/hisilicon/crg-hi3516cv300.c", i32 309, i32 1}
!2 = !{ptr @__exitcall_hi3516cv300_crg_exit, !3, !"__exitcall_hi3516cv300_crg_exit", i1 false, i1 false}
!3 = !{!"../drivers/clk/hisilicon/crg-hi3516cv300.c", i32 315, i32 1}
!4 = !{ptr @__UNIQUE_ID_file171, !5, !"__UNIQUE_ID_file171", i1 false, i1 false}
!5 = !{!"../drivers/clk/hisilicon/crg-hi3516cv300.c", i32 317, i32 1}
!6 = !{ptr @__UNIQUE_ID_license172, !5, !"__UNIQUE_ID_license172", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_description173, !8, !"__UNIQUE_ID_description173", i1 false, i1 false}
!8 = !{!"../drivers/clk/hisilicon/crg-hi3516cv300.c", i32 318, i32 1}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/clk/hisilicon/crg-hi3516cv300.c", i32 300, i32 13}
!11 = !{ptr @hi3516cv300_crg_driver, !12, !"hi3516cv300_crg_driver", i1 false, i1 false}
!12 = !{!"../drivers/clk/hisilicon/crg-hi3516cv300.c", i32 296, i32 31}
!13 = !{ptr @hi3516cv300_crg_match_table, !14, !"hi3516cv300_crg_match_table", i1 false, i1 false}
!14 = !{!"../drivers/clk/hisilicon/crg-hi3516cv300.c", i32 248, i32 34}
!15 = !{ptr @hi3516cv300_crg_funcs, !16, !"hi3516cv300_crg_funcs", i1 false, i1 false}
!16 = !{!"../drivers/clk/hisilicon/crg-hi3516cv300.c", i32 187, i32 36}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/clk/hisilicon/crg-hi3516cv300.c", i32 40, i32 26}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/clk/hisilicon/crg-hi3516cv300.c", i32 41, i32 26}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/clk/hisilicon/crg-hi3516cv300.c", i32 42, i32 27}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/clk/hisilicon/crg-hi3516cv300.c", i32 43, i32 28}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/clk/hisilicon/crg-hi3516cv300.c", i32 44, i32 27}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/clk/hisilicon/crg-hi3516cv300.c", i32 45, i32 29}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/clk/hisilicon/crg-hi3516cv300.c", i32 46, i32 27}
!31 = !{ptr @.str.8, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/clk/hisilicon/crg-hi3516cv300.c", i32 47, i32 28}
!33 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/clk/hisilicon/crg-hi3516cv300.c", i32 48, i32 30}
!35 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/clk/hisilicon/crg-hi3516cv300.c", i32 49, i32 28}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/clk/hisilicon/crg-hi3516cv300.c", i32 50, i32 28}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/clk/hisilicon/crg-hi3516cv300.c", i32 51, i32 25}
!41 = !{ptr @hi3516cv300_fixed_rate_clks, !42, !"hi3516cv300_fixed_rate_clks", i1 false, i1 false}
!42 = !{!"../drivers/clk/hisilicon/crg-hi3516cv300.c", i32 39, i32 43}
!43 = !{ptr @.str.13, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/clk/hisilicon/crg-hi3516cv300.c", i32 69, i32 26}
!45 = !{ptr @.str.14, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/clk/hisilicon/crg-hi3516cv300.c", i32 71, i32 25}
!47 = !{ptr @.str.15, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/clk/hisilicon/crg-hi3516cv300.c", i32 73, i32 26}
!49 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/clk/hisilicon/crg-hi3516cv300.c", i32 75, i32 26}
!51 = !{ptr @.str.17, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/clk/hisilicon/crg-hi3516cv300.c", i32 77, i32 26}
!53 = !{ptr @.str.18, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/clk/hisilicon/crg-hi3516cv300.c", i32 79, i32 26}
!55 = !{ptr @.str.19, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/clk/hisilicon/crg-hi3516cv300.c", i32 81, i32 25}
!57 = !{ptr @hi3516cv300_mux_clks, !58, !"hi3516cv300_mux_clks", i1 false, i1 false}
!58 = !{!"../drivers/clk/hisilicon/crg-hi3516cv300.c", i32 68, i32 36}
!59 = !{ptr @uart_mux_p, !60, !"uart_mux_p", i1 false, i1 false}
!60 = !{!"../drivers/clk/hisilicon/crg-hi3516cv300.c", i32 54, i32 26}
!61 = !{ptr @uart_mux_table, !62, !"uart_mux_table", i1 false, i1 false}
!62 = !{!"../drivers/clk/hisilicon/crg-hi3516cv300.c", i32 62, i32 12}
!63 = !{ptr @fmc_mux_p, !64, !"fmc_mux_p", i1 false, i1 false}
!64 = !{!"../drivers/clk/hisilicon/crg-hi3516cv300.c", i32 55, i32 26}
!65 = !{ptr @fmc_mux_table, !66, !"fmc_mux_table", i1 false, i1 false}
!66 = !{!"../drivers/clk/hisilicon/crg-hi3516cv300.c", i32 63, i32 12}
!67 = !{ptr @mmc_mux_p, !68, !"mmc_mux_p", i1 false, i1 false}
!68 = !{!"../drivers/clk/hisilicon/crg-hi3516cv300.c", i32 58, i32 26}
!69 = !{ptr @mmc_mux_table, !70, !"mmc_mux_table", i1 false, i1 false}
!70 = !{!"../drivers/clk/hisilicon/crg-hi3516cv300.c", i32 64, i32 12}
!71 = !{ptr @mmc2_mux_p, !72, !"mmc2_mux_p", i1 false, i1 false}
!72 = !{!"../drivers/clk/hisilicon/crg-hi3516cv300.c", i32 59, i32 26}
!73 = !{ptr @mmc2_mux_table, !74, !"mmc2_mux_table", i1 false, i1 false}
!74 = !{!"../drivers/clk/hisilicon/crg-hi3516cv300.c", i32 65, i32 12}
!75 = !{ptr @pwm_mux_p, !76, !"pwm_mux_p", i1 false, i1 false}
!76 = !{!"../drivers/clk/hisilicon/crg-hi3516cv300.c", i32 60, i32 26}
!77 = !{ptr @pwm_mux_table, !78, !"pwm_mux_table", i1 false, i1 false}
!78 = !{!"../drivers/clk/hisilicon/crg-hi3516cv300.c", i32 66, i32 12}
!79 = !{ptr @.str.20, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/clk/hisilicon/crg-hi3516cv300.c", i32 87, i32 27}
!81 = !{ptr @.str.21, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/clk/hisilicon/crg-hi3516cv300.c", i32 89, i32 27}
!83 = !{ptr @.str.22, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/clk/hisilicon/crg-hi3516cv300.c", i32 91, i32 27}
!85 = !{ptr @.str.23, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/clk/hisilicon/crg-hi3516cv300.c", i32 94, i32 26}
!87 = !{ptr @.str.24, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/clk/hisilicon/crg-hi3516cv300.c", i32 96, i32 26}
!89 = !{ptr @.str.25, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/clk/hisilicon/crg-hi3516cv300.c", i32 99, i32 25}
!91 = !{ptr @.str.26, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/clk/hisilicon/crg-hi3516cv300.c", i32 101, i32 26}
!93 = !{ptr @.str.27, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/clk/hisilicon/crg-hi3516cv300.c", i32 103, i32 26}
!95 = !{ptr @.str.28, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/clk/hisilicon/crg-hi3516cv300.c", i32 105, i32 26}
!97 = !{ptr @.str.29, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/clk/hisilicon/crg-hi3516cv300.c", i32 107, i32 26}
!99 = !{ptr @.str.30, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/clk/hisilicon/crg-hi3516cv300.c", i32 110, i32 25}
!101 = !{ptr @.str.31, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/clk/hisilicon/crg-hi3516cv300.c", i32 112, i32 26}
!103 = !{ptr @.str.32, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/clk/hisilicon/crg-hi3516cv300.c", i32 113, i32 25}
!105 = !{ptr @.str.33, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/clk/hisilicon/crg-hi3516cv300.c", i32 116, i32 30}
!107 = !{ptr @.str.34, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/clk/hisilicon/crg-hi3516cv300.c", i32 117, i32 34}
!109 = !{ptr @.str.35, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/clk/hisilicon/crg-hi3516cv300.c", i32 119, i32 34}
!111 = !{ptr @.str.36, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/clk/hisilicon/crg-hi3516cv300.c", i32 121, i32 35}
!113 = !{ptr @.str.37, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/clk/hisilicon/crg-hi3516cv300.c", i32 123, i32 34}
!115 = !{ptr @.str.38, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/clk/hisilicon/crg-hi3516cv300.c", i32 125, i32 32}
!117 = !{ptr @.str.39, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/clk/hisilicon/crg-hi3516cv300.c", i32 126, i32 30}
!119 = !{ptr @hi3516cv300_gate_clks, !120, !"hi3516cv300_gate_clks", i1 false, i1 false}
!120 = !{!"../drivers/clk/hisilicon/crg-hi3516cv300.c", i32 85, i32 37}
!121 = !{ptr @hi3516cv300_sysctrl_funcs, !122, !"hi3516cv300_sysctrl_funcs", i1 false, i1 false}
!122 = !{!"../drivers/clk/hisilicon/crg-hi3516cv300.c", i32 243, i32 36}
!123 = !{ptr @.str.40, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/clk/hisilicon/crg-hi3516cv300.c", i32 199, i32 25}
!125 = !{ptr @hi3516cv300_sysctrl_mux_clks, !126, !"hi3516cv300_sysctrl_mux_clks", i1 false, i1 false}
!126 = !{!"../drivers/clk/hisilicon/crg-hi3516cv300.c", i32 198, i32 36}
!127 = !{ptr @wdt_mux_p, !128, !"wdt_mux_p", i1 false, i1 false}
!128 = !{!"../drivers/clk/hisilicon/crg-hi3516cv300.c", i32 195, i32 26}
!129 = !{ptr @wdt_mux_table, !130, !"wdt_mux_table", i1 false, i1 false}
!130 = !{!"../drivers/clk/hisilicon/crg-hi3516cv300.c", i32 196, i32 12}
!131 = !{i32 1, !"wchar_size", i32 2}
!132 = !{i32 1, !"min_enum_size", i32 4}
!133 = !{i32 8, !"branch-target-enforcement", i32 0}
!134 = !{i32 8, !"sign-return-address", i32 0}
!135 = !{i32 8, !"sign-return-address-all", i32 0}
!136 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!137 = !{i32 7, !"uwtable", i32 1}
!138 = !{i32 7, !"frame-pointer", i32 2}
!139 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
